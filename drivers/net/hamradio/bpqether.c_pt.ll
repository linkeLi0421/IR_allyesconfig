; ModuleID = '/llk/IR_all_yes/drivers/net/hamradio/bpqether.c_pt.bc'
source_filename = "../drivers/net/hamradio/bpqether.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.54, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.54 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.bpqdev = type { %struct.list_head, ptr, ptr, [6 x i8], [6 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.140, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.140 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.111, [48 x i8], %union.anon.112, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.114, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, ptr }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.116, i32, i32, i32, i16, i16, %union.anon.118, i32, %union.anon.119, %union.anon.120, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.116 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i16 }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.bpq_req = type { i32, i32, i32, i32, i8, i32, i32, i32, i32 }
%struct.bpq_ethaddr = type { [6 x i8], [6 x i8] }

@bpq_packet_type = internal global %struct.packet_type { i16 2303, i8 0, ptr null, ptr null, ptr @bpq_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@bpq_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @bpq_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpqether\00", [23 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@bpq_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bpq_devices, ptr @bpq_devices }, [24 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author502 = internal constant [55 x i8] c"bpqether.author=Joerg Reuter DL1BKE <jreuter@yaina.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description503 = internal constant [70 x i8] c"bpqether.description=Transmit and receive AX.25 packets over Ethernet\00", section ".modinfo", align 1
@__UNIQUE_ID_file504 = internal constant [44 x i8] c"bpqether.file=drivers/net/hamradio/bpqether\00", section ".modinfo", align 1
@__UNIQUE_ID_license505 = internal constant [21 x i8] c"bpqether.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bpqether__506_608_bpq_init_driver6 = internal global ptr @bpq_init_driver, section ".initcall6.init", align 4
@__exitcall_bpq_cleanup_driver = internal global ptr @bpq_cleanup_driver, section ".exitcall.exit", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@bpq_get_ax25_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/hamradio/bpqether.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"bpq%d\00", [26 x i8] zeroinitializer }, align 32
@bpq_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @bpq_open, ptr @bpq_close, ptr @bpq_xmit, ptr null, ptr null, ptr null, ptr null, ptr @bpq_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpq_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax25_header_ops = external dso_local constant %struct.header_ops, align 4
@ax25_bcast = external dso_local local_unnamed_addr constant %struct.ax25_address, align 1
@ax25_defaddr = external dso_local constant %struct.ax25_address, align 1
@bpq_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bpqether: out of memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpq_xmit\00", [23 x i8] zeroinitializer }, align 32
@bpq_xmit._entry_ptr = internal global ptr @bpq_xmit._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&bpq_netdev_addr_lock_key\00", [38 x i8] zeroinitializer }, align 32
@bpq_netdev_addr_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&bpq_netdev_xmit_lock_key\00", [38 x i8] zeroinitializer }, align 32
@bpq_netdev_xmit_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bpq_seqops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bpq_seq_start, ptr @bpq_seq_stop, ptr @bpq_seq_next, ptr @bpq_seq_show }, [16 x i8] zeroinitializer }, align 32
@bpq_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013bpq: cannot create /proc/net/bpqether entry.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpq_init_driver\00", [16 x i8] zeroinitializer }, align 32
@bpq_init_driver._entry_ptr = internal global ptr @bpq_init_driver._entry, section ".printk_index", align 4
@bpq_init_driver._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.17, ptr @.str.4, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@bpq_init_driver._entry_ptr.19 = internal global ptr @bpq_init_driver._entry.18, section ".printk_index", align 4
@banner = internal constant [38 x i8] c"\016AX.25: bpqether driver version 004\0A\00", section ".init.rodata", align 1
@bpq_seq_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpq_seq_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@bpq_seq_next.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dev   ether      destination        accept from\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%-5s %-10s %pM  \00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"*\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 35312, i64 35313]
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"bpq_dev_notifier\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 95, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 595, i32 20 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"bpq_devices\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 108, i32 8 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 695, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 151, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 161, i32 57 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 485, i32 9 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"bpq_netdev_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 447, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 267, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 156, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 127, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [25 x i8] c"bpq_netdev_addr_lock_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 116, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 122, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"bpq_netdev_xmit_lock_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 115, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"bpq_seqops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 438, i32 36 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 572, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 582, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 402, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 421, i32 5 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 425, i32 19 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 430, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [35 x i8] c"../drivers/net/hamradio/bpqether.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 432, i32 20 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_description503, ptr @__UNIQUE_ID_file504, ptr @__UNIQUE_ID_license505, ptr @__exitcall_bpq_cleanup_driver, ptr @__initcall__kmod_bpqether__506_608_bpq_init_driver6, ptr @bpq_cleanup_driver, ptr @bpq_init_driver._entry, ptr @bpq_init_driver._entry.18, ptr @bpq_init_driver._entry_ptr, ptr @bpq_init_driver._entry_ptr.19, ptr @bpq_xmit._entry, ptr @bpq_xmit._entry_ptr, ptr @bpq_dev_notifier, ptr @.str, ptr @bpq_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @bpq_netdev_ops, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @bpq_netdev_addr_lock_key, ptr @.str.15, ptr @bpq_netdev_xmit_lock_key, ptr @bpq_seqops, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_netdev_addr_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_netdev_xmit_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_seqops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpq_init_driver._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpq_cleanup_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_remove_pack(ptr noundef nonnull @bpq_packet_type) #9
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @bpq_dev_notifier) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #9
  tail call void @rtnl_lock() #9
  %1 = load volatile ptr, ptr @bpq_devices, align 4
  %cmp.i.not2 = icmp eq ptr %1, @bpq_devices
  br i1 %cmp.i.not2, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %bpq_free_device.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %28, %bpq_free_device.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %axdev = getelementptr inbounds %struct.bpqdev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %axdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %axdev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2304
  %ethdev.i = getelementptr i8, ptr %4, i32 2312
  %5 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ethdev.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %while.body.dev_put.exit.i_crit_edge, label %do.body1.i.i

while.body.dev_put.exit.i_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %while.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i.i = add i32 %19, -1
  store i32 %add13.i.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !97

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #9, !srcloc !98
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %while.body.dev_put.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dev_put.exit.i.bpq_free_device.exit_crit_edge

dev_put.exit.i.bpq_free_device.exit_crit_edge:    ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpq_free_device.exit

if.end.i.i.i:                                     ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %4, i32 2308
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %bpq_free_device.exit

bpq_free_device.exit:                             ; preds = %if.end.i.i.i, %dev_put.exit.i.bpq_free_device.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %4, i32 2308
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %4, ptr noundef null) #9
  %28 = load volatile ptr, ptr @bpq_devices, align 4
  %cmp.i.not = icmp eq ptr %28, @bpq_devices
  br i1 %cmp.i.not, label %bpq_free_device.exit.while.end_crit_edge, label %bpq_free_device.exit.while.body_crit_edge

bpq_free_device.exit.while.body_crit_edge:        ; preds = %bpq_free_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

bpq_free_device.exit.while.end_crit_edge:         ; preds = %bpq_free_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %bpq_free_device.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 292, ptr noundef %0, ptr noundef nonnull @bpq_seqops, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_add_pack(ptr noundef nonnull @bpq_packet_type) #9
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @bpq_dev_notifier) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %banner.sink = phi ptr [ @banner, %if.end ], [ @.str.16, %entry.return_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %entry.return_crit_edge ]
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %banner.sink) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_rcv(ptr noundef %skb, ptr noundef readonly %dev, ptr nocapture noundef readnone %ptype, ptr nocapture noundef readnone %orig_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %1, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread88, !prof !97

skb_share_check.exit.thread88:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end4

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end4_crit_edge

skb_share_check.exit.if.end4_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %skb_share_check.exit.if.end4_crit_edge, %skb_share_check.exit.thread88
  %skb.addr.0.i91 = phi ptr [ %call7.i, %skb_share_check.exit.thread88 ], [ %skb, %skb_share_check.exit.if.end4_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.i.i)
  %cmp.i61 = icmp ugt i32 %sub.i.i, 13
  br i1 %cmp.i61, label %if.end4.if.end7_crit_edge, label %if.end.i, !prof !99

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %5)
  %cmp3.i = icmp ult i32 %5, 14
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !97

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 14, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i91, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end7_crit_edge

pskb_may_pull.exit.if.end7_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop

if.end7:                                          ; preds = %pskb_may_pull.exit.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end7.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end7.rcu_read_lock.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end7
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end7.rcu_read_lock.exit_crit_edge
  %call.i62 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i62, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge, label %land.lhs.true.i65

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i65:                                ; preds = %rcu_read_lock.exit
  %call1.i63 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true2.i66, label %land.lhs.true.i65.for.cond.i.preheader_crit_edge

land.lhs.true.i65.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i65
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i66.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i66.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i66
  %.b25.i = load i1, ptr @bpq_get_ax25_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i67

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i67:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpq_get_ax25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 152, ptr noundef nonnull @.str.5) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i67, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true2.i66.for.cond.i.preheader_crit_edge, %land.lhs.true.i65.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %bpq.0.in.i = phi ptr [ %bpq.0.i, %for.body.i.for.cond.i_crit_edge ], [ @bpq_devices, %for.cond.i.preheader ]
  %12 = ptrtoint ptr %bpq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bpq.0.i = load volatile ptr, ptr %bpq.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bpq.0.i, @bpq_devices
  br i1 %cmp.not.i, label %for.cond.i.drop_unlock_crit_edge, label %for.body.i

for.cond.i.drop_unlock_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_unlock

for.body.i:                                       ; preds = %for.cond.i
  %ethdev.i = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethdev.i, align 4
  %cmp11.i = icmp eq ptr %14, %dev
  br i1 %cmp11.i, label %bpq_get_ax25_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

bpq_get_ax25_dev.exit:                            ; preds = %for.body.i
  %axdev.i = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i, i32 0, i32 2
  %15 = ptrtoint ptr %axdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %axdev.i, align 4
  %cmp9 = icmp eq ptr %16, null
  br i1 %cmp9, label %bpq_get_ax25_dev.exit.drop_unlock_crit_edge, label %lor.lhs.false

bpq_get_ax25_dev.exit.drop_unlock_crit_edge:      ; preds = %bpq_get_ax25_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_unlock

lor.lhs.false:                                    ; preds = %bpq_get_ax25_dev.exit
  %state.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.drop_unlock_crit_edge, label %if.end12

lor.lhs.false.drop_unlock_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_unlock

if.end12:                                         ; preds = %lor.lhs.false
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 18
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 15, i32 0, i32 21
  %acpt_addr = getelementptr i8, ptr %16, i32 2326
  %19 = ptrtoint ptr %acpt_addr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %acpt_addr, align 2
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool15.not = icmp eq i8 %21, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end12
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %h_source to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %h_source, align 4
  %28 = ptrtoint ptr %acpt_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %acpt_addr, align 4
  %xor.i = xor i32 %29, %27
  %add.ptr.i69 = getelementptr i8, ptr %h_source, i32 4
  %30 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %add.ptr.i69, align 2
  %add.ptr1.i = getelementptr i8, ptr %16, i32 2330
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %33, %31
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i70 = icmp eq i32 %or.i, 0
  br i1 %cmp.i70, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.drop_unlock_crit_edge

land.lhs.true.drop_unlock_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_unlock

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end12.if.end20_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 12
  %34 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end20.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end20.skb_cloned.exit.i_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i71 = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end20.skb_cloned.exit.i_crit_edge
  %39 = phi i1 [ true, %if.end20.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i71, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 19
  %40 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i.i.i, align 4
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 13
  %or.cond.i.i = and i1 %39, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end24_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end24_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %44 = tail call i32 @llvm.usub.sat.i32(i32 14, i32 %sub.ptr.sub.i.i.i) #9
  %add.i.i = add nuw nsw i32 %44, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb.addr.0.i91, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool22.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool22.not, label %skb_cow.exit.if.end24_crit_edge, label %skb_cow.exit.drop_unlock_crit_edge

skb_cow.exit.drop_unlock_crit_edge:               ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop_unlock

skb_cow.exit.if.end24_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %skb_cow.exit.if.end24_crit_edge, %skb_cloned.exit.i.if.end24_crit_edge
  %45 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv26 = zext i8 %48 to i32
  %arrayidx28 = getelementptr i8, ptr %46, i32 1
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %50 to i32
  %mul = shl nuw nsw i32 %conv29, 8
  %add = or i32 %mul, %conv26
  %sub = add nsw i32 %add, -5
  %call30 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i91, i32 noundef 2) #9
  tail call void @skb_trim(ptr noundef nonnull %skb.addr.0.i91, i32 noundef %sub) #9
  %stats = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36
  %51 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stats, align 8
  %inc = add i32 %52, 1
  store i32 %inc, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 2
  %53 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_bytes, align 8
  %add32 = add i32 %54, %sub
  store i32 %add32, ptr %rx_bytes, align 8
  %call33 = tail call ptr @skb_push(ptr noundef nonnull %skb.addr.0.i91, i32 noundef 1) #9
  %55 = ptrtoint ptr %call33 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %call33, align 1
  %56 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0.i91, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %16, ptr %56, align 8
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %60 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i73 = trunc i32 %sub.ptr.sub.i.i to i16
  %62 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i73, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 15
  %63 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i91, i32 0, i32 15, i32 0, i32 18
  %64 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %protocol, align 8
  %call35 = tail call i32 @netif_rx(ptr noundef nonnull %skb.addr.0.i91) #9
  br label %unlock

unlock:                                           ; preds = %drop_unlock, %if.end24
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i75, label %unlock.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i78

unlock.rcu_read_unlock.exit_crit_edge:            ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i78:                                ; preds = %unlock
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit_crit_edge, %unlock.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %65 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i82 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i = add i32 %68, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

drop_unlock:                                      ; preds = %skb_cow.exit.drop_unlock_crit_edge, %land.lhs.true.drop_unlock_crit_edge, %lor.lhs.false.drop_unlock_crit_edge, %bpq_get_ax25_dev.exit.drop_unlock_crit_edge, %for.cond.i.drop_unlock_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i91, i32 noundef 0) #9
  br label %unlock

drop:                                             ; preds = %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %skb.addr.0.i91, %pskb_may_pull.exit.drop_crit_edge ], [ %skb, %entry.drop_crit_edge ], [ %skb.addr.0.i91, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %drop, %rcu_read_unlock.exit, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ 0, %drop ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %skb_share_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i28 = icmp eq i16 %5, 1
  br i1 %cmp.i28, label %dev_is_ethdev.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

dev_is_ethdev.exit:                               ; preds = %if.end
  %call.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.7, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %dev_is_ethdev.exit.cleanup_crit_edge, label %if.end6

dev_is_ethdev.exit.cleanup_crit_edge:             ; preds = %dev_is_ethdev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %dev_is_ethdev.exit
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end6.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 6, label %sw.bb16
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %call.i29 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i29, label %sw.bb.for.cond.i.preheader_crit_edge, label %land.lhs.true.i

sw.bb.for.cond.i.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b25.i = load i1, ptr @bpq_get_ax25_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpq_get_ax25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 152, ptr noundef nonnull @.str.5) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %sw.bb.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %bpq.0.in.i = phi ptr [ %bpq.0.i, %for.body.i.for.cond.i_crit_edge ], [ @bpq_devices, %for.cond.i.preheader ]
  %7 = ptrtoint ptr %bpq.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bpq.0.i = load volatile ptr, ptr %bpq.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %bpq.0.i, @bpq_devices
  br i1 %cmp.not.i, label %for.cond.i.if.then8_crit_edge, label %for.body.i

for.cond.i.if.then8_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

for.body.i:                                       ; preds = %for.cond.i
  %ethdev.i = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethdev.i, align 4
  %cmp11.i = icmp eq ptr %9, %1
  br i1 %cmp11.i, label %bpq_get_ax25_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

bpq_get_ax25_dev.exit:                            ; preds = %for.body.i
  %axdev.i = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %axdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %axdev.i, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %bpq_get_ax25_dev.exit.if.then8_crit_edge, label %bpq_get_ax25_dev.exit.cleanup_crit_edge

bpq_get_ax25_dev.exit.cleanup_crit_edge:          ; preds = %bpq_get_ax25_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

bpq_get_ax25_dev.exit.if.then8_crit_edge:         ; preds = %bpq_get_ax25_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %bpq_get_ax25_dev.exit.if.then8_crit_edge, %for.cond.i.if.then8_crit_edge
  %call.i30 = tail call ptr @alloc_netdev_mqs(i32 noundef 28, ptr noundef nonnull @.str.8, i8 noundef zeroext 0, ptr noundef nonnull @bpq_setup, i32 noundef 1, i32 noundef 1) #9
  %tobool.not.i31 = icmp eq ptr %call.i30, null
  br i1 %tobool.not.i31, label %if.then8.cleanup_crit_edge, label %if.end.i

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then8
  %add.ptr.i.i = getelementptr i8, ptr %call.i30, i32 2304
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end.i.dev_hold.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %13 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add13.i.i = add i32 %24, 1
  store i32 %add13.i.i, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !97

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #9, !srcloc !98
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end.i.dev_hold.exit.i_crit_edge
  %ethdev.i32 = getelementptr i8, ptr %call.i30, i32 2312
  %26 = ptrtoint ptr %ethdev.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %1, ptr %ethdev.i32, align 4
  %axdev.i33 = getelementptr i8, ptr %call.i30, i32 2316
  %27 = ptrtoint ptr %axdev.i33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i30, ptr %axdev.i33, align 4
  %dest_addr.i = getelementptr i8, ptr %call.i30, i32 2320
  %28 = call ptr @memset(ptr %dest_addr.i, i32 255, i32 12)
  %call3.i34 = tail call i32 @register_netdevice(ptr noundef nonnull %call.i30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i34)
  %tobool4.not.i35 = icmp eq i32 %call3.i34, 0
  br i1 %tobool4.not.i35, label %if.end6.i, label %error.i

if.end6.i:                                        ; preds = %dev_hold.exit.i
  %dep_map.i.i = getelementptr inbounds %struct.net_device, ptr %call.i30, i32 0, i32 63, i32 0, i32 0, i32 4
  %wait_type_inner.i.i = getelementptr inbounds %struct.net_device, ptr %call.i30, i32 0, i32 63, i32 0, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %wait_type_inner.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %wait_type_inner.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @bpq_netdev_addr_lock_key, i32 noundef 0, i8 noundef zeroext %30, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %num_tx_queues.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i30, i32 0, i32 104
  %31 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp1.not.i.i.i = icmp eq i32 %32, 0
  br i1 %cmp1.not.i.i.i, label %if.end6.i.bpq_set_lockdep_class.exit.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end6.i.bpq_set_lockdep_class.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpq_set_lockdep_class.exit.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end6.i
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i30, i32 0, i32 103
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.02.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i.i, align 128
  %dep_map.i.i.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.02.i.i.i, i32 10, i32 0, i32 0, i32 4
  %wait_type_inner.i.i.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.02.i.i.i, i32 10, i32 0, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %wait_type_inner.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %wait_type_inner.i.i.i.i, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @bpq_netdev_xmit_lock_key, i32 noundef 0, i8 noundef zeroext %36, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %inc.i.i.i = add nuw i32 %i.02.i.i.i, 1
  %37 = ptrtoint ptr %num_tx_queues.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx_queues.i.i.i, align 4
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %38
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.bpq_set_lockdep_class.exit.i_crit_edge

for.body.i.i.i.bpq_set_lockdep_class.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpq_set_lockdep_class.exit.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

bpq_set_lockdep_class.exit.i:                     ; preds = %for.body.i.i.i.bpq_set_lockdep_class.exit.i_crit_edge, %if.end6.i.bpq_set_lockdep_class.exit.i_crit_edge
  %39 = load ptr, ptr @bpq_devices, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i.i, ptr noundef nonnull @bpq_devices, ptr noundef %39) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %bpq_set_lockdep_class.exit.i.cleanup_crit_edge

bpq_set_lockdep_class.exit.i.cleanup_crit_edge:   ; preds = %bpq_set_lockdep_class.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %bpq_set_lockdep_class.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %add.ptr.i.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %call.i30, i32 2308
  %41 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bpq_devices, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !102
  store volatile ptr %add.ptr.i.i, ptr @bpq_devices, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i, ptr %prev37.i.i.i, align 4
  br label %cleanup

error.i:                                          ; preds = %dev_hold.exit.i
  br i1 %tobool.not.i.i, label %error.i.dev_put.exit.i_crit_edge, label %do.body1.i10.i

error.i.dev_put.exit.i_crit_edge:                 ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i

do.body1.i10.i:                                   ; preds = %error.i
  %43 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %pcpu_refcnt.i2.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %44 = ptrtoint ptr %pcpu_refcnt.i2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcpu_refcnt.i2.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %47 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i3.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i3.i to ptr
  %cpu.i4.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %cpu.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cpu.i4.i, align 4
  %arrayidx.i5.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i5.i, align 4
  %add.i6.i = add i32 %52, %46
  %53 = inttoptr i32 %add.i6.i to ptr
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add13.i7.i = add i32 %55, -1
  store i32 %add13.i7.i, ptr %53, align 4
  %56 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i8.i = and i32 %56, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i8.i)
  %tobool24.not.i9.i = icmp eq i32 %and.i.i.i8.i, 0
  br i1 %tobool24.not.i9.i, label %if.then28.i11.i, label %do.body1.i10.i.do.end30.i12.i_crit_edge, !prof !97

do.body1.i10.i.do.end30.i12.i_crit_edge:          ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i12.i

if.then28.i11.i:                                  ; preds = %do.body1.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i12.i

do.end30.i12.i:                                   ; preds = %if.then28.i11.i, %do.body1.i10.i.do.end30.i12.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %43) #9, !srcloc !98
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i12.i, %error.i.dev_put.exit.i_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %call.i30) #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end6
  %call.i36 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i36, label %sw.bb11.for.cond.i50.preheader_crit_edge, label %land.lhs.true.i39

sw.bb11.for.cond.i50.preheader_crit_edge:         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i50.preheader

land.lhs.true.i39:                                ; preds = %sw.bb11
  %call1.i37 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true2.i42, label %land.lhs.true.i39.for.cond.i50.preheader_crit_edge

land.lhs.true.i39.for.cond.i50.preheader_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i50.preheader

land.lhs.true2.i42:                               ; preds = %land.lhs.true.i39
  %call3.i40 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i40)
  %tobool4.not.i41 = icmp eq i32 %call3.i40, 0
  br i1 %tobool4.not.i41, label %land.lhs.true2.i42.for.cond.i50.preheader_crit_edge, label %land.lhs.true5.i44

land.lhs.true2.i42.for.cond.i50.preheader_crit_edge: ; preds = %land.lhs.true2.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i50.preheader

land.lhs.true5.i44:                               ; preds = %land.lhs.true2.i42
  %.b25.i43 = load i1, ptr @bpq_get_ax25_dev.__warned, align 1
  br i1 %.b25.i43, label %land.lhs.true5.i44.for.cond.i50.preheader_crit_edge, label %if.then.i45

land.lhs.true5.i44.for.cond.i50.preheader_crit_edge: ; preds = %land.lhs.true5.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i50.preheader

if.then.i45:                                      ; preds = %land.lhs.true5.i44
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpq_get_ax25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 152, ptr noundef nonnull @.str.5) #9
  br label %for.cond.i50.preheader

for.cond.i50.preheader:                           ; preds = %if.then.i45, %land.lhs.true5.i44.for.cond.i50.preheader_crit_edge, %land.lhs.true2.i42.for.cond.i50.preheader_crit_edge, %land.lhs.true.i39.for.cond.i50.preheader_crit_edge, %sw.bb11.for.cond.i50.preheader_crit_edge
  br label %for.cond.i50

for.cond.i50:                                     ; preds = %for.body.i53.for.cond.i50_crit_edge, %for.cond.i50.preheader
  %bpq.0.in.i47 = phi ptr [ %bpq.0.i48, %for.body.i53.for.cond.i50_crit_edge ], [ @bpq_devices, %for.cond.i50.preheader ]
  %57 = ptrtoint ptr %bpq.0.in.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %bpq.0.i48 = load volatile ptr, ptr %bpq.0.in.i47, align 4
  %cmp.not.i49 = icmp eq ptr %bpq.0.i48, @bpq_devices
  br i1 %cmp.not.i49, label %for.cond.i50.cleanup_crit_edge, label %for.body.i53

for.cond.i50.cleanup_crit_edge:                   ; preds = %for.cond.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i53:                                     ; preds = %for.cond.i50
  %ethdev.i51 = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i48, i32 0, i32 1
  %58 = ptrtoint ptr %ethdev.i51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ethdev.i51, align 4
  %cmp11.i52 = icmp eq ptr %59, %1
  br i1 %cmp11.i52, label %bpq_get_ax25_dev.exit57, label %for.body.i53.for.cond.i50_crit_edge

for.body.i53.for.cond.i50_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i50

bpq_get_ax25_dev.exit57:                          ; preds = %for.body.i53
  %axdev.i54 = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i48, i32 0, i32 2
  %60 = ptrtoint ptr %axdev.i54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %axdev.i54, align 4
  %cmp13.not = icmp eq ptr %61, null
  br i1 %cmp13.not, label %bpq_get_ax25_dev.exit57.cleanup_crit_edge, label %if.then14

bpq_get_ax25_dev.exit57.cleanup_crit_edge:        ; preds = %bpq_get_ax25_dev.exit57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then14:                                        ; preds = %bpq_get_ax25_dev.exit57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef nonnull %61) #9
  br label %cleanup

sw.bb16:                                          ; preds = %if.end6
  %call.i58 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i58, label %sw.bb16.for.cond.i72.preheader_crit_edge, label %land.lhs.true.i61

sw.bb16.for.cond.i72.preheader_crit_edge:         ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i72.preheader

land.lhs.true.i61:                                ; preds = %sw.bb16
  %call1.i59 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true2.i64, label %land.lhs.true.i61.for.cond.i72.preheader_crit_edge

land.lhs.true.i61.for.cond.i72.preheader_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i72.preheader

land.lhs.true2.i64:                               ; preds = %land.lhs.true.i61
  %call3.i62 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i62)
  %tobool4.not.i63 = icmp eq i32 %call3.i62, 0
  br i1 %tobool4.not.i63, label %land.lhs.true2.i64.for.cond.i72.preheader_crit_edge, label %land.lhs.true5.i66

land.lhs.true2.i64.for.cond.i72.preheader_crit_edge: ; preds = %land.lhs.true2.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i72.preheader

land.lhs.true5.i66:                               ; preds = %land.lhs.true2.i64
  %.b25.i65 = load i1, ptr @bpq_get_ax25_dev.__warned, align 1
  br i1 %.b25.i65, label %land.lhs.true5.i66.for.cond.i72.preheader_crit_edge, label %if.then.i67

land.lhs.true5.i66.for.cond.i72.preheader_crit_edge: ; preds = %land.lhs.true5.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i72.preheader

if.then.i67:                                      ; preds = %land.lhs.true5.i66
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpq_get_ax25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 152, ptr noundef nonnull @.str.5) #9
  br label %for.cond.i72.preheader

for.cond.i72.preheader:                           ; preds = %if.then.i67, %land.lhs.true5.i66.for.cond.i72.preheader_crit_edge, %land.lhs.true2.i64.for.cond.i72.preheader_crit_edge, %land.lhs.true.i61.for.cond.i72.preheader_crit_edge, %sw.bb16.for.cond.i72.preheader_crit_edge
  br label %for.cond.i72

for.cond.i72:                                     ; preds = %for.body.i75.for.cond.i72_crit_edge, %for.cond.i72.preheader
  %bpq.0.in.i69 = phi ptr [ %bpq.0.i70, %for.body.i75.for.cond.i72_crit_edge ], [ @bpq_devices, %for.cond.i72.preheader ]
  %62 = ptrtoint ptr %bpq.0.in.i69 to i32
  call void @__asan_load4_noabort(i32 %62)
  %bpq.0.i70 = load volatile ptr, ptr %bpq.0.in.i69, align 4
  %cmp.not.i71 = icmp eq ptr %bpq.0.i70, @bpq_devices
  br i1 %cmp.not.i71, label %for.cond.i72.cleanup_crit_edge, label %for.body.i75

for.cond.i72.cleanup_crit_edge:                   ; preds = %for.cond.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i75:                                     ; preds = %for.cond.i72
  %ethdev.i73 = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i70, i32 0, i32 1
  %63 = ptrtoint ptr %ethdev.i73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ethdev.i73, align 4
  %cmp11.i74 = icmp eq ptr %64, %1
  br i1 %cmp11.i74, label %bpq_get_ax25_dev.exit79, label %for.body.i75.for.cond.i72_crit_edge

for.body.i75.for.cond.i72_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i72

bpq_get_ax25_dev.exit79:                          ; preds = %for.body.i75
  %axdev.i76 = getelementptr inbounds %struct.bpqdev, ptr %bpq.0.i70, i32 0, i32 2
  %65 = ptrtoint ptr %axdev.i76 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %axdev.i76, align 4
  %cmp18.not = icmp eq ptr %66, null
  br i1 %cmp18.not, label %bpq_get_ax25_dev.exit79.cleanup_crit_edge, label %if.then19

bpq_get_ax25_dev.exit79.cleanup_crit_edge:        ; preds = %bpq_get_ax25_dev.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %bpq_get_ax25_dev.exit79
  %add.ptr.i.i80 = getelementptr i8, ptr %66, i32 2304
  %ethdev.i81 = getelementptr i8, ptr %66, i32 2312
  %67 = ptrtoint ptr %ethdev.i81 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ethdev.i81, align 4
  %tobool.not.i.i82 = icmp eq ptr %68, null
  br i1 %tobool.not.i.i82, label %if.then19.dev_put.exit.i95_crit_edge, label %do.body1.i.i91

if.then19.dev_put.exit.i95_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i95

do.body1.i.i91:                                   ; preds = %if.then19
  %69 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !95
  %pcpu_refcnt.i.i83 = getelementptr inbounds %struct.net_device, ptr %68, i32 0, i32 118
  %70 = ptrtoint ptr %pcpu_refcnt.i.i83 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pcpu_refcnt.i.i83, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i84 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i84 to ptr
  %cpu.i.i85 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu.i.i85 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu.i.i85, align 4
  %arrayidx.i.i86 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i.i86, align 4
  %add.i.i87 = add i32 %78, %72
  %79 = inttoptr i32 %add.i.i87 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add13.i.i88 = add i32 %81, -1
  store i32 %add13.i.i88, ptr %79, align 4
  %82 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !96
  %and.i.i.i.i89 = and i32 %82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i89)
  %tobool24.not.i.i90 = icmp eq i32 %and.i.i.i.i89, 0
  br i1 %tobool24.not.i.i90, label %if.then28.i.i92, label %do.body1.i.i91.do.end30.i.i93_crit_edge, !prof !97

do.body1.i.i91.do.end30.i.i93_crit_edge:          ; preds = %do.body1.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30.i.i93

if.then28.i.i92:                                  ; preds = %do.body1.i.i91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end30.i.i93

do.end30.i.i93:                                   ; preds = %if.then28.i.i92, %do.body1.i.i91.do.end30.i.i93_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %69) #9, !srcloc !98
  br label %dev_put.exit.i95

dev_put.exit.i95:                                 ; preds = %do.end30.i.i93, %if.then19.dev_put.exit.i95_crit_edge
  %call.i.i.i94 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i.i80) #9
  br i1 %call.i.i.i94, label %if.end.i.i.i96, label %dev_put.exit.i95.bpq_free_device.exit_crit_edge

dev_put.exit.i95.bpq_free_device.exit_crit_edge:  ; preds = %dev_put.exit.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %bpq_free_device.exit

if.end.i.i.i96:                                   ; preds = %dev_put.exit.i95
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %66, i32 2308
  %83 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i, align 4
  %85 = ptrtoint ptr %add.ptr.i.i80 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i.i80, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %bpq_free_device.exit

bpq_free_device.exit:                             ; preds = %if.end.i.i.i96, %dev_put.exit.i95.bpq_free_device.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %66, i32 2308
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @unregister_netdevice_queue(ptr noundef nonnull %66, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %bpq_free_device.exit, %bpq_get_ax25_dev.exit79.cleanup_crit_edge, %for.cond.i72.cleanup_crit_edge, %if.then14, %bpq_get_ax25_dev.exit57.cleanup_crit_edge, %for.cond.i50.cleanup_crit_edge, %dev_put.exit.i, %if.end.i.i.i, %bpq_set_lockdep_class.exit.i.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %bpq_get_ax25_dev.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %dev_is_ethdev.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpq_setup(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bpq_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 4096, ptr %features, align 16
  %header_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %4 = ptrtoint ptr %header_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ax25_header_ops, ptr %header_ops, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 89, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %7 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 256, ptr %mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %addr_len, align 1
  %broadcast = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 99
  %9 = call ptr @memcpy(ptr %broadcast, ptr @ax25_bcast, i32 7)
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @ax25_defaddr, i32 noundef 7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_open(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_close(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %1)
  %cmp = icmp eq i16 %1, 2048
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @ax25_ip_xmit(ptr noundef %skb) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %6 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end4.skb_cloned.exit.i_crit_edge, label %land.rhs.i.i

if.end4.skb_cloned.exit.i_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_cloned.exit.i

land.rhs.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %10, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %land.rhs.i.i, %if.end4.skb_cloned.exit.i_crit_edge
  %11 = phi i1 [ true, %if.end4.skb_cloned.exit.i_crit_edge ], [ %cmp.i.not.i, %land.rhs.i.i ]
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub.i.i.i)
  %tobool.not.i3.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 15
  %or.cond.i.i = and i1 %11, %tobool.not.i3.i
  br i1 %or.cond.i.i, label %skb_cloned.exit.i.if.end13_crit_edge, label %skb_cow.exit

skb_cloned.exit.i.if.end13_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

skb_cow.exit:                                     ; preds = %skb_cloned.exit.i
  %16 = tail call i32 @llvm.usub.sat.i32(i32 16, i32 %sub.ptr.sub.i.i.i) #9
  %add.i.i = add nuw nsw i32 %16, 127
  %and.i4.i = and i32 %add.i.i, 128
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4.i, i32 noundef 0, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow.exit.if.end13_crit_edge, label %if.then7

skb_cow.exit.if.end13_crit_edge:                  ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %skb_cow.exit
  %call8 = tail call i32 @net_ratelimit() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then7.if.end12_crit_edge, label %do.end

if.then7.if.end12_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.then7.if.end12_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end13:                                         ; preds = %skb_cow.exit.if.end13_crit_edge, %skb_cloned.exit.i.if.end13_crit_edge
  %call14 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #9
  %add = add i32 %5, 5
  %conv15 = trunc i32 %add to i8
  %incdec.ptr = getelementptr i8, ptr %call14, i32 1
  %17 = ptrtoint ptr %call14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv15, ptr %call14, align 1
  %div = sdiv i32 %add, 256
  %conv17 = trunc i32 %div to i8
  %18 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %incdec.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %if.end13.if.then23_crit_edge, label %bpq_get_ether_dev.exit

if.end13.if.then23_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

bpq_get_ether_dev.exit:                           ; preds = %if.end13
  %ethdev.i = getelementptr i8, ptr %dev, i32 2312
  %19 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ethdev.i, align 4
  %cmp21 = icmp eq ptr %20, null
  br i1 %cmp21, label %bpq_get_ether_dev.exit.if.then23_crit_edge, label %if.end24

bpq_get_ether_dev.exit.if.then23_crit_edge:       ; preds = %bpq_get_ether_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %bpq_get_ether_dev.exit.if.then23_crit_edge, %if.end13.if.then23_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %21 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

if.end24:                                         ; preds = %bpq_get_ether_dev.exit
  %23 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %23, align 8
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %29 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %protocol, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i, ptr %network_header.i, align 4
  %dest_addr = getelementptr i8, ptr %dev, i32 2320
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 49
  %33 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i61 = icmp eq ptr %34, null
  br i1 %tobool.not.i61, label %if.end24.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

if.end24.dev_hard_header.exit_crit_edge:          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %if.end24
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool2.not.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %36(ptr noundef %skb, ptr noundef nonnull %20, i16 noundef zeroext 2303, ptr noundef %dest_addr, ptr noundef null, i32 noundef 0) #9
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %if.end24.dev_hard_header.exit_crit_edge
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 1
  %37 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_packets, align 4
  %inc29 = add i32 %38, 1
  store i32 %inc29, ptr %tx_packets, align 4
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 36, i32 3
  %41 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_bytes, align 4
  %add32 = add i32 %42, %40
  store i32 %add32, ptr %tx_bytes, align 4
  %call33 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 103
  %43 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %44) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_hard_header.exit, %if.then23, %if.end12, %if.then3, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end12 ], [ 0, %if.then23 ], [ 0, %dev_hard_header.exit ], [ 0, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_set_mac_address(ptr noundef %dev, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #3 align 64 {
entry:
  %req = alloca %struct.bpq_req, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %req) #9
  %0 = call ptr @memset(ptr %req, i32 255, i32 36)
  %call1 = tail call zeroext i1 @capable(i32 noundef 12) #9
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35312, label %if.end59.i.i
    i32 35313, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 36, i32 -1226833920) #13, !srcloc !103
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !99

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %req, i32 noundef 36) #9
  %3 = call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !104
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %req, ptr noundef %data, i32 noundef 36) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !99

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i74 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 36, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 36, %res.0.i.i74
  %add.ptr.i.i = getelementptr i8, ptr %req, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i74)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  %dest_addr = getelementptr i8, ptr %dev, i32 2320
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #9
  %call.i.i30 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i30, label %sw.bb7.if.then11.i.i46_crit_edge, label %land.lhs.true.i.i33

sw.bb7.if.then11.i.i46_crit_edge:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i46

land.lhs.true.i.i33:                              ; preds = %sw.bb7
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 6, i32 -1226833920) #13, !srcloc !103
  %asmresult.i.i31 = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i31)
  %cmp.i6.i32 = icmp eq i32 %asmresult.i.i31, 0
  br i1 %cmp.i6.i32, label %if.end.i.i43, label %land.lhs.true.i.i33.if.then11.i.i46_crit_edge, !prof !99

land.lhs.true.i.i33.if.then11.i.i46_crit_edge:    ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i46

if.end.i.i43:                                     ; preds = %land.lhs.true.i.i33
  %call.i.i.i34 = tail call zeroext i1 @__kasan_check_write(ptr noundef %dest_addr, i32 noundef 6) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i35 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i35 to ptr
  %cpu_domain.i.i.i.i.i36 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i36) #5, !srcloc !104
  %and.i.i.i.i37 = and i32 %10, -13
  %or.i.i.i.i38 = or i32 %and.i.i.i.i37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i38) #9, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %call1.i.i.i39 = tail call i32 @arm_copy_from_user(ptr noundef %dest_addr, ptr noundef %data, i32 noundef 6) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i39)
  %tobool4.not.i.i42 = icmp eq i32 %call1.i.i.i39, 0
  br i1 %tobool4.not.i.i42, label %if.end12, label %if.end.i.i43.if.then11.i.i46_crit_edge, !prof !99

if.end.i.i43.if.then11.i.i46_crit_edge:           ; preds = %if.end.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i46

if.then11.i.i46:                                  ; preds = %if.end.i.i43.if.then11.i.i46_crit_edge, %land.lhs.true.i.i33.if.then11.i.i46_crit_edge, %sw.bb7.if.then11.i.i46_crit_edge
  %res.0.i.i4179 = phi i32 [ %call1.i.i.i39, %if.end.i.i43.if.then11.i.i46_crit_edge ], [ 6, %sw.bb7.if.then11.i.i46_crit_edge ], [ 6, %land.lhs.true.i.i33.if.then11.i.i46_crit_edge ]
  %sub.i.i44 = sub i32 6, %res.0.i.i4179
  %add.ptr.i.i45 = getelementptr i8, ptr %dest_addr, i32 %sub.i.i44
  %11 = call ptr @memset(ptr %add.ptr.i.i45, i32 0, i32 %res.0.i.i4179)
  br label %cleanup

if.end12:                                         ; preds = %if.end.i.i43
  %acpt_addr = getelementptr i8, ptr %dev, i32 2326
  %accept = getelementptr inbounds %struct.bpq_ethaddr, ptr %data, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.13, i32 noundef 156) #9
  %call.i.i53 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i53, label %if.end12.if.then11.i.i69_crit_edge, label %land.lhs.true.i.i56

if.end12.if.then11.i.i69_crit_edge:               ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i69

land.lhs.true.i.i56:                              ; preds = %if.end12
  %12 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %accept, i32 6, i32 -1226833920) #13, !srcloc !103
  %asmresult.i.i54 = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i54)
  %cmp.i6.i55 = icmp eq i32 %asmresult.i.i54, 0
  br i1 %cmp.i6.i55, label %if.end.i.i66, label %land.lhs.true.i.i56.if.then11.i.i69_crit_edge, !prof !99

land.lhs.true.i.i56.if.then11.i.i69_crit_edge:    ; preds = %land.lhs.true.i.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i69

if.end.i.i66:                                     ; preds = %land.lhs.true.i.i56
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %acpt_addr, i32 noundef 6) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i.i58 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i58 to ptr
  %cpu_domain.i.i.i.i.i59 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i59) #5, !srcloc !104
  %and.i.i.i.i60 = and i32 %15, -13
  %or.i.i.i.i61 = or i32 %and.i.i.i.i60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i61) #9, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %call1.i.i.i62 = tail call i32 @arm_copy_from_user(ptr noundef %acpt_addr, ptr noundef %accept, i32 noundef 6) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i62)
  %tobool4.not.i.i65 = icmp eq i32 %call1.i.i.i62, 0
  br i1 %tobool4.not.i.i65, label %if.end.i.i66.cleanup_crit_edge, label %if.end.i.i66.if.then11.i.i69_crit_edge, !prof !99

if.end.i.i66.if.then11.i.i69_crit_edge:           ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i69

if.end.i.i66.cleanup_crit_edge:                   ; preds = %if.end.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11.i.i69:                                  ; preds = %if.end.i.i66.if.then11.i.i69_crit_edge, %land.lhs.true.i.i56.if.then11.i.i69_crit_edge, %if.end12.if.then11.i.i69_crit_edge
  %res.0.i.i6484 = phi i32 [ %call1.i.i.i62, %if.end.i.i66.if.then11.i.i69_crit_edge ], [ 6, %if.end12.if.then11.i.i69_crit_edge ], [ 6, %land.lhs.true.i.i56.if.then11.i.i69_crit_edge ]
  %sub.i.i67 = sub i32 6, %res.0.i.i6484
  %add.ptr.i.i68 = getelementptr i8, ptr %acpt_addr, i32 %sub.i.i67
  %16 = call ptr @memset(ptr %add.ptr.i.i68, i32 0, i32 %res.0.i.i6484)
  br label %cleanup

cleanup:                                          ; preds = %if.then11.i.i69, %if.end.i.i66.cleanup_crit_edge, %if.then11.i.i46, %if.then11.i.i, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i66.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i46 ], [ -14, %if.then11.i.i69 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_ip_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpq_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !100
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %rcu_read_lock.exit.cleanup_crit_edge, label %do.body

rcu_read_lock.exit.cleanup_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %rcu_read_lock.exit
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.for.cond.preheader_crit_edge

do.body.for.cond.preheader_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @bpq_seq_start.__warned, align 1
  br i1 %.b28, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then5

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bpq_seq_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 387, ptr noundef nonnull @.str.5) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then5, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %do.body.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %bpqdev.0.in = phi ptr [ %bpqdev.0, %for.body.for.cond_crit_edge ], [ @bpq_devices, %for.cond.preheader ]
  %6 = ptrtoint ptr %bpqdev.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %bpqdev.0 = load volatile ptr, ptr %bpqdev.0.in, align 4
  %cmp11.not = icmp eq ptr %bpqdev.0, @bpq_devices
  br i1 %cmp11.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %cmp12 = icmp eq i64 %8, 1
  br i1 %cmp12, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %rcu_read_lock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %bpqdev.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpq_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.6) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !101
  %0 = tail call i32 @llvm.read_register.i32(metadata !85) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpq_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr nocapture noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load volatile ptr, ptr @bpq_devices, align 4
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end27_crit_edge

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true4

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @bpq_seq_next.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.if.end27_crit_edge, label %land.lhs.true4.if.end27.sink.split_crit_edge

land.lhs.true4.if.end27.sink.split_crit_edge:     ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split

land.lhs.true4.if.end27_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %v, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true17:                                  ; preds = %if.else
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end27_crit_edge, label %land.lhs.true20

land.lhs.true17.if.end27_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b3233 = load i1, ptr @bpq_seq_next.__warned.21, align 1
  br i1 %.b3233, label %land.lhs.true20.if.end27_crit_edge, label %land.lhs.true20.if.end27.sink.split_crit_edge

land.lhs.true20.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.sink.split

land.lhs.true20.if.end27_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27.sink.split:                              ; preds = %land.lhs.true20.if.end27.sink.split_crit_edge, %land.lhs.true4.if.end27.sink.split_crit_edge
  %bpq_seq_next.__warned.21.sink = phi ptr [ @bpq_seq_next.__warned, %land.lhs.true4.if.end27.sink.split_crit_edge ], [ @bpq_seq_next.__warned.21, %land.lhs.true20.if.end27.sink.split_crit_edge ]
  %.sink = phi i32 [ 402, %land.lhs.true4.if.end27.sink.split_crit_edge ], [ 404, %land.lhs.true20.if.end27.sink.split_crit_edge ]
  %p.0.ph = phi ptr [ %2, %land.lhs.true4.if.end27.sink.split_crit_edge ], [ %4, %land.lhs.true20.if.end27.sink.split_crit_edge ]
  %5 = ptrtoint ptr %bpq_seq_next.__warned.21.sink to i32
  call void @__asan_store1_noabort(i32 %5)
  store i1 true, ptr %bpq_seq_next.__warned.21.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef %.sink, ptr noundef nonnull @.str.20) #9
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true20.if.end27_crit_edge, %land.lhs.true17.if.end27_crit_edge, %if.else.if.end27_crit_edge, %land.lhs.true4.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %p.0 = phi ptr [ %2, %land.lhs.true4.if.end27_crit_edge ], [ %2, %land.lhs.true.if.end27_crit_edge ], [ %2, %if.then.if.end27_crit_edge ], [ %4, %land.lhs.true20.if.end27_crit_edge ], [ %4, %land.lhs.true17.if.end27_crit_edge ], [ %4, %if.else.if.end27_crit_edge ], [ %p.0.ph, %if.end27.sink.split ]
  %cmp28 = icmp eq ptr %p.0, @bpq_devices
  %spec.select = select i1 %cmp28, ptr null, ptr %p.0
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpq_seq_show(ptr noundef %seq, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.22) #9
  br label %if.end9

if.else:                                          ; preds = %entry
  %axdev = getelementptr inbounds %struct.bpqdev, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %axdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %axdev, align 4
  %ethdev = getelementptr inbounds %struct.bpqdev, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %ethdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethdev, align 4
  %dest_addr = getelementptr inbounds %struct.bpqdev, ptr %v, i32 0, i32 3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.23, ptr noundef %1, ptr noundef %3, ptr noundef %dest_addr) #9
  %acpt_addr = getelementptr inbounds %struct.bpqdev, ptr %v, i32 0, i32 4
  %4 = ptrtoint ptr %acpt_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %acpt_addr, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.else6, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24) #9
  br label %if.end9

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, ptr noundef %acpt_addr) #9
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then5, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !68, !70, !72, !73, !75, !77, !79, !81, !83}
!llvm.named.register.sp = !{!85}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/hamradio/bpqether.c", i32 595, i32 20}
!2 = !{ptr @__UNIQUE_ID_author502, !3, !"__UNIQUE_ID_author502", i1 false, i1 false}
!3 = !{!"../drivers/net/hamradio/bpqether.c", i32 605, i32 1}
!4 = !{ptr @__UNIQUE_ID_description503, !5, !"__UNIQUE_ID_description503", i1 false, i1 false}
!5 = !{!"../drivers/net/hamradio/bpqether.c", i32 606, i32 1}
!6 = !{ptr @__UNIQUE_ID_file504, !7, !"__UNIQUE_ID_file504", i1 false, i1 false}
!7 = !{!"../drivers/net/hamradio/bpqether.c", i32 607, i32 1}
!8 = !{ptr @__UNIQUE_ID_license505, !7, !"__UNIQUE_ID_license505", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_bpqether__506_608_bpq_init_driver6, !10, !"__initcall__kmod_bpqether__506_608_bpq_init_driver6", i1 false, i1 false}
!10 = !{!"../drivers/net/hamradio/bpqether.c", i32 608, i32 1}
!11 = !{ptr @__exitcall_bpq_cleanup_driver, !12, !"__exitcall_bpq_cleanup_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/hamradio/bpqether.c", i32 609, i32 1}
!13 = !{ptr @bpq_packet_type, !14, !"bpq_packet_type", i1 false, i1 false}
!14 = !{!"../drivers/net/hamradio/bpqether.c", i32 90, i32 27}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../drivers/net/hamradio/bpqether.c", i32 151, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bpq_dev_notifier, !29, !"bpq_dev_notifier", i1 false, i1 false}
!29 = !{!"../drivers/net/hamradio/bpqether.c", i32 95, i32 30}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/hamradio/bpqether.c", i32 161, i32 57}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/hamradio/bpqether.c", i32 485, i32 9}
!34 = !{ptr @bpq_netdev_ops, !35, !"bpq_netdev_ops", i1 false, i1 false}
!35 = !{!"../drivers/net/hamradio/bpqether.c", i32 447, i32 36}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/hamradio/bpqether.c", i32 267, i32 4}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bpq_xmit._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @bpq_xmit._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!43 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/hamradio/bpqether.c", i32 127, i32 2}
!50 = !{ptr @bpq_netdev_addr_lock_key, !51, !"bpq_netdev_addr_lock_key", i1 false, i1 false}
!51 = !{!"../drivers/net/hamradio/bpqether.c", i32 116, i32 30}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/hamradio/bpqether.c", i32 122, i32 2}
!54 = !{ptr @bpq_netdev_xmit_lock_key, !55, !"bpq_netdev_xmit_lock_key", i1 false, i1 false}
!55 = !{!"../drivers/net/hamradio/bpqether.c", i32 115, i32 30}
!56 = !{ptr @bpq_devices, !57, !"bpq_devices", i1 false, i1 false}
!57 = !{!"../drivers/net/hamradio/bpqether.c", i32 108, i32 8}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/hamradio/bpqether.c", i32 572, i32 3}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @bpq_init_driver._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @bpq_init_driver._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @bpq_init_driver._entry.18, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/hamradio/bpqether.c", i32 582, i32 2}
!65 = !{ptr @bpq_init_driver._entry_ptr.19, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @bpq_seqops, !67, !"bpq_seqops", i1 false, i1 false}
!67 = !{!"../drivers/net/hamradio/bpqether.c", i32 438, i32 36}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../drivers/net/hamradio/bpqether.c", i32 387, i32 2}
!70 = distinct !{null, !71, !"__warned", i1 false, i1 false}
!71 = !{!"../drivers/net/hamradio/bpqether.c", i32 402, i32 7}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../drivers/net/hamradio/bpqether.c", i32 404, i32 7}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/hamradio/bpqether.c", i32 421, i32 5}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/hamradio/bpqether.c", i32 425, i32 19}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/hamradio/bpqether.c", i32 430, i32 20}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/hamradio/bpqether.c", i32 432, i32 20}
!83 = !{ptr @banner, !84, !"banner", i1 false, i1 false}
!84 = !{!"../drivers/net/hamradio/bpqether.c", i32 84, i32 19}
!85 = !{!"sp"}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 651851, i64 651912}
!96 = !{i64 654583}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 654868}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{i64 2149335671}
!101 = !{i64 2149335937}
!102 = !{i64 2150328113}
!103 = !{i64 2152292922, i64 2152292947}
!104 = !{i64 4788477}
!105 = !{i64 4788674}
!106 = !{i64 2152273907}
