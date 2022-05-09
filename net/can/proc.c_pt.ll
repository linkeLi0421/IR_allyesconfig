; ModuleID = '/llk/IR_all_yes/net/can/proc.c_pt.bc'
source_filename = "../net/can/proc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.can_rcv_lists_stats = type { i32, i32, i32, i32 }
%struct.can_pkg_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.111, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.111 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.112, i32, %struct.spinlock }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { ptr, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.51, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.114, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.115, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.116, ptr, %struct.address_space, %struct.list_head, %union.anon.117, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.114 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.115 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.117 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.can_dev_rcv_lists = type { [4 x %struct.hlist_head], [2048 x %struct.hlist_head], [1024 x %struct.hlist_head], i32 }
%struct.receiver = type { %struct.hlist_node, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.callback_head }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@user_reset = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"can\00", [28 x i8] zeroinitializer }, align 32
@can_init_proc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016can: failed to create /proc/net/can . CONFIG_PROC_FS missing?\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"can_init_proc\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/can/proc.c\00", [17 x i8] zeroinitializer }, align 32
@can_init_proc._entry_ptr = internal global ptr @can_init_proc._entry, section ".printk_index", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset_stats\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_err\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_all\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_fil\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_inv\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_eff\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvlist_sff\00", [20 x i8] zeroinitializer }, align 32
@calc_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013can: calc_rate: count exceeded! %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calc_rate\00", [22 x i8] zeroinitializer }, align 32
@calc_rate._entry_ptr = internal global ptr @calc_rate._entry, section ".printk_index", align 4
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" %8ld transmitted frames (TXF)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" %8ld received frames (RXF)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" %8ld matched frames (RXMF)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" %8ld %% total match ratio (RXMR)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" %8ld frames/s total tx rate (TXR)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" %8ld frames/s total rx rate (RXR)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" %8ld %% current match ratio (CRXMR)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" %8ld frames/s current tx rate (CTXR)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c" %8ld frames/s current rx rate (CRXR)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" %8ld %% max match ratio (MRXMR)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" %8ld frames/s max tx rate (MTXR)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" %8ld frames/s max rx rate (MRXR)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" %8ld current receive list entries (CRCV)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c" %8ld maximum receive list entries (MRCV)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0A %8ld statistic resets (STR)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" %8ld user statistic resets (USTR)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Scheduled statistic reset #%ld.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Performed statistic reset #%ld.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0Areceive list '%s':\0A\00", [43 x i8] zeroinitializer }, align 32
@rx_list_name = internal constant { [4 x [8 x i8]], [32 x i8] } { [4 x [8 x i8]] [[8 x i8] c"rx_err\00\00", [8 x i8] c"rx_all\00\00", [8 x i8] c"rx_fil\00\00", [8 x i8] c"rx_inv\00\00"], [32 x i8] zeroinitializer }, align 32
@can_rcvlist_proc_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  (%s: no entry)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"any\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"  device   can_id   can_mask  function  userdata   matches  ident\0A\00", [61 x i8] zeroinitializer }, align 32
@can_print_rcvlist.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"   %-5s  %08x  %08x  %pK  %pK  %8ld  %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"   %-5s     %03x    %08x  %pK  %pK  %8ld  %s\0A\00", [50 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0Areceive list 'rx_eff':\0A\00", [39 x i8] zeroinitializer }, align 32
@can_rcvlist_eff_proc_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\0Areceive list 'rx_sff':\0A\00", [39 x i8] zeroinitializer }, align 32
@can_rcvlist_sff_proc_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"user_reset\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 433, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 436, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 442, i32 46 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 444, i32 52 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 447, i32 52 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 450, i32 52 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 453, i32 52 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 456, i32 52 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 459, i32 52 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 461, i32 52 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 107, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 217, i32 16 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 218, i32 16 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 219, i32 16 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 224, i32 17 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 227, i32 17 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 229, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 234, i32 17 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 237, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 239, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 244, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 247, i32 17 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 249, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 255, i32 16 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 257, i32 16 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 261, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 265, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 281, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 287, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 313, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant [13 x i8] c"rx_list_name\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 68, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 322, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 695, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 301, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 301, i32 39 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 207, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 190, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 191, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 723, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 401, i32 14 }
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [18 x i8] c"../net/can/proc.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 368, i32 14 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @calc_rate._entry, ptr @calc_rate._entry_ptr, ptr @can_init_proc._entry, ptr @can_init_proc._entry_ptr, ptr @user_reset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @rx_list_name, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @can_init_proc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calc_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_list_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_stat_update(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pkg_stats1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkg_stats1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %.b = load i1, ptr @user_reset, align 4
  br i1 %.b, label %can_init_stats.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

can_init_stats.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3.i = getelementptr i8, ptr %t, i32 52
  %5 = ptrtoint ptr %rcv_lists_stats3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcv_lists_stats3.i, align 4
  %7 = call ptr @memset(ptr %4, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %4, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %6, align 4
  %inc.i = add i32 %11, 1
  store i32 %inc.i, ptr %6, align 4
  store i1 false, ptr @user_reset, align 4
  %user_reset.i = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %user_reset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %user_reset.i, align 4
  %inc4.i = add i32 %13, 1
  store i32 %inc4.i, ptr %user_reset.i, align 4
  br label %if.end

if.end:                                           ; preds = %can_init_stats.exit, %entry.if.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %15)
  %cmp = icmp ult i32 %2, %15
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %16 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3.i106 = getelementptr i8, ptr %t, i32 52
  %18 = ptrtoint ptr %rcv_lists_stats3.i106 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rcv_lists_stats3.i106, align 4
  %20 = call ptr @memset(ptr %17, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %17, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 4
  %inc.i107 = add i32 %24, 1
  store i32 %inc.i107, ptr %19, align 4
  %.b.i108 = load i1, ptr @user_reset, align 4
  br i1 %.b.i108, label %if.then.i111, label %if.then2.if.end3_crit_edge

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.i111:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @user_reset, align 4
  %user_reset.i109 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %user_reset.i109 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %user_reset.i109, align 4
  %inc4.i110 = add i32 %26, 1
  store i32 %inc4.i110, ptr %user_reset.i109, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then.i111, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %rx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %28)
  %cmp4 = icmp ugt i32 %28, 42949672
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  %29 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3.i114 = getelementptr i8, ptr %t, i32 52
  %31 = ptrtoint ptr %rcv_lists_stats3.i114 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rcv_lists_stats3.i114, align 4
  %33 = call ptr @memset(ptr %30, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %30, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %32, align 4
  %inc.i115 = add i32 %37, 1
  store i32 %inc.i115, ptr %32, align 4
  %.b.i116 = load i1, ptr @user_reset, align 4
  br i1 %.b.i116, label %if.then.i119, label %if.then5.if.end6_crit_edge

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.i119:                                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @user_reset, align 4
  %user_reset.i117 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %32, i32 0, i32 1
  %38 = ptrtoint ptr %user_reset.i117 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %user_reset.i117, align 4
  %inc4.i118 = add i32 %39, 1
  store i32 %inc4.i118, ptr %user_reset.i117, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then.i119, %if.then5.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %tx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %41)
  %cmp7 = icmp ugt i32 %41, 42949672
  br i1 %cmp7, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  %42 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3.i122 = getelementptr i8, ptr %t, i32 52
  %44 = ptrtoint ptr %rcv_lists_stats3.i122 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rcv_lists_stats3.i122, align 4
  %46 = call ptr @memset(ptr %43, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %43, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 4
  %inc.i123 = add i32 %50, 1
  store i32 %inc.i123, ptr %45, align 4
  %.b.i124 = load i1, ptr @user_reset, align 4
  br i1 %.b.i124, label %if.then.i127, label %if.then8.if.end9_crit_edge

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then.i127:                                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @user_reset, align 4
  %user_reset.i125 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %45, i32 0, i32 1
  %51 = ptrtoint ptr %user_reset.i125 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %user_reset.i125, align 4
  %inc4.i126 = add i32 %52, 1
  store i32 %inc4.i126, ptr %user_reset.i125, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then.i127, %if.then8.if.end9_crit_edge, %if.end6.if.end9_crit_edge
  %matches = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %matches, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %54)
  %cmp10 = icmp ugt i32 %54, 42949672
  br i1 %cmp10, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  %55 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3.i130 = getelementptr i8, ptr %t, i32 52
  %57 = ptrtoint ptr %rcv_lists_stats3.i130 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rcv_lists_stats3.i130, align 4
  %59 = call ptr @memset(ptr %56, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %61 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %56, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %58, align 4
  %inc.i131 = add i32 %63, 1
  store i32 %inc.i131, ptr %58, align 4
  %.b.i132 = load i1, ptr @user_reset, align 4
  br i1 %.b.i132, label %if.then.i135, label %if.then11.if.end12_crit_edge

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then.i135:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  store i1 false, ptr @user_reset, align 4
  %user_reset.i133 = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %58, i32 0, i32 1
  %64 = ptrtoint ptr %user_reset.i133 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %user_reset.i133, align 4
  %inc4.i134 = add i32 %65, 1
  store i32 %inc4.i134, ptr %user_reset.i133, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then.i135, %if.then11.if.end12_crit_edge, %if.end9.if.end12_crit_edge
  %66 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool14.not = icmp eq i32 %67, 0
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %matches, align 4
  %mul = mul i32 %69, 100
  %div = udiv i32 %mul, %67
  %total_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 6
  %70 = ptrtoint ptr %total_rx_match_ratio to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div, ptr %total_rx_match_ratio, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %1, align 4
  %73 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %72)
  %cmp.i = icmp eq i32 %2, %72
  br i1 %cmp.i, label %if.end18.calc_rate.exit_crit_edge, label %if.end.i

if.end18.calc_rate.exit_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %calc_rate.exit

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %74)
  %cmp1.i = icmp ugt i32 %74, 42949672
  br i1 %cmp1.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %74) #8
  br label %calc_rate.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul nuw i32 %74, 100
  %sub.i = sub i32 %2, %72
  %div.i = udiv i32 %mul.i, %sub.i
  br label %calc_rate.exit

calc_rate.exit:                                   ; preds = %if.end3.i, %do.end.i, %if.end18.calc_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 99999999, %do.end.i ], [ %div.i, %if.end3.i ], [ 0, %if.end18.calc_rate.exit_crit_edge ]
  %total_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 5
  %75 = ptrtoint ptr %total_tx_rate to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i, ptr %total_tx_rate, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %1, align 4
  %78 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %77)
  %cmp.i137 = icmp eq i32 %2, %77
  br i1 %cmp.i137, label %calc_rate.exit.calc_rate.exit147_crit_edge, label %if.end.i139

calc_rate.exit.calc_rate.exit147_crit_edge:       ; preds = %calc_rate.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %calc_rate.exit147

if.end.i139:                                      ; preds = %calc_rate.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %79)
  %cmp1.i138 = icmp ugt i32 %79, 42949672
  br i1 %cmp1.i138, label %do.end.i141, label %if.end3.i145

do.end.i141:                                      ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  %call.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %79) #8
  br label %calc_rate.exit147

if.end3.i145:                                     ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i142 = mul nuw i32 %79, 100
  %sub.i143 = sub i32 %2, %77
  %div.i144 = udiv i32 %mul.i142, %sub.i143
  br label %calc_rate.exit147

calc_rate.exit147:                                ; preds = %if.end3.i145, %do.end.i141, %calc_rate.exit.calc_rate.exit147_crit_edge
  %retval.0.i146 = phi i32 [ 99999999, %do.end.i141 ], [ %div.i144, %if.end3.i145 ], [ 0, %calc_rate.exit.calc_rate.exit147_crit_edge ]
  %total_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 4
  %80 = ptrtoint ptr %total_rx_rate to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i146, ptr %total_rx_rate, align 4
  %rx_frames_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %rx_frames_delta to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_frames_delta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool24.not = icmp eq i32 %82, 0
  br i1 %tobool24.not, label %calc_rate.exit147.if.end29_crit_edge, label %if.then25

calc_rate.exit147.if.end29_crit_edge:             ; preds = %calc_rate.exit147
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then25:                                        ; preds = %calc_rate.exit147
  call void @__sanitizer_cov_trace_pc() #7
  %matches_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 15
  %83 = ptrtoint ptr %matches_delta to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %matches_delta, align 4
  %mul26 = mul i32 %84, 100
  %div28 = udiv i32 %mul26, %82
  %current_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 9
  %85 = ptrtoint ptr %current_rx_match_ratio to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div28, ptr %current_rx_match_ratio, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %calc_rate.exit147.if.end29_crit_edge
  %tx_frames_delta = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 14
  %86 = ptrtoint ptr %tx_frames_delta to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tx_frames_delta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %87)
  %cmp1.i148 = icmp ugt i32 %87, 42949672
  br i1 %cmp1.i148, label %do.end.i151, label %if.end29.calc_rate.exit155_crit_edge

if.end29.calc_rate.exit155_crit_edge:             ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %calc_rate.exit155

do.end.i151:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %call.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %87) #8
  br label %calc_rate.exit155

calc_rate.exit155:                                ; preds = %do.end.i151, %if.end29.calc_rate.exit155_crit_edge
  %retval.0.i154 = phi i32 [ 99999999, %do.end.i151 ], [ %87, %if.end29.calc_rate.exit155_crit_edge ]
  %current_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 8
  %88 = ptrtoint ptr %current_tx_rate to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i154, ptr %current_tx_rate, align 4
  %89 = ptrtoint ptr %rx_frames_delta to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_frames_delta, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 42949672, i32 %90)
  %cmp1.i156 = icmp ugt i32 %90, 42949672
  br i1 %cmp1.i156, label %do.end.i159, label %calc_rate.exit155.calc_rate.exit163_crit_edge

calc_rate.exit155.calc_rate.exit163_crit_edge:    ; preds = %calc_rate.exit155
  call void @__sanitizer_cov_trace_pc() #7
  br label %calc_rate.exit163

do.end.i159:                                      ; preds = %calc_rate.exit155
  call void @__sanitizer_cov_trace_pc() #7
  %call.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %90) #8
  br label %calc_rate.exit163

calc_rate.exit163:                                ; preds = %do.end.i159, %calc_rate.exit155.calc_rate.exit163_crit_edge
  %retval.0.i162 = phi i32 [ 99999999, %do.end.i159 ], [ %90, %calc_rate.exit155.calc_rate.exit163_crit_edge ]
  %current_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 7
  %91 = ptrtoint ptr %current_rx_rate to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %retval.0.i162, ptr %current_rx_rate, align 4
  %max_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 11
  %92 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %max_tx_rate, align 4
  %94 = ptrtoint ptr %current_tx_rate to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %current_tx_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %95)
  %cmp34 = icmp ult i32 %93, %95
  br i1 %cmp34, label %if.then35, label %calc_rate.exit163.if.end38_crit_edge

calc_rate.exit163.if.end38_crit_edge:             ; preds = %calc_rate.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then35:                                        ; preds = %calc_rate.exit163
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %max_tx_rate, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %calc_rate.exit163.if.end38_crit_edge
  %max_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 10
  %97 = ptrtoint ptr %max_rx_rate to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_rx_rate, align 4
  %99 = ptrtoint ptr %current_rx_rate to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %current_rx_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp40 = icmp ult i32 %98, %100
  br i1 %cmp40, label %if.then41, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %max_rx_rate to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %max_rx_rate, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %max_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 12
  %102 = ptrtoint ptr %max_rx_match_ratio to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %max_rx_match_ratio, align 4
  %current_rx_match_ratio45 = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 9
  %104 = ptrtoint ptr %current_rx_match_ratio45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %current_rx_match_ratio45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp46 = icmp ult i32 %103, %105
  br i1 %cmp46, label %if.then47, label %if.end44.if.end50_crit_edge

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %max_rx_match_ratio to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %max_rx_match_ratio, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.end44.if.end50_crit_edge
  %107 = ptrtoint ptr %tx_frames_delta to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %tx_frames_delta, align 4
  %108 = ptrtoint ptr %rx_frames_delta to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %rx_frames_delta, align 4
  %matches_delta53 = getelementptr inbounds %struct.can_pkg_stats, ptr %1, i32 0, i32 15
  %109 = ptrtoint ptr %matches_delta53 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %matches_delta53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %110 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %110, 100
  %call55 = tail call i32 @round_jiffies(i32 noundef %add) #5
  %call56 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %call55) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_init_proc(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call.i = tail call ptr @_proc_mkdir(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %1, ptr noundef %net, i1 noundef zeroext true) #5
  %can = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50
  %2 = ptrtoint ptr %can to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %can, align 32
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.4, i16 noundef zeroext 420, ptr noundef nonnull %call.i, ptr noundef nonnull @can_stats_proc_show, ptr noundef null) #5
  %pde_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 1
  %3 = ptrtoint ptr %pde_stats to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %pde_stats, align 4
  %4 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %can, align 32
  %call10 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.5, i16 noundef zeroext 420, ptr noundef %5, ptr noundef nonnull @can_reset_stats_proc_show, ptr noundef null) #5
  %pde_reset_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 2
  %6 = ptrtoint ptr %pde_reset_stats to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %pde_reset_stats, align 8
  %7 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %can, align 32
  %call14 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.6, i16 noundef zeroext 420, ptr noundef %8, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef null) #5
  %pde_rcvlist_err = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 8
  %9 = ptrtoint ptr %pde_rcvlist_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %pde_rcvlist_err, align 32
  %10 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %can, align 32
  %call18 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.7, i16 noundef zeroext 420, ptr noundef %11, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 1 to ptr)) #5
  %pde_rcvlist_all = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 3
  %12 = ptrtoint ptr %pde_rcvlist_all to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %pde_rcvlist_all, align 4
  %13 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %can, align 32
  %call22 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef %14, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 2 to ptr)) #5
  %pde_rcvlist_fil = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 4
  %15 = ptrtoint ptr %pde_rcvlist_fil to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call22, ptr %pde_rcvlist_fil, align 16
  %16 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %can, align 32
  %call26 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.9, i16 noundef zeroext 420, ptr noundef %17, ptr noundef nonnull @can_rcvlist_proc_show, ptr noundef nonnull inttoptr (i32 3 to ptr)) #5
  %pde_rcvlist_inv = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 5
  %18 = ptrtoint ptr %pde_rcvlist_inv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call26, ptr %pde_rcvlist_inv, align 4
  %19 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %can, align 32
  %call30 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.10, i16 noundef zeroext 420, ptr noundef %20, ptr noundef nonnull @can_rcvlist_eff_proc_show, ptr noundef null) #5
  %pde_rcvlist_eff = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 7
  %21 = ptrtoint ptr %pde_rcvlist_eff to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call30, ptr %pde_rcvlist_eff, align 4
  %22 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %can, align 32
  %call34 = tail call ptr @proc_create_net_single(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %23, ptr noundef nonnull @can_rcvlist_sff_proc_show, ptr noundef null) #5
  %pde_rcvlist_sff = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 6
  %24 = ptrtoint ptr %pde_rcvlist_sff to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call34, ptr %pde_rcvlist_sff, align 8
  br label %return

return:                                           ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_single(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_stats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %pkg_stats1 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 13
  %2 = ptrtoint ptr %pkg_stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkg_stats1, align 8
  %rcv_lists_stats3 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 14
  %4 = ptrtoint ptr %rcv_lists_stats3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcv_lists_stats3, align 4
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  %tx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.14, i32 noundef %7) #5
  %rx_frames = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %rx_frames to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_frames, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.15, i32 noundef %9) #5
  %matches = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %matches, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.16, i32 noundef %11) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  %function = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 12, i32 2
  %12 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %function, align 4
  %cmp = icmp eq ptr %13, @can_stat_update
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %total_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %total_rx_match_ratio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_rx_match_ratio, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.17, i32 noundef %15) #5
  %total_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %total_tx_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %total_tx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.18, i32 noundef %17) #5
  %total_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %total_rx_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %total_rx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.19, i32 noundef %19) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  %current_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %current_rx_match_ratio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %current_rx_match_ratio, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, i32 noundef %21) #5
  %current_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %current_tx_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %current_tx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, i32 noundef %23) #5
  %current_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %current_rx_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %current_rx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, i32 noundef %25) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  %max_rx_match_ratio = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 12
  %26 = ptrtoint ptr %max_rx_match_ratio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_rx_match_ratio, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.23, i32 noundef %27) #5
  %max_tx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %max_tx_rate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_tx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, i32 noundef %29) #5
  %max_rx_rate = getelementptr inbounds %struct.can_pkg_stats, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %max_rx_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_rx_rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %31) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rcv_entries = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %5, i32 0, i32 2
  %32 = ptrtoint ptr %rcv_entries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rcv_entries, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.26, i32 noundef %33) #5
  %rcv_entries_max = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %5, i32 0, i32 3
  %34 = ptrtoint ptr %rcv_entries_max to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rcv_entries_max, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.27, i32 noundef %35) #5
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %37) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %user_reset = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %5, i32 0, i32 1
  %38 = ptrtoint ptr %user_reset to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %user_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool8.not = icmp eq i32 %39, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.29, i32 noundef %39) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_reset_stats_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %rcv_lists_stats1 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 14
  %2 = ptrtoint ptr %rcv_lists_stats1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcv_lists_stats1, align 4
  %pkg_stats3 = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 13
  %4 = ptrtoint ptr %pkg_stats3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkg_stats3, align 8
  store i1 true, ptr @user_reset, align 4
  %function = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 12, i32 2
  %6 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %function, align 4
  %cmp = icmp eq ptr %7, @can_stat_update
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %add = add i32 %9, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %add) #5
  br label %if.end8

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %12)
  %cmp5.not = icmp eq i32 %11, %12
  br i1 %cmp5.not, label %if.else.if.end_crit_edge, label %can_init_stats.exit

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

can_init_stats.exit:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = call ptr @memset(ptr %5, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %5, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %inc.i = add i32 %17, 1
  store i32 %inc.i, ptr %3, align 4
  store i1 false, ptr @user_reset, align 4
  %user_reset.i = getelementptr inbounds %struct.can_rcv_lists_stats, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %user_reset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %user_reset.i, align 4
  %inc4.i = add i32 %19, 1
  store i32 %inc4.i, ptr %user_reset.i, align 4
  br label %if.end

if.end:                                           ; preds = %can_init_stats.exit, %if.else.if.end_crit_edge
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %21) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_rcvlist_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %arrayidx = getelementptr [4 x [8 x i8]], ptr @rx_list_name, i32 0, i32 %6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef %arrayidx) #5
  %9 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 50, i32 10
  %13 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_alldev_list, align 8
  %arrayidx.i = getelementptr [4 x %struct.hlist_head], ptr %14, i32 0, i32 %6
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.not.i, label %if.else.i, label %if.then.i39

if.then.i39:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx.i, ptr noundef null) #5
  br label %can_rcvlist_proc_show_one.exit

if.else.i:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #5
  br label %can_rcvlist_proc_show_one.exit

can_rcvlist_proc_show_one.exit:                   ; preds = %if.else.i, %if.then.i39
  %call1 = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %can_rcvlist_proc_show_one.exit.do.end_crit_edge

can_rcvlist_proc_show_one.exit.do.end_crit_edge:  ; preds = %can_rcvlist_proc_show_one.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %can_rcvlist_proc_show_one.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b38 = load i1, ptr @can_rcvlist_proc_show.__warned, align 1
  br i1 %.b38, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @can_rcvlist_proc_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 322, ptr noundef nonnull @.str.33) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %can_rcvlist_proc_show_one.exit.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 16
  %17 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn56 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp.not58 = icmp eq ptr %.pn56, %dev_base_head
  br i1 %cmp.not58, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn59 = phi ptr [ %.pn, %if.end15.for.body_crit_edge ], [ %.pn56, %do.end.for.body_crit_edge ]
  %dev.060 = getelementptr i8, ptr %.pn59, i32 -40
  %ml_priv_type.i.i = getelementptr i8, ptr %.pn59, i32 1044
  %18 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.not.i.i = icmp eq i32 %19, 1
  br i1 %cmp.not.i.i, label %can_get_ml_priv.exit, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

can_get_ml_priv.exit:                             ; preds = %for.body
  %ml_priv.i.i = getelementptr i8, ptr %.pn59, i32 1040
  %20 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ml_priv.i.i, align 8
  %tobool12.not = icmp eq ptr %21, null
  br i1 %tobool12.not, label %can_get_ml_priv.exit.if.end15_crit_edge, label %if.then13

can_get_ml_priv.exit.if.end15_crit_edge:          ; preds = %can_get_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %can_get_ml_priv.exit
  %arrayidx.i40 = getelementptr [4 x %struct.hlist_head], ptr %21, i32 0, i32 %6
  %22 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %arrayidx.i40, align 4
  %tobool.not.i.not.i41 = icmp eq ptr %23, null
  br i1 %tobool.not.i.not.i41, label %if.else.i43, label %if.then.i42

if.then.i42:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx.i40, ptr noundef %dev.060) #5
  br label %if.end15

if.else.i43:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %tobool3.not.i = icmp eq ptr %dev.060, null
  %spec.select.i = select i1 %tobool3.not.i, ptr @.str.37, ptr %dev.060
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull %spec.select.i) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else.i43, %if.then.i42, %can_get_ml_priv.exit.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %24 = ptrtoint ptr %.pn59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load volatile ptr, ptr %.pn59, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i45 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i45, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i48

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i48:                                ; preds = %for.end
  %call1.i46 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool.not.i47, label %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i50

land.lhs.true.i48.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i50:                               ; preds = %land.lhs.true.i48
  %.b4.i49 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i49, label %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, label %if.then.i51

land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i51:                                      ; preds = %land.lhs.true2.i50
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.41) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i51, %land.lhs.true2.i50.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i48.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !112
  %25 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i52 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i52 to ptr
  %preempt_count.i.i.i.i53 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i53, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i53, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_rcvlist_eff_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.42) #5
  %2 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 10
  %6 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_alldev_list, align 8
  %rx_eff = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %7, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %if.else.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %rcu_read_lock.exit
  %i.033.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %rcu_read_lock.exit ]
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %rx_eff, i32 %i.033.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i, label %for.cond.i, label %for.body5.preheader.i

for.body5.preheader.i:                            ; preds = %for.body.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc12.i.for.body5.i_crit_edge, %for.body5.preheader.i
  %i.135.i = phi i32 [ %inc13.i, %for.inc12.i.for.body5.i_crit_edge ], [ 0, %for.body5.preheader.i ]
  %arrayidx6.i = getelementptr %struct.hlist_head, ptr %rx_eff, i32 %i.135.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i30.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i30.not.i, label %for.body5.i.for.inc12.i_crit_edge, label %if.then9.i

for.body5.i.for.inc12.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

if.then9.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx6.i, ptr noundef null) #5
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then9.i, %for.body5.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %i.135.i, 1
  %exitcond36.not.i = icmp eq i32 %inc13.i, 1024
  br i1 %exitcond36.not.i, label %for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge, label %for.inc12.i.for.body5.i_crit_edge

for.inc12.i.for.body5.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge: ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_rcvlist_proc_show_array.exit

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #5
  br label %can_rcvlist_proc_show_array.exit

can_rcvlist_proc_show_array.exit:                 ; preds = %if.else.i, %for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %can_rcvlist_proc_show_array.exit.do.end_crit_edge

can_rcvlist_proc_show_array.exit.do.end_crit_edge: ; preds = %can_rcvlist_proc_show_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %can_rcvlist_proc_show_array.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @can_rcvlist_eff_proc_show.__warned, align 1
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @can_rcvlist_eff_proc_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 411, ptr noundef nonnull @.str.33) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %can_rcvlist_proc_show_array.exit.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn67 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %dev_base_head
  br i1 %cmp.not69, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %if.end16.for.body_crit_edge ], [ %.pn67, %do.end.for.body_crit_edge ]
  %dev.071 = getelementptr i8, ptr %.pn70, i32 -40
  %ml_priv_type.i.i = getelementptr i8, ptr %.pn70, i32 1044
  %13 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i.i, label %can_get_ml_priv.exit, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

can_get_ml_priv.exit:                             ; preds = %for.body
  %ml_priv.i.i = getelementptr i8, ptr %.pn70, i32 1040
  %15 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ml_priv.i.i, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %can_get_ml_priv.exit.if.end16_crit_edge, label %if.then12

can_get_ml_priv.exit.if.end16_crit_edge:          ; preds = %can_get_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %can_get_ml_priv.exit
  %rx_eff14 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %16, i32 0, i32 2
  br label %for.body.i44

for.cond.i40:                                     ; preds = %for.body.i44
  %inc.i38 = add nuw nsw i32 %i.033.i41, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 1024
  br i1 %exitcond.not.i39, label %if.else.i54, label %for.cond.i40.for.body.i44_crit_edge

for.cond.i40.for.body.i44_crit_edge:              ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.cond.i40.for.body.i44_crit_edge, %if.then12
  %i.033.i41 = phi i32 [ %inc.i38, %for.cond.i40.for.body.i44_crit_edge ], [ 0, %if.then12 ]
  %arrayidx.i42 = getelementptr %struct.hlist_head, ptr %rx_eff14, i32 %i.033.i41
  %17 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i42, align 4
  %tobool.not.i.not.i43 = icmp eq ptr %18, null
  br i1 %tobool.not.i.not.i43, label %for.cond.i40, label %for.body5.preheader.i45

for.body5.preheader.i45:                          ; preds = %for.body.i44
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  br label %for.body5.i49

for.body5.i49:                                    ; preds = %for.inc12.i53.for.body5.i49_crit_edge, %for.body5.preheader.i45
  %i.135.i46 = phi i32 [ %inc13.i51, %for.inc12.i53.for.body5.i49_crit_edge ], [ 0, %for.body5.preheader.i45 ]
  %arrayidx6.i47 = getelementptr %struct.hlist_head, ptr %rx_eff14, i32 %i.135.i46
  %19 = ptrtoint ptr %arrayidx6.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx6.i47, align 4
  %tobool.not.i30.not.i48 = icmp eq ptr %20, null
  br i1 %tobool.not.i30.not.i48, label %for.body5.i49.for.inc12.i53_crit_edge, label %if.then9.i50

for.body5.i49.for.inc12.i53_crit_edge:            ; preds = %for.body5.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i53

if.then9.i50:                                     ; preds = %for.body5.i49
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx6.i47, ptr noundef %dev.071) #5
  br label %for.inc12.i53

for.inc12.i53:                                    ; preds = %if.then9.i50, %for.body5.i49.for.inc12.i53_crit_edge
  %inc13.i51 = add nuw nsw i32 %i.135.i46, 1
  %exitcond36.not.i52 = icmp eq i32 %inc13.i51, 1024
  br i1 %exitcond36.not.i52, label %for.inc12.i53.if.end16_crit_edge, label %for.inc12.i53.for.body5.i49_crit_edge

for.inc12.i53.for.body5.i49_crit_edge:            ; preds = %for.inc12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i49

for.inc12.i53.if.end16_crit_edge:                 ; preds = %for.inc12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.i54:                                      ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #7
  %tobool15.not.i = icmp eq ptr %dev.071, null
  %spec.select.i = select i1 %tobool15.not.i, ptr @.str.37, ptr %dev.071
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull %spec.select.i) #5
  br label %if.end16

if.end16:                                         ; preds = %if.else.i54, %for.inc12.i53.if.end16_crit_edge, %can_get_ml_priv.exit.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %21 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn70, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.41) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !112
  %22 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i63 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @can_rcvlist_sff_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.43) #5
  %2 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !111
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 696, ptr noundef nonnull @.str.35) #5
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %rx_alldev_list = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 50, i32 10
  %6 = ptrtoint ptr %rx_alldev_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_alldev_list, align 8
  %rx_sff = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %7, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2048
  br i1 %exitcond.not.i, label %if.else.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %rcu_read_lock.exit
  %i.033.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %rcu_read_lock.exit ]
  %arrayidx.i = getelementptr %struct.hlist_head, ptr %rx_sff, i32 %i.033.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.not.i, label %for.cond.i, label %for.body5.preheader.i

for.body5.preheader.i:                            ; preds = %for.body.i
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc12.i.for.body5.i_crit_edge, %for.body5.preheader.i
  %i.135.i = phi i32 [ %inc13.i, %for.inc12.i.for.body5.i_crit_edge ], [ 0, %for.body5.preheader.i ]
  %arrayidx6.i = getelementptr %struct.hlist_head, ptr %rx_sff, i32 %i.135.i
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx6.i, align 4
  %tobool.not.i30.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i30.not.i, label %for.body5.i.for.inc12.i_crit_edge, label %if.then9.i

for.body5.i.for.inc12.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i

if.then9.i:                                       ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx6.i, ptr noundef null) #5
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %if.then9.i, %for.body5.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %i.135.i, 1
  %exitcond36.not.i = icmp eq i32 %inc13.i, 2048
  br i1 %exitcond36.not.i, label %for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge, label %for.inc12.i.for.body5.i_crit_edge

for.inc12.i.for.body5.i_crit_edge:                ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i

for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge: ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_rcvlist_proc_show_array.exit

if.else.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #5
  br label %can_rcvlist_proc_show_array.exit

can_rcvlist_proc_show_array.exit:                 ; preds = %if.else.i, %for.inc12.i.can_rcvlist_proc_show_array.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %can_rcvlist_proc_show_array.exit.do.end_crit_edge

can_rcvlist_proc_show_array.exit.do.end_crit_edge: ; preds = %can_rcvlist_proc_show_array.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %can_rcvlist_proc_show_array.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @can_rcvlist_sff_proc_show.__warned, align 1
  br i1 %.b37, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @can_rcvlist_sff_proc_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 378, ptr noundef nonnull @.str.33) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %can_rcvlist_proc_show_array.exit.do.end_crit_edge
  %dev_base_head = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn67 = load volatile ptr, ptr %dev_base_head, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %dev_base_head
  br i1 %cmp.not69, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn70 = phi ptr [ %.pn, %if.end16.for.body_crit_edge ], [ %.pn67, %do.end.for.body_crit_edge ]
  %dev.071 = getelementptr i8, ptr %.pn70, i32 -40
  %ml_priv_type.i.i = getelementptr i8, ptr %.pn70, i32 1044
  %13 = ptrtoint ptr %ml_priv_type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ml_priv_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.not.i.i = icmp eq i32 %14, 1
  br i1 %cmp.not.i.i, label %can_get_ml_priv.exit, label %for.body.if.end16_crit_edge

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

can_get_ml_priv.exit:                             ; preds = %for.body
  %ml_priv.i.i = getelementptr i8, ptr %.pn70, i32 1040
  %15 = ptrtoint ptr %ml_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ml_priv.i.i, align 8
  %tobool11.not = icmp eq ptr %16, null
  br i1 %tobool11.not, label %can_get_ml_priv.exit.if.end16_crit_edge, label %if.then12

can_get_ml_priv.exit.if.end16_crit_edge:          ; preds = %can_get_ml_priv.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then12:                                        ; preds = %can_get_ml_priv.exit
  %rx_sff14 = getelementptr inbounds %struct.can_dev_rcv_lists, ptr %16, i32 0, i32 1
  br label %for.body.i44

for.cond.i40:                                     ; preds = %for.body.i44
  %inc.i38 = add nuw nsw i32 %i.033.i41, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 2048
  br i1 %exitcond.not.i39, label %if.else.i54, label %for.cond.i40.for.body.i44_crit_edge

for.cond.i40.for.body.i44_crit_edge:              ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i44

for.body.i44:                                     ; preds = %for.cond.i40.for.body.i44_crit_edge, %if.then12
  %i.033.i41 = phi i32 [ %inc.i38, %for.cond.i40.for.body.i44_crit_edge ], [ 0, %if.then12 ]
  %arrayidx.i42 = getelementptr %struct.hlist_head, ptr %rx_sff14, i32 %i.033.i41
  %17 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %arrayidx.i42, align 4
  %tobool.not.i.not.i43 = icmp eq ptr %18, null
  br i1 %tobool.not.i.not.i43, label %for.cond.i40, label %for.body5.preheader.i45

for.body5.preheader.i45:                          ; preds = %for.body.i44
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.38) #5
  br label %for.body5.i49

for.body5.i49:                                    ; preds = %for.inc12.i53.for.body5.i49_crit_edge, %for.body5.preheader.i45
  %i.135.i46 = phi i32 [ %inc13.i51, %for.inc12.i53.for.body5.i49_crit_edge ], [ 0, %for.body5.preheader.i45 ]
  %arrayidx6.i47 = getelementptr %struct.hlist_head, ptr %rx_sff14, i32 %i.135.i46
  %19 = ptrtoint ptr %arrayidx6.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %arrayidx6.i47, align 4
  %tobool.not.i30.not.i48 = icmp eq ptr %20, null
  br i1 %tobool.not.i30.not.i48, label %for.body5.i49.for.inc12.i53_crit_edge, label %if.then9.i50

for.body5.i49.for.inc12.i53_crit_edge:            ; preds = %for.body5.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.i53

if.then9.i50:                                     ; preds = %for.body5.i49
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %arrayidx6.i47, ptr noundef %dev.071) #5
  br label %for.inc12.i53

for.inc12.i53:                                    ; preds = %if.then9.i50, %for.body5.i49.for.inc12.i53_crit_edge
  %inc13.i51 = add nuw nsw i32 %i.135.i46, 1
  %exitcond36.not.i52 = icmp eq i32 %inc13.i51, 2048
  br i1 %exitcond36.not.i52, label %for.inc12.i53.if.end16_crit_edge, label %for.inc12.i53.for.body5.i49_crit_edge

for.inc12.i53.for.body5.i49_crit_edge:            ; preds = %for.inc12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.i49

for.inc12.i53.if.end16_crit_edge:                 ; preds = %for.inc12.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.else.i54:                                      ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #7
  %tobool15.not.i = icmp eq ptr %dev.071, null
  %spec.select.i = select i1 %tobool15.not.i, ptr @.str.37, ptr %dev.071
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.36, ptr noundef nonnull %spec.select.i) #5
  br label %if.end16

if.end16:                                         ; preds = %if.else.i54, %for.inc12.i53.if.end16_crit_edge, %can_get_ml_priv.exit.if.end16_crit_edge, %for.body.if.end16_crit_edge
  %21 = ptrtoint ptr %.pn70 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn70, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.34, i32 noundef 724, ptr noundef nonnull @.str.41) #5
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !112
  %22 = tail call i32 @llvm.read_register.i32(metadata !101) #5
  %and.i.i.i.i.i63 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #5
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #5
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_remove_proc(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %can = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50
  %0 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %can, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  %pde_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 1
  %2 = ptrtoint ptr %pde_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pde_stats, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %pde_reset_stats = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 2
  %4 = ptrtoint ptr %pde_reset_stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pde_reset_stats, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.5, ptr noundef %7) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %pde_rcvlist_err = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 8
  %8 = ptrtoint ptr %pde_rcvlist_err to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pde_rcvlist_err, align 32
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.6, ptr noundef %11) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %pde_rcvlist_all = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 3
  %12 = ptrtoint ptr %pde_rcvlist_all to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pde_rcvlist_all, align 4
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.7, ptr noundef %15) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %pde_rcvlist_fil = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 4
  %16 = ptrtoint ptr %pde_rcvlist_fil to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pde_rcvlist_fil, align 16
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.8, ptr noundef %19) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %pde_rcvlist_inv = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 5
  %20 = ptrtoint ptr %pde_rcvlist_inv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pde_rcvlist_inv, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %23) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %pde_rcvlist_eff = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 7
  %24 = ptrtoint ptr %pde_rcvlist_eff to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pde_rcvlist_eff, align 4
  %tobool38.not = icmp eq ptr %25, null
  br i1 %tobool38.not, label %if.end36.if.end42_crit_edge, label %if.then39

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.10, ptr noundef %27) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end36.if.end42_crit_edge
  %pde_rcvlist_sff = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 6
  %28 = ptrtoint ptr %pde_rcvlist_sff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pde_rcvlist_sff, align 8
  %tobool44.not = icmp eq ptr %29, null
  br i1 %tobool44.not, label %if.end42.if.end48_crit_edge, label %if.then45

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %can to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %can, align 32
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.11, ptr noundef %31) #5
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.end42.if.end48_crit_edge
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %32 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %33) #5
  br label %return

return:                                           ; preds = %if.end48, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_proc_mkdir(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @can_print_rcvlist(ptr noundef %m, ptr noundef %rx_list, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @can_print_rcvlist.__warned, align 1
  br i1 %.b48, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @can_print_rcvlist.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 188, ptr noundef nonnull @.str.33) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %rx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %r.050 = load volatile ptr, ptr %rx_list, align 4
  %tobool12.not51 = icmp eq ptr %r.050, null
  br i1 %tobool12.not51, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %tobool15.not = icmp eq ptr %dev, null
  %spec.select49 = select i1 %tobool15.not, ptr @.str.37, ptr %dev
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %r.052 = phi ptr [ %r.050, %for.body.lr.ph ], [ %r.0, %for.body.for.body_crit_edge ]
  %can_id = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 1
  %1 = ptrtoint ptr %can_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %can_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool13.not = icmp sgt i32 %2, -1
  %cond14 = select i1 %tobool13.not, ptr @.str.40, ptr @.str.39
  %mask = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 2
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %func = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 4
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func, align 4
  %data = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 5
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %matches = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 3
  %9 = ptrtoint ptr %matches to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %matches, align 4
  %ident = getelementptr inbounds %struct.receiver, ptr %r.052, i32 0, i32 6
  %11 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ident, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull %cond14, ptr noundef nonnull %spec.select49, i32 noundef %2, i32 noundef %4, ptr noundef %6, ptr noundef %8, i32 noundef %10, ptr noundef %12) #5
  %13 = ptrtoint ptr %r.052 to i32
  call void @__asan_load4_noabort(i32 %13)
  %r.0 = load volatile ptr, ptr %r.052, align 4
  %tobool12.not = icmp eq ptr %r.0, null
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !97, !99}
!llvm.named.register.sp = !{!101}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/can/proc.c", i32 433, i32 42}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/can/proc.c", i32 436, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @can_init_proc._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @can_init_proc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/can/proc.c", i32 442, i32 46}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/can/proc.c", i32 444, i32 52}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/can/proc.c", i32 447, i32 52}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/can/proc.c", i32 450, i32 52}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/can/proc.c", i32 453, i32 52}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/can/proc.c", i32 456, i32 52}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/can/proc.c", i32 459, i32 52}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/can/proc.c", i32 461, i32 52}
!24 = distinct !{null, !25, !"user_reset", i1 false, i1 false}
!25 = !{!"../net/can/proc.c", i32 66, i32 12}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/can/proc.c", i32 107, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @calc_rate._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @calc_rate._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/can/proc.c", i32 217, i32 16}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/can/proc.c", i32 218, i32 16}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/can/proc.c", i32 219, i32 16}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/can/proc.c", i32 224, i32 17}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/can/proc.c", i32 227, i32 17}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/can/proc.c", i32 229, i32 17}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/can/proc.c", i32 234, i32 17}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/can/proc.c", i32 237, i32 17}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/can/proc.c", i32 239, i32 17}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/can/proc.c", i32 244, i32 17}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/can/proc.c", i32 247, i32 17}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/can/proc.c", i32 249, i32 17}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/can/proc.c", i32 255, i32 16}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/can/proc.c", i32 257, i32 16}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/can/proc.c", i32 261, i32 17}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/can/proc.c", i32 265, i32 17}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/can/proc.c", i32 281, i32 17}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/can/proc.c", i32 287, i32 17}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/can/proc.c", i32 313, i32 16}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../net/can/proc.c", i32 322, i32 2}
!71 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rx_list_name, !73, !"rx_list_name", i1 false, i1 false}
!73 = !{!"../net/can/proc.c", i32 68, i32 19}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!76 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/can/proc.c", i32 301, i32 17}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/can/proc.c", i32 301, i32 39}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/can/proc.c", i32 207, i32 15}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/can/proc.c", i32 188, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/can/proc.c", i32 190, i32 4}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/can/proc.c", i32 191, i32 4}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/can/proc.c", i32 401, i32 14}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../net/can/proc.c", i32 411, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/can/proc.c", i32 368, i32 14}
!99 = distinct !{null, !100, !"__warned", i1 false, i1 false}
!100 = !{!"../net/can/proc.c", i32 378, i32 2}
!101 = !{!"sp"}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2149369284}
!112 = !{i64 2149369550}
