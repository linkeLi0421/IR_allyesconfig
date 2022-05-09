; ModuleID = '/llk/IR_all_yes/drivers/net/bonding/bond_procfs.c_pt.bc'
source_filename = "../drivers/net/bonding/bond_procfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.26 }
%union.anon.26 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.22 }
%union.anon.22 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.bond_net = type { ptr, %struct.list_head, ptr, %struct.class_attribute }
%struct.class_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.23 }
%union.anon.23 = type { %struct.hlist_node }
%struct.bonding = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i8, ptr, [16 x i8], %struct.list_head, ptr, %struct.ad_bond_info, %struct.alb_bond_info, %struct.bond_params, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, ptr, %struct.rtnl_link_stats64, %struct.list_head, %struct.spinlock, ptr }
%struct.ad_bond_info = type { %struct.ad_system, %struct.bond_3ad_stats, %struct.atomic_t, i16 }
%struct.ad_system = type { i16, %struct.mac_addr }
%struct.mac_addr = type { [6 x i8] }
%struct.bond_3ad_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.alb_bond_info = type { ptr, i32, %struct.atomic_t, i32, i32, ptr, i32, i8, ptr, i8, i32, i32, i32, i8 }
%struct.bond_params = type { i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i8], i32, [16 x i32], i32, i32, i32, i32, i32, i32, %struct.reciprocal_value, i16, i16, [8 x i8] }
%struct.reciprocal_value = type { i32, i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.65, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.69, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.69 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.24, i32, %struct.spinlock }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.42, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.119, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.120, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.121, ptr, %struct.address_space, %struct.list_head, %union.anon.122, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.119 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.120 = type { %struct.callback_head }
%union.anon.121 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.122 = type { ptr }
%struct.ad_info = type { i16, i16, i16, i16, [6 x i8] }
%struct.slave = type { ptr, ptr, i32, i32, i32, [16 x i32], i8, i8, i8, i8, i32, i32, i32, i16, [32 x i8], ptr, %struct.tlb_slave_info, ptr, %struct.delayed_work, %struct.kobject, %struct.rtnl_link_stats64 }
%struct.tlb_slave_info = type { i32, i32 }
%struct.ad_slave_info = type { %struct.aggregator, %struct.port, %struct.bond_3ad_stats, i16 }
%struct.aggregator = type { %struct.mac_addr, i16, i8, i16, i16, %struct.mac_addr, i16, i16, i16, i16, ptr, ptr, i16, i16 }
%struct.port = type { i16, i16, %struct.mac_addr, i16, i16, i8, i16, i16, i8, i8, %struct.port_params, %struct.port_params, i8, i16, i32, i16, i32, i16, i32, i16, i32, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.lacpdu }
%struct.port_params = type { %struct.mac_addr, i16, i16, i16, i16, i16 }
%struct.lacpdu = type { i8, i8, i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, %struct.mac_addr, i16, i16, i16, i8, [3 x i8], i8, i8, i16, [12 x i8], i8, i8, [50 x i8] }

@bond_net_id = external dso_local local_unnamed_addr global i32, align 4
@bond_info_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @bond_info_seq_start, ptr @bond_info_seq_stop, ptr @bond_info_seq_next, ptr @bond_info_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot create /proc/net/%s/%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bonding\00", [24 x i8] zeroinitializer }, align 32
@bond_create_proc_dir._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014Warning: Cannot create /proc/net/%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bond_create_proc_dir\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/bonding/bond_procfs.c\00", [62 x i8] zeroinitializer }, align 32
@bond_create_proc_dir._entry_ptr = internal global ptr @bond_create_proc_dir._entry, section ".printk_index", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Ethernet Channel Bonding Driver: v5.17.0\0A\00", [54 x i8] zeroinitializer }, align 32
@bond_info_show_master.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Bonding Mode: %s\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" (fail_over_mac %s)\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Transmit Hash Policy: %s (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@bond_info_show_master.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Primary Slave: %s\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" (primary_reselect %s)\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ACurrently Active Slave: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MII Status: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MII Polling Interval (ms): %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Up Delay (ms): %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Down Delay (ms): %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Peer Notification Delay (ms): %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ARP Polling Interval (ms): %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ARP Missed Max: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ARP IP target/s (n.n.n.n form):\00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %pI4\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A802.3ad info\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LACP active: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LACP rate: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Min links: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Aggregator selection policy (ad_select): %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"System priority: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"System MAC address: %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bond %s has no active aggregator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Active Aggregator Info:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09Aggregator ID: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Number of ports: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09Actor Key: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Partner Key: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\09Partner Mac Address: %pM\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\0ASlave Interface: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Speed: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speed: %d Mbps\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Duplex: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Link Failure Count: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Permanent HW addr: %*phC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Slave queue ID: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aggregator ID: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Actor Churn State: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Partner Churn State: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Actor Churned Count: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Partner Churned Count: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"details actor lacp pdu:\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"    system priority: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"    system mac address: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    port key: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"    port priority: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"    port number: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"    port state: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"details partner lacp pdu:\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"    oper key: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aggregator ID: N/A\0A\00", [44 x i8] zeroinitializer }, align 32
@bond_3ad_churn_desc.churn_description = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"monitoring\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"churned\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"bond_info_seq_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 261, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 277, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 278, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 304, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 45, i32 7 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 695, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 723, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 253, i32 19 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 253, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 67, i32 18 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 74, i32 19 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 77, i32 18 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 82, i32 19 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 88, i32 19 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 89, i32 38 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 93, i32 20 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 97, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 101, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 102, i32 6 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 102, i32 13 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 103, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 104, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 106, i32 18 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 108, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 116, i32 19 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 118, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 121, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 127, i32 21 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 128, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 137, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 138, i32 19 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 139, i32 36 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 139, i32 43 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 140, i32 19 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 141, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 141, i32 43 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 142, i32 19 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 145, i32 19 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 148, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 150, i32 20 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 155, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 158, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 160, i32 21 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 162, i32 21 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 164, i32 21 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 166, i32 21 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 168, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 180, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 183, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 183, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 185, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 188, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 190, i32 51 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 190, i32 60 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 192, i32 18 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 195, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 197, i32 18 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 204, i32 20 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 206, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 208, i32 20 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 210, i32 20 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 212, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 216, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 217, i32 21 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 219, i32 21 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 221, i32 21 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 223, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 225, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 227, i32 21 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 230, i32 19 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 235, i32 21 }
@___asan_gen_.310 = private constant [37 x i8] c"../drivers/net/bonding/bond_procfs.c\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.310, i32 245, i32 18 }
@___asan_gen_.312 = private unnamed_addr constant [18 x i8] c"churn_description\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 278, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 279, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 280, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 281, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [26 x i8] c"../include/net/bond_3ad.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 282, i32 3 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @bond_create_proc_dir._entry, ptr @bond_create_proc_dir._entry_ptr, ptr @bond_info_seq_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @bond_3ad_churn_desc.churn_description, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_info_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_create_proc_dir._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bond_3ad_churn_desc.churn_description to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_create_proc_entry(ptr noundef %bond) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bond_net_id to i32))
  %4 = load i32, ptr @bond_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %proc_dir = getelementptr inbounds %struct.bond_net, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @proc_create_seq_private(ptr noundef %1, i16 noundef zeroext 292, ptr noundef nonnull %6, ptr noundef nonnull @bond_info_seq_ops, i32 noundef 0, ptr noundef %bond) #7
  %proc_entry = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 13
  %7 = ptrtoint ptr %proc_entry to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %proc_entry, align 8
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %1) #10
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %proc_file_name = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 14
  %8 = call ptr @memcpy(ptr %proc_file_name, ptr %1, i32 16)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !177
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.6) #7
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !178
  %8 = tail call i32 @llvm.read_register.i32(metadata !167) #7
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_remove_proc_entry(ptr noundef %bond) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bond, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @bond_net_id to i32))
  %4 = load i32, ptr @bond_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %proc_dir = getelementptr inbounds %struct.bond_net, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %proc_entry = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 13
  %7 = ptrtoint ptr %proc_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_entry, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %proc_file_name = getelementptr inbounds %struct.bonding, ptr %bond, i32 0, i32 14
  tail call void @remove_proc_entry(ptr noundef %proc_file_name, ptr noundef nonnull %6) #7
  %9 = call ptr @memset(ptr %proc_entry, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_create_proc_dir(ptr nocapture noundef %bn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_dir = getelementptr inbounds %struct.bond_net, ptr %bn, i32 0, i32 2
  %0 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %bn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bn, align 4
  %proc_net = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.1, ptr noundef %5) #7
  %6 = ptrtoint ptr %proc_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %proc_dir, align 4
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #10
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bond_destroy_proc_dir(ptr nocapture noundef %bn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_dir = getelementptr inbounds %struct.bond_net, ptr %bn, i32 0, i32 2
  %0 = ptrtoint ptr %proc_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_dir, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %bn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bn, align 4
  %proc_net = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %5) #7
  %6 = ptrtoint ptr %proc_dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %proc_dir, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bond_info_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #7
  %6 = tail call i32 @llvm.read_register.i32(metadata !167) #7
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !177
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %10 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp = icmp eq i64 %11, 0
  br i1 %cmp, label %rcu_read_lock.exit.cleanup_crit_edge, label %if.end

rcu_read_lock.exit.cleanup_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %lower = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lower, ptr %iter, align 4
  %15 = load ptr, ptr %5, align 8
  %call3 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %15, ptr noundef nonnull %iter) #7
  %tobool.not16 = icmp eq ptr %call3, null
  br i1 %tobool.not16, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %16 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %17)
  %cmp420 = icmp eq i64 %17, 1
  br i1 %cmp420, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc
  %inc = add i64 %inc21, 1
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  %cmp4 = icmp eq i64 %inc, %19
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %inc21 = phi i64 [ %inc, %for.body.for.inc_crit_edge ], [ 1, %for.body.preheader.for.inc_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %call8 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %21, ptr noundef nonnull %iter) #7
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rcu_read_lock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call3, %for.body.preheader.cleanup_crit_edge ], [ %call8, %for.body.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bond_info_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !178
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bond_info_seq_next(ptr nocapture noundef readonly %seq, ptr noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  %iter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %file = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iter) #7
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pos, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call ptr @netdev_lower_get_first_private_rcu(ptr noundef %9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %lower = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lower, ptr %iter, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %call5 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %12, ptr noundef nonnull %iter) #7
  %tobool.not24 = icmp eq ptr %call5, null
  br i1 %tobool.not24, label %if.end.cleanup_crit_edge, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end8.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %slave.025 = phi ptr [ %call13, %if.end8.if.end8_crit_edge ], [ %call5, %if.end.if.end8_crit_edge ]
  %cmp9 = icmp eq ptr %slave.025, %v
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 8
  %call13 = call ptr @netdev_lower_get_next_private_rcu(ptr noundef %14, ptr noundef nonnull %iter) #7
  %tobool.not = icmp eq ptr %call13, null
  %brmerge = select i1 %tobool.not, i1 true, i1 %cmp9
  br i1 %brmerge, label %if.end8.cleanup_crit_edge, label %if.end8.if.end8_crit_edge

if.end8.if.end8_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call2, %if.then ], [ null, %if.end.cleanup_crit_edge ], [ %call13, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iter) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bond_info_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ad_info.i = alloca %struct.ad_info, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #7
  %file.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %0 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %file.i, align 4
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_private.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private.i.i, align 4
  %curr_active_slave.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %curr_active_slave.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %curr_active_slave.i, align 4
  %call3.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end9.i_crit_edge

if.then.do.end9.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %if.then
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b218.i = load i1, ptr @bond_info_show_master.__warned, align 1
  br i1 %.b218.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bond_info_show_master.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 65, ptr noundef nonnull @.str.6) #7
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %if.then.do.end9.i_crit_edge
  %params.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params.i, align 8
  %call11.i = tail call ptr @bond_mode_name(i32 noundef %9) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef %call11.i) #7
  %10 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i = icmp eq i32 %11, 1
  br i1 %cmp.i, label %land.lhs.true14.i, label %do.end9.i.if.end21.i_crit_edge

do.end9.i.if.end21.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

land.lhs.true14.i:                                ; preds = %do.end9.i
  %fail_over_mac.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 9
  %12 = ptrtoint ptr %fail_over_mac.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fail_over_mac.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool16.not.i = icmp eq i32 %13, 0
  br i1 %tobool16.not.i, label %land.lhs.true14.i.if.end21.i_crit_edge, label %if.then17.i

land.lhs.true14.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then17.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = sext i32 %13 to i64
  %call20.i = tail call ptr @bond_opt_get_val(i32 noundef 5, i64 noundef %conv.i) #7
  %14 = ptrtoint ptr %call20.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call20.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, ptr noundef %15) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %land.lhs.true14.i.if.end21.i_crit_edge, %do.end9.i.if.end21.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14) #7
  %16 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %lor.rhs.i.i [
    i32 4, label %if.end21.i.if.then23.i_crit_edge
    i32 2, label %if.end21.i.if.then23.i_crit_edge14
  ]

if.end21.i.if.then23.i_crit_edge14:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.end21.i.if.then23.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

lor.rhs.i.i:                                      ; preds = %if.end21.i
  %19 = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %bond_mode_uses_xmit_hash.exit.i, label %lor.rhs.i.i.if.end30.i_crit_edge

lor.rhs.i.i.if.end30.i_crit_edge:                 ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

bond_mode_uses_xmit_hash.exit.i:                  ; preds = %lor.rhs.i.i
  %tlb_dynamic_lb.i.i.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 25
  %21 = ptrtoint ptr %tlb_dynamic_lb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tlb_dynamic_lb.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i.i, label %bond_mode_uses_xmit_hash.exit.i.if.then23.i_crit_edge, label %bond_mode_uses_xmit_hash.exit.i.if.end30thread-pre-split.i_crit_edge

bond_mode_uses_xmit_hash.exit.i.if.end30thread-pre-split.i_crit_edge: ; preds = %bond_mode_uses_xmit_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30thread-pre-split.i

bond_mode_uses_xmit_hash.exit.i.if.then23.i_crit_edge: ; preds = %bond_mode_uses_xmit_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then23.i

if.then23.i:                                      ; preds = %bond_mode_uses_xmit_hash.exit.i.if.then23.i_crit_edge, %if.end21.i.if.then23.i_crit_edge, %if.end21.i.if.then23.i_crit_edge14
  %xmit_policy.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 1
  %23 = ptrtoint ptr %xmit_policy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xmit_policy.i, align 4
  %conv25.i = sext i32 %24 to i64
  %call26.i = tail call ptr @bond_opt_get_val(i32 noundef 2, i64 noundef %conv25.i) #7
  %25 = ptrtoint ptr %call26.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call26.i, align 8
  %27 = ptrtoint ptr %xmit_policy.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %xmit_policy.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, ptr noundef %26, i32 noundef %28) #7
  br label %if.end30thread-pre-split.i

if.end30thread-pre-split.i:                       ; preds = %if.then23.i, %bond_mode_uses_xmit_hash.exit.i.if.end30thread-pre-split.i_crit_edge
  %29 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load i32, ptr %params.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end30thread-pre-split.i, %lor.rhs.i.i.if.end30.i_crit_edge
  %30 = phi i32 [ %.pr.i, %if.end30thread-pre-split.i ], [ %17, %lor.rhs.i.i.if.end30.i_crit_edge ]
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %30, label %if.end30.i.if.end66.i_crit_edge [
    i32 1, label %if.end30.i.if.then32.i_crit_edge
    i32 5, label %if.end30.i.if.then32.i_crit_edge15
    i32 6, label %if.end30.i.if.then32.i_crit_edge16
  ]

if.end30.i.if.then32.i_crit_edge16:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

if.end30.i.if.then32.i_crit_edge15:               ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

if.end30.i.if.then32.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then32.i

if.end30.i.if.end66.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then32.i:                                      ; preds = %if.end30.i.if.then32.i_crit_edge, %if.end30.i.if.then32.i_crit_edge15, %if.end30.i.if.then32.i_crit_edge16
  %primary_slave.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 3
  %32 = ptrtoint ptr %primary_slave.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %primary_slave.i, align 4
  %call38.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true40.i, label %if.then32.i.do.end48.i_crit_edge

if.then32.i.do.end48.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

land.lhs.true40.i:                                ; preds = %if.then32.i
  %call41.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %land.lhs.true40.i.do.end48.i_crit_edge, label %land.lhs.true43.i

land.lhs.true40.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

land.lhs.true43.i:                                ; preds = %land.lhs.true40.i
  %.b216217.i = load i1, ptr @bond_info_show_master.__warned.16, align 1
  br i1 %.b216217.i, label %land.lhs.true43.i.do.end48.i_crit_edge, label %if.then45.i

land.lhs.true43.i.do.end48.i_crit_edge:           ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48.i

if.then45.i:                                      ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @bond_info_show_master.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 87, ptr noundef nonnull @.str.6) #7
  br label %do.end48.i

do.end48.i:                                       ; preds = %if.then45.i, %land.lhs.true43.i.do.end48.i_crit_edge, %land.lhs.true40.i.do.end48.i_crit_edge, %if.then32.i.do.end48.i_crit_edge
  %tobool50.not.i = icmp eq ptr %33, null
  br i1 %tobool50.not.i, label %if.end57.critedge.i, label %cond.true.i

cond.true.i:                                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, ptr noundef %35) #7
  %primary_reselect.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 18
  %36 = ptrtoint ptr %primary_reselect.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %primary_reselect.i, align 8
  %conv54.i = sext i32 %37 to i64
  %call55.i = tail call ptr @bond_opt_get_val(i32 noundef 16, i64 noundef %conv54.i) #7
  %38 = ptrtoint ptr %call55.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call55.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, ptr noundef %39) #7
  br label %if.end57.i

if.end57.critedge.i:                              ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #7
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end57.critedge.i, %cond.true.i
  %tobool58.not.i = icmp eq ptr %7, null
  br i1 %tobool58.not.i, label %if.end57.i.cond.end64.i_crit_edge, label %cond.true59.i

if.end57.i.cond.end64.i_crit_edge:                ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end64.i

cond.true59.i:                                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 8
  br label %cond.end64.i

cond.end64.i:                                     ; preds = %cond.true59.i, %if.end57.i.cond.end64.i_crit_edge
  %cond65.i = phi ptr [ %41, %cond.true59.i ], [ @.str.18, %if.end57.i.cond.end64.i_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, ptr noundef %cond65.i) #7
  br label %if.end66.i

if.end66.i:                                       ; preds = %cond.end64.i, %if.end30.i.if.end66.i_crit_edge
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %5, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i.i, align 4
  %46 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i = icmp eq i32 %46, 0
  %cond70.i = select i1 %tobool.not.i.i, ptr @.str.22, ptr @.str.23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, ptr noundef nonnull %cond70.i) #7
  %miimon.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 2
  %47 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %miimon.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, i32 noundef %48) #7
  %updelay.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 10
  %49 = ptrtoint ptr %updelay.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %updelay.i, align 4
  %51 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %miimon.i, align 8
  %mul.i = mul i32 %52, %50
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %mul.i) #7
  %downdelay.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 11
  %53 = ptrtoint ptr %downdelay.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %downdelay.i, align 8
  %55 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %miimon.i, align 8
  %mul78.i = mul i32 %56, %54
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.26, i32 noundef %mul78.i) #7
  %peer_notif_delay.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 12
  %57 = ptrtoint ptr %peer_notif_delay.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %peer_notif_delay.i, align 4
  %59 = ptrtoint ptr %miimon.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %miimon.i, align 8
  %mul82.i = mul i32 %60, %58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.27, i32 noundef %mul82.i) #7
  %arp_interval.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 5
  %61 = ptrtoint ptr %arp_interval.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arp_interval.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp84.i = icmp sgt i32 %62, 0
  br i1 %cmp84.i, label %if.then86.i, label %if.end66.i.if.end103.i_crit_edge

if.end66.i.if.end103.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103.i

if.then86.i:                                      ; preds = %if.end66.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.28, i32 noundef %62) #7
  %missed_max.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 4
  %63 = ptrtoint ptr %missed_max.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %missed_max.i, align 1
  %conv90.i = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.29, i32 noundef %conv90.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.30) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end99.i.for.body.i_crit_edge, %if.then86.i
  %tobool97.not222.i = phi i1 [ true, %if.then86.i ], [ false, %if.end99.i.for.body.i_crit_edge ]
  %i.0221.i = phi i32 [ 0, %if.then86.i ], [ %inc.i, %if.end99.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bonding, ptr %5, i32 0, i32 19, i32 19, i32 %i.0221.i
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool94.not.i = icmp eq i32 %66, 0
  br i1 %tobool94.not.i, label %for.body.i.for.end.i_crit_edge, label %if.end96.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end96.i:                                       ; preds = %for.body.i
  br i1 %tobool97.not222.i, label %if.end96.i.if.end99.i_crit_edge, label %if.then98.i

if.end96.i.if.end99.i_crit_edge:                  ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99.i

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31) #7
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then98.i, %if.end96.i.if.end99.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.32, ptr noundef %arrayidx.i) #7
  %inc.i = add nuw nsw i32 %i.0221.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end99.i.for.end.i_crit_edge, label %if.end99.i.for.body.i_crit_edge

if.end99.i.for.body.i_crit_edge:                  ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end99.i.for.end.i_crit_edge:                   ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end99.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14) #7
  br label %if.end103.i

if.end103.i:                                      ; preds = %for.end.i, %if.end66.i.if.end103.i_crit_edge
  %67 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %params.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp106.i = icmp eq i32 %68, 4
  br i1 %cmp106.i, label %if.then108.i, label %if.end103.i.if.end_crit_edge

if.end103.i.if.end_crit_edge:                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then108.i:                                     ; preds = %if.end103.i
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %ad_info.i) #7
  %69 = getelementptr inbounds %struct.ad_info, ptr %ad_info.i, i32 0, i32 1
  %70 = getelementptr inbounds %struct.ad_info, ptr %ad_info.i, i32 0, i32 2
  %71 = getelementptr inbounds %struct.ad_info, ptr %ad_info.i, i32 0, i32 3
  %72 = getelementptr inbounds %struct.ad_info, ptr %ad_info.i, i32 0, i32 4
  %73 = call ptr @memset(ptr %ad_info.i, i32 255, i32 14)
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.33) #7
  %lacp_active.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 13
  %74 = ptrtoint ptr %lacp_active.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lacp_active.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool110.not.i = icmp eq i32 %75, 0
  %cond111.i = select i1 %tobool110.not.i, ptr @.str.36, ptr @.str.35
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond111.i) #7
  %lacp_fast.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 14
  %76 = ptrtoint ptr %lacp_fast.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lacp_fast.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool113.not.i = icmp eq i32 %77, 0
  %cond114.i = select i1 %tobool113.not.i, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond114.i) #7
  %min_links.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 15
  %78 = ptrtoint ptr %min_links.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %min_links.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.40, i32 noundef %79) #7
  %ad_select.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 19, i32 16
  %80 = ptrtoint ptr %ad_select.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ad_select.i, align 4
  %conv117.i = sext i32 %81 to i64
  %call118.i = tail call ptr @bond_opt_get_val(i32 noundef 12, i64 noundef %conv117.i) #7
  %82 = ptrtoint ptr %call118.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %call118.i, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.41, ptr noundef %83) #7
  %call120.i = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call120.i, label %if.then121.i, label %if.then108.i.if.end138.i_crit_edge

if.then108.i.if.end138.i_crit_edge:               ; preds = %if.then108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.i

if.then121.i:                                     ; preds = %if.then108.i
  %ad_info122.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 17
  %84 = ptrtoint ptr %ad_info122.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %ad_info122.i, align 8
  %conv123.i = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.42, i32 noundef %conv123.i) #7
  %sys_mac_addr.i = getelementptr inbounds %struct.bonding, ptr %5, i32 0, i32 17, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.43, ptr noundef %sys_mac_addr.i) #7
  %call126.i = call i32 @__bond_3ad_get_active_agg_info(ptr noundef %5, ptr noundef nonnull %ad_info.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.else.i, label %if.then128.i

if.then128.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.44, ptr noundef %87) #7
  br label %if.end138.i

if.else.i:                                        ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.45) #7
  %88 = ptrtoint ptr %ad_info.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ad_info.i, align 2
  %conv132.i = zext i16 %89 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.46, i32 noundef %conv132.i) #7
  %90 = ptrtoint ptr %69 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %69, align 2
  %conv133.i = zext i16 %91 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.47, i32 noundef %conv133.i) #7
  %92 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %70, align 2
  %conv134.i = zext i16 %93 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.48, i32 noundef %conv134.i) #7
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %71, align 2
  %conv135.i = zext i16 %95 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49, i32 noundef %conv135.i) #7
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.50, ptr noundef %72) #7
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.else.i, %if.then128.i, %if.then108.i.if.end138.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %ad_info.i) #7
  br label %if.end

if.else:                                          ; preds = %entry
  %file.i4 = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 10
  %96 = ptrtoint ptr %file.i4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %file.i4, align 4
  %f_inode.i.i5 = getelementptr inbounds %struct.file, ptr %97, i32 0, i32 2
  %98 = ptrtoint ptr %f_inode.i.i5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %f_inode.i.i5, align 8
  %i_private.i.i6 = getelementptr inbounds %struct.inode, ptr %99, i32 0, i32 54
  %100 = ptrtoint ptr %i_private.i.i6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %i_private.i.i6, align 4
  %102 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %v, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.51, ptr noundef %103) #7
  %link.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 6
  %104 = ptrtoint ptr %link.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %link.i, align 4
  %call2.i = tail call ptr @bond_slave_link_status(i8 noundef signext %105) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, ptr noundef %call2.i) #7
  %speed.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 12
  %106 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %speed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp.i7 = icmp eq i32 %107, -1
  br i1 %cmp.i7, label %if.then.i8, label %if.else.i9

if.then.i8:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #7
  br label %if.end.i

if.else.i9:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.54, i32 noundef %107) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i9, %if.then.i8
  %duplex.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 9
  %108 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %109)
  %cmp4.i = icmp eq i8 %109, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i10 = icmp eq i8 %109, 0
  %cond.i = select i1 %tobool.not.i10, ptr @.str.57, ptr @.str.56
  %cond.sink.i = select i1 %cmp4.i, ptr @.str.53, ptr %cond.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond.sink.i) #7
  %link_failure_count.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 11
  %110 = ptrtoint ptr %link_failure_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %link_failure_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.58, i32 noundef %111) #7
  %112 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %v, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %113, i32 0, i32 56
  %114 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %addr_len.i, align 1
  %conv12.i = zext i8 %115 to i32
  %perm_hwaddr.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.59, i32 noundef %conv12.i, ptr noundef %perm_hwaddr.i) #7
  %queue_id.i = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 13
  %116 = ptrtoint ptr %queue_id.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %queue_id.i, align 4
  %conv14.i = zext i16 %117 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.60, i32 noundef %conv14.i) #7
  %params.i11 = getelementptr inbounds %struct.bonding, ptr %101, i32 0, i32 19
  %118 = ptrtoint ptr %params.i11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %params.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %119)
  %cmp15.i = icmp eq i32 %119, 4
  br i1 %cmp15.i, label %if.then17.i13, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then17.i13:                                    ; preds = %if.end.i
  %ad_info.i12 = getelementptr inbounds %struct.slave, ptr %v, i32 0, i32 15
  %120 = ptrtoint ptr %ad_info.i12 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ad_info.i12, align 8
  %port18.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1
  %aggregator.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 29
  %122 = ptrtoint ptr %aggregator.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %aggregator.i, align 4
  %tobool19.not.i = icmp eq ptr %123, null
  br i1 %tobool19.not.i, label %if.else42.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then17.i13
  %aggregator_identifier.i = getelementptr inbounds %struct.aggregator, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %aggregator_identifier.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %aggregator_identifier.i, align 2
  %conv21.i = zext i16 %125 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.61, i32 noundef %conv21.i) #7
  %sm_churn_actor_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 26
  %126 = ptrtoint ptr %sm_churn_actor_state.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %sm_churn_actor_state.i, align 4
  %128 = tail call i32 @llvm.umin.i32(i32 %127, i32 3) #7
  %arrayidx.i.i = getelementptr [4 x ptr], ptr @bond_3ad_churn_desc.churn_description, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.62, ptr noundef %130) #7
  %sm_churn_partner_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 27
  %131 = ptrtoint ptr %sm_churn_partner_state.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sm_churn_partner_state.i, align 4
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 3) #7
  %arrayidx.i102.i = getelementptr [4 x ptr], ptr @bond_3ad_churn_desc.churn_description, i32 0, i32 %133
  %134 = ptrtoint ptr %arrayidx.i102.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i102.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.63, ptr noundef %135) #7
  %churn_actor_count.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 24
  %136 = ptrtoint ptr %churn_actor_count.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %churn_actor_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.64, i32 noundef %137) #7
  %churn_partner_count.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 25
  %138 = ptrtoint ptr %churn_partner_count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %churn_partner_count.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.65, i32 noundef %139) #7
  %call24.i = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call24.i, label %if.then25.i, label %if.then20.i.if.end_crit_edge

if.then20.i.if.end_crit_edge:                     ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then25.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.66) #7
  %actor_system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 3
  %140 = ptrtoint ptr %actor_system_priority.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %actor_system_priority.i, align 2
  %conv26.i = zext i16 %141 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.67, i32 noundef %conv26.i) #7
  %actor_system.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, ptr noundef %actor_system.i) #7
  %actor_oper_port_key.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 7
  %142 = ptrtoint ptr %actor_oper_port_key.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %actor_oper_port_key.i, align 2
  %conv27.i = zext i16 %143 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.69, i32 noundef %conv27.i) #7
  %actor_port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %actor_port_priority.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %actor_port_priority.i, align 2
  %conv28.i = zext i16 %145 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.70, i32 noundef %conv28.i) #7
  %146 = ptrtoint ptr %port18.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %port18.i, align 4
  %conv29.i = zext i16 %147 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.71, i32 noundef %conv29.i) #7
  %actor_oper_port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 9
  %148 = ptrtoint ptr %actor_oper_port_state.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %actor_oper_port_state.i, align 1
  %conv30.i = zext i8 %149 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.72, i32 noundef %conv30.i) #7
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.73) #7
  %partner_oper.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11
  %system_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11, i32 1
  %150 = ptrtoint ptr %system_priority.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %system_priority.i, align 2
  %conv31.i = zext i16 %151 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.67, i32 noundef %conv31.i) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.68, ptr noundef %partner_oper.i) #7
  %key.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11, i32 2
  %152 = ptrtoint ptr %key.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %key.i, align 2
  %conv34.i = zext i16 %153 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.74, i32 noundef %conv34.i) #7
  %port_priority.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11, i32 4
  %154 = ptrtoint ptr %port_priority.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %port_priority.i, align 2
  %conv36.i = zext i16 %155 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.70, i32 noundef %conv36.i) #7
  %port_number.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11, i32 3
  %156 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %port_number.i, align 2
  %conv38.i = zext i16 %157 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.71, i32 noundef %conv38.i) #7
  %port_state.i = getelementptr inbounds %struct.ad_slave_info, ptr %121, i32 0, i32 1, i32 11, i32 5
  %158 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %port_state.i, align 2
  %conv40.i = zext i16 %159 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.72, i32 noundef %conv40.i) #7
  br label %if.end

if.else42.i:                                      ; preds = %if.then17.i13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.75) #7
  br label %if.end

if.end:                                           ; preds = %if.else42.i, %if.then25.i, %if.then20.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.end138.i, %if.end103.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next_private_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_first_private_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bond_mode_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bond_opt_get_val(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bond_3ad_get_active_agg_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bond_slave_link_status(i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165}
!llvm.named.register.sp = !{!167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/bonding/bond_procfs.c", i32 277, i32 26}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/bonding/bond_procfs.c", i32 278, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/bonding/bond_procfs.c", i32 304, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bond_create_proc_dir._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @bond_create_proc_dir._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bond_info_seq_ops, !22, !"bond_info_seq_ops", i1 false, i1 false}
!22 = !{!"../drivers/net/bonding/bond_procfs.c", i32 261, i32 36}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/bonding/bond_procfs.c", i32 253, i32 19}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/bonding/bond_procfs.c", i32 253, i32 27}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../drivers/net/bonding/bond_procfs.c", i32 65, i32 9}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/bonding/bond_procfs.c", i32 67, i32 18}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/bonding/bond_procfs.c", i32 74, i32 19}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/bonding/bond_procfs.c", i32 77, i32 18}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/bonding/bond_procfs.c", i32 82, i32 19}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../drivers/net/bonding/bond_procfs.c", i32 87, i32 13}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/bonding/bond_procfs.c", i32 88, i32 19}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/bonding/bond_procfs.c", i32 89, i32 38}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/bonding/bond_procfs.c", i32 93, i32 20}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/bonding/bond_procfs.c", i32 97, i32 19}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/bonding/bond_procfs.c", i32 101, i32 18}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/bonding/bond_procfs.c", i32 102, i32 6}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/bonding/bond_procfs.c", i32 102, i32 13}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/bonding/bond_procfs.c", i32 103, i32 18}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/bonding/bond_procfs.c", i32 104, i32 18}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/bonding/bond_procfs.c", i32 106, i32 18}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/bonding/bond_procfs.c", i32 108, i32 18}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/bonding/bond_procfs.c", i32 116, i32 19}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/bonding/bond_procfs.c", i32 118, i32 19}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/bonding/bond_procfs.c", i32 121, i32 19}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/bonding/bond_procfs.c", i32 127, i32 21}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/bonding/bond_procfs.c", i32 128, i32 20}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/bonding/bond_procfs.c", i32 137, i32 17}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/bonding/bond_procfs.c", i32 138, i32 19}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/bonding/bond_procfs.c", i32 139, i32 36}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/bonding/bond_procfs.c", i32 139, i32 43}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/bonding/bond_procfs.c", i32 140, i32 19}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/bonding/bond_procfs.c", i32 141, i32 34}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/bonding/bond_procfs.c", i32 141, i32 43}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/bonding/bond_procfs.c", i32 142, i32 19}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/bonding/bond_procfs.c", i32 145, i32 19}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/bonding/bond_procfs.c", i32 148, i32 20}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/bonding/bond_procfs.c", i32 150, i32 20}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/bonding/bond_procfs.c", i32 155, i32 9}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/bonding/bond_procfs.c", i32 158, i32 21}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/bonding/bond_procfs.c", i32 160, i32 21}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/bonding/bond_procfs.c", i32 162, i32 21}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/bonding/bond_procfs.c", i32 164, i32 21}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/bonding/bond_procfs.c", i32 166, i32 21}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/bonding/bond_procfs.c", i32 168, i32 21}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/bonding/bond_procfs.c", i32 180, i32 18}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/bonding/bond_procfs.c", i32 183, i32 19}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/bonding/bond_procfs.c", i32 183, i32 34}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/bonding/bond_procfs.c", i32 185, i32 19}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/bonding/bond_procfs.c", i32 188, i32 19}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/bonding/bond_procfs.c", i32 190, i32 51}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/bonding/bond_procfs.c", i32 190, i32 60}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/bonding/bond_procfs.c", i32 192, i32 18}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/bonding/bond_procfs.c", i32 195, i32 18}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/bonding/bond_procfs.c", i32 197, i32 18}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/bonding/bond_procfs.c", i32 204, i32 20}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/bonding/bond_procfs.c", i32 206, i32 20}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/bonding/bond_procfs.c", i32 208, i32 20}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/bonding/bond_procfs.c", i32 210, i32 20}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/bonding/bond_procfs.c", i32 212, i32 20}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/bonding/bond_procfs.c", i32 216, i32 19}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/bonding/bond_procfs.c", i32 217, i32 21}
!141 = !{ptr @.str.68, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/bonding/bond_procfs.c", i32 219, i32 21}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/bonding/bond_procfs.c", i32 221, i32 21}
!145 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/bonding/bond_procfs.c", i32 223, i32 21}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/bonding/bond_procfs.c", i32 225, i32 21}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/bonding/bond_procfs.c", i32 227, i32 21}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/bonding/bond_procfs.c", i32 230, i32 19}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/bonding/bond_procfs.c", i32 235, i32 21}
!155 = !{ptr @.str.75, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/bonding/bond_procfs.c", i32 245, i32 18}
!157 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../include/net/bond_3ad.h", i32 279, i32 3}
!159 = !{ptr @.str.77, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../include/net/bond_3ad.h", i32 280, i32 3}
!161 = !{ptr @.str.78, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/net/bond_3ad.h", i32 281, i32 3}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/net/bond_3ad.h", i32 282, i32 3}
!165 = !{ptr @bond_3ad_churn_desc.churn_description, !166, !"churn_description", i1 false, i1 false}
!166 = !{!"../include/net/bond_3ad.h", i32 278, i32 27}
!167 = !{!"sp"}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2149480864}
!178 = !{i64 2149481130}
