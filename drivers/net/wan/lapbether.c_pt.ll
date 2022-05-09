; ModuleID = '/llk/IR_all_yes/drivers/net/wan/lapbether.c_pt.bc'
source_filename = "../drivers/net/wan/lapbether.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lapb_register_struct = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lapbethdev = type { %struct.list_head, ptr, ptr, i8, %struct.spinlock, %struct.sk_buff_head, %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@__initcall__kmod_lapbether__459_499_lapbeth_init_driver6 = internal global ptr @lapbeth_init_driver, section ".initcall6.init", align 4
@lapbeth_packet_type = internal global %struct.packet_type { i16 24576, i8 0, ptr null, ptr null, ptr @lapbeth_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@lapbeth_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @lapbeth_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@lapbeth_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lapbeth_devices, ptr @lapbeth_devices }, [24 x i8] zeroinitializer }, align 32
@__exitcall_lapbeth_cleanup_driver = internal global ptr @lapbeth_cleanup_driver, section ".exitcall.exit", align 4
@__UNIQUE_ID_author460 = internal constant [59 x i8] c"lapbether.author=Jonathan Naylor <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description461 = internal constant [63 x i8] c"lapbether.description=The unofficial LAPB over Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file462 = internal constant [41 x i8] c"lapbether.file=drivers/net/wan/lapbether\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [22 x i8] c"lapbether.license=GPL\00", section ".modinfo", align 1
@lapbeth_init_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lapbeth_init_driver\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/wan/lapbether.c\00", [36 x i8] zeroinitializer }, align 32
@lapbeth_init_driver._entry_ptr = internal global ptr @lapbeth_init_driver._entry, section ".printk_index", align 4
@banner = internal constant [37 x i8] c"\016LAPB Ethernet driver version 0.02\0A\00", section ".init.rodata", align 1
@init_net = external dso_local global %struct.net, align 128
@lapbeth_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017lapbether: lapb_data_received err - %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lapbeth_rcv\00", [20 x i8] zeroinitializer }, align 32
@lapbeth_rcv._entry_ptr = internal global ptr @lapbeth_rcv._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@lapbeth_get_x25_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@lapbeth_new_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lapb%d\00", [25 x i8] zeroinitializer }, align 32
@lapbeth_new_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lapbeth->up_lock\00", [46 x i8] zeroinitializer }, align 32
@lapbeth_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @lapbeth_open, ptr @lapbeth_close, ptr @lapbeth_xmit, ptr null, ptr null, ptr null, ptr null, ptr @lapbeth_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@lapbeth_callbacks = internal constant { %struct.lapb_register_struct, [40 x i8] } { %struct.lapb_register_struct { ptr @lapbeth_connected, ptr @lapbeth_connected, ptr @lapbeth_disconnected, ptr @lapbeth_disconnected, ptr @lapbeth_data_indication, ptr @lapbeth_data_transmit }, [40 x i8] zeroinitializer }, align 32
@lapbeth_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013lapbether: lapb_register error: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lapbeth_open\00", [19 x i8] zeroinitializer }, align 32
@lapbeth_open._entry_ptr = internal global ptr @lapbeth_open._entry, section ".printk_index", align 4
@bcast_addr = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\FF\FF\FF\FF\FF\FF", [26 x i8] zeroinitializer }, align 32
@lapbeth_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013lapbether: lapb_unregister error: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lapbeth_close\00", [18 x i8] zeroinitializer }, align 32
@lapbeth_close._entry_ptr = internal global ptr @lapbeth_close._entry, section ".printk_index", align 4
@lapbeth_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.1, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013lapbether: lapb_connect_request error: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lapbeth_xmit\00", [19 x i8] zeroinitializer }, align 32
@lapbeth_xmit._entry_ptr = internal global ptr @lapbeth_xmit._entry, section ".printk_index", align 4
@lapbeth_xmit._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.1, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013lapbether: lapb_disconnect_request err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@lapbeth_xmit._entry_ptr.21 = internal global ptr @lapbeth_xmit._entry.19, section ".printk_index", align 4
@lapbeth_xmit._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.1, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013lapbether: lapb_data_request error - %d\0A\00", [53 x i8] zeroinitializer }, align 32
@lapbeth_xmit._entry_ptr.24 = internal global ptr @lapbeth_xmit._entry.22, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 6, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"lapbeth_dev_notifier\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 482, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"lapbeth_devices\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 61, i32 8 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 495, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 143, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 695, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 74, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 723, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 83, i32 57 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 384, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 386, i32 9 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 408, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"lapbeth_netdev_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 359, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"lapbeth_callbacks\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 308, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 328, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"bcast_addr\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 44, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 350, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 208, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 215, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private constant [31 x i8] c"../drivers/net/wan/lapbether.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 225, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 1984, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description461, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__exitcall_lapbeth_cleanup_driver, ptr @__initcall__kmod_lapbether__459_499_lapbeth_init_driver6, ptr @lapbeth_cleanup_driver, ptr @lapbeth_close._entry, ptr @lapbeth_close._entry_ptr, ptr @lapbeth_init_driver._entry, ptr @lapbeth_init_driver._entry_ptr, ptr @lapbeth_open._entry, ptr @lapbeth_open._entry_ptr, ptr @lapbeth_rcv._entry, ptr @lapbeth_rcv._entry_ptr, ptr @lapbeth_xmit._entry, ptr @lapbeth_xmit._entry.19, ptr @lapbeth_xmit._entry.22, ptr @lapbeth_xmit._entry_ptr, ptr @lapbeth_xmit._entry_ptr.21, ptr @lapbeth_xmit._entry_ptr.24, ptr @lapbeth_dev_notifier, ptr @lapbeth_devices, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @lapbeth_new_device.__key, ptr @.str.12, ptr @lapbeth_netdev_ops, ptr @lapbeth_callbacks, ptr @.str.13, ptr @.str.14, ptr @bcast_addr, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @skb_queue_head_init.__key, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_init_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_new_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_callbacks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcast_addr to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_xmit._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapbeth_xmit._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_init_driver() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dev_add_pack(ptr noundef nonnull @lapbeth_packet_type) #8
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @lapbeth_dev_notifier) #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @banner) #11
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lapbeth_cleanup_driver() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dev_remove_pack(ptr noundef nonnull @lapbeth_packet_type) #8
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @lapbeth_dev_notifier) #8
  tail call void @rtnl_lock() #8
  %0 = load ptr, ptr @lapbeth_devices, align 4
  %cmp.i.not10 = icmp eq ptr %0, @lapbeth_devices
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %dev_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %entry1.011 = phi ptr [ %tmp.012, %dev_put.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %entry1.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.012 = load ptr, ptr %entry1.011, align 4
  %ethdev = getelementptr inbounds %struct.lapbethdev, ptr %entry1.011, i32 0, i32 1
  %2 = ptrtoint ptr %ethdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ethdev, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.dev_put.exit_crit_edge, label %do.body1.i

for.body.dev_put.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit

do.body1.i:                                       ; preds = %for.body
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !93
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i = add i32 %16, -1
  store i32 %add13.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !94
  %and.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !95

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !96
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %for.body.dev_put.exit_crit_edge
  %axdev = getelementptr inbounds %struct.lapbethdev, ptr %entry1.011, i32 0, i32 2
  %18 = ptrtoint ptr %axdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %axdev, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %19, ptr noundef null) #8
  %cmp.i.not = icmp eq ptr %tmp.012, @lapbeth_devices
  br i1 %cmp.i.not, label %dev_put.exit.for.end_crit_edge, label %dev_put.exit.for.body_crit_edge

dev_put.exit.for.body_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

dev_put.exit.for.end_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %dev_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %ptype, ptr nocapture noundef readnone %orig_dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %cmp.not = icmp eq ptr %1, @init_net
  br i1 %cmp.not, label %if.end, label %entry.drop_crit_edge

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end:                                           ; preds = %entry
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #8
  %2 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %if.end
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #8
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread79, !prof !95

skb_share_check.exit.thread79:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %if.end3

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

skb_share_check.exit:                             ; preds = %if.end
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.cleanup_crit_edge, label %skb_share_check.exit.if.end3_crit_edge

skb_share_check.exit.if.end3_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

skb_share_check.exit.cleanup_crit_edge:           ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %skb_share_check.exit.if.end3_crit_edge, %skb_share_check.exit.thread79
  %skb.addr.0.i82 = phi ptr [ %call7.i, %skb_share_check.exit.thread79 ], [ %skb, %skb_share_check.exit.if.end3_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i82, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i82, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 1
  br i1 %cmp.i, label %if.end3.if.end6_crit_edge, label %if.end.i, !prof !97

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3.i = icmp ult i32 %5, 2
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !95

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 2, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i82, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end6_crit_edge

pskb_may_pull.exit.if.end6_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end6:                                          ; preds = %pskb_may_pull.exit.if.end6_crit_edge, %if.end3.if.end6_crit_edge
  %8 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %call.i47 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i47, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge, label %land.lhs.true.i50

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true.i50:                                ; preds = %rcu_read_lock.exit
  %call1.i48 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i48)
  %tobool.not.i49 = icmp eq i32 %call1.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true2.i51, label %land.lhs.true.i50.for.cond.i.preheader_crit_edge

land.lhs.true.i50.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true2.i51:                               ; preds = %land.lhs.true.i50
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i51.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i51.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true2.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i51
  %.b25.i = load i1, ptr @lapbeth_get_x25_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i52

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

if.then.i52:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @lapbeth_get_x25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @.str.7) #8
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i52, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true2.i51.for.cond.i.preheader_crit_edge, %land.lhs.true.i50.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %lapbeth.0.in.i = phi ptr [ %lapbeth.0.i, %for.body.i.for.cond.i_crit_edge ], [ @lapbeth_devices, %for.cond.i.preheader ]
  %12 = ptrtoint ptr %lapbeth.0.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %lapbeth.0.i = load volatile ptr, ptr %lapbeth.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %lapbeth.0.i, @lapbeth_devices
  br i1 %cmp.not.i, label %for.cond.i.drop_unlock_rcu_crit_edge, label %for.body.i

for.cond.i.drop_unlock_rcu_crit_edge:             ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_rcu

for.body.i:                                       ; preds = %for.cond.i
  %ethdev.i = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ethdev.i, align 8
  %cmp11.i = icmp eq ptr %14, %dev
  br i1 %cmp11.i, label %lapbeth_get_x25_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

lapbeth_get_x25_dev.exit:                         ; preds = %for.body.i
  %tobool8.not = icmp eq ptr %lapbeth.0.i, null
  br i1 %tobool8.not, label %lapbeth_get_x25_dev.exit.drop_unlock_rcu_crit_edge, label %if.end10

lapbeth_get_x25_dev.exit.drop_unlock_rcu_crit_edge: ; preds = %lapbeth_get_x25_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock_rcu

if.end10:                                         ; preds = %lapbeth_get_x25_dev.exit
  %up_lock = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #8
  %up = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %up, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %if.end10.drop_unlock_crit_edge, label %if.end13

if.end10.drop_unlock_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop_unlock

if.end13:                                         ; preds = %if.end10
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i82, i32 0, i32 19
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %conv = zext i8 %20 to i32
  %arrayidx15 = getelementptr i8, ptr %18, i32 1
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %mul = shl nuw nsw i32 %conv16, 8
  %add = or i32 %mul, %conv
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stats, align 8
  %inc = add i32 %24, 1
  store i32 %inc, ptr %stats, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %25 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_bytes, align 8
  %add18 = add i32 %26, %add
  store i32 %add18, ptr %rx_bytes, align 8
  %call19 = tail call ptr @skb_pull(ptr noundef nonnull %skb.addr.0.i82, i32 noundef 2) #8
  tail call void @skb_trim(ptr noundef nonnull %skb.addr.0.i82, i32 noundef %add) #8
  %axdev = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i, i32 0, i32 2
  %27 = ptrtoint ptr %axdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %axdev, align 4
  %call20 = tail call i32 @lapb_data_received(ptr noundef %28, ptr noundef nonnull %skb.addr.0.i82) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21.not = icmp eq i32 %call20, 0
  br i1 %cmp21.not, label %if.end13.out_crit_edge, label %do.end

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %call20) #11
  br label %drop_unlock

out:                                              ; preds = %drop_unlock, %if.end13.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #8
  %call.i54 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i54, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i57

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i57:                                ; preds = %out
  %call1.i55 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i55)
  %tobool.not.i56 = icmp eq i32 %call1.i55, 0
  br i1 %tobool.not.i56, label %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i59

land.lhs.true.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i59:                               ; preds = %land.lhs.true.i57
  %.b4.i58 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i58, label %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, label %if.then.i60

land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i60:                                      ; preds = %land.lhs.true2.i59
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i60, %land.lhs.true2.i59.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i57.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  %29 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i61 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i61 to ptr
  %preempt_count.i.i.i.i62 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i62, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i62, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

drop_unlock:                                      ; preds = %do.end, %if.end10.drop_unlock_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0.i82, i32 noundef 0) #8
  br label %out

drop_unlock_rcu:                                  ; preds = %lapbeth_get_x25_dev.exit.drop_unlock_rcu_crit_edge, %for.cond.i.drop_unlock_rcu_crit_edge
  %call.i64 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i64, label %drop_unlock_rcu.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true.i67

drop_unlock_rcu.rcu_read_unlock.exit75_crit_edge: ; preds = %drop_unlock_rcu
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75

land.lhs.true.i67:                                ; preds = %drop_unlock_rcu
  %call1.i65 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit75_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit75_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit75_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit75

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_unlock.exit75

rcu_read_unlock.exit75:                           ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit75_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit75_crit_edge, %drop_unlock_rcu.rcu_read_unlock.exit75_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !100
  %33 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i.i.i71 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i73 = add i32 %36, -1
  store volatile i32 %sub.i.i.i73, ptr %preempt_count.i.i.i.i72, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %drop

drop:                                             ; preds = %rcu_read_unlock.exit75, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %entry.drop_crit_edge
  %skb.addr.0 = phi ptr [ %skb, %entry.drop_crit_edge ], [ %skb.addr.0.i82, %rcu_read_unlock.exit75 ], [ %skb.addr.0.i82, %pskb_may_pull.exit.drop_crit_edge ], [ %skb.addr.0.i82, %if.end.i.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %drop, %rcu_read_unlock.exit, %skb_share_check.exit.cleanup_crit_edge, %skb_share_check.exit.thread
  %retval.0 = phi i32 [ 0, %drop ], [ 0, %rcu_read_unlock.exit ], [ 1, %skb_share_check.exit.cleanup_crit_edge ], [ 1, %skb_share_check.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_received(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.not = icmp eq ptr %3, @init_net
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %type.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.i = icmp eq i16 %5, 1
  br i1 %cmp.i, label %dev_is_ethdev.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dev_is_ethdev.exit:                               ; preds = %if.end
  %call.i = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(6) @.str.9, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool.i.not, label %dev_is_ethdev.exit.cleanup_crit_edge, label %if.end4

dev_is_ethdev.exit.cleanup_crit_edge:             ; preds = %dev_is_ethdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %dev_is_ethdev.exit
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 10, label %sw.bb10
    i32 6, label %sw.bb15
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %call.i29 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i29, label %sw.bb.for.cond.i.preheader_crit_edge, label %land.lhs.true.i

sw.bb.for.cond.i.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %sw.bb
  %call1.i = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true2.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true2.i.for.cond.i.preheader_crit_edge, label %land.lhs.true5.i

land.lhs.true2.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

land.lhs.true5.i:                                 ; preds = %land.lhs.true2.i
  %.b25.i = load i1, ptr @lapbeth_get_x25_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true5.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true5.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @lapbeth_get_x25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @.str.7) #8
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true5.i.for.cond.i.preheader_crit_edge, %land.lhs.true2.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %sw.bb.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %lapbeth.0.in.i = phi ptr [ %lapbeth.0.i, %for.body.i.for.cond.i_crit_edge ], [ @lapbeth_devices, %for.cond.i.preheader ]
  %7 = ptrtoint ptr %lapbeth.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %lapbeth.0.i = load volatile ptr, ptr %lapbeth.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %lapbeth.0.i, @lapbeth_devices
  br i1 %cmp.not.i, label %for.cond.i.if.then7_crit_edge, label %for.body.i

for.cond.i.if.then7_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

for.body.i:                                       ; preds = %for.cond.i
  %ethdev.i = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %ethdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethdev.i, align 8
  %cmp11.i = icmp eq ptr %9, %1
  br i1 %cmp11.i, label %lapbeth_get_x25_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

lapbeth_get_x25_dev.exit:                         ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %lapbeth.0.i, null
  br i1 %tobool6.not, label %lapbeth_get_x25_dev.exit.if.then7_crit_edge, label %lapbeth_get_x25_dev.exit.cleanup_crit_edge

lapbeth_get_x25_dev.exit.cleanup_crit_edge:       ; preds = %lapbeth_get_x25_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lapbeth_get_x25_dev.exit.if.then7_crit_edge:      ; preds = %lapbeth_get_x25_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

if.then7:                                         ; preds = %lapbeth_get_x25_dev.exit.if.then7_crit_edge, %for.cond.i.if.then7_crit_edge
  %call.i30 = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %land.rhs.i32, label %if.then7.if.end29.i_crit_edge

if.then7.if.end29.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

land.rhs.i32:                                     ; preds = %if.then7
  %.b1.i = load i1, ptr @lapbeth_new_device.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i32.if.end29.i_crit_edge, label %if.then.i33, !prof !97

land.rhs.i32.if.end29.i_crit_edge:                ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then.i33:                                      ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @lapbeth_new_device.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 384, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 384) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i33, %land.rhs.i32.if.end29.i_crit_edge, %if.then7.if.end29.i_crit_edge
  %call37.i = tail call ptr @alloc_netdev_mqs(i32 noundef 344, ptr noundef nonnull @.str.11, i8 noundef zeroext 0, ptr noundef nonnull @lapbeth_setup, i32 noundef 1, i32 noundef 1) #8
  %tobool38.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool38.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end40.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40.i:                                       ; preds = %if.end29.i
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hard_header_len.i, align 2
  %add.i = add i16 %11, 4
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %needed_headroom.i, align 8
  %add42.i = add i16 %add.i, %13
  %needed_headroom44.i = getelementptr inbounds %struct.net_device, ptr %call37.i, i32 0, i32 21
  %14 = ptrtoint ptr %needed_headroom44.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add42.i, ptr %needed_headroom44.i, align 8
  %needed_tailroom.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %needed_tailroom.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %needed_tailroom.i, align 2
  %needed_tailroom45.i = getelementptr inbounds %struct.net_device, ptr %call37.i, i32 0, i32 22
  %17 = ptrtoint ptr %needed_tailroom45.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %needed_tailroom45.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %call37.i, i32 2304
  %axdev.i = getelementptr i8, ptr %call37.i, i32 2316
  %18 = ptrtoint ptr %axdev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call37.i, ptr %axdev.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end40.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end40.i.dev_hold.exit.i_crit_edge:             ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end40.i
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !93
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, 1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !94
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !95

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #8, !srcloc !96
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end40.i.dev_hold.exit.i_crit_edge
  %ethdev.i34 = getelementptr i8, ptr %call37.i, i32 2312
  %33 = ptrtoint ptr %ethdev.i34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %1, ptr %ethdev.i34, align 8
  %up.i = getelementptr i8, ptr %call37.i, i32 2320
  %34 = ptrtoint ptr %up.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %up.i, align 8
  %up_lock.i = getelementptr i8, ptr %call37.i, i32 2324
  tail call void @__raw_spin_lock_init(ptr noundef %up_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @lapbeth_new_device.__key, i16 noundef signext 3) #8
  %rx_queue.i = getelementptr i8, ptr %call37.i, i32 2368
  %lock.i.i = getelementptr i8, ptr %call37.i, i32 2380
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #8
  %35 = ptrtoint ptr %rx_queue.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %rx_queue.i, ptr %rx_queue.i, align 4
  %prev.i.i.i = getelementptr i8, ptr %call37.i, i32 2372
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr i8, ptr %call37.i, i32 2376
  %37 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %qlen.i.i.i, align 4
  %napi.i = getelementptr i8, ptr %call37.i, i32 2424
  tail call void @netif_napi_add(ptr noundef nonnull %call37.i, ptr noundef %napi.i, ptr noundef nonnull @lapbeth_napi_poll, i32 noundef 16) #8
  %call51.i = tail call i32 @register_netdevice(ptr noundef nonnull %call37.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %fail.i

if.end54.i:                                       ; preds = %dev_hold.exit.i
  %38 = load ptr, ptr @lapbeth_devices, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr.i.i, ptr noundef nonnull @lapbeth_devices, ptr noundef %38) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end54.i.cleanup_crit_edge

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %add.ptr.i.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %call37.i, i32 2308
  %40 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @lapbeth_devices, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !101
  store volatile ptr %add.ptr.i.i, ptr @lapbeth_devices, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr.i.i, ptr %prev37.i.i.i, align 4
  br label %cleanup

fail.i:                                           ; preds = %dev_hold.exit.i
  br i1 %tobool.not.i.i, label %fail.i.dev_put.exit.i_crit_edge, label %do.body1.i11.i

fail.i.dev_put.exit.i_crit_edge:                  ; preds = %fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

do.body1.i11.i:                                   ; preds = %fail.i
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !93
  %pcpu_refcnt.i3.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %43 = ptrtoint ptr %pcpu_refcnt.i3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcpu_refcnt.i3.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i4.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i4.i to ptr
  %cpu.i5.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i5.i, align 4
  %arrayidx.i6.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i6.i, align 4
  %add.i7.i = add i32 %51, %45
  %52 = inttoptr i32 %add.i7.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add13.i8.i = add i32 %54, -1
  store i32 %add13.i8.i, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !94
  %and.i.i.i9.i = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9.i)
  %tobool24.not.i10.i = icmp eq i32 %and.i.i.i9.i, 0
  br i1 %tobool24.not.i10.i, label %if.then28.i12.i, label %do.body1.i11.i.do.end30.i13.i_crit_edge, !prof !95

do.body1.i11.i.do.end30.i13.i_crit_edge:          ; preds = %do.body1.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i13.i

if.then28.i12.i:                                  ; preds = %do.body1.i11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i13.i

do.end30.i13.i:                                   ; preds = %if.then28.i12.i, %do.body1.i11.i.do.end30.i13.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #8, !srcloc !96
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i13.i, %fail.i.dev_put.exit.i_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %call37.i) #8
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4
  %call.i35 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i35, label %sw.bb10.for.cond.i49.preheader_crit_edge, label %land.lhs.true.i38

sw.bb10.for.cond.i49.preheader_crit_edge:         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i49.preheader

land.lhs.true.i38:                                ; preds = %sw.bb10
  %call1.i36 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true2.i41, label %land.lhs.true.i38.for.cond.i49.preheader_crit_edge

land.lhs.true.i38.for.cond.i49.preheader_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i49.preheader

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i38
  %call3.i39 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i39)
  %tobool4.not.i40 = icmp eq i32 %call3.i39, 0
  br i1 %tobool4.not.i40, label %land.lhs.true2.i41.for.cond.i49.preheader_crit_edge, label %land.lhs.true5.i43

land.lhs.true2.i41.for.cond.i49.preheader_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i49.preheader

land.lhs.true5.i43:                               ; preds = %land.lhs.true2.i41
  %.b25.i42 = load i1, ptr @lapbeth_get_x25_dev.__warned, align 1
  br i1 %.b25.i42, label %land.lhs.true5.i43.for.cond.i49.preheader_crit_edge, label %if.then.i44

land.lhs.true5.i43.for.cond.i49.preheader_crit_edge: ; preds = %land.lhs.true5.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i49.preheader

if.then.i44:                                      ; preds = %land.lhs.true5.i43
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @lapbeth_get_x25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @.str.7) #8
  br label %for.cond.i49.preheader

for.cond.i49.preheader:                           ; preds = %if.then.i44, %land.lhs.true5.i43.for.cond.i49.preheader_crit_edge, %land.lhs.true2.i41.for.cond.i49.preheader_crit_edge, %land.lhs.true.i38.for.cond.i49.preheader_crit_edge, %sw.bb10.for.cond.i49.preheader_crit_edge
  br label %for.cond.i49

for.cond.i49:                                     ; preds = %for.body.i52.for.cond.i49_crit_edge, %for.cond.i49.preheader
  %lapbeth.0.in.i46 = phi ptr [ %lapbeth.0.i47, %for.body.i52.for.cond.i49_crit_edge ], [ @lapbeth_devices, %for.cond.i49.preheader ]
  %56 = ptrtoint ptr %lapbeth.0.in.i46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %lapbeth.0.i47 = load volatile ptr, ptr %lapbeth.0.in.i46, align 4
  %cmp.not.i48 = icmp eq ptr %lapbeth.0.i47, @lapbeth_devices
  br i1 %cmp.not.i48, label %for.cond.i49.cleanup_crit_edge, label %for.body.i52

for.cond.i49.cleanup_crit_edge:                   ; preds = %for.cond.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i52:                                     ; preds = %for.cond.i49
  %ethdev.i50 = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i47, i32 0, i32 1
  %57 = ptrtoint ptr %ethdev.i50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ethdev.i50, align 8
  %cmp11.i51 = icmp eq ptr %58, %1
  br i1 %cmp11.i51, label %lapbeth_get_x25_dev.exit54, label %for.body.i52.for.cond.i49_crit_edge

for.body.i52.for.cond.i49_crit_edge:              ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i49

lapbeth_get_x25_dev.exit54:                       ; preds = %for.body.i52
  %tobool12.not = icmp eq ptr %lapbeth.0.i47, null
  br i1 %tobool12.not, label %lapbeth_get_x25_dev.exit54.cleanup_crit_edge, label %if.then13

lapbeth_get_x25_dev.exit54.cleanup_crit_edge:     ; preds = %lapbeth_get_x25_dev.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %lapbeth_get_x25_dev.exit54
  call void @__sanitizer_cov_trace_pc() #10
  %axdev = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i47, i32 0, i32 2
  %59 = ptrtoint ptr %axdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %axdev, align 4
  tail call void @dev_close(ptr noundef %60) #8
  br label %cleanup

sw.bb15:                                          ; preds = %if.end4
  %call.i55 = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call.i55, label %sw.bb15.for.cond.i69.preheader_crit_edge, label %land.lhs.true.i58

sw.bb15.for.cond.i69.preheader_crit_edge:         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i69.preheader

land.lhs.true.i58:                                ; preds = %sw.bb15
  %call1.i56 = tail call i32 @rcu_read_lock_any_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56)
  %tobool.not.i57 = icmp eq i32 %call1.i56, 0
  br i1 %tobool.not.i57, label %land.lhs.true2.i61, label %land.lhs.true.i58.for.cond.i69.preheader_crit_edge

land.lhs.true.i58.for.cond.i69.preheader_crit_edge: ; preds = %land.lhs.true.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i69.preheader

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i58
  %call3.i59 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i59)
  %tobool4.not.i60 = icmp eq i32 %call3.i59, 0
  br i1 %tobool4.not.i60, label %land.lhs.true2.i61.for.cond.i69.preheader_crit_edge, label %land.lhs.true5.i63

land.lhs.true2.i61.for.cond.i69.preheader_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i69.preheader

land.lhs.true5.i63:                               ; preds = %land.lhs.true2.i61
  %.b25.i62 = load i1, ptr @lapbeth_get_x25_dev.__warned, align 1
  br i1 %.b25.i62, label %land.lhs.true5.i63.for.cond.i69.preheader_crit_edge, label %if.then.i64

land.lhs.true5.i63.for.cond.i69.preheader_crit_edge: ; preds = %land.lhs.true5.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i69.preheader

if.then.i64:                                      ; preds = %land.lhs.true5.i63
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @lapbeth_get_x25_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @.str.7) #8
  br label %for.cond.i69.preheader

for.cond.i69.preheader:                           ; preds = %if.then.i64, %land.lhs.true5.i63.for.cond.i69.preheader_crit_edge, %land.lhs.true2.i61.for.cond.i69.preheader_crit_edge, %land.lhs.true.i58.for.cond.i69.preheader_crit_edge, %sw.bb15.for.cond.i69.preheader_crit_edge
  br label %for.cond.i69

for.cond.i69:                                     ; preds = %for.body.i72.for.cond.i69_crit_edge, %for.cond.i69.preheader
  %lapbeth.0.in.i66 = phi ptr [ %lapbeth.0.i67, %for.body.i72.for.cond.i69_crit_edge ], [ @lapbeth_devices, %for.cond.i69.preheader ]
  %61 = ptrtoint ptr %lapbeth.0.in.i66 to i32
  call void @__asan_load4_noabort(i32 %61)
  %lapbeth.0.i67 = load volatile ptr, ptr %lapbeth.0.in.i66, align 4
  %cmp.not.i68 = icmp eq ptr %lapbeth.0.i67, @lapbeth_devices
  br i1 %cmp.not.i68, label %for.cond.i69.cleanup_crit_edge, label %for.body.i72

for.cond.i69.cleanup_crit_edge:                   ; preds = %for.cond.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i72:                                     ; preds = %for.cond.i69
  %ethdev.i70 = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i67, i32 0, i32 1
  %62 = ptrtoint ptr %ethdev.i70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ethdev.i70, align 8
  %cmp11.i71 = icmp eq ptr %63, %1
  br i1 %cmp11.i71, label %lapbeth_get_x25_dev.exit74, label %for.body.i72.for.cond.i69_crit_edge

for.body.i72.for.cond.i69_crit_edge:              ; preds = %for.body.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i69

lapbeth_get_x25_dev.exit74:                       ; preds = %for.body.i72
  %tobool17.not = icmp eq ptr %lapbeth.0.i67, null
  br i1 %tobool17.not, label %lapbeth_get_x25_dev.exit74.cleanup_crit_edge, label %if.then18

lapbeth_get_x25_dev.exit74.cleanup_crit_edge:     ; preds = %lapbeth_get_x25_dev.exit74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %lapbeth_get_x25_dev.exit74
  %ethdev.i70.le = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i67, i32 0, i32 1
  %64 = ptrtoint ptr %ethdev.i70.le to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ethdev.i70.le, align 8
  %tobool.not.i.i76 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i76, label %if.then18.dev_put.exit.i89_crit_edge, label %do.body1.i.i85

if.then18.dev_put.exit.i89_crit_edge:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i89

do.body1.i.i85:                                   ; preds = %if.then18
  %66 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !93
  %pcpu_refcnt.i.i77 = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 118
  %67 = ptrtoint ptr %pcpu_refcnt.i.i77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcpu_refcnt.i.i77, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = tail call i32 @llvm.read_register.i32(metadata !83) #8
  %and.i.i.i78 = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i.i78 to ptr
  %cpu.i.i79 = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %cpu.i.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cpu.i.i79, align 4
  %arrayidx.i.i80 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i.i80, align 4
  %add.i.i81 = add i32 %75, %69
  %76 = inttoptr i32 %add.i.i81 to ptr
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %add13.i.i82 = add i32 %78, -1
  store i32 %add13.i.i82, ptr %76, align 4
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !94
  %and.i.i.i.i83 = and i32 %79, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i83)
  %tobool24.not.i.i84 = icmp eq i32 %and.i.i.i.i83, 0
  br i1 %tobool24.not.i.i84, label %if.then28.i.i86, label %do.body1.i.i85.do.end30.i.i87_crit_edge, !prof !95

do.body1.i.i85.do.end30.i.i87_crit_edge:          ; preds = %do.body1.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i87

if.then28.i.i86:                                  ; preds = %do.body1.i.i85
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i.i87

do.end30.i.i87:                                   ; preds = %if.then28.i.i86, %do.body1.i.i85.do.end30.i.i87_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %66) #8, !srcloc !96
  br label %dev_put.exit.i89

dev_put.exit.i89:                                 ; preds = %do.end30.i.i87, %if.then18.dev_put.exit.i89_crit_edge
  %call.i.i.i88 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %lapbeth.0.i67) #8
  br i1 %call.i.i.i88, label %if.end.i.i.i91, label %dev_put.exit.i89.lapbeth_free_device.exit_crit_edge

dev_put.exit.i89.lapbeth_free_device.exit_crit_edge: ; preds = %dev_put.exit.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %lapbeth_free_device.exit

if.end.i.i.i91:                                   ; preds = %dev_put.exit.i89
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i90 = getelementptr inbounds %struct.list_head, ptr %lapbeth.0.i67, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i.i.i90, align 4
  %82 = ptrtoint ptr %lapbeth.0.i67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %lapbeth.0.i67, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev1.i.i.i.i, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %83, ptr %81, align 4
  br label %lapbeth_free_device.exit

lapbeth_free_device.exit:                         ; preds = %if.end.i.i.i91, %dev_put.exit.i89.lapbeth_free_device.exit_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lapbeth.0.i67, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %axdev.i92 = getelementptr inbounds %struct.lapbethdev, ptr %lapbeth.0.i67, i32 0, i32 2
  %87 = ptrtoint ptr %axdev.i92 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %axdev.i92, align 4
  tail call void @unregister_netdevice_queue(ptr noundef %88, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %lapbeth_free_device.exit, %lapbeth_get_x25_dev.exit74.cleanup_crit_edge, %for.cond.i69.cleanup_crit_edge, %if.then13, %lapbeth_get_x25_dev.exit54.cleanup_crit_edge, %for.cond.i49.cleanup_crit_edge, %dev_put.exit.i, %if.end.i.i.i, %if.end54.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %lapbeth_get_x25_dev.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %dev_is_ethdev.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @lapbeth_setup(ptr nocapture noundef writeonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @lapbeth_netdev_ops, ptr %netdev_ops, align 8
  %needs_free_netdev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 124
  %1 = ptrtoint ptr %needs_free_netdev to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %needs_free_netdev, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 271, ptr %type, align 16
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %3 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %hard_header_len, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %mtu, align 4
  %addr_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %5 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %addr_len, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_napi_poll(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp14 = icmp sgt i32 %budget, 0
  br i1 %cmp14, label %for.body.lr.ph, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

for.body.lr.ph:                                   ; preds = %entry
  %rx_queue = getelementptr i8, ptr %napi, i32 -56
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %processed.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %call = tail call ptr @skb_dequeue(ptr noundef %rx_queue) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then3.critedge, label %if.end

if.end:                                           ; preds = %for.body
  %call1 = tail call i32 @netif_receive_skb_core(ptr noundef nonnull %call) #8
  %inc = add nuw nsw i32 %processed.015, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %if.end.if.end5_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3.critedge:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3.critedge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  %processed.013 = phi i32 [ %processed.015, %if.then3.critedge ], [ 0, %entry.if.end5_crit_edge ], [ %budget, %if.end.if.end5_crit_edge ]
  ret i32 %processed.013
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_open(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %dev, i32 2424
  tail call void @napi_enable(ptr noundef %napi) #8
  %call1 = tail call i32 @lapb_register(ptr noundef %dev, ptr noundef nonnull @lapbeth_callbacks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %up_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #8
  %up = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %up, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_close(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %up_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #8
  %up = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %up to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %up, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #8
  %call2 = tail call i32 @lapb_unregister(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call2) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %napi = getelementptr i8, ptr %dev, i32 2424
  tail call void @napi_disable(ptr noundef %napi) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %up_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_bh(ptr noundef %up_lock) #8
  %up = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %up to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %up, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.drop_crit_edge, label %if.end

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.drop_crit_edge, label %if.end2

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end2:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %7, label %if.end2.drop_crit_edge [
    i8 0, label %sw.epilog
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
  ]

if.end2.drop_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

sw.bb:                                            ; preds = %if.end2
  %call3 = tail call i32 @lapb_connect_request(ptr noundef %dev) #8
  %9 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call3, label %do.end [
    i32 3, label %if.then6
    i32 0, label %sw.bb.drop_crit_edge
  ]

sw.bb.drop_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.then6:                                         ; preds = %sw.bb
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1, i32 noundef 526880) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then6.drop_crit_edge, label %if.end.i

if.then6.drop_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end.i:                                         ; preds = %if.then6
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 1) #8
  %10 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %call2.i, align 1
  %11 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %11, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %15 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %17 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %19 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2053, ptr %protocol.i, align 8
  %rx_queue.i = getelementptr i8, ptr %dev, i32 2368
  tail call void @skb_queue_tail(ptr noundef %rx_queue.i, ptr noundef nonnull %call.i.i) #8
  %napi.i = getelementptr i8, ptr %dev, i32 2424
  %call.i12.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #8
  br i1 %call.i12.i, label %if.then.i.i, label %if.end.i.drop_crit_edge

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi.i) #8
  br label %drop

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %call3) #11
  br label %drop

sw.bb13:                                          ; preds = %if.end2
  %call14 = tail call i32 @lapb_disconnect_request(ptr noundef %dev) #8
  %20 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %call14, label %do.end24 [
    i32 4, label %if.then17
    i32 0, label %sw.bb13.drop_crit_edge
  ]

sw.bb13.drop_crit_edge:                           ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.then17:                                        ; preds = %sw.bb13
  %call.i.i59 = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1, i32 noundef 526880) #8
  %tobool.not.i60 = icmp eq ptr %call.i.i59, null
  br i1 %tobool.not.i60, label %if.then17.drop_crit_edge, label %if.end.i76

if.then17.drop_crit_edge:                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end.i76:                                       ; preds = %if.then17
  %call2.i61 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i59, i32 noundef 1) #8
  %21 = ptrtoint ptr %call2.i61 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %call2.i61, align 1
  %22 = getelementptr inbounds %struct.anon.0, ptr %call.i.i59, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %22, align 8
  %data.i.i.i62 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i62, align 4
  %head.i.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 18
  %26 = ptrtoint ptr %head.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i.i63, align 8
  %sub.ptr.lhs.cast.i.i.i64 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i65 = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i66 = sub i32 %sub.ptr.lhs.cast.i.i.i64, %sub.ptr.rhs.cast.i.i.i65
  %conv.i.i.i67 = trunc i32 %sub.ptr.sub.i.i.i66 to i16
  %mac_header.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i.i.i68 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i.i67, ptr %mac_header.i.i.i68, align 2
  %pkt_type.i.i69 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 15
  %29 = ptrtoint ptr %pkt_type.i.i69 to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i.i70 = load i16, ptr %pkt_type.i.i69, align 8
  %bf.clear.i.i71 = and i16 %bf.load.i.i70, 8191
  store i16 %bf.clear.i.i71, ptr %pkt_type.i.i69, align 8
  %protocol.i72 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol.i72 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2053, ptr %protocol.i72, align 8
  %rx_queue.i73 = getelementptr i8, ptr %dev, i32 2368
  tail call void @skb_queue_tail(ptr noundef %rx_queue.i73, ptr noundef nonnull %call.i.i59) #8
  %napi.i74 = getelementptr i8, ptr %dev, i32 2424
  %call.i12.i75 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i74) #8
  br i1 %call.i12.i75, label %if.then.i.i77, label %if.end.i76.drop_crit_edge

if.end.i76.drop_crit_edge:                        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.then.i.i77:                                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi.i74) #8
  br label %drop

do.end24:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call14) #11
  br label %drop

sw.epilog:                                        ; preds = %if.end2
  %call29 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #8
  %call30 = tail call i32 @lapb_data_request(ptr noundef %dev, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %sw.epilog.out_crit_edge, label %do.end36

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %call30) #11
  br label %drop

out:                                              ; preds = %drop, %sw.epilog.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %up_lock) #8
  ret i32 0

drop:                                             ; preds = %do.end36, %do.end24, %if.then.i.i77, %if.end.i76.drop_crit_edge, %if.then17.drop_crit_edge, %sw.bb13.drop_crit_edge, %do.end, %if.then.i.i, %if.end.i.drop_crit_edge, %if.then6.drop_crit_edge, %sw.bb.drop_crit_edge, %if.end2.drop_crit_edge, %if.end.drop_crit_edge, %entry.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_set_mac_address(ptr noundef %dev, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lapbeth_connected(ptr noundef %dev, i32 noundef %reason) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1, i32 noundef 526880) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %call2, align 1
  %1 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2053, ptr %protocol, align 8
  %rx_queue = getelementptr i8, ptr %dev, i32 2368
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i) #8
  %napi = getelementptr i8, ptr %dev, i32 2424
  %call.i12 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i12, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lapbeth_disconnected(ptr noundef %dev, i32 noundef %reason) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 1, i32 noundef 526880) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 1) #8
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 2, ptr %call2, align 1
  %1 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %1, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 2053, ptr %protocol, align 8
  %rx_queue = getelementptr i8, ptr %dev, i32 2368
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef nonnull %call.i) #8
  %napi = getelementptr i8, ptr %dev, i32 2424
  %call.i12 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i12, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapbeth_data_indication(ptr noundef %dev, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %skb_cloned.exit.thread.i, label %skb_cloned.exit.i

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i, align 8
  %cmp.i1.i = icmp eq ptr %6, %8
  br i1 %cmp.i1.i, label %skb_cloned.exit.i.skb_cow.exit_crit_edge, label %if.end.i.i

skb_cloned.exit.i.skb_cow.exit_crit_edge:         ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow.exit

skb_cloned.exit.thread.i:                         ; preds = %entry
  %data.i.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i2.i, align 4
  %head.i.i3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i3.i, align 8
  %cmp.i14.i = icmp eq ptr %10, %12
  br i1 %cmp.i14.i, label %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge, label %skb_cloned.exit.thread.i.if.end_crit_edge

skb_cloned.exit.thread.i.if.end_crit_edge:        ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_cloned.exit.thread.i.skb_cow.exit_crit_edge:  ; preds = %skb_cloned.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow.exit

if.end.i.i:                                       ; preds = %skb_cloned.exit.i
  %and.i.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i.i.if.end_crit_edge, label %if.end.i.i.skb_cow.exit_crit_edge

if.end.i.i.skb_cow.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

skb_cow.exit:                                     ; preds = %if.end.i.i.skb_cow.exit_crit_edge, %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge, %skb_cloned.exit.i.skb_cow.exit_crit_edge
  %delta.010.i.i = phi i32 [ 0, %if.end.i.i.skb_cow.exit_crit_edge ], [ 128, %skb_cloned.exit.i.skb_cow.exit_crit_edge ], [ 128, %skb_cloned.exit.thread.i.skb_cow.exit_crit_edge ]
  %call4.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not, label %skb_cow.exit.if.end_crit_edge, label %if.then

skb_cow.exit.if.end_crit_edge:                    ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %skb_cow.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %skb_cow.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %skb_cloned.exit.thread.i.if.end_crit_edge
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %14, align 1
  %16 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %16, align 8
  %18 = load ptr, ptr %data, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2053, ptr %protocol, align 8
  %rx_queue = getelementptr i8, ptr %dev, i32 2368
  tail call void @skb_queue_tail(ptr noundef %rx_queue, ptr noundef %skb) #8
  %napi = getelementptr i8, ptr %dev, i32 2424
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #8
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__napi_schedule(ptr noundef %napi) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lapbeth_data_transmit(ptr nocapture noundef %ndev, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 2) #8
  %conv = trunc i32 %1 to i8
  %incdec.ptr = getelementptr i8, ptr %call1, i32 1
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %call1, align 1
  %div = sdiv i32 %1, 256
  %conv2 = trunc i32 %div to i8
  %3 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %incdec.ptr, align 1
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_packets, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %6 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %7, %1
  store i32 %add, ptr %tx_bytes, align 4
  %ethdev = getelementptr i8, ptr %ndev, i32 2312
  %8 = ptrtoint ptr %ethdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ethdev, align 8
  %10 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 24576, ptr %protocol, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i, ptr %network_header.i, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 49
  %18 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %entry.dev_hard_header.exit_crit_edge, label %lor.lhs.false.i

entry.dev_hard_header.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hard_header.exit

lor.lhs.false.i:                                  ; preds = %entry
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.dev_hard_header.exit_crit_edge, label %if.end.i

lor.lhs.false.i.dev_hard_header.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hard_header.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 %21(ptr noundef %skb, ptr noundef %9, i16 noundef zeroext 24576, ptr noundef nonnull @bcast_addr, ptr noundef null, i32 noundef 0) #8
  br label %dev_hard_header.exit

dev_hard_header.exit:                             ; preds = %if.end.i, %lor.lhs.false.i.dev_hard_header.exit_crit_edge, %entry.dev_hard_header.exit_crit_edge
  %call6 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_connect_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_disconnect_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lapb_data_request(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb_core(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !36, !37, !39, !41, !43, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @__initcall__kmod_lapbether__459_499_lapbeth_init_driver6, !1, !"__initcall__kmod_lapbether__459_499_lapbeth_init_driver6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/lapbether.c", i32 499, i32 1}
!2 = !{ptr @__exitcall_lapbeth_cleanup_driver, !3, !"__exitcall_lapbeth_cleanup_driver", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/lapbether.c", i32 518, i32 1}
!4 = !{ptr @__UNIQUE_ID_author460, !5, !"__UNIQUE_ID_author460", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/lapbether.c", i32 520, i32 1}
!6 = !{ptr @__UNIQUE_ID_description461, !7, !"__UNIQUE_ID_description461", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/lapbether.c", i32 521, i32 1}
!8 = !{ptr @__UNIQUE_ID_file462, !9, !"__UNIQUE_ID_file462", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/lapbether.c", i32 522, i32 1}
!10 = !{ptr @__UNIQUE_ID_license463, !9, !"__UNIQUE_ID_license463", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/lapbether.c", i32 495, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @lapbeth_init_driver._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @lapbeth_init_driver._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @banner, !17, !"banner", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/lapbether.c", i32 486, i32 19}
!18 = !{ptr @lapbeth_packet_type, !19, !"lapbeth_packet_type", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/lapbether.c", i32 477, i32 27}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/lapbether.c", i32 143, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lapbeth_rcv._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @lapbeth_rcv._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../drivers/net/wan/lapbether.c", i32 74, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @lapbeth_dev_notifier, !38, !"lapbeth_dev_notifier", i1 false, i1 false}
!38 = !{!"../drivers/net/wan/lapbether.c", i32 482, i32 30}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wan/lapbether.c", i32 83, i32 57}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/wan/lapbether.c", i32 384, i32 2}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/wan/lapbether.c", i32 386, i32 9}
!46 = !{ptr @lapbeth_new_device.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/net/wan/lapbether.c", i32 408, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lapbeth_netdev_ops, !50, !"lapbeth_netdev_ops", i1 false, i1 false}
!50 = !{!"../drivers/net/wan/lapbether.c", i32 359, i32 36}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/wan/lapbether.c", i32 328, i32 3}
!53 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lapbeth_open._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lapbeth_open._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @lapbeth_callbacks, !57, !"lapbeth_callbacks", i1 false, i1 false}
!57 = !{!"../drivers/net/wan/lapbether.c", i32 308, i32 42}
!58 = !{ptr @bcast_addr, !59, !"bcast_addr", i1 false, i1 false}
!59 = !{!"../drivers/net/wan/lapbether.c", i32 44, i32 17}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/wan/lapbether.c", i32 350, i32 3}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lapbeth_close._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lapbeth_close._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/wan/lapbether.c", i32 208, i32 4}
!67 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @lapbeth_xmit._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @lapbeth_xmit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wan/lapbether.c", i32 215, i32 4}
!72 = !{ptr @lapbeth_xmit._entry.19, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @lapbeth_xmit._entry_ptr.21, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wan/lapbether.c", i32 225, i32 3}
!76 = !{ptr @lapbeth_xmit._entry.22, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lapbeth_xmit._entry_ptr.24, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @skb_queue_head_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!80 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @lapbeth_devices, !82, !"lapbeth_devices", i1 false, i1 false}
!82 = !{!"../drivers/net/wan/lapbether.c", i32 61, i32 8}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 649708, i64 649769}
!94 = !{i64 652440}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 652725}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2149333528}
!99 = !{i8 0, i8 2}
!100 = !{i64 2149333794}
!101 = !{i64 2151504520}
