; ModuleID = '/llk/IR_all_yes/net/8021q/vlan.c_pt.bc'
source_filename = "../net/8021q/vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.24 }
%union.anon.24 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtnl_link_ops = type { %struct.list_head, ptr, i32, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.22 }
%union.anon.22 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.23 }
%union.anon.23 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
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
%struct.vlan_info = type { ptr, %struct.vlan_group, %struct.list_head, i32, %struct.callback_head }
%struct.vlan_group = type { i32, %struct.hlist_node, [2 x [8 x ptr]] }
%struct.callback_head = type { ptr, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.vlan_net = type { ptr, ptr, i16 }
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
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.42, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.42 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.40, i32, %struct.spinlock }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.vlan_ioctl_args = type { i32, [24 x i8], %union.anon.122, i16 }
%union.anon.122 = type { i32, [20 x i8] }

@vlan_fullname = dso_local constant { [20 x i8], [44 x i8] } { [20 x i8] c"802.1Q VLAN Support\00", [44 x i8] zeroinitializer }, align 32
@vlan_version = dso_local constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.8\00", [28 x i8] zeroinitializer }, align 32
@unregister_vlan_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/8021q/vlan.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@unregister_vlan_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@vlan_check_real_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\0168021q: VLANs not supported on %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vlan_check_real_dev\00", [44 x i8] zeroinitializer }, align 32
@vlan_check_real_dev._entry_ptr = internal global ptr @vlan_check_real_dev._entry, section ".printk_index", align 4
@vlan_check_real_dev.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"8021q: VLANs not supported on device\00", [59 x i8] zeroinitializer }, align 32
@vlan_check_real_dev.__msg.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"8021q: VLAN device already exists\00", [62 x i8] zeroinitializer }, align 32
@register_vlan_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vlan_notifier_block = internal global %struct.notifier_block { ptr @vlan_device_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@vlan_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @vlan_init_net, ptr null, ptr @vlan_exit_net, ptr null, ptr @vlan_net_id, i32 12 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_8021q__358_739_vlan_proto_init6 = internal global ptr @vlan_proto_init, section ".initcall6.init", align 4
@__exitcall_vlan_cleanup_module = internal global ptr @vlan_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file359 = internal constant [27 x i8] c"8021q.file=net/8021q/8021q\00", section ".modinfo", align 1
@__UNIQUE_ID_license360 = internal constant [18 x i8] c"8021q.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version361 = internal constant [18 x i8] c"8021q.version=1.8\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8021q\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.8\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.7, ptr @.str.8 }, section "__modver", align 4
@vlan_net_id = dso_local global i32 0, section ".data..read_mostly", align 4
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/8021q/vlan.h\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid VLAN protocol: 0x%04x\0A\00", [33 x i8] zeroinitializer }, align 32
@vlan_find_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@vlan_group_prealloc_vid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vlan_device_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\0168021q: adding VLAN 0 to HW filter on device %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vlan_device_event\00", [46 x i8] zeroinitializer }, align 32
@vlan_device_event._entry_ptr = internal global ptr @vlan_device_event._entry, section ".printk_index", align 4
@vlan_device_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@vlan_proto_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str, i32 687, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0168021q: %s v%s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vlan_proto_init\00", [16 x i8] zeroinitializer }, align 32
@vlan_proto_init._entry_ptr = internal global ptr @vlan_proto_init._entry, section ".printk_index", align 4
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s.%.4i\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vlan%i\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%i\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vlan%.4i\00", [23 x i8] zeroinitializer }, align 32
@vlan_link_ops = external dso_local global %struct.rtnl_link_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 12, i64 13, i64 15, i64 19, i64 22, i64 31, i64 32, i64 33, i64 34]
@__sancov_gen_cov_switch_values.33 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.34 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"vlan_fullname\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 45, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"vlan_version\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 46, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 97, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 99, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 135, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 136, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 141, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"vlan_net_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 676, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 743, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 47, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"../net/8021q/vlan.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 97, i32 32 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 384, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 45, i32 7 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 695, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 723, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 687, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 156, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 235, i32 28 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 241, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 247, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [20 x i8] c"../net/8021q/vlan.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 254, i32 28 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_file359, ptr @__UNIQUE_ID_license360, ptr @__UNIQUE_ID_version361, ptr @__exitcall_vlan_cleanup_module, ptr @__initcall__kmod_8021q__358_739_vlan_proto_init6, ptr @__modver_attr, ptr @vlan_check_real_dev._entry, ptr @vlan_check_real_dev._entry_ptr, ptr @vlan_cleanup_module, ptr @vlan_device_event._entry, ptr @vlan_device_event._entry_ptr, ptr @vlan_proto_init._entry, ptr @vlan_proto_init._entry_ptr, ptr @vlan_fullname, ptr @vlan_version, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vlan_check_real_dev.__msg, ptr @vlan_check_real_dev.__msg.5, ptr @vlan_net_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_fullname to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_version to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_check_real_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_check_real_dev.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_check_real_dev.__msg.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_device_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_proto_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_vlan_dev(ptr noundef %dev, ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %vlan_id2 = getelementptr i8, ptr %dev, i32 2410
  %2 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_id2, align 2
  %call3 = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end32_crit_edge

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

land.rhs:                                         ; preds = %entry
  %.b108 = load i1, ptr @unregister_vlan_dev.__already_done, align 1
  br i1 %.b108, label %land.rhs.if.end32_crit_edge, label %if.then, !prof !96

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @unregister_vlan_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 97) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then, %land.rhs.if.end32_crit_edge, %entry.if.end32_crit_edge
  %call41 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call41, label %if.end32.do.end49_crit_edge, label %land.lhs.true

if.end32.do.end49_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.lhs.true:                                    ; preds = %if.end32
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true.do.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true
  %.b106107 = load i1, ptr @unregister_vlan_dev.__warned, align 1
  br i1 %.b106107, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @unregister_vlan_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @.str.2) #9
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true.do.end49_crit_edge, %if.end32.do.end49_crit_edge
  %vlan_info51 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 74
  %4 = ptrtoint ptr %vlan_info51 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vlan_info51, align 16
  %tobool53.not = icmp eq ptr %5, null
  br i1 %tobool53.not, label %do.body63, label %do.end71, !prof !97

do.body63:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/8021q/vlan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 100, 0\0A.popsection", ""() #9, !srcloc !98
  unreachable

do.end71:                                         ; preds = %do.end49
  %grp72 = getelementptr inbounds %struct.vlan_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %grp72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp72, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %grp72, align 4
  %flags = getelementptr i8, ptr %dev, i32 2412
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = and i16 %9, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool73.not = icmp eq i16 %10, 0
  br i1 %tobool73.not, label %do.end71.if.end75_crit_edge, label %if.then74

do.end71.if.end75_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then74:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_mvrp_request_leave(ptr noundef %dev) #9
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %do.end71.if.end75_crit_edge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 4
  %13 = and i16 %12, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool79.not = icmp eq i16 %13, 0
  br i1 %tobool79.not, label %if.end75.if.end81_crit_edge, label %if.then80

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_gvrp_request_leave(ptr noundef %dev) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end75.if.end81_crit_edge
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %14 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_proto, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %vlan_proto_idx.exit.thread.i [
    i16 -32512, label %if.end81.vlan_proto_idx.exit.i_crit_edge
    i16 -30552, label %sw.bb1.i.i
  ]

if.end81.vlan_proto_idx.exit.i_crit_edge:         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_proto_idx.exit.i

sw.bb1.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_proto_idx.exit.i

vlan_proto_idx.exit.thread.i:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %15 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i) #9
  br label %vlan_group_set_device.exit

vlan_proto_idx.exit.i:                            ; preds = %sw.bb1.i.i, %if.end81.vlan_proto_idx.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 1, %sw.bb1.i.i ], [ 0, %if.end81.vlan_proto_idx.exit.i_crit_edge ]
  %tobool.not.i = icmp eq ptr %grp72, null
  br i1 %tobool.not.i, label %vlan_proto_idx.exit.i.vlan_group_set_device.exit_crit_edge, label %if.end.i

vlan_proto_idx.exit.i.vlan_group_set_device.exit_crit_edge: ; preds = %vlan_proto_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_group_set_device.exit

if.end.i:                                         ; preds = %vlan_proto_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %3 to i32
  %div8.i = lshr i32 %conv.i, 9
  %arrayidx1.i = getelementptr %struct.vlan_info, ptr %5, i32 0, i32 1, i32 2, i32 %retval.0.i.i, i32 %div8.i
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.i, align 4
  %rem.i = and i32 %conv.i, 511
  %arrayidx3.i = getelementptr ptr, ptr %18, i32 %rem.i
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx3.i, align 4
  br label %vlan_group_set_device.exit

vlan_group_set_device.exit:                       ; preds = %if.end.i, %vlan_proto_idx.exit.i.vlan_group_set_device.exit_crit_edge, %vlan_proto_idx.exit.thread.i
  tail call void @netdev_upper_dev_unlink(ptr noundef %1, ptr noundef %dev) #9
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef %head) #9
  %20 = ptrtoint ptr %grp72 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %grp72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp = icmp eq i32 %21, 0
  br i1 %cmp, label %if.then84, label %vlan_group_set_device.exit.if.end85_crit_edge

vlan_group_set_device.exit.if.end85_crit_edge:    ; preds = %vlan_group_set_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then84:                                        ; preds = %vlan_group_set_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_mvrp_uninit_applicant(ptr noundef %1) #9
  tail call void @vlan_gvrp_uninit_applicant(ptr noundef %1) #9
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %vlan_group_set_device.exit.if.end85_crit_edge
  %22 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan_proto, align 4
  tail call void @vlan_vid_del(ptr noundef %1, i16 noundef zeroext %23, i16 noundef zeroext %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_mvrp_request_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_gvrp_request_leave(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_mvrp_uninit_applicant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_gvrp_uninit_applicant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_vid_del(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vlan_check_real_dev(ptr noundef %real_dev, i16 noundef zeroext %protocol, i16 noundef zeroext %vlan_id, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %features = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 23
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 16
  %and = and i64 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end7, label %do.end

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %real_dev) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_check_real_dev.__msg) #9
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vlan_check_real_dev.__msg, ptr %extack, align 4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %vlan_info1.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 74
  %3 = ptrtoint ptr %vlan_info1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %vlan_info1.i, align 16
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i, label %if.end7.do.end9.i_crit_edge, label %lor.lhs.false.i

if.end7.do.end9.i_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

lor.lhs.false.i:                                  ; preds = %if.end7
  %call3.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end9.i_crit_edge

lor.lhs.false.i.do.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.do.end9.i_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.do.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @vlan_find_dev.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true6.i.do.end9.i_crit_edge, label %if.then.i

land.lhs.true6.i.do.end9.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vlan_find_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 97, ptr noundef nonnull @.str.11) #9
  br label %do.end9.i

do.end9.i:                                        ; preds = %if.then.i, %land.lhs.true6.i.do.end9.i_crit_edge, %land.lhs.true.i.do.end9.i_crit_edge, %lor.lhs.false.i.do.end9.i_crit_edge, %if.end7.do.end9.i_crit_edge
  %tobool11.not.i = icmp eq ptr %4, null
  br i1 %tobool11.not.i, label %do.end9.i.cleanup_crit_edge, label %if.then12.i

do.end9.i.cleanup_crit_edge:                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12.i:                                      ; preds = %do.end9.i
  %5 = zext i16 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %protocol, label %vlan_proto_idx.exit.i.i [
    i16 -32512, label %if.then12.i.if.end.i.i_crit_edge
    i16 -30552, label %sw.bb1.i.i.i
  ]

if.then12.i.if.end.i.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

sw.bb1.i.i.i:                                     ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

vlan_proto_idx.exit.i.i:                          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = zext i16 %protocol to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i.i) #9
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb1.i.i.i, %if.then12.i.if.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 0, %if.then12.i.if.end.i.i_crit_edge ], [ 1, %sw.bb1.i.i.i ]
  %conv.i3.i.i = zext i16 %vlan_id to i32
  %div9.i.i.i = lshr i32 %conv.i3.i.i, 9
  %arrayidx1.i.i.i = getelementptr %struct.vlan_info, ptr %4, i32 0, i32 1, i32 2, i32 %retval.0.i.ph.i.i, i32 %div9.i.i.i
  %6 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %vlan_find_dev.exit

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vlan_find_dev.exit:                               ; preds = %if.end.i.i
  %rem.i.i.i = and i32 %conv.i3.i.i, 511
  %arrayidx6.i.i.i = getelementptr ptr, ptr %7, i32 %rem.i.i.i
  %8 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %vlan_find_dev.exit.cleanup_crit_edge, label %do.body10

vlan_find_dev.exit.cleanup_crit_edge:             ; preds = %vlan_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %vlan_find_dev.exit
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @vlan_check_real_dev.__msg.5) #9
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vlan_check_real_dev.__msg.5, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body10.cleanup_crit_edge, %vlan_find_dev.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %vlan_proto_idx.exit.i.i, %do.end9.i.cleanup_crit_edge, %if.then4, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.then4 ], [ -95, %do.end.cleanup_crit_edge ], [ -17, %if.then13 ], [ -17, %do.body10.cleanup_crit_edge ], [ 0, %vlan_find_dev.exit.cleanup_crit_edge ], [ 0, %do.end9.i.cleanup_crit_edge ], [ 0, %vlan_proto_idx.exit.i.i ], [ 0, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_vlan_dev(ptr noundef %dev, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %real_dev1 = getelementptr i8, ptr %dev, i32 2416
  %0 = ptrtoint ptr %real_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %real_dev1, align 4
  %vlan_id2 = getelementptr i8, ptr %dev, i32 2410
  %2 = ptrtoint ptr %vlan_id2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan_id2, align 2
  %vlan_proto = getelementptr i8, ptr %dev, i32 2408
  %4 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_proto, align 4
  %call3 = tail call i32 @vlan_vid_add(ptr noundef %1, i16 noundef zeroext %5, i16 noundef zeroext %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %call4 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call4, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b103 = load i1, ptr @register_vlan_dev.__warned, align 1
  br i1 %.b103, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @register_vlan_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %vlan_info11 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 74
  %6 = ptrtoint ptr %vlan_info11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vlan_info11, align 16
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %do.body18, label %do.end26, !prof !97

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/8021q/vlan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #9, !srcloc !100
  unreachable

do.end26:                                         ; preds = %do.end
  %grp27 = getelementptr inbounds %struct.vlan_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %grp27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %grp27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then28, label %do.end26.if.end37_crit_edge

do.end26.if.end37_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then28:                                        ; preds = %do.end26
  %call29 = tail call i32 @vlan_gvrp_init_applicant(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then28.out_vid_del_crit_edge, label %if.end32

if.then28.out_vid_del_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vid_del

if.end32:                                         ; preds = %if.then28
  %call33 = tail call i32 @vlan_mvrp_init_applicant(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.out_uninit_gvrp_crit_edge, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end32.out_uninit_gvrp_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit_gvrp

if.end37:                                         ; preds = %if.end32.if.end37_crit_edge, %do.end26.if.end37_crit_edge
  %10 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vlan_proto, align 4
  %call.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end37.if.end29.i_crit_edge

if.end37.if.end29.i_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end37
  %.b70.i = load i1, ptr @vlan_group_prealloc_vid.__already_done, align 1
  br i1 %.b70.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !96

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vlan_group_prealloc_vid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 58) #9
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end37.if.end29.i_crit_edge
  %12 = zext i16 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %11, label %vlan_proto_idx.exit.i [
    i16 -32512, label %if.end29.i.if.end39.i_crit_edge
    i16 -30552, label %sw.bb1.i.i
  ]

if.end29.i.if.end39.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

sw.bb1.i.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i

vlan_proto_idx.exit.i:                            ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i16 %11 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i) #9
  br label %out_uninit_mvrp

if.end39.i:                                       ; preds = %sw.bb1.i.i, %if.end29.i.if.end39.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %if.end29.i.if.end39.i_crit_edge ], [ 1, %sw.bb1.i.i ]
  %13 = lshr i16 %3, 9
  %div.i = zext i16 %13 to i32
  %arrayidx40.i = getelementptr %struct.vlan_info, ptr %7, i32 0, i32 1, i32 2, i32 %retval.0.i.ph.i, i32 %div.i
  %14 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx40.i, align 4
  %cmp41.not.i = icmp eq ptr %15, null
  br i1 %cmp41.not.i, label %if.end44.i, label %if.end39.i.if.end42_crit_edge

if.end39.i.if.end42_crit_edge:                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end44.i:                                       ; preds = %if.end39.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 1, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 4197824, i32 noundef 2048) #13
  %cmp46.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp46.i, label %if.end44.i.out_uninit_mvrp_crit_edge, label %do.end53.i

if.end44.i.out_uninit_mvrp_crit_edge:             ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit_mvrp

do.end53.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !101
  %17 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %arrayidx40.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %do.end53.i, %if.end39.i.if.end42_crit_edge
  %call43 = tail call i32 @register_netdevice(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.out_uninit_mvrp_crit_edge, label %if.end46

if.end42.out_uninit_mvrp_crit_edge:               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit_mvrp

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @netdev_upper_dev_link(ptr noundef %1, ptr noundef %dev, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %out_unregister_netdev

if.end50:                                         ; preds = %if.end46
  %flags.i = getelementptr i8, ptr %dev, i32 2412
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags.i, align 4
  %20 = and i16 %19, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i104 = icmp eq i16 %20, 0
  br i1 %tobool.not.i104, label %if.then.i105, label %if.end50.vlan_stacked_transfer_operstate.exit_crit_edge

if.end50.vlan_stacked_transfer_operstate.exit_crit_edge: ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_stacked_transfer_operstate.exit

if.then.i105:                                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @netif_stacked_transfer_operstate(ptr noundef %1, ptr noundef %dev) #9
  br label %vlan_stacked_transfer_operstate.exit

vlan_stacked_transfer_operstate.exit:             ; preds = %if.then.i105, %if.end50.vlan_stacked_transfer_operstate.exit_crit_edge
  tail call void @linkwatch_fire_event(ptr noundef %dev) #9
  %21 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vlan_proto, align 4
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %22, label %vlan_proto_idx.exit.thread.i [
    i16 -32512, label %vlan_stacked_transfer_operstate.exit.vlan_proto_idx.exit.i109_crit_edge
    i16 -30552, label %sw.bb1.i.i106
  ]

vlan_stacked_transfer_operstate.exit.vlan_proto_idx.exit.i109_crit_edge: ; preds = %vlan_stacked_transfer_operstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_proto_idx.exit.i109

sw.bb1.i.i106:                                    ; preds = %vlan_stacked_transfer_operstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_proto_idx.exit.i109

vlan_proto_idx.exit.thread.i:                     ; preds = %vlan_stacked_transfer_operstate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i107 = zext i16 %22 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.10, i32 noundef %conv.i.i107) #9
  br label %vlan_group_set_device.exit

vlan_proto_idx.exit.i109:                         ; preds = %sw.bb1.i.i106, %vlan_stacked_transfer_operstate.exit.vlan_proto_idx.exit.i109_crit_edge
  %retval.0.i.i = phi i32 [ 1, %sw.bb1.i.i106 ], [ 0, %vlan_stacked_transfer_operstate.exit.vlan_proto_idx.exit.i109_crit_edge ]
  %tobool.not.i108 = icmp eq ptr %grp27, null
  br i1 %tobool.not.i108, label %vlan_proto_idx.exit.i109.vlan_group_set_device.exit_crit_edge, label %if.end.i

vlan_proto_idx.exit.i109.vlan_group_set_device.exit_crit_edge: ; preds = %vlan_proto_idx.exit.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_group_set_device.exit

if.end.i:                                         ; preds = %vlan_proto_idx.exit.i109
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %3 to i32
  %div8.i = lshr i32 %conv.i, 9
  %arrayidx1.i = getelementptr %struct.vlan_info, ptr %7, i32 0, i32 1, i32 2, i32 %retval.0.i.i, i32 %div8.i
  %24 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i, align 4
  %rem.i = and i32 %conv.i, 511
  %arrayidx3.i = getelementptr ptr, ptr %25, i32 %rem.i
  %26 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %arrayidx3.i, align 4
  br label %vlan_group_set_device.exit

vlan_group_set_device.exit:                       ; preds = %if.end.i, %vlan_proto_idx.exit.i109.vlan_group_set_device.exit_crit_edge, %vlan_proto_idx.exit.thread.i
  %27 = ptrtoint ptr %grp27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %grp27, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %grp27, align 4
  br label %cleanup

out_unregister_netdev:                            ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #9
  br label %out_uninit_mvrp

out_uninit_mvrp:                                  ; preds = %out_unregister_netdev, %if.end42.out_uninit_mvrp_crit_edge, %if.end44.i.out_uninit_mvrp_crit_edge, %vlan_proto_idx.exit.i
  %err.0 = phi i32 [ %call43, %if.end42.out_uninit_mvrp_crit_edge ], [ %call47, %out_unregister_netdev ], [ -105, %if.end44.i.out_uninit_mvrp_crit_edge ], [ -22, %vlan_proto_idx.exit.i ]
  %29 = ptrtoint ptr %grp27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %grp27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp54 = icmp eq i32 %30, 0
  br i1 %cmp54, label %if.then55, label %out_uninit_mvrp.out_vid_del_crit_edge

out_uninit_mvrp.out_vid_del_crit_edge:            ; preds = %out_uninit_mvrp
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vid_del

if.then55:                                        ; preds = %out_uninit_mvrp
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_mvrp_uninit_applicant(ptr noundef %1) #9
  br label %out_uninit_gvrp

out_uninit_gvrp:                                  ; preds = %if.then55, %if.end32.out_uninit_gvrp_crit_edge
  %err.1.ph = phi i32 [ %err.0, %if.then55 ], [ %call33, %if.end32.out_uninit_gvrp_crit_edge ]
  %31 = ptrtoint ptr %grp27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load i32, ptr %grp27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp58 = icmp eq i32 %.pr, 0
  br i1 %cmp58, label %if.then59, label %out_uninit_gvrp.out_vid_del_crit_edge

out_uninit_gvrp.out_vid_del_crit_edge:            ; preds = %out_uninit_gvrp
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_vid_del

if.then59:                                        ; preds = %out_uninit_gvrp
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_gvrp_uninit_applicant(ptr noundef %1) #9
  br label %out_vid_del

out_vid_del:                                      ; preds = %if.then59, %out_uninit_gvrp.out_vid_del_crit_edge, %out_uninit_mvrp.out_vid_del_crit_edge, %if.then28.out_vid_del_crit_edge
  %err.2 = phi i32 [ %call29, %if.then28.out_vid_del_crit_edge ], [ %err.1.ph, %if.then59 ], [ %err.1.ph, %out_uninit_gvrp.out_vid_del_crit_edge ], [ %err.0, %out_uninit_mvrp.out_vid_del_crit_edge ]
  %32 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_proto, align 4
  tail call void @vlan_vid_del(ptr noundef %1, i16 noundef zeroext %33, i16 noundef zeroext %3) #9
  br label %cleanup

cleanup:                                          ; preds = %out_vid_del, %vlan_group_set_device.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %out_vid_del ], [ 0, %vlan_group_set_device.exit ], [ %call3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_vid_add(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_gvrp_init_applicant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_mvrp_init_applicant(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_upper_dev_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vlan_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_ioctl_set(ptr noundef null) #9
  tail call void @vlan_netlink_fini() #9
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @vlan_notifier_block) #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @vlan_net_ops) #9
  tail call void @rcu_barrier() #9
  tail call void @vlan_mvrp_uninit() #9
  tail call void @vlan_gvrp_uninit() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_ioctl_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_netlink_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_mvrp_uninit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_gvrp_uninit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_proto_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @vlan_fullname, ptr noundef nonnull @vlan_version) #12
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @vlan_net_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @vlan_notifier_block) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.err2_crit_edge, label %if.end5

if.end.err2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err2

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @vlan_gvrp_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end5.err3_crit_edge, label %if.end9

if.end5.err3_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @vlan_mvrp_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.err4_crit_edge, label %if.end13

if.end9.err4_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err4

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @vlan_netlink_init() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %err5, label %if.end17

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_ioctl_set(ptr noundef nonnull @vlan_ioctl_handler) #9
  br label %cleanup

err5:                                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vlan_mvrp_uninit() #9
  br label %err4

err4:                                             ; preds = %err5, %if.end9.err4_crit_edge
  %err.0 = phi i32 [ %call10, %if.end9.err4_crit_edge ], [ %call14, %err5 ]
  tail call void @vlan_gvrp_uninit() #9
  br label %err3

err3:                                             ; preds = %err4, %if.end5.err3_crit_edge
  %err.1 = phi i32 [ %call6, %if.end5.err3_crit_edge ], [ %err.0, %err4 ]
  %call18 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @vlan_notifier_block) #9
  br label %err2

err2:                                             ; preds = %err3, %if.end.err2_crit_edge
  %err.2 = phi i32 [ %call2, %if.end.err2_crit_edge ], [ %err.1, %err3 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @vlan_net_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ %call1, %entry.cleanup_crit_edge ], [ %err.2, %err2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_stacked_transfer_operstate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  %close_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #9
  %4 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list, ptr %list, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %4, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %event, label %if.then.do.body20_crit_edge [
    i32 11, label %sw.bb.i
    i32 5, label %if.then.__vlan_device_event.exit_crit_edge
    i32 6, label %if.end7.thread
    i32 1, label %if.then.land.lhs.true_crit_edge
    i32 2, label %if.then.land.lhs.true14_crit_edge
  ]

if.then.land.lhs.true14_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true14

if.then.land.lhs.true_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then.__vlan_device_event.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vlan_device_event.exit

if.then.do.body20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @vlan_proc_rem_dev(ptr noundef %3) #9
  br label %__vlan_device_event.exit

if.end7.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  call void @vlan_proc_rem_dev(ptr noundef %3) #9
  br label %do.body20

__vlan_device_event.exit:                         ; preds = %sw.bb.i, %if.then.__vlan_device_event.exit_crit_edge
  %call.i = call i32 @vlan_proc_add_dev(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %__vlan_device_event.exit.if.end7_crit_edge, label %cleanup

__vlan_device_event.exit.if.end7_crit_edge:       ; preds = %__vlan_device_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup:                                          ; preds = %__vlan_device_event.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 1, %call.i
  %or.i = or i32 %sub.i, 32768
  br label %cleanup241

if.end7:                                          ; preds = %__vlan_device_event.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %event, label %if.end7.do.body20_crit_edge [
    i32 1, label %if.end7.land.lhs.true_crit_edge
    i32 2, label %if.end7.land.lhs.true14_crit_edge
  ]

if.end7.land.lhs.true14_crit_edge:                ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true14

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.end7.do.body20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

land.lhs.true:                                    ; preds = %if.end7.land.lhs.true_crit_edge, %if.then.land.lhs.true_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %features, align 16
  %and = and i64 %12, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool8.not = icmp eq i64 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.do.body20_crit_edge, label %do.end

land.lhs.true.do.body20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %3) #12
  %call11 = call i32 @vlan_vid_add(ptr noundef %3, i16 noundef zeroext -32512, i16 noundef zeroext 0) #9
  br label %do.body20

land.lhs.true14:                                  ; preds = %if.end7.land.lhs.true14_crit_edge, %if.then.land.lhs.true14_crit_edge
  %features15 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %13 = ptrtoint ptr %features15 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features15, align 16
  %and16 = and i64 %14, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %land.lhs.true14.do.body20_crit_edge, label %if.then18

land.lhs.true14.do.body20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body20

if.then18:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  call void @vlan_vid_del(ptr noundef %3, i16 noundef zeroext -32512, i16 noundef zeroext 0) #9
  br label %do.body20

do.body20:                                        ; preds = %if.then18, %land.lhs.true14.do.body20_crit_edge, %do.end, %land.lhs.true.do.body20_crit_edge, %if.end7.do.body20_crit_edge, %if.end7.thread, %if.then.do.body20_crit_edge
  %call21 = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call21, label %do.body20.do.end30_crit_edge, label %land.lhs.true22

do.body20.do.end30_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true22:                                  ; preds = %do.body20
  %call23 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true22.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true22.do.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %.b351 = load i1, ptr @vlan_device_event.__warned, align 1
  br i1 %.b351, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vlan_device_event.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 392, ptr noundef nonnull @.str.2) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true22.do.end30_crit_edge, %do.body20.do.end30_crit_edge
  %vlan_info32 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 74
  %15 = ptrtoint ptr %vlan_info32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vlan_info32, align 16
  %tobool33.not = icmp eq ptr %16, null
  br i1 %tobool33.not, label %do.end30.out_crit_edge, label %if.end35

do.end30.out_crit_edge:                           ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %do.end30
  %17 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %event, label %if.end35.out_crit_edge [
    i32 4, label %if.end35.for.body_crit_edge
    i32 8, label %for.cond44.preheader
    i32 7, label %for.cond63.preheader
    i32 12, label %for.cond85.preheader
    i32 2, label %sw.bb99
    i32 1, label %if.end35.for.body157_crit_edge
    i32 6, label %sw.bb181
    i32 15, label %sw.bb207
    i32 19, label %if.end35.for.body215.preheader_crit_edge
    i32 13, label %if.end35.for.body215.preheader_crit_edge530
    i32 22, label %if.end35.for.body215.preheader_crit_edge531
    i32 31, label %sw.bb227
    i32 32, label %sw.bb233
    i32 33, label %sw.bb234
    i32 34, label %sw.bb240
  ]

if.end35.for.body215.preheader_crit_edge531:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body215.preheader

if.end35.for.body215.preheader_crit_edge530:      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body215.preheader

if.end35.for.body215.preheader_crit_edge:         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body215.preheader

if.end35.for.body157_crit_edge:                   ; preds = %if.end35
  br label %for.body157

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body215.preheader:                            ; preds = %if.end35.for.body215.preheader_crit_edge, %if.end35.for.body215.preheader_crit_edge530, %if.end35.for.body215.preheader_crit_edge531
  br label %for.body215

for.cond85.preheader:                             ; preds = %if.end35
  %gso_max_size.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 137
  %gso_max_segs.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 138
  %features.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %hard_header_len3.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 19
  %fcoe_ddp_xid.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 143
  br label %for.body88

for.cond63.preheader:                             ; preds = %if.end35
  %mtu73 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  br label %for.body66

for.cond44.preheader:                             ; preds = %if.end35
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  br label %for.body47

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0501 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %div478 = lshr i32 %i.0501, 12
  %conv = lshr i32 %i.0501, 9
  %div9.i = and i32 %conv, 7
  %arrayidx1.i = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div478, i32 %div9.i
  %18 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx1.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %__vlan_group_get_device.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

__vlan_group_get_device.exit:                     ; preds = %for.body
  %rem.i = and i32 %i.0501, 511
  %arrayidx6.i = getelementptr ptr, ptr %19, i32 %rem.i
  %20 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.i, align 4
  %tobool39.not = icmp eq ptr %21, null
  br i1 %tobool39.not, label %__vlan_group_get_device.exit.for.inc_crit_edge, label %if.then40

__vlan_group_get_device.exit.for.inc_crit_edge:   ; preds = %__vlan_group_get_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then40:                                        ; preds = %__vlan_group_get_device.exit
  %flags.i = getelementptr i8, ptr %21, i32 2412
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i, align 4
  %24 = and i16 %23, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not.i353 = icmp eq i16 %24, 0
  br i1 %tobool.not.i353, label %if.then.i, label %if.then40.for.inc_crit_edge

if.then40.for.inc_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_stacked_transfer_operstate(ptr noundef %3, ptr noundef nonnull %21) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then40.for.inc_crit_edge, %__vlan_group_get_device.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0501, 1
  %exitcond514.not = icmp eq i32 %inc, 8192
  br i1 %exitcond514.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body47:                                       ; preds = %for.inc59.for.body47_crit_edge, %for.cond44.preheader
  %i.1499 = phi i32 [ 0, %for.cond44.preheader ], [ %inc60, %for.inc59.for.body47_crit_edge ]
  %div48477 = lshr i32 %i.1499, 12
  %conv50 = lshr i32 %i.1499, 9
  %div9.i355 = and i32 %conv50, 7
  %arrayidx1.i356 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div48477, i32 %div9.i355
  %25 = ptrtoint ptr %arrayidx1.i356 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i356, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i357 = icmp eq ptr %26, null
  br i1 %tobool.not.i357, label %for.body47.for.inc59_crit_edge, label %__vlan_group_get_device.exit362

for.body47.for.inc59_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

__vlan_group_get_device.exit362:                  ; preds = %for.body47
  %rem.i358 = and i32 %i.1499, 511
  %arrayidx6.i359 = getelementptr ptr, ptr %26, i32 %rem.i358
  %27 = ptrtoint ptr %arrayidx6.i359 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx6.i359, align 4
  %tobool52.not = icmp eq ptr %28, null
  br i1 %tobool52.not, label %__vlan_group_get_device.exit362.for.inc59_crit_edge, label %if.then53

__vlan_group_get_device.exit362.for.inc59_crit_edge: ; preds = %__vlan_group_get_device.exit362
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.then53:                                        ; preds = %__vlan_group_get_device.exit362
  %flags = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 8
  %and54 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.then53.for.inc59_crit_edge, label %if.end57

if.then53.for.inc59_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end57:                                         ; preds = %if.then53
  %real_dev_addr.i = getelementptr i8, ptr %28, i32 2424
  %31 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_addr.i, align 64
  %33 = ptrtoint ptr %real_dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %real_dev_addr.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  %xor.i.i = xor i32 %36, %34
  %add.ptr.i.i363 = getelementptr i8, ptr %28, i32 2428
  %37 = ptrtoint ptr %add.ptr.i.i363 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i363, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %32, i32 4
  %39 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %40, %38
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end57.for.inc59_crit_edge, label %if.end.i

if.end57.for.inc59_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc59

if.end.i:                                         ; preds = %if.end57
  %call2.i364 = call zeroext i1 @vlan_dev_inherit_address(ptr noundef nonnull %28, ptr noundef %3) #9
  br i1 %call2.i364, label %if.end.i.out.i_crit_edge, label %if.end4.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end4.i:                                        ; preds = %if.end.i
  %dev_addr5.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 86
  %41 = ptrtoint ptr %dev_addr5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_addr5.i, align 64
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %45 = ptrtoint ptr %real_dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %real_dev_addr.i, align 4
  %xor.i47.i = xor i32 %46, %44
  %add.ptr.i48.i = getelementptr i8, ptr %42, i32 4
  %47 = ptrtoint ptr %add.ptr.i48.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %add.ptr.i48.i, align 2
  %49 = ptrtoint ptr %add.ptr.i.i363 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i363, align 2
  %xor37.i50.i = xor i16 %50, %48
  %xor3.i51.i = zext i16 %xor37.i50.i to i32
  %or.i52.i = or i32 %xor.i47.i, %xor3.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52.i)
  %cmp.i53.i = icmp eq i32 %or.i52.i, 0
  br i1 %cmp.i53.i, label %if.end4.i.if.end15.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.end15.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %51 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev_addr.i, align 64
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %xor.i54.i = xor i32 %54, %44
  %add.ptr1.i56.i = getelementptr i8, ptr %52, i32 4
  %55 = ptrtoint ptr %add.ptr1.i56.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr1.i56.i, align 2
  %xor37.i57.i = xor i16 %56, %48
  %xor3.i58.i = zext i16 %xor37.i57.i to i32
  %or.i59.i = or i32 %xor.i54.i, %xor3.i58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i59.i)
  %cmp.i60.i = icmp eq i32 %or.i59.i, 0
  br i1 %cmp.i60.i, label %if.then12.i, label %land.lhs.true.i.if.end15.i_crit_edge

land.lhs.true.i.if.end15.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then12.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = call i32 @dev_uc_del(ptr noundef %3, ptr noundef %42) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then12.i, %land.lhs.true.i.if.end15.i_crit_edge, %if.end4.i.if.end15.i_crit_edge
  %57 = ptrtoint ptr %dev_addr5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addr5.i, align 64
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %61 = ptrtoint ptr %real_dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %real_dev_addr.i, align 4
  %xor.i61.i = xor i32 %62, %60
  %add.ptr.i62.i = getelementptr i8, ptr %58, i32 4
  %63 = ptrtoint ptr %add.ptr.i62.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %add.ptr.i62.i, align 2
  %65 = ptrtoint ptr %add.ptr.i.i363 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %add.ptr.i.i363, align 2
  %xor37.i64.i = xor i16 %66, %64
  %xor3.i65.i = zext i16 %xor37.i64.i to i32
  %or.i66.i = or i32 %xor.i61.i, %xor3.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i66.i)
  %cmp.i67.i = icmp eq i32 %or.i66.i, 0
  br i1 %cmp.i67.i, label %land.lhs.true20.i, label %if.end15.i.out.i_crit_edge

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

land.lhs.true20.i:                                ; preds = %if.end15.i
  %67 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_addr.i, align 64
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %xor.i68.i = xor i32 %70, %60
  %add.ptr1.i70.i = getelementptr i8, ptr %68, i32 4
  %71 = ptrtoint ptr %add.ptr1.i70.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %add.ptr1.i70.i, align 2
  %xor37.i71.i = xor i16 %72, %64
  %xor3.i72.i = zext i16 %xor37.i71.i to i32
  %or.i73.i = or i32 %xor.i68.i, %xor3.i72.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i73.i)
  %cmp.i74.i = icmp eq i32 %or.i73.i, 0
  br i1 %cmp.i74.i, label %land.lhs.true20.i.out.i_crit_edge, label %if.then24.i

land.lhs.true20.i.out.i_crit_edge:                ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.then24.i:                                      ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #11
  %call26.i = call i32 @dev_uc_add(ptr noundef %3, ptr noundef %58) #9
  br label %out.i

out.i:                                            ; preds = %if.then24.i, %land.lhs.true20.i.out.i_crit_edge, %if.end15.i.out.i_crit_edge, %if.end.i.out.i_crit_edge
  %73 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_addr.i, align 64
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %77 = ptrtoint ptr %real_dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %real_dev_addr.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %74, i32 4
  %78 = ptrtoint ptr %add.ptr.i75.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i75.i, align 2
  %80 = ptrtoint ptr %add.ptr.i.i363 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %add.ptr.i.i363, align 2
  br label %for.inc59

for.inc59:                                        ; preds = %out.i, %if.end57.for.inc59_crit_edge, %if.then53.for.inc59_crit_edge, %__vlan_group_get_device.exit362.for.inc59_crit_edge, %for.body47.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1499, 1
  %exitcond513.not = icmp eq i32 %inc60, 8192
  br i1 %exitcond513.not, label %for.inc59.out_crit_edge, label %for.inc59.for.body47_crit_edge

for.inc59.for.body47_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body47

for.inc59.out_crit_edge:                          ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body66:                                       ; preds = %for.inc81.for.body66_crit_edge, %for.cond63.preheader
  %i.2497 = phi i32 [ 0, %for.cond63.preheader ], [ %inc82, %for.inc81.for.body66_crit_edge ]
  %div67476 = lshr i32 %i.2497, 12
  %conv69 = lshr i32 %i.2497, 9
  %div9.i366 = and i32 %conv69, 7
  %arrayidx1.i367 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div67476, i32 %div9.i366
  %81 = ptrtoint ptr %arrayidx1.i367 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx1.i367, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i368 = icmp eq ptr %82, null
  br i1 %tobool.not.i368, label %for.body66.for.inc81_crit_edge, label %__vlan_group_get_device.exit373

for.body66.for.inc81_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc81

__vlan_group_get_device.exit373:                  ; preds = %for.body66
  %rem.i369 = and i32 %i.2497, 511
  %arrayidx6.i370 = getelementptr ptr, ptr %82, i32 %rem.i369
  %83 = ptrtoint ptr %arrayidx6.i370 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx6.i370, align 4
  %tobool71.not = icmp eq ptr %84, null
  br i1 %tobool71.not, label %__vlan_group_get_device.exit373.for.inc81_crit_edge, label %if.then72

__vlan_group_get_device.exit373.for.inc81_crit_edge: ; preds = %__vlan_group_get_device.exit373
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc81

if.then72:                                        ; preds = %__vlan_group_get_device.exit373
  %mtu = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 20
  %85 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mtu, align 4
  %87 = ptrtoint ptr %mtu73 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mtu73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp74.not = icmp ugt i32 %86, %88
  br i1 %cmp74.not, label %if.end77, label %if.then72.for.inc81_crit_edge

if.then72.for.inc81_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc81

if.end77:                                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %call79 = call i32 @dev_set_mtu(ptr noundef nonnull %84, i32 noundef %88) #9
  br label %for.inc81

for.inc81:                                        ; preds = %if.end77, %if.then72.for.inc81_crit_edge, %__vlan_group_get_device.exit373.for.inc81_crit_edge, %for.body66.for.inc81_crit_edge
  %inc82 = add nuw nsw i32 %i.2497, 1
  %exitcond512.not = icmp eq i32 %inc82, 8192
  br i1 %exitcond512.not, label %for.inc81.out_crit_edge, label %for.inc81.for.body66_crit_edge

for.inc81.for.body66_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body66

for.inc81.out_crit_edge:                          ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body88:                                       ; preds = %for.inc96.for.body88_crit_edge, %for.cond85.preheader
  %i.3495 = phi i32 [ 0, %for.cond85.preheader ], [ %inc97, %for.inc96.for.body88_crit_edge ]
  %div89475 = lshr i32 %i.3495, 12
  %conv91 = lshr i32 %i.3495, 9
  %div9.i375 = and i32 %conv91, 7
  %arrayidx1.i376 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div89475, i32 %div9.i375
  %89 = ptrtoint ptr %arrayidx1.i376 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx1.i376, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i377 = icmp eq ptr %90, null
  br i1 %tobool.not.i377, label %for.body88.for.inc96_crit_edge, label %__vlan_group_get_device.exit382

for.body88.for.inc96_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

__vlan_group_get_device.exit382:                  ; preds = %for.body88
  %rem.i378 = and i32 %i.3495, 511
  %arrayidx6.i379 = getelementptr ptr, ptr %90, i32 %rem.i378
  %91 = ptrtoint ptr %arrayidx6.i379 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx6.i379, align 4
  %tobool93.not = icmp eq ptr %92, null
  br i1 %tobool93.not, label %__vlan_group_get_device.exit382.for.inc96_crit_edge, label %if.then94

__vlan_group_get_device.exit382.for.inc96_crit_edge: ; preds = %__vlan_group_get_device.exit382
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

if.then94:                                        ; preds = %__vlan_group_get_device.exit382
  %93 = ptrtoint ptr %gso_max_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gso_max_size.i, align 8
  %gso_max_size.i.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 137
  %95 = ptrtoint ptr %gso_max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile i32 %94, ptr %gso_max_size.i.i, align 8
  %96 = ptrtoint ptr %gso_max_segs.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %gso_max_segs.i, align 4
  %gso_max_segs.i.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 138
  %98 = ptrtoint ptr %gso_max_segs.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store volatile i16 %97, ptr %gso_max_segs.i.i, align 4
  %99 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %features.i, align 16
  %vlan_proto.i = getelementptr i8, ptr %92, i32 2408
  %101 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vlan_proto.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %102)
  %cmp.i.i383 = icmp ne i16 %102, -32512
  %and.i.i = and i64 %100, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i.i = icmp eq i64 %and.i.i, 0
  %or.cond.i.i = or i1 %cmp.i.i383, %tobool.not.i.i
  br i1 %or.cond.i.i, label %vlan_hw_offload_capable.exit.i, label %if.then94.if.then.i384_crit_edge

if.then94.if.then.i384_crit_edge:                 ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i384

vlan_hw_offload_capable.exit.i:                   ; preds = %if.then94
  call void @__sanitizer_cov_trace_const_cmp2(i16 -30552, i16 %102)
  %cmp3.i.i = icmp eq i16 %102, -30552
  %and6.i.i = and i64 %100, 35184372088832
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6.i.i)
  %tobool7.not.i.i = icmp ne i64 %and6.i.i, 0
  %not.or.cond12.i.i = and i1 %cmp3.i.i, %tobool7.not.i.i
  br i1 %not.or.cond12.i.i, label %vlan_hw_offload_capable.exit.i.if.then.i384_crit_edge, label %if.else.i

vlan_hw_offload_capable.exit.i.if.then.i384_crit_edge: ; preds = %vlan_hw_offload_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i384

if.then.i384:                                     ; preds = %vlan_hw_offload_capable.exit.i.if.then.i384_crit_edge, %if.then94.if.then.i384_crit_edge
  %103 = ptrtoint ptr %hard_header_len3.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %hard_header_len3.i, align 2
  br label %vlan_transfer_features.exit

if.else.i:                                        ; preds = %vlan_hw_offload_capable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %hard_header_len3.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %hard_header_len3.i, align 2
  %add.i = add i16 %106, 4
  br label %vlan_transfer_features.exit

vlan_transfer_features.exit:                      ; preds = %if.else.i, %if.then.i384
  %add.sink.i = phi i16 [ %add.i, %if.else.i ], [ %104, %if.then.i384 ]
  %hard_header_len6.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 19
  %107 = ptrtoint ptr %hard_header_len6.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %add.sink.i, ptr %hard_header_len6.i, align 2
  %108 = ptrtoint ptr %fcoe_ddp_xid.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fcoe_ddp_xid.i, align 8
  %fcoe_ddp_xid7.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 143
  %110 = ptrtoint ptr %fcoe_ddp_xid7.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %fcoe_ddp_xid7.i, align 8
  %priv_flags.i385 = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 15
  %111 = ptrtoint ptr %priv_flags.i385 to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %priv_flags.i385, align 16
  %and.i386 = and i64 %112, -33
  store i64 %and.i386, ptr %priv_flags.i385, align 16
  %real_dev.i = getelementptr i8, ptr %92, i32 2416
  %113 = ptrtoint ptr %real_dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %real_dev.i, align 4
  %priv_flags8.i = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %priv_flags8.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %priv_flags8.i, align 16
  %and9.i = and i64 %116, 32
  %or.i387 = or i64 %and9.i, %and.i386
  store i64 %or.i387, ptr %priv_flags.i385, align 16
  %hw_enc_features.i.i = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 27
  %117 = ptrtoint ptr %hw_enc_features.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %hw_enc_features.i.i, align 16
  %and1.i.i = and i64 %118, 264241152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool.not.i29.i = icmp eq i64 %and1.i.i, 0
  %and2.i.i = and i64 %118, 26
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  %or.cond.i30.i = or i1 %tobool.not.i29.i, %tobool3.not.i.i
  %and4.i.i = and i64 %118, 27109687296
  %or.i.i388 = or i64 %and4.i.i, 8
  %retval.0.i31.i = select i1 %or.cond.i30.i, i64 0, i64 %or.i.i388
  %hw_enc_features.i = getelementptr inbounds %struct.net_device, ptr %92, i32 0, i32 27
  %119 = ptrtoint ptr %hw_enc_features.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %retval.0.i31.i, ptr %hw_enc_features.i, align 16
  call void @netdev_update_features(ptr noundef nonnull %92) #9
  br label %for.inc96

for.inc96:                                        ; preds = %vlan_transfer_features.exit, %__vlan_group_get_device.exit382.for.inc96_crit_edge, %for.body88.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.3495, 1
  %exitcond511.not = icmp eq i32 %inc97, 8192
  br i1 %exitcond511.not, label %for.inc96.out_crit_edge, label %for.inc96.for.body88_crit_edge

for.inc96.for.body88_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88

for.inc96.out_crit_edge:                          ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb99:                                          ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %close_list) #9
  %120 = getelementptr inbounds %struct.list_head, ptr %close_list, i32 0, i32 1
  %121 = ptrtoint ptr %close_list to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %close_list, ptr %close_list, align 4
  %122 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %close_list, ptr %120, align 4
  br label %for.body106

for.body106:                                      ; preds = %for.inc127.for.body106_crit_edge, %sw.bb99
  %i.4490 = phi i32 [ 0, %sw.bb99 ], [ %inc128, %for.inc127.for.body106_crit_edge ]
  %div107474 = lshr i32 %i.4490, 12
  %conv109 = lshr i32 %i.4490, 9
  %div9.i391 = and i32 %conv109, 7
  %arrayidx1.i392 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div107474, i32 %div9.i391
  %123 = ptrtoint ptr %arrayidx1.i392 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx1.i392, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i393 = icmp eq ptr %124, null
  br i1 %tobool.not.i393, label %for.body106.for.inc127_crit_edge, label %__vlan_group_get_device.exit398

for.body106.for.inc127_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc127

__vlan_group_get_device.exit398:                  ; preds = %for.body106
  %rem.i394 = and i32 %i.4490, 511
  %arrayidx6.i395 = getelementptr ptr, ptr %124, i32 %rem.i394
  %125 = ptrtoint ptr %arrayidx6.i395 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %arrayidx6.i395, align 4
  %tobool111.not = icmp eq ptr %126, null
  br i1 %tobool111.not, label %__vlan_group_get_device.exit398.for.inc127_crit_edge, label %if.then112

__vlan_group_get_device.exit398.for.inc127_crit_edge: ; preds = %__vlan_group_get_device.exit398
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc127

if.then112:                                       ; preds = %__vlan_group_get_device.exit398
  %flags113 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 14
  %127 = ptrtoint ptr %flags113 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %flags113, align 8
  %and114 = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.then112.for.inc127_crit_edge, label %if.end117

if.then112.for.inc127_crit_edge:                  ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc127

if.end117:                                        ; preds = %if.then112
  %flags119 = getelementptr i8, ptr %126, i32 2412
  %129 = ptrtoint ptr %flags119 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %flags119, align 4
  %131 = and i16 %130, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool122.not = icmp eq i16 %131, 0
  br i1 %tobool122.not, label %if.then123, label %if.end117.for.inc127_crit_edge

if.end117.for.inc127_crit_edge:                   ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc127

if.then123:                                       ; preds = %if.end117
  %close_list124 = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 10
  %132 = ptrtoint ptr %close_list to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %close_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %close_list124, ptr noundef nonnull %close_list, ptr noundef %133) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then123.for.inc127_crit_edge

if.then123.for.inc127_crit_edge:                  ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc127

if.end.i.i:                                       ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %close_list124, ptr %prev1.i.i, align 4
  %135 = ptrtoint ptr %close_list124 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %133, ptr %close_list124, align 4
  %prev3.i.i = getelementptr inbounds %struct.net_device, ptr %126, i32 0, i32 10, i32 1
  %136 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %close_list, ptr %prev3.i.i, align 4
  %137 = ptrtoint ptr %close_list to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %close_list124, ptr %close_list, align 4
  br label %for.inc127

for.inc127:                                       ; preds = %if.end.i.i, %if.then123.for.inc127_crit_edge, %if.end117.for.inc127_crit_edge, %if.then112.for.inc127_crit_edge, %__vlan_group_get_device.exit398.for.inc127_crit_edge, %for.body106.for.inc127_crit_edge
  %inc128 = add nuw nsw i32 %i.4490, 1
  %exitcond510.not = icmp eq i32 %inc128, 8192
  br i1 %exitcond510.not, label %for.end129, label %for.inc127.for.body106_crit_edge

for.inc127.for.body106_crit_edge:                 ; preds = %for.inc127
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body106

for.end129:                                       ; preds = %for.inc127
  call void @dev_close_many(ptr noundef nonnull %close_list, i1 noundef zeroext false) #9
  %138 = ptrtoint ptr %close_list to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %close_list, align 4
  %cmp139.not492 = icmp eq ptr %139, %close_list
  br i1 %cmp139.not492, label %for.end129.for.end150_crit_edge, label %for.end129.for.body141_crit_edge

for.end129.for.body141_crit_edge:                 ; preds = %for.end129
  br label %for.body141

for.end129.for.end150_crit_edge:                  ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.body141:                                      ; preds = %list_del_init.exit.for.body141_crit_edge, %for.end129.for.body141_crit_edge
  %.pn.in493 = phi ptr [ %.pn, %list_del_init.exit.for.body141_crit_edge ], [ %139, %for.end129.for.body141_crit_edge ]
  %140 = ptrtoint ptr %.pn.in493 to i32
  call void @__asan_load4_noabort(i32 %140)
  %.pn = load ptr, ptr %.pn.in493, align 64
  %flags.i401 = getelementptr i8, ptr %.pn.in493, i32 2348
  %141 = ptrtoint ptr %flags.i401 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %flags.i401, align 4
  %143 = and i16 %142, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.not.i402 = icmp eq i16 %143, 0
  br i1 %tobool.not.i402, label %if.then.i403, label %for.body141.vlan_stacked_transfer_operstate.exit405_crit_edge

for.body141.vlan_stacked_transfer_operstate.exit405_crit_edge: ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #11
  br label %vlan_stacked_transfer_operstate.exit405

if.then.i403:                                     ; preds = %for.body141
  call void @__sanitizer_cov_trace_pc() #11
  %vlandev.0 = getelementptr i8, ptr %.pn.in493, i32 -64
  call void @netif_stacked_transfer_operstate(ptr noundef %3, ptr noundef %vlandev.0) #9
  br label %vlan_stacked_transfer_operstate.exit405

vlan_stacked_transfer_operstate.exit405:          ; preds = %if.then.i403, %for.body141.vlan_stacked_transfer_operstate.exit405_crit_edge
  %call.i.i406 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in493) #9
  br i1 %call.i.i406, label %if.end.i.i407, label %vlan_stacked_transfer_operstate.exit405.list_del_init.exit_crit_edge

vlan_stacked_transfer_operstate.exit405.list_del_init.exit_crit_edge: ; preds = %vlan_stacked_transfer_operstate.exit405
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i407:                                    ; preds = %vlan_stacked_transfer_operstate.exit405
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in493, i32 0, i32 1
  %144 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %prev.i.i, align 4
  %146 = ptrtoint ptr %.pn.in493 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %.pn.in493, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %145, ptr %prev1.i.i.i, align 4
  %149 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %147, ptr %145, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i407, %vlan_stacked_transfer_operstate.exit405.list_del_init.exit_crit_edge
  %150 = ptrtoint ptr %.pn.in493 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %.pn.in493, ptr %.pn.in493, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in493, i32 0, i32 1
  %151 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %.pn.in493, ptr %prev.i3.i, align 4
  %cmp139.not = icmp eq ptr %.pn, %close_list
  br i1 %cmp139.not, label %list_del_init.exit.for.end150_crit_edge, label %list_del_init.exit.for.body141_crit_edge

list_del_init.exit.for.body141_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body141

list_del_init.exit.for.end150_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.end150:                                       ; preds = %list_del_init.exit.for.end150_crit_edge, %for.end129.for.end150_crit_edge
  %call.i.i408 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %close_list) #9
  br i1 %call.i.i408, label %if.end.i.i411, label %for.end150.list_del.exit_crit_edge

for.end150.list_del.exit_crit_edge:               ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i411:                                    ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %120, align 4
  %154 = ptrtoint ptr %close_list to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %close_list, align 4
  %prev1.i.i.i410 = getelementptr inbounds %struct.list_head, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %prev1.i.i.i410 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %153, ptr %prev1.i.i.i410, align 4
  %157 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %157)
  store volatile ptr %155, ptr %153, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i411, %for.end150.list_del.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %close_list) #9
  br label %out

for.body157:                                      ; preds = %for.inc178.for.body157_crit_edge, %if.end35.for.body157_crit_edge
  %i.5488 = phi i32 [ %inc179, %for.inc178.for.body157_crit_edge ], [ 0, %if.end35.for.body157_crit_edge ]
  %div158473 = lshr i32 %i.5488, 12
  %conv160 = lshr i32 %i.5488, 9
  %div9.i413 = and i32 %conv160, 7
  %arrayidx1.i414 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div158473, i32 %div9.i413
  %158 = ptrtoint ptr %arrayidx1.i414 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx1.i414, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i415 = icmp eq ptr %159, null
  br i1 %tobool.not.i415, label %for.body157.for.inc178_crit_edge, label %__vlan_group_get_device.exit420

for.body157.for.inc178_crit_edge:                 ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc178

__vlan_group_get_device.exit420:                  ; preds = %for.body157
  %rem.i416 = and i32 %i.5488, 511
  %arrayidx6.i417 = getelementptr ptr, ptr %159, i32 %rem.i416
  %160 = ptrtoint ptr %arrayidx6.i417 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx6.i417, align 4
  %tobool162.not = icmp eq ptr %161, null
  br i1 %tobool162.not, label %__vlan_group_get_device.exit420.for.inc178_crit_edge, label %if.then163

__vlan_group_get_device.exit420.for.inc178_crit_edge: ; preds = %__vlan_group_get_device.exit420
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc178

if.then163:                                       ; preds = %__vlan_group_get_device.exit420
  %call164 = call i32 @dev_get_flags(ptr noundef nonnull %161) #9
  %and165 = and i32 %call164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end168, label %if.then163.for.inc178_crit_edge

if.then163.for.inc178_crit_edge:                  ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc178

if.end168:                                        ; preds = %if.then163
  %flags170 = getelementptr i8, ptr %161, i32 2412
  %162 = ptrtoint ptr %flags170 to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %flags170, align 4
  %164 = and i16 %163, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %164)
  %tobool173.not = icmp eq i16 %164, 0
  br i1 %tobool173.not, label %if.then174, label %if.end168.if.end176_crit_edge

if.end168.if.end176_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.then174:                                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %call164, 1
  %call175 = call i32 @dev_change_flags(ptr noundef nonnull %161, i32 noundef %or, ptr noundef %1) #9
  br label %if.end176

if.end176:                                        ; preds = %if.then174, %if.end168.if.end176_crit_edge
  %165 = ptrtoint ptr %flags170 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %flags170, align 4
  %167 = and i16 %166, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool.not.i423 = icmp eq i16 %167, 0
  br i1 %tobool.not.i423, label %if.then.i424, label %if.end176.for.inc178_crit_edge

if.end176.for.inc178_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc178

if.then.i424:                                     ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  call void @netif_stacked_transfer_operstate(ptr noundef %3, ptr noundef nonnull %161) #9
  br label %for.inc178

for.inc178:                                       ; preds = %if.then.i424, %if.end176.for.inc178_crit_edge, %if.then163.for.inc178_crit_edge, %__vlan_group_get_device.exit420.for.inc178_crit_edge, %for.body157.for.inc178_crit_edge
  %inc179 = add nuw nsw i32 %i.5488, 1
  %exitcond509.not = icmp eq i32 %inc179, 8192
  br i1 %exitcond509.not, label %for.inc178.out_crit_edge, label %for.inc178.for.body157_crit_edge

for.inc178.for.body157_crit_edge:                 ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body157

for.inc178.out_crit_edge:                         ; preds = %for.inc178
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb181:                                         ; preds = %if.end35
  %reg_state = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 121
  %168 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp182.not = icmp eq i8 %bf.load, 2
  br i1 %cmp182.not, label %for.cond186.preheader, label %sw.bb181.out_crit_edge

sw.bb181.out_crit_edge:                           ; preds = %sw.bb181
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond186.preheader:                            ; preds = %sw.bb181
  %nr_vids = getelementptr inbounds %struct.vlan_info, ptr %16, i32 0, i32 3
  br label %for.body189

for.body189:                                      ; preds = %for.body189.backedge, %for.cond186.preheader
  %i.6486 = phi i32 [ 0, %for.cond186.preheader ], [ %i.6486.be, %for.body189.backedge ]
  %div190472 = lshr i32 %i.6486, 12
  %conv192 = lshr i32 %i.6486, 9
  %div9.i428 = and i32 %conv192, 7
  %arrayidx1.i429 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div190472, i32 %div9.i428
  %169 = ptrtoint ptr %arrayidx1.i429 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx1.i429, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i430 = icmp eq ptr %170, null
  br i1 %tobool.not.i430, label %for.body189.for.inc204_crit_edge, label %__vlan_group_get_device.exit435

for.body189.for.inc204_crit_edge:                 ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc204

__vlan_group_get_device.exit435:                  ; preds = %for.body189
  %rem.i431 = and i32 %i.6486, 511
  %arrayidx6.i432 = getelementptr ptr, ptr %170, i32 %rem.i431
  %171 = ptrtoint ptr %arrayidx6.i432 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx6.i432, align 4
  %tobool194.not = icmp eq ptr %172, null
  br i1 %tobool194.not, label %__vlan_group_get_device.exit435.for.inc204_crit_edge, label %if.then195

__vlan_group_get_device.exit435.for.inc204_crit_edge: ; preds = %__vlan_group_get_device.exit435
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc204

if.then195:                                       ; preds = %__vlan_group_get_device.exit435
  %173 = ptrtoint ptr %nr_vids to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %nr_vids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp196 = icmp eq i32 %174, 1
  call void @unregister_vlan_dev(ptr noundef nonnull %172, ptr noundef nonnull %list)
  %inc205 = add nuw nsw i32 %i.6486, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %inc205)
  %exitcond508.not = icmp eq i32 %inc205, 8192
  %or.cond = select i1 %cmp196, i1 true, i1 %exitcond508.not
  br i1 %or.cond, label %if.then195.for.end206_crit_edge, label %if.then195.for.body189.backedge_crit_edge

if.then195.for.body189.backedge_crit_edge:        ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body189.backedge

if.then195.for.end206_crit_edge:                  ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end206

for.inc204:                                       ; preds = %__vlan_group_get_device.exit435.for.inc204_crit_edge, %for.body189.for.inc204_crit_edge
  %inc205.old = add nuw nsw i32 %i.6486, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %inc205.old)
  %exitcond508.not.old = icmp eq i32 %inc205.old, 8192
  br i1 %exitcond508.not.old, label %for.inc204.for.end206_crit_edge, label %for.inc204.for.body189.backedge_crit_edge

for.inc204.for.body189.backedge_crit_edge:        ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body189.backedge

for.inc204.for.end206_crit_edge:                  ; preds = %for.inc204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end206

for.body189.backedge:                             ; preds = %for.inc204.for.body189.backedge_crit_edge, %if.then195.for.body189.backedge_crit_edge
  %i.6486.be = phi i32 [ %inc205.old, %for.inc204.for.body189.backedge_crit_edge ], [ %inc205, %if.then195.for.body189.backedge_crit_edge ]
  br label %for.body189

for.end206:                                       ; preds = %for.inc204.for.end206_crit_edge, %if.then195.for.end206_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #9
  br label %out

sw.bb207:                                         ; preds = %if.end35
  %call208 = call zeroext i1 @vlan_uses_dev(ptr noundef %3) #9
  br i1 %call208, label %sw.bb207.cleanup241_crit_edge, label %sw.bb207.out_crit_edge

sw.bb207.out_crit_edge:                           ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb207.cleanup241_crit_edge:                    ; preds = %sw.bb207
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup241

for.body215:                                      ; preds = %for.inc224.for.body215_crit_edge, %for.body215.preheader
  %i.7484 = phi i32 [ %inc225, %for.inc224.for.body215_crit_edge ], [ 0, %for.body215.preheader ]
  %div216471 = lshr i32 %i.7484, 12
  %conv218 = lshr i32 %i.7484, 9
  %div9.i437 = and i32 %conv218, 7
  %arrayidx1.i438 = getelementptr %struct.vlan_info, ptr %16, i32 0, i32 1, i32 2, i32 %div216471, i32 %div9.i437
  %175 = ptrtoint ptr %arrayidx1.i438 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx1.i438, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  %tobool.not.i439 = icmp eq ptr %176, null
  br i1 %tobool.not.i439, label %for.body215.for.inc224_crit_edge, label %__vlan_group_get_device.exit444

for.body215.for.inc224_crit_edge:                 ; preds = %for.body215
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc224

__vlan_group_get_device.exit444:                  ; preds = %for.body215
  %rem.i440 = and i32 %i.7484, 511
  %arrayidx6.i441 = getelementptr ptr, ptr %176, i32 %rem.i440
  %177 = ptrtoint ptr %arrayidx6.i441 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx6.i441, align 4
  %tobool220.not = icmp eq ptr %178, null
  br i1 %tobool220.not, label %__vlan_group_get_device.exit444.for.inc224_crit_edge, label %if.then221

__vlan_group_get_device.exit444.for.inc224_crit_edge: ; preds = %__vlan_group_get_device.exit444
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc224

if.then221:                                       ; preds = %__vlan_group_get_device.exit444
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = call i32 @call_netdevice_notifiers(i32 noundef %event, ptr noundef nonnull %178) #9
  br label %for.inc224

for.inc224:                                       ; preds = %if.then221, %__vlan_group_get_device.exit444.for.inc224_crit_edge, %for.body215.for.inc224_crit_edge
  %inc225 = add nuw nsw i32 %i.7484, 1
  %exitcond.not = icmp eq i32 %inc225, 8192
  br i1 %exitcond.not, label %for.inc224.out_crit_edge, label %for.inc224.for.body215_crit_edge

for.inc224.for.body215_crit_edge:                 ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body215

for.inc224.out_crit_edge:                         ; preds = %for.inc224
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb227:                                         ; preds = %if.end35
  %call228 = call i32 @vlan_filter_push_vids(ptr noundef nonnull %16, i16 noundef zeroext -32512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228)
  %tobool229.not = icmp eq i32 %call228, 0
  br i1 %tobool229.not, label %sw.bb227.out_crit_edge, label %if.then230

sw.bb227.out_crit_edge:                           ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then230:                                       ; preds = %sw.bb227
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i445 = sub i32 1, %call228
  %or.i446 = or i32 %sub.i445, 32768
  br label %cleanup241

sw.bb233:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void @vlan_filter_drop_vids(ptr noundef nonnull %16, i16 noundef zeroext -32512) #9
  br label %out

sw.bb234:                                         ; preds = %if.end35
  %call235 = call i32 @vlan_filter_push_vids(ptr noundef nonnull %16, i16 noundef zeroext -30552) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %sw.bb234.out_crit_edge, label %if.then237

sw.bb234.out_crit_edge:                           ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then237:                                       ; preds = %sw.bb234
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i447 = sub i32 1, %call235
  %or.i448 = or i32 %sub.i447, 32768
  br label %cleanup241

sw.bb240:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void @vlan_filter_drop_vids(ptr noundef nonnull %16, i16 noundef zeroext -30552) #9
  br label %out

out:                                              ; preds = %sw.bb240, %sw.bb234.out_crit_edge, %sw.bb233, %sw.bb227.out_crit_edge, %for.inc224.out_crit_edge, %sw.bb207.out_crit_edge, %for.end206, %sw.bb181.out_crit_edge, %for.inc178.out_crit_edge, %list_del.exit, %for.inc96.out_crit_edge, %for.inc81.out_crit_edge, %for.inc59.out_crit_edge, %for.inc.out_crit_edge, %if.end35.out_crit_edge, %do.end30.out_crit_edge
  br label %cleanup241

cleanup241:                                       ; preds = %out, %if.then237, %if.then230, %sw.bb207.cleanup241_crit_edge, %cleanup
  %retval.1 = phi i32 [ 0, %out ], [ %or.i448, %if.then237 ], [ %or.i446, %if.then230 ], [ %or.i, %cleanup ], [ 32770, %sw.bb207.cleanup241_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #9
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close_many(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vlan_uses_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_filter_push_vids(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_filter_drop_vids(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_proc_rem_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_proc_add_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vlan_dev_inherit_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_uc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %name_type = getelementptr inbounds %struct.vlan_net, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %name_type to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 3, ptr %name_type, align 4
  %call1 = tail call i32 @vlan_proc_init(ptr noundef %net) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vlan_exit_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vlan_proc_cleanup(ptr noundef %net) #9
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !102
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 45, ptr noundef nonnull @.str.11) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !103
  %8 = tail call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_proc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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
declare dso_local void @vlan_proc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_gvrp_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_mvrp_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_netlink_init() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_ioctl_handler(ptr noundef %net, ptr noundef %arg) #0 align 64 {
entry:
  %args = alloca %struct.vlan_ioctl_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 56)
  tail call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 56, i32 -1226833920) #14
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !96

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 56) #9
  %2 = call i32 @llvm.read_register.i32(metadata !86) #9
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !104
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %arg, i32 noundef 56) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !105
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !96

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 56, %entry.if.then11.i.i_crit_edge ], [ 56, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 56, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %args, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 1, i32 23
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %u = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 2
  %arrayidx1 = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 2, i32 1, i32 19
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx1, align 1
  call void @rtnl_lock() #9
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %9, label %if.end.sw.epilog_crit_edge [
    i32 2, label %if.end.sw.bb_crit_edge
    i32 3, label %if.end.sw.bb_crit_edge127
    i32 7, label %if.end.sw.bb_crit_edge128
    i32 0, label %if.end.sw.bb_crit_edge129
    i32 1, label %if.end.sw.bb_crit_edge130
    i32 8, label %if.end.sw.bb_crit_edge131
    i32 9, label %if.end.sw.bb_crit_edge132
  ]

if.end.sw.bb_crit_edge132:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge131:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge130:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge129:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge128:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge127:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge127, %if.end.sw.bb_crit_edge128, %if.end.sw.bb_crit_edge129, %if.end.sw.bb_crit_edge130, %if.end.sw.bb_crit_edge131, %if.end.sw.bb_crit_edge132
  %device1 = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 1
  %call3 = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef %device1) #9
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %sw.bb.out_crit_edge, label %if.end6

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %sw.bb
  %11 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %if.end6.sw.bb48_crit_edge, label %land.lhs.true

if.end6.sw.bb48_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

land.lhs.true:                                    ; preds = %if.end6
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 15
  %13 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.out_crit_edge, label %sw.epilogthread-pre-split

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.epilogthread-pre-split:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %args, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end.sw.epilog_crit_edge
  %16 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %9, %if.end.sw.epilog_crit_edge ]
  %dev.0 = phi ptr [ %call3, %sw.epilogthread-pre-split ], [ null, %if.end.sw.epilog_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %16, label %sw.epilog.out_crit_edge [
    i32 2, label %sw.bb12
    i32 3, label %sw.bb17
    i32 7, label %sw.bb25
    i32 6, label %sw.bb35
    i32 0, label %sw.epilog.sw.bb48_crit_edge
    i32 1, label %sw.bb56
    i32 8, label %if.then.i100
    i32 9, label %if.then.i109
  ]

sw.epilog.sw.bb48_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb12:                                          ; preds = %sw.epilog
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %18 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns, align 4
  %call13 = call zeroext i1 @ns_capable(ptr noundef %19, i32 noundef 12) #9
  br i1 %call13, label %if.end15, label %sw.bb12.out_crit_edge

sw.bb12.out_crit_edge:                            ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end15:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %u, align 4
  %vlan_qos = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 3
  %22 = ptrtoint ptr %vlan_qos to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan_qos, align 4
  call void @vlan_dev_set_ingress_priority(ptr noundef %dev.0, i32 noundef %21, i16 noundef zeroext %23) #9
  br label %out

sw.bb17:                                          ; preds = %sw.epilog
  %user_ns18 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %24 = ptrtoint ptr %user_ns18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns18, align 4
  %call19 = call zeroext i1 @ns_capable(ptr noundef %25, i32 noundef 12) #9
  br i1 %call19, label %if.end21, label %sw.bb17.out_crit_edge

sw.bb17.out_crit_edge:                            ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %u, align 4
  %vlan_qos23 = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 3
  %28 = ptrtoint ptr %vlan_qos23 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_qos23, align 4
  %call24 = call i32 @vlan_dev_set_egress_priority(ptr noundef %dev.0, i32 noundef %27, i16 noundef zeroext %29) #9
  br label %out

sw.bb25:                                          ; preds = %sw.epilog
  %user_ns26 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %30 = ptrtoint ptr %user_ns26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %user_ns26, align 4
  %call27 = call zeroext i1 @ns_capable(ptr noundef %31, i32 noundef 12) #9
  br i1 %call27, label %if.end29, label %sw.bb25.out_crit_edge

sw.bb25.out_crit_edge:                            ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29:                                         ; preds = %sw.bb25
  %vlan_qos30 = getelementptr inbounds %struct.vlan_ioctl_args, ptr %args, i32 0, i32 3
  %32 = ptrtoint ptr %vlan_qos30 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_qos30, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool31.not = icmp eq i16 %33, 0
  br i1 %tobool31.not, label %if.end29.cond.end_crit_edge, label %cond.true

if.end29.cond.end_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %u, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end29.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 0, %if.end29.cond.end_crit_edge ]
  %36 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u, align 4
  %call34 = call i32 @vlan_dev_change_flags(ptr noundef %dev.0, i32 noundef %cond, i32 noundef %37) #9
  br label %out

sw.bb35:                                          ; preds = %sw.epilog
  %user_ns36 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %38 = ptrtoint ptr %user_ns36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %user_ns36, align 4
  %call37 = call zeroext i1 @ns_capable(ptr noundef %39, i32 noundef 12) #9
  br i1 %call37, label %if.end39, label %sw.bb35.out_crit_edge

sw.bb35.out_crit_edge:                            ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %sw.bb35
  %40 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp41 = icmp ult i32 %41, 4
  br i1 %cmp41, label %if.then43, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %42 = load i32, ptr @vlan_net_id, align 4
  %call44 = call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %42)
  %43 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u, align 4
  %conv46 = trunc i32 %44 to i16
  %name_type = getelementptr inbounds %struct.vlan_net, ptr %call44, i32 0, i32 2
  %45 = ptrtoint ptr %name_type to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv46, ptr %name_type, align 4
  br label %out

sw.bb48:                                          ; preds = %sw.epilog.sw.bb48_crit_edge, %if.end6.sw.bb48_crit_edge
  %dev.0121 = phi ptr [ %dev.0, %sw.epilog.sw.bb48_crit_edge ], [ %call3, %if.end6.sw.bb48_crit_edge ]
  %user_ns49 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %46 = ptrtoint ptr %user_ns49 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %user_ns49, align 4
  %call50 = call zeroext i1 @ns_capable(ptr noundef %47, i32 noundef 12) #9
  br i1 %call50, label %if.end52, label %sw.bb48.out_crit_edge

sw.bb48.out_crit_edge:                            ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end52:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %u, align 4
  %conv54 = trunc i32 %49 to i16
  %call55 = call fastcc i32 @register_vlan_device(ptr noundef %dev.0121, i16 noundef zeroext %conv54)
  br label %out

sw.bb56:                                          ; preds = %sw.epilog
  %user_ns57 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %50 = ptrtoint ptr %user_ns57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_ns57, align 4
  %call58 = call zeroext i1 @ns_capable(ptr noundef %51, i32 noundef 12) #9
  br i1 %call58, label %if.end60, label %sw.bb56.out_crit_edge

sw.bb56.out_crit_edge:                            ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end60:                                         ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  call void @unregister_vlan_dev(ptr noundef %dev.0, ptr noundef null)
  br label %out

if.then.i100:                                     ; preds = %sw.epilog
  call void @vlan_dev_get_realdev_name(ptr noundef %dev.0, ptr noundef %u, i32 noundef 24) #9
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #9
  %call.i.i99 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i99, label %if.then.i100.out_crit_edge, label %copy_to_user.exit

if.then.i100.out_crit_edge:                       ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

copy_to_user.exit:                                ; preds = %if.then.i100
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i104 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %args, i32 noundef 56) #9
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %args, i32 noundef 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool65.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool65.not, i32 0, i32 -14
  br label %out

if.then.i109:                                     ; preds = %sw.epilog
  %call69 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %dev.0) #9
  %conv70 = zext i16 %call69 to i32
  %52 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv70, ptr %u, align 4
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 174) #9
  %call.i.i108 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i108, label %if.then.i109.out_crit_edge, label %copy_to_user.exit117

if.then.i109.out_crit_edge:                       ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

copy_to_user.exit117:                             ; preds = %if.then.i109
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i113 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %args, i32 noundef 56) #9
  %call.i1.i.i114 = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %args, i32 noundef 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i114)
  %tobool73.not = icmp eq i32 %call.i1.i.i114, 0
  %spec.select126 = select i1 %tobool73.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit117, %if.then.i109.out_crit_edge, %copy_to_user.exit, %if.then.i100.out_crit_edge, %if.end60, %sw.bb56.out_crit_edge, %if.end52, %sw.bb48.out_crit_edge, %if.then43, %if.end39.out_crit_edge, %sw.bb35.out_crit_edge, %cond.end, %sw.bb25.out_crit_edge, %if.end21, %sw.bb17.out_crit_edge, %if.end15, %sw.bb12.out_crit_edge, %sw.epilog.out_crit_edge, %land.lhs.true.out_crit_edge, %sw.bb.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end60 ], [ -1, %sw.bb56.out_crit_edge ], [ %call55, %if.end52 ], [ -1, %sw.bb48.out_crit_edge ], [ 0, %if.then43 ], [ -1, %sw.bb35.out_crit_edge ], [ %call34, %cond.end ], [ -1, %sw.bb25.out_crit_edge ], [ %call24, %if.end21 ], [ -1, %sw.bb17.out_crit_edge ], [ 0, %if.end15 ], [ -1, %sw.bb12.out_crit_edge ], [ -22, %land.lhs.true.out_crit_edge ], [ -19, %sw.bb.out_crit_edge ], [ -22, %if.end39.out_crit_edge ], [ -95, %sw.epilog.out_crit_edge ], [ -14, %if.then.i100.out_crit_edge ], [ -14, %if.then.i109.out_crit_edge ], [ %spec.select, %copy_to_user.exit ], [ %spec.select126, %copy_to_user.exit117 ]
  call void @rtnl_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then11.i.i
  %retval.0 = phi i32 [ %err.0, %out ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_dev_set_ingress_priority(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_dev_set_egress_priority(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_dev_change_flags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_vlan_device(ptr noundef %real_dev, i16 noundef zeroext %vlan_id) unnamed_addr #0 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @vlan_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %conv = zext i16 %vlan_id to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %vlan_id)
  %cmp = icmp ugt i16 %vlan_id, 4094
  %3 = call ptr @memset(ptr %name, i32 255, i32 16)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @vlan_check_real_dev(ptr noundef %real_dev, i16 noundef zeroext -32512, i16 noundef zeroext %vlan_id, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %name_type = getelementptr inbounds %struct.vlan_net, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %name_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %name_type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i16 %5, label %sw.default [
    i16 1, label %sw.bb
    i16 2, label %sw.bb13
    i16 3, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.23, ptr noundef %real_dev, i32 noundef %conv)
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.24, i32 noundef %conv)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.25, ptr noundef %real_dev, i32 noundef %conv)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.26, i32 noundef %conv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb13, %sw.bb
  %call28 = call ptr @alloc_netdev_mqs(i32 noundef 140, ptr noundef nonnull %name, i8 noundef zeroext 0, ptr noundef nonnull @vlan_setup, i32 noundef 1, i32 noundef 1) #9
  %cmp29 = icmp eq ptr %call28, null
  br i1 %cmp29, label %sw.epilog.cleanup_crit_edge, label %if.end32

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog
  %nd_net.i72 = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 127
  %7 = ptrtoint ptr %nd_net.i72 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %nd_net.i72, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %real_dev, i32 0, i32 20
  %8 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu, align 4
  %mtu33 = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 20
  %10 = ptrtoint ptr %mtu33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mtu33, align 4
  %vlan_proto = getelementptr i8, ptr %call28, i32 2408
  %11 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -32512, ptr %vlan_proto, align 4
  %vlan_id35 = getelementptr i8, ptr %call28, i32 2410
  %12 = ptrtoint ptr %vlan_id35 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %vlan_id, ptr %vlan_id35, align 2
  %real_dev36 = getelementptr i8, ptr %call28, i32 2416
  %13 = ptrtoint ptr %real_dev36 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %real_dev, ptr %real_dev36, align 4
  %dent = getelementptr i8, ptr %call28, i32 2432
  %14 = ptrtoint ptr %dent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dent, align 4
  %flags = getelementptr i8, ptr %call28, i32 2412
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags, align 4
  %rtnl_link_ops = getelementptr inbounds %struct.net_device, ptr %call28, i32 0, i32 136
  %16 = ptrtoint ptr %rtnl_link_ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vlan_link_ops, ptr %rtnl_link_ops, align 4
  %call37 = call i32 @register_vlan_dev(ptr noundef nonnull %call28, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %out_free_newdev, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_free_newdev:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void @free_netdev(ptr noundef nonnull %call28) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_newdev, %if.end32.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %out_free_newdev ], [ -34, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -105, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_dev_get_realdev_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vlan_setup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !58, !59, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !76, !78, !80, !82, !84}
!llvm.named.register.sp = !{!86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @vlan_fullname, !1, !"vlan_fullname", i1 false, i1 false}
!1 = !{!"../net/8021q/vlan.c", i32 45, i32 12}
!2 = !{ptr @vlan_version, !3, !"vlan_version", i1 false, i1 false}
!3 = !{!"../net/8021q/vlan.c", i32 46, i32 12}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../net/8021q/vlan.c", i32 97, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/8021q/vlan.c", i32 99, i32 14}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/8021q/vlan.c", i32 135, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vlan_check_real_dev._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @vlan_check_real_dev._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @vlan_check_real_dev.__msg, !17, !"__msg", i1 false, i1 false}
!17 = !{!"../net/8021q/vlan.c", i32 136, i32 3}
!18 = !{ptr @vlan_check_real_dev.__msg.5, !19, !"__msg", i1 false, i1 false}
!19 = !{!"../net/8021q/vlan.c", i32 141, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/8021q/vlan.c", i32 161, i32 14}
!22 = !{ptr @__initcall__kmod_8021q__358_739_vlan_proto_init6, !23, !"__initcall__kmod_8021q__358_739_vlan_proto_init6", i1 false, i1 false}
!23 = !{!"../net/8021q/vlan.c", i32 739, i32 1}
!24 = !{ptr @__exitcall_vlan_cleanup_module, !25, !"__exitcall_vlan_cleanup_module", i1 false, i1 false}
!25 = !{!"../net/8021q/vlan.c", i32 740, i32 1}
!26 = !{ptr @__UNIQUE_ID_file359, !27, !"__UNIQUE_ID_file359", i1 false, i1 false}
!27 = !{!"../net/8021q/vlan.c", i32 742, i32 1}
!28 = !{ptr @__UNIQUE_ID_license360, !27, !"__UNIQUE_ID_license360", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_version361, !30, !"__UNIQUE_ID_version361", i1 false, i1 false}
!30 = !{!"../net/8021q/vlan.c", i32 743, i32 1}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__modver_attr, !30, !"__modver_attr", i1 false, i1 false}
!35 = !{ptr @vlan_net_id, !36, !"vlan_net_id", i1 false, i1 false}
!36 = !{!"../net/8021q/vlan.c", i32 43, i32 14}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/8021q/vlan.h", i32 47, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/8021q/vlan.h", i32 97, i32 32}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/8021q/vlan.c", i32 58, i32 2}
!45 = !{ptr @vlan_notifier_block, !46, !"vlan_notifier_block", i1 false, i1 false}
!46 = !{!"../net/8021q/vlan.c", i32 532, i32 30}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/8021q/vlan.c", i32 384, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @vlan_device_event._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @vlan_device_event._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/8021q/vlan.c", i32 392, i32 14}
!54 = !{ptr @vlan_net_ops, !55, !"vlan_net_ops", i1 false, i1 false}
!55 = !{!"../net/8021q/vlan.c", i32 676, i32 33}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/8021q/vlan.c", i32 687, i32 2}
!68 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vlan_proto_init._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @vlan_proto_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!73 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/8021q/vlan.c", i32 235, i32 28}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/8021q/vlan.c", i32 241, i32 28}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/8021q/vlan.c", i32 247, i32 28}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/8021q/vlan.c", i32 254, i32 28}
!86 = !{!"sp"}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 2156225852, i64 2156230394, i64 2156225889, i64 2156225945, i64 2156225979, i64 2156226003, i64 2156226044, i64 2156226065, i64 2156226093, i64 2156226127}
!99 = !{i64 2156210473}
!100 = !{i64 2156234869, i64 2156235350, i64 2156234906, i64 2156234962, i64 2156234996, i64 2156235020, i64 2156235061, i64 2156235082, i64 2156235110, i64 2156235144}
!101 = !{i64 2156223371}
!102 = !{i64 2149400613}
!103 = !{i64 2149400879}
!104 = !{i64 5567499}
!105 = !{i64 5567696}
!106 = !{i64 2153052929}
