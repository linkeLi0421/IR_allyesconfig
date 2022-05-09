; ModuleID = '/llk/IR_all_yes/drivers/net/eql.c_pt.bc'
source_filename = "../drivers/net/eql.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.62, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.67 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.slave = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.slave_queue = type { %struct.spinlock, %struct.list_head, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
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
%struct.master_config = type { [16 x i8], i32, i32 }
%struct.slave_config = type { [16 x i8], i32 }
%struct.slaving_request = type { [16 x i8], i32 }

@dev_eql = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_eql__337_609_eql_init_module6 = internal global ptr @eql_init_module, section ".initcall6.init", align 4
@__exitcall_eql_cleanup_module = internal global ptr @eql_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file338 = internal constant [25 x i8] c"eql.file=drivers/net/eql\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [16 x i8] c"eql.license=GPL\00", section ".modinfo", align 1
@eql_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016eql: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"eql_init_module\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/net/eql.c\00", [46 x i8] zeroinitializer }, align 32
@eql_init_module._entry_ptr = internal global ptr @eql_init_module._entry, section ".printk_index", align 4
@version = internal constant [82 x i8] c"Equalizer2002: Simon Janes (simon@ncm.com) and David S. Miller (davem@redhat.com)\00", section ".init.rodata", align 1
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eql\00", [28 x i8] zeroinitializer }, align 32
@eql_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&eql->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@eql_setup.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&eql->queue.lock\00", [47 x i8] zeroinitializer }, align 32
@eql_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @eql_open, ptr @eql_close, ptr @eql_slave_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @eql_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.7 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"remember to turn off Van-Jacobson compression on your slave devices\0A\00", [59 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35314, i64 35316]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 35312, i64 35313, i64 35314, i64 35315, i64 35317]
@___asan_gen_.12 = private unnamed_addr constant [8 x i8] c"dev_eql\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 584, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 590, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 592, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 183, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 186, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"eql_netdev_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 172, i32 36 }
@___asan_gen_.46 = private constant [21 x i8] c"../drivers/net/eql.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 211, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 156, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_eql_cleanup_module, ptr @__initcall__kmod_eql__337_609_eql_init_module6, ptr @eql_cleanup_module, ptr @eql_init_module._entry, ptr @eql_init_module._entry_ptr, ptr @dev_eql, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @eql_setup.__key, ptr @.str.4, ptr @eql_setup.__key.5, ptr @.str.6, ptr @eql_netdev_ops, ptr @.str.7, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_eql to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eql_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eql_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eql_setup.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eql_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eql_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @dev_eql, align 4
  tail call void @unregister_netdev(ptr noundef %0) #8
  %1 = load ptr, ptr @dev_eql, align 4
  tail call void @free_netdev(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eql_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @version) #11
  %call1 = tail call ptr @alloc_netdev_mqs(i32 noundef 116, ptr noundef nonnull @.str.3, i8 noundef zeroext 0, ptr noundef nonnull @eql_setup, i32 noundef 1, i32 noundef 1) #8
  store ptr %call1, ptr @dev_eql, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @register_netdev(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @dev_eql, align 4
  tail call void @free_netdev(ptr noundef %0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eql_setup(ptr noundef %dev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %timer = getelementptr i8, ptr %dev, i32 2372
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @eql_timer, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @eql_setup.__key) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 100
  %expires = getelementptr i8, ptr %dev, i32 2380
  %1 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %expires, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @eql_setup.__key.5, i16 noundef signext 3) #8
  %all_slaves = getelementptr i8, ptr %dev, i32 2348
  %2 = ptrtoint ptr %all_slaves to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %all_slaves, ptr %all_slaves, align 4
  %prev.i = getelementptr i8, ptr %dev, i32 2352
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %all_slaves, ptr %prev.i, align 4
  %master_dev = getelementptr i8, ptr %dev, i32 2360
  %4 = ptrtoint ptr %master_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %master_dev, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @eql_netdev_ops, ptr %netdev_ops, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 576, ptr %mtu, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1024, ptr %flags, align 8
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 256, ptr %type, align 16
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %tx_queue_len, align 16
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %11, -131105
  store i64 %and.i, ptr %priv_flags.i, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eql_timer(ptr noundef %t) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -68
  tail call void @_raw_spin_lock(ptr noundef %add.ptr) #8
  %all_slaves = getelementptr i8, ptr %t, i32 -24
  %0 = ptrtoint ptr %all_slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %all_slaves, align 4
  %cmp.i.not32 = icmp eq ptr %1, %all_slaves
  br i1 %cmp.i.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %entry.for.body_crit_edge
  %this.033 = phi ptr [ %tmp1.034, %if.end12.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %this.033 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp1.034 = load ptr, ptr %this.033, align 4
  %dev = getelementptr inbounds %struct.slave, ptr %this.033, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %priority_Bps = getelementptr inbounds %struct.slave, ptr %this.033, i32 0, i32 5
  %7 = ptrtoint ptr %priority_Bps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority_Bps, align 4
  %bytes_queued = getelementptr inbounds %struct.slave, ptr %this.033, i32 0, i32 6
  %9 = ptrtoint ptr %bytes_queued to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_queued, align 4
  %sub = sub i32 %10, %8
  %11 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %12 = ptrtoint ptr %bytes_queued to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bytes_queued, align 4
  br label %if.end12

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @eql_kill_one_slave(ptr noundef %add.ptr, ptr noundef %this.033)
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then
  %cmp.i.not = icmp eq ptr %tmp1.034, %all_slaves
  br i1 %cmp.i.not, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %13, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %14 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eql_kill_one_slave(ptr nocapture noundef %queue, ptr noundef %slave) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %slave) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %slave, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %slave, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %slave, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_slaves = getelementptr inbounds %struct.slave_queue, ptr %queue, i32 0, i32 2
  %8 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_slaves, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %num_slaves, align 4
  %dev = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 8
  %and = and i32 %13, -2049
  store i32 %and, ptr %flags, align 8
  %14 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %list_del.exit.dev_put_track.exit_crit_edge, label %do.body1.i.i

list_del.exit.dev_put_track.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %list_del.exit
  %dev_tracker = getelementptr inbounds %struct.slave, ptr %slave, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 119
  %call.i.i6 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #8
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !46
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i = add i32 %27, -1
  store i32 %add13.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !48

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #8, !srcloc !49
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %list_del.exit.dev_put_track.exit_crit_edge
  tail call void @kfree(ptr noundef %slave) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eql_open(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #11
  %all_slaves = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %all_slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %all_slaves, align 4
  %cmp.i.not = icmp eq ptr %1, %all_slaves
  br i1 %cmp.i.not, label %do.end10, label %do.body5, !prof !50

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/eql.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 213, 0\0A.popsection", ""() #8, !srcloc !51
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %min_slaves = getelementptr i8, ptr %dev, i32 2364
  %2 = ptrtoint ptr %min_slaves to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %min_slaves, align 4
  %max_slaves = getelementptr i8, ptr %dev, i32 2368
  %3 = ptrtoint ptr %max_slaves to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %max_slaves, align 4
  %timer = getelementptr i8, ptr %dev, i32 2372
  tail call void @add_timer(ptr noundef %timer) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eql_close(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %timer = getelementptr i8, ptr %dev, i32 2372
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer) #8
  tail call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i) #8
  %all_slaves.i = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %all_slaves.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %all_slaves.i, align 4
  %cmp.i.not12.i = icmp eq ptr %1, %all_slaves.i
  br i1 %cmp.i.not12.i, label %entry.eql_kill_slave_queue.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.eql_kill_slave_queue.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_kill_slave_queue.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %this.013.i = phi ptr [ %tmp.0.i, %for.body.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %this.013.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0.i = load ptr, ptr %this.013.i, align 4
  tail call fastcc void @eql_kill_one_slave(ptr noundef %add.ptr.i, ptr noundef %this.013.i) #8
  %cmp.i.not.i = icmp eq ptr %tmp.0.i, %all_slaves.i
  br i1 %cmp.i.not.i, label %for.body.i.eql_kill_slave_queue.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.eql_kill_slave_queue.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_kill_slave_queue.exit

eql_kill_slave_queue.exit:                        ; preds = %for.body.i.eql_kill_slave_queue.exit_crit_edge, %entry.eql_kill_slave_queue.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eql_slave_xmit(ptr noundef %skb, ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @_raw_spin_lock(ptr noundef %add.ptr.i) #8
  %all_slaves.i = getelementptr i8, ptr %dev, i32 2348
  %0 = ptrtoint ptr %all_slaves.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %all_slaves.i, align 4
  %cmp.i.not21.i = icmp eq ptr %1, %all_slaves.i
  br i1 %cmp.i.not21.i, label %entry.if.else_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %best_load.024.i = phi i32 [ %best_load.1.i, %if.end7.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %this.023.i = phi ptr [ %tmp.025.i, %if.end7.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %best_slave.022.i = phi ptr [ %best_slave.1.i, %if.end7.i.for.body.i_crit_edge ], [ null, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %this.023.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.025.i = load ptr, ptr %this.023.i, align 4
  %dev.i = getelementptr inbounds %struct.slave, ptr %this.023.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %priority_Bps4.i = getelementptr inbounds %struct.slave, ptr %this.023.i, i32 0, i32 5
  %7 = ptrtoint ptr %priority_Bps4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %priority_Bps4.i, align 4
  %bytes_queued3.i = getelementptr inbounds %struct.slave, ptr %this.023.i, i32 0, i32 6
  %9 = ptrtoint ptr %bytes_queued3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_queued3.i, align 4
  %sub.i = sub i32 -2147483648, %8
  %mul.i = shl i32 %10, 3
  %add.i = add i32 %mul.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %best_load.024.i)
  %cmp5.i = icmp ult i32 %add.i, %best_load.024.i
  %spec.select.i = select i1 %cmp5.i, ptr %this.023.i, ptr %best_slave.022.i
  %11 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %best_load.024.i) #8
  br label %if.end7.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @eql_kill_one_slave(ptr noundef %add.ptr.i, ptr noundef %this.023.i) #8
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then.i
  %best_slave.1.i = phi ptr [ %best_slave.022.i, %if.else.i ], [ %spec.select.i, %if.then.i ]
  %best_load.1.i = phi i32 [ %best_load.024.i, %if.else.i ], [ %11, %if.then.i ]
  %cmp.i.not.i = icmp eq ptr %tmp.025.i, %all_slaves.i
  br i1 %cmp.i.not.i, label %__eql_schedule_slaves.exit, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

__eql_schedule_slaves.exit:                       ; preds = %if.end7.i
  %tobool.not = icmp eq ptr %best_slave.1.i, null
  br i1 %tobool.not, label %__eql_schedule_slaves.exit.if.else_crit_edge, label %if.then

__eql_schedule_slaves.exit.if.else_crit_edge:     ; preds = %__eql_schedule_slaves.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %__eql_schedule_slaves.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev3 = getelementptr inbounds %struct.slave, ptr %best_slave.1.i, i32 0, i32 1
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  %14 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %14, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %priority, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %bytes_queued = getelementptr inbounds %struct.slave, ptr %best_slave.1.i, i32 0, i32 6
  %19 = ptrtoint ptr %bytes_queued to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bytes_queued, align 4
  %add = add i32 %20, %18
  store i32 %add, ptr %bytes_queued, align 4
  %call4 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #8
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %21 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %tx_packets, align 4
  br label %if.end

if.else:                                          ; preds = %__eql_schedule_slaves.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc6 = add i32 %24, 1
  store i32 %inc6, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eql_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %ifr, ptr noundef %data, i32 noundef %cmd) #4 align 64 {
entry:
  %mc.i137 = alloca %struct.master_config, align 4
  %mc.i = alloca %struct.master_config, align 4
  %sc.i85 = alloca %struct.slave_config, align 4
  %sc.i = alloca %struct.slave_config, align 4
  %srq.i29 = alloca %struct.slaving_request, align 4
  %srq.i = alloca %struct.slaving_request, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %land.lhs.true2 [
    i32 35314, label %entry.sw.bb9_crit_edge
    i32 35316, label %sw.bb13
  ]

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

land.lhs.true2:                                   ; preds = %entry
  %call = tail call zeroext i1 @capable(i32 noundef 12) #8
  br i1 %call, label %if.end, label %land.lhs.true2.return_crit_edge

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %land.lhs.true2
  %1 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cmd, label %if.end.return_crit_edge [
    i32 35312, label %sw.bb
    i32 35313, label %sw.bb7
    i32 35314, label %if.end.sw.bb9_crit_edge
    i32 35315, label %sw.bb11
    i32 35317, label %sw.bb15
  ]

if.end.sw.bb9_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %srq.i) #8
  %2 = getelementptr inbounds %struct.slaving_request, ptr %srq.i, i32 0, i32 1
  %3 = call ptr @memset(ptr %srq.i, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i, label %sw.bb.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb.if.then11.i.i.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 20, i32 -1226833920) #12, !srcloc !52
  %asmresult.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !50

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %srq.i, i32 noundef 20) #8
  %5 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !53
  %and.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %srq.i, ptr noundef %data, i32 noundef 20) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !50

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb.if.then11.i.i.i_crit_edge
  %res.0.i.i53.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 20, %sw.bb.if.then11.i.i.i_crit_edge ], [ 20, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 20, %res.0.i.i53.i
  %add.ptr.i.i.i = getelementptr i8, ptr %srq.i, i32 %sub.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i53.i)
  br label %eql_enslave.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %call1.i = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %srq.i) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.eql_enslave.exit_crit_edge, label %if.end4.i

if.end.i.eql_enslave.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_enslave.exit

if.end4.i:                                        ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %if.end4.i.eql_enslave.exit_crit_edge, label %if.then5.i

if.end4.i.eql_enslave.exit_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_enslave.exit

if.then5.i:                                       ; preds = %if.end4.i
  %flags6.i = getelementptr inbounds %struct.net_device, ptr %call1.i, i32 0, i32 14
  %11 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags6.i, align 8
  %13 = and i32 %12, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.then12.i, label %if.then5.i.eql_enslave.exit_crit_edge

if.then5.i.eql_enslave.exit_crit_edge:            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_enslave.exit

if.then12.i:                                      ; preds = %if.then5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 32) #13
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %tobool15.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not.i, label %if.then12.i.eql_enslave.exit_crit_edge, label %if.end17.i

if.then12.i.eql_enslave.exit_crit_edge:           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_enslave.exit

if.end17.i:                                       ; preds = %if.then12.i
  %16 = call ptr @memset(ptr %call7.i.i, i32 0, i32 32)
  %dev.i = getelementptr inbounds %struct.slave, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call1.i, ptr %dev.i, align 8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %2, align 4
  %priority18.i = getelementptr inbounds %struct.slave, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %priority18.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %priority18.i, align 8
  %priority_bps.i = getelementptr inbounds %struct.slave, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %priority_bps.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %priority_bps.i, align 4
  %div.i = sdiv i32 %19, 8
  %priority_Bps.i = getelementptr inbounds %struct.slave, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %priority_Bps.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.i, ptr %priority_Bps.i, align 8
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i.i) #8
  %master_dev.i.i.i = getelementptr i8, ptr %dev, i32 2360
  %23 = ptrtoint ptr %master_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master_dev.i.i.i, align 4
  %num_slaves.i.i.i = getelementptr i8, ptr %dev, i32 2356
  %25 = ptrtoint ptr %num_slaves.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_slaves.i.i.i, align 4
  %max_slaves.i.i.i = getelementptr i8, ptr %24, i32 2368
  %27 = ptrtoint ptr %max_slaves.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_slaves.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp.not.i.not.i.i = icmp slt i32 %26, %28
  br i1 %cmp.not.i.not.i.i, label %if.then.i.i, label %if.then24.i

if.then.i.i:                                      ; preds = %if.end17.i
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 8
  %all_slaves.i.i.i = getelementptr i8, ptr %dev, i32 2348
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i.for.cond.i.i.i_crit_edge, %if.then.i.i
  %this.0.in.i.i.i = phi ptr [ %all_slaves.i.i.i, %if.then.i.i ], [ %this.0.i.i.i, %for.body.i.i.i.for.cond.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %this.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %this.0.i.i.i = load ptr, ptr %this.0.in.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %this.0.i.i.i, %all_slaves.i.i.i
  br i1 %cmp.i.not.i.i.i, label %for.cond.i.i.i.if.end.i.i_crit_edge, label %for.body.i.i.i

for.cond.i.i.i.if.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %dev1.i.i.i = getelementptr inbounds %struct.slave, ptr %this.0.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %dev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1.i.i.i, align 4
  %cmp.i.i48.i = icmp eq ptr %33, %30
  br i1 %cmp.i.i48.i, label %__eql_find_slave_dev.exit.i.i, label %for.body.i.i.i.for.cond.i.i.i_crit_edge

for.body.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i

__eql_find_slave_dev.exit.i.i:                    ; preds = %for.body.i.i.i
  %tobool2.not.i.i = icmp eq ptr %this.0.i.i.i, null
  br i1 %tobool2.not.i.i, label %__eql_find_slave_dev.exit.i.i.if.end.i.i_crit_edge, label %if.then3.i.i

__eql_find_slave_dev.exit.i.i.if.end.i.i_crit_edge: ; preds = %__eql_find_slave_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then3.i.i:                                     ; preds = %__eql_find_slave_dev.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @eql_kill_one_slave(ptr noundef %add.ptr.i.i, ptr noundef nonnull %this.0.i.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then3.i.i, %__eql_find_slave_dev.exit.i.i.if.end.i.i_crit_edge, %for.cond.i.i.i.if.end.i.i_crit_edge
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 8
  %dev_tracker.i.i = getelementptr inbounds %struct.slave, ptr %call7.i.i, i32 0, i32 2
  %tobool.not.i.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.dev_hold_track.exit.i.i_crit_edge, label %do.body1.i.i.i.i

if.end.i.i.dev_hold_track.exit.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold_track.exit.i.i

do.body1.i.i.i.i:                                 ; preds = %if.end.i.i
  %36 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !46
  %pcpu_refcnt.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 118
  %37 = ptrtoint ptr %pcpu_refcnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcpu_refcnt.i.i.i.i, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i49.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i49.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %45, %39
  %46 = inttoptr i32 %add.i.i.i.i to ptr
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %add13.i.i.i.i = add i32 %48, 1
  store i32 %add13.i.i.i.i, ptr %46, align 4
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !47
  %and.i.i.i.i.i.i = and i32 %49, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool24.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i.i, label %if.then28.i.i.i.i, label %do.body1.i.i.i.i.dev_hold.exit.i.i.i_crit_edge, !prof !48

do.body1.i.i.i.i.dev_hold.exit.i.i.i_crit_edge:   ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit.i.i.i

if.then28.i.i.i.i:                                ; preds = %do.body1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @warn_bogus_irq_restore() #8
  br label %dev_hold.exit.i.i.i

dev_hold.exit.i.i.i:                              ; preds = %if.then28.i.i.i.i, %do.body1.i.i.i.i.dev_hold.exit.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #8, !srcloc !49
  %refcnt_tracker.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 119
  %call.i.i.i50.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i.i, ptr noundef %dev_tracker.i.i, i32 noundef 2592) #8
  br label %dev_hold_track.exit.i.i

dev_hold_track.exit.i.i:                          ; preds = %dev_hold.exit.i.i.i, %if.end.i.i.dev_hold_track.exit.i.i_crit_edge
  %50 = ptrtoint ptr %all_slaves.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %all_slaves.i.i.i, align 4
  %call.i.i16.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %all_slaves.i.i.i, ptr noundef %51) #8
  br i1 %call.i.i16.i.i, label %if.end.i.i.i.i, label %dev_hold_track.exit.i.i.__eql_insert_slave.exit.thread.i_crit_edge

dev_hold_track.exit.i.i.__eql_insert_slave.exit.thread.i_crit_edge: ; preds = %dev_hold_track.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__eql_insert_slave.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %dev_hold_track.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %prev1.i.i.i.i, align 4
  %53 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %51, ptr %call7.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %all_slaves.i.i.i, ptr %prev3.i.i.i.i, align 4
  %55 = ptrtoint ptr %all_slaves.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call7.i.i, ptr %all_slaves.i.i.i, align 4
  br label %__eql_insert_slave.exit.thread.i

__eql_insert_slave.exit.thread.i:                 ; preds = %if.end.i.i.i.i, %dev_hold_track.exit.i.i.__eql_insert_slave.exit.thread.i_crit_edge
  %56 = ptrtoint ptr %num_slaves.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_slaves.i.i.i, align 4
  %inc.i.i = add i32 %57, 1
  store i32 %inc.i.i, ptr %num_slaves.i.i.i, align 4
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i, align 8
  %or.i.i = or i32 %61, 2048
  store i32 %or.i.i, ptr %flags.i.i, align 8
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %__eql_insert_slave.exit.thread.i
  %retval.0.i58.i = phi i32 [ 0, %__eql_insert_slave.exit.thread.i ], [ -28, %if.then24.i ]
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i.i) #8
  br label %eql_enslave.exit

eql_enslave.exit:                                 ; preds = %if.end25.i, %if.then12.i.eql_enslave.exit_crit_edge, %if.then5.i.eql_enslave.exit_crit_edge, %if.end4.i.eql_enslave.exit_crit_edge, %if.end.i.eql_enslave.exit_crit_edge, %if.then11.i.i.i
  %retval.1.i = phi i32 [ -19, %if.end.i.eql_enslave.exit_crit_edge ], [ %retval.0.i58.i, %if.end25.i ], [ -12, %if.then12.i.eql_enslave.exit_crit_edge ], [ -22, %if.then5.i.eql_enslave.exit_crit_edge ], [ -22, %if.end4.i.eql_enslave.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %srq.i) #8
  br label %return

sw.bb7:                                           ; preds = %if.end
  %add.ptr.i.i30 = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %srq.i29) #8
  %62 = call ptr @memset(ptr %srq.i29, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i31 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i31, label %sw.bb7.if.then11.i.i.i45_crit_edge, label %land.lhs.true.i.i.i34

sw.bb7.if.then11.i.i.i45_crit_edge:               ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i45

land.lhs.true.i.i.i34:                            ; preds = %sw.bb7
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 20, i32 -1226833920) #12, !srcloc !52
  %asmresult.i.i.i32 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i32)
  %cmp.i6.i.i33 = icmp eq i32 %asmresult.i.i.i32, 0
  br i1 %cmp.i6.i.i33, label %if.end.i.i.i42, label %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge, !prof !50

land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge: ; preds = %land.lhs.true.i.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i45

if.end.i.i.i42:                                   ; preds = %land.lhs.true.i.i.i34
  %call.i.i.i.i35 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %srq.i29, i32 noundef 20) #8
  %64 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i.i36 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i.i36 to ptr
  %cpu_domain.i.i.i.i.i.i37 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i37) #5, !srcloc !53
  %and.i.i.i.i.i38 = and i32 %66, -13
  %or.i.i.i.i.i39 = or i32 %and.i.i.i.i.i38, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i39) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call1.i.i.i.i40 = call i32 @arm_copy_from_user(ptr noundef nonnull %srq.i29, ptr noundef %data, i32 noundef 20) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i40)
  %tobool4.not.i.i.i41 = icmp eq i32 %call1.i.i.i.i40, 0
  br i1 %tobool4.not.i.i.i41, label %if.end.i46, label %if.end.i.i.i42.if.then11.i.i.i45_crit_edge, !prof !50

if.end.i.i.i42.if.then11.i.i.i45_crit_edge:       ; preds = %if.end.i.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i45

if.then11.i.i.i45:                                ; preds = %if.end.i.i.i42.if.then11.i.i.i45_crit_edge, %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge, %sw.bb7.if.then11.i.i.i45_crit_edge
  %res.0.i.i27.i = phi i32 [ %call1.i.i.i.i40, %if.end.i.i.i42.if.then11.i.i.i45_crit_edge ], [ 20, %sw.bb7.if.then11.i.i.i45_crit_edge ], [ 20, %land.lhs.true.i.i.i34.if.then11.i.i.i45_crit_edge ]
  %sub.i.i.i43 = sub i32 20, %res.0.i.i27.i
  %add.ptr.i.i.i44 = getelementptr i8, ptr %srq.i29, i32 %sub.i.i.i43
  %67 = call ptr @memset(ptr %add.ptr.i.i.i44, i32 0, i32 %res.0.i.i27.i)
  br label %eql_emancipate.exit

if.end.i46:                                       ; preds = %if.end.i.i.i42
  %call2.i = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %srq.i29) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i46.eql_emancipate.exit_crit_edge, label %if.end5.i

if.end.i46.eql_emancipate.exit_crit_edge:         ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_emancipate.exit

if.end5.i:                                        ; preds = %if.end.i46
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i.i30) #8
  %flags.i47 = getelementptr inbounds %struct.net_device, ptr %call2.i, i32 0, i32 14
  %68 = ptrtoint ptr %flags.i47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i47, align 8
  %and.i48 = and i32 %69, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %cmp.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %cmp.not.i49, label %if.end5.i.if.end13.i_crit_edge, label %if.then6.i

if.end5.i.if.end13.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then6.i:                                       ; preds = %if.end5.i
  %all_slaves.i.i = getelementptr i8, ptr %dev, i32 2348
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then6.i
  %this.0.in.i.i = phi ptr [ %all_slaves.i.i, %if.then6.i ], [ %this.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %70 = ptrtoint ptr %this.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %this.0.i.i = load ptr, ptr %this.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %this.0.i.i, %all_slaves.i.i
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.if.end13.i_crit_edge, label %for.body.i.i

for.cond.i.i.if.end13.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.slave, ptr %this.0.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i.i, align 4
  %cmp.i.i = icmp eq ptr %72, %call2.i
  br i1 %cmp.i.i, label %__eql_find_slave_dev.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

__eql_find_slave_dev.exit.i:                      ; preds = %for.body.i.i
  %tobool9.not.i = icmp eq ptr %this.0.i.i, null
  br i1 %tobool9.not.i, label %__eql_find_slave_dev.exit.i.if.end13.i_crit_edge, label %if.then10.i

__eql_find_slave_dev.exit.i.if.end13.i_crit_edge: ; preds = %__eql_find_slave_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then10.i:                                      ; preds = %__eql_find_slave_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @eql_kill_one_slave(ptr noundef %add.ptr.i.i30, ptr noundef nonnull %this.0.i.i) #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %__eql_find_slave_dev.exit.i.if.end13.i_crit_edge, %for.cond.i.i.if.end13.i_crit_edge, %if.end5.i.if.end13.i_crit_edge
  %ret.1.i = phi i32 [ -22, %if.end5.i.if.end13.i_crit_edge ], [ 0, %if.then10.i ], [ -22, %__eql_find_slave_dev.exit.i.if.end13.i_crit_edge ], [ -22, %for.cond.i.i.if.end13.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i.i30) #8
  br label %eql_emancipate.exit

eql_emancipate.exit:                              ; preds = %if.end13.i, %if.end.i46.eql_emancipate.exit_crit_edge, %if.then11.i.i.i45
  %retval.0.i = phi i32 [ %ret.1.i, %if.end13.i ], [ -19, %if.end.i46.eql_emancipate.exit_crit_edge ], [ -14, %if.then11.i.i.i45 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %srq.i29) #8
  br label %return

sw.bb9:                                           ; preds = %if.end.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge
  %add.ptr.i.i50 = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sc.i) #8
  %73 = getelementptr inbounds %struct.slave_config, ptr %sc.i, i32 0, i32 1
  %74 = call ptr @memset(ptr %sc.i, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i51 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i51, label %sw.bb9.if.then11.i.i.i65_crit_edge, label %land.lhs.true.i.i.i54

sw.bb9.if.then11.i.i.i65_crit_edge:               ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i65

land.lhs.true.i.i.i54:                            ; preds = %sw.bb9
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 20, i32 -1226833920) #12
  %asmresult.i.i.i52 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i52)
  %cmp.i6.i.i53 = icmp eq i32 %asmresult.i.i.i52, 0
  br i1 %cmp.i6.i.i53, label %if.end.i.i.i62, label %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge, !prof !50

land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge: ; preds = %land.lhs.true.i.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i65

if.end.i.i.i62:                                   ; preds = %land.lhs.true.i.i.i54
  %call.i.i.i.i55 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sc.i, i32 noundef 20) #8
  %76 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i.i56 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i.i56 to ptr
  %cpu_domain.i.i.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i57) #5, !srcloc !53
  %and.i.i.i.i.i58 = and i32 %78, -13
  %or.i.i.i.i.i59 = or i32 %and.i.i.i.i.i58, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i59) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call1.i.i.i.i60 = call i32 @arm_copy_from_user(ptr noundef nonnull %sc.i, ptr noundef %data, i32 noundef 20) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i60)
  %tobool4.not.i.i.i61 = icmp eq i32 %call1.i.i.i.i60, 0
  br i1 %tobool4.not.i.i.i61, label %if.end.i68, label %if.end.i.i.i62.if.then11.i.i.i65_crit_edge, !prof !50

if.end.i.i.i62.if.then11.i.i.i65_crit_edge:       ; preds = %if.end.i.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i65

if.then11.i.i.i65:                                ; preds = %if.end.i.i.i62.if.then11.i.i.i65_crit_edge, %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge, %sw.bb9.if.then11.i.i.i65_crit_edge
  %res.0.i.i44.i = phi i32 [ %call1.i.i.i.i60, %if.end.i.i.i62.if.then11.i.i.i65_crit_edge ], [ 20, %sw.bb9.if.then11.i.i.i65_crit_edge ], [ 20, %land.lhs.true.i.i.i54.if.then11.i.i.i65_crit_edge ]
  %sub.i.i.i63 = sub i32 20, %res.0.i.i44.i
  %add.ptr.i.i.i64 = getelementptr i8, ptr %sc.i, i32 %sub.i.i.i63
  %79 = call ptr @memset(ptr %add.ptr.i.i.i64, i32 0, i32 %res.0.i.i44.i)
  br label %eql_g_slave_cfg.exit

if.end.i68:                                       ; preds = %if.end.i.i.i62
  %call2.i66 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %sc.i) #8
  %tobool3.not.i67 = icmp eq ptr %call2.i66, null
  br i1 %tobool3.not.i67, label %if.end.i68.eql_g_slave_cfg.exit_crit_edge, label %if.end5.i72

if.end.i68.eql_g_slave_cfg.exit_crit_edge:        ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_g_slave_cfg.exit

if.end5.i72:                                      ; preds = %if.end.i68
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i.i50) #8
  %flags.i69 = getelementptr inbounds %struct.net_device, ptr %call2.i66, i32 0, i32 14
  %80 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags.i69, align 8
  %and.i70 = and i32 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70)
  %cmp.not.i71 = icmp eq i32 %and.i70, 0
  br i1 %cmp.not.i71, label %if.end5.i72.if.end13.thread.i_crit_edge, label %if.then6.i74

if.end5.i72.if.end13.thread.i_crit_edge:          ; preds = %if.end5.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread.i

if.then6.i74:                                     ; preds = %if.end5.i72
  %all_slaves.i.i73 = getelementptr i8, ptr %dev, i32 2348
  br label %for.cond.i.i78

for.cond.i.i78:                                   ; preds = %for.body.i.i81.for.cond.i.i78_crit_edge, %if.then6.i74
  %this.0.in.i.i75 = phi ptr [ %all_slaves.i.i73, %if.then6.i74 ], [ %this.0.i.i76, %for.body.i.i81.for.cond.i.i78_crit_edge ]
  %82 = ptrtoint ptr %this.0.in.i.i75 to i32
  call void @__asan_load4_noabort(i32 %82)
  %this.0.i.i76 = load ptr, ptr %this.0.in.i.i75, align 4
  %cmp.i.not.i.i77 = icmp eq ptr %this.0.i.i76, %all_slaves.i.i73
  br i1 %cmp.i.not.i.i77, label %for.cond.i.i78.if.end13.thread.i_crit_edge, label %for.body.i.i81

for.cond.i.i78.if.end13.thread.i_crit_edge:       ; preds = %for.cond.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread.i

for.body.i.i81:                                   ; preds = %for.cond.i.i78
  %dev1.i.i79 = getelementptr inbounds %struct.slave, ptr %this.0.i.i76, i32 0, i32 1
  %83 = ptrtoint ptr %dev1.i.i79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev1.i.i79, align 4
  %cmp.i.i80 = icmp eq ptr %84, %call2.i66
  br i1 %cmp.i.i80, label %__eql_find_slave_dev.exit.i83, label %for.body.i.i81.for.cond.i.i78_crit_edge

for.body.i.i81.for.cond.i.i78_crit_edge:          ; preds = %for.body.i.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i78

__eql_find_slave_dev.exit.i83:                    ; preds = %for.body.i.i81
  %tobool9.not.i82 = icmp eq ptr %this.0.i.i76, null
  br i1 %tobool9.not.i82, label %__eql_find_slave_dev.exit.i83.if.end13.thread.i_crit_edge, label %land.lhs.true.i

__eql_find_slave_dev.exit.i83.if.end13.thread.i_crit_edge: ; preds = %__eql_find_slave_dev.exit.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.thread.i

if.end13.thread.i:                                ; preds = %__eql_find_slave_dev.exit.i83.if.end13.thread.i_crit_edge, %for.cond.i.i78.if.end13.thread.i_crit_edge, %if.end5.i72.if.end13.thread.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i.i50) #8
  br label %eql_g_slave_cfg.exit

land.lhs.true.i:                                  ; preds = %__eql_find_slave_dev.exit.i83
  %priority.i = getelementptr inbounds %struct.slave, ptr %this.0.i.i76, i32 0, i32 3
  %85 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %priority.i, align 4
  %87 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %73, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i.i50) #8
  call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #8
  %call.i.i36.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i36.i, label %land.lhs.true.i.eql_g_slave_cfg.exit_crit_edge, label %copy_to_user.exit.i

land.lhs.true.i.eql_g_slave_cfg.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_g_slave_cfg.exit

copy_to_user.exit.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i40.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sc.i, i32 noundef 20) #8
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %sc.i, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool18.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool18.not.i, i32 0, i32 -14
  br label %eql_g_slave_cfg.exit

eql_g_slave_cfg.exit:                             ; preds = %copy_to_user.exit.i, %land.lhs.true.i.eql_g_slave_cfg.exit_crit_edge, %if.end13.thread.i, %if.end.i68.eql_g_slave_cfg.exit_crit_edge, %if.then11.i.i.i65
  %retval.0.i84 = phi i32 [ -19, %if.end.i68.eql_g_slave_cfg.exit_crit_edge ], [ -22, %if.end13.thread.i ], [ -14, %if.then11.i.i.i65 ], [ -14, %land.lhs.true.i.eql_g_slave_cfg.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sc.i) #8
  br label %return

sw.bb11:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sc.i85) #8
  %88 = getelementptr inbounds %struct.slave_config, ptr %sc.i85, i32 0, i32 1
  %89 = call ptr @memset(ptr %sc.i85, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i86 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i86, label %sw.bb11.if.then11.i.i.i100_crit_edge, label %land.lhs.true.i.i.i89

sw.bb11.if.then11.i.i.i100_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i100

land.lhs.true.i.i.i89:                            ; preds = %sw.bb11
  %90 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 20, i32 -1226833920) #12, !srcloc !52
  %asmresult.i.i.i87 = extractvalue { i32, i32 } %90, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i87)
  %cmp.i6.i.i88 = icmp eq i32 %asmresult.i.i.i87, 0
  br i1 %cmp.i6.i.i88, label %if.end.i.i.i97, label %land.lhs.true.i.i.i89.if.then11.i.i.i100_crit_edge, !prof !50

land.lhs.true.i.i.i89.if.then11.i.i.i100_crit_edge: ; preds = %land.lhs.true.i.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i100

if.end.i.i.i97:                                   ; preds = %land.lhs.true.i.i.i89
  %call.i.i.i.i90 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sc.i85, i32 noundef 20) #8
  %91 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i.i91 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i.i.i91 to ptr
  %cpu_domain.i.i.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 4
  %93 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i92) #5, !srcloc !53
  %and.i.i.i.i.i93 = and i32 %93, -13
  %or.i.i.i.i.i94 = or i32 %and.i.i.i.i.i93, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i94) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call1.i.i.i.i95 = call i32 @arm_copy_from_user(ptr noundef nonnull %sc.i85, ptr noundef %data, i32 noundef 20) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %93) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i95)
  %tobool4.not.i.i.i96 = icmp eq i32 %call1.i.i.i.i95, 0
  br i1 %tobool4.not.i.i.i96, label %if.end.i103, label %if.end.i.i.i97.if.then11.i.i.i100_crit_edge, !prof !50

if.end.i.i.i97.if.then11.i.i.i100_crit_edge:      ; preds = %if.end.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i100

if.then11.i.i.i100:                               ; preds = %if.end.i.i.i97.if.then11.i.i.i100_crit_edge, %land.lhs.true.i.i.i89.if.then11.i.i.i100_crit_edge, %sw.bb11.if.then11.i.i.i100_crit_edge
  %res.0.i.i31.i = phi i32 [ %call1.i.i.i.i95, %if.end.i.i.i97.if.then11.i.i.i100_crit_edge ], [ 20, %sw.bb11.if.then11.i.i.i100_crit_edge ], [ 20, %land.lhs.true.i.i.i89.if.then11.i.i.i100_crit_edge ]
  %sub.i.i.i98 = sub i32 20, %res.0.i.i31.i
  %add.ptr.i.i.i99 = getelementptr i8, ptr %sc.i85, i32 %sub.i.i.i98
  %94 = call ptr @memset(ptr %add.ptr.i.i.i99, i32 0, i32 %res.0.i.i31.i)
  br label %eql_s_slave_cfg.exit

if.end.i103:                                      ; preds = %if.end.i.i.i97
  %call1.i101 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %sc.i85) #8
  %tobool2.not.i102 = icmp eq ptr %call1.i101, null
  br i1 %tobool2.not.i102, label %if.end.i103.eql_s_slave_cfg.exit_crit_edge, label %if.end4.i108

if.end.i103.eql_s_slave_cfg.exit_crit_edge:       ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_s_slave_cfg.exit

if.end4.i108:                                     ; preds = %if.end.i103
  %add.ptr.i.i104 = getelementptr i8, ptr %dev, i32 2304
  call void @_raw_spin_lock_bh(ptr noundef %add.ptr.i.i104) #8
  %flags.i105 = getelementptr inbounds %struct.net_device, ptr %call1.i101, i32 0, i32 14
  %95 = ptrtoint ptr %flags.i105 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %flags.i105, align 8
  %and.i106 = and i32 %96, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106)
  %cmp.not.i107 = icmp eq i32 %and.i106, 0
  br i1 %cmp.not.i107, label %if.end4.i108.if.end15.i_crit_edge, label %if.then6.i110

if.end4.i108.if.end15.i_crit_edge:                ; preds = %if.end4.i108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then6.i110:                                    ; preds = %if.end4.i108
  %all_slaves.i.i109 = getelementptr i8, ptr %dev, i32 2348
  br label %for.cond.i.i114

for.cond.i.i114:                                  ; preds = %for.body.i.i117.for.cond.i.i114_crit_edge, %if.then6.i110
  %this.0.in.i.i111 = phi ptr [ %all_slaves.i.i109, %if.then6.i110 ], [ %this.0.i.i112, %for.body.i.i117.for.cond.i.i114_crit_edge ]
  %97 = ptrtoint ptr %this.0.in.i.i111 to i32
  call void @__asan_load4_noabort(i32 %97)
  %this.0.i.i112 = load ptr, ptr %this.0.in.i.i111, align 4
  %cmp.i.not.i.i113 = icmp eq ptr %this.0.i.i112, %all_slaves.i.i109
  br i1 %cmp.i.not.i.i113, label %for.cond.i.i114.if.end15.i_crit_edge, label %for.body.i.i117

for.cond.i.i114.if.end15.i_crit_edge:             ; preds = %for.cond.i.i114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

for.body.i.i117:                                  ; preds = %for.cond.i.i114
  %dev1.i.i115 = getelementptr inbounds %struct.slave, ptr %this.0.i.i112, i32 0, i32 1
  %98 = ptrtoint ptr %dev1.i.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev1.i.i115, align 4
  %cmp.i.i116 = icmp eq ptr %99, %call1.i101
  br i1 %cmp.i.i116, label %__eql_find_slave_dev.exit.i119, label %for.body.i.i117.for.cond.i.i114_crit_edge

for.body.i.i117.for.cond.i.i114_crit_edge:        ; preds = %for.body.i.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i114

__eql_find_slave_dev.exit.i119:                   ; preds = %for.body.i.i117
  %tobool9.not.i118 = icmp eq ptr %this.0.i.i112, null
  br i1 %tobool9.not.i118, label %__eql_find_slave_dev.exit.i119.if.end15.i_crit_edge, label %if.then10.i123

__eql_find_slave_dev.exit.i119.if.end15.i_crit_edge: ; preds = %__eql_find_slave_dev.exit.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then10.i123:                                   ; preds = %__eql_find_slave_dev.exit.i119
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %88, align 4
  %priority11.i = getelementptr inbounds %struct.slave, ptr %this.0.i.i112, i32 0, i32 3
  %102 = ptrtoint ptr %priority11.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %priority11.i, align 4
  %103 = load i32, ptr %88, align 4
  %priority_bps.i120 = getelementptr inbounds %struct.slave, ptr %this.0.i.i112, i32 0, i32 4
  %104 = ptrtoint ptr %priority_bps.i120 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %priority_bps.i120, align 4
  %div.i121 = sdiv i32 %103, 8
  %priority_Bps.i122 = getelementptr inbounds %struct.slave, ptr %this.0.i.i112, i32 0, i32 5
  %105 = ptrtoint ptr %priority_Bps.i122 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %div.i121, ptr %priority_Bps.i122, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then10.i123, %__eql_find_slave_dev.exit.i119.if.end15.i_crit_edge, %for.cond.i.i114.if.end15.i_crit_edge, %if.end4.i108.if.end15.i_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then10.i123 ], [ -22, %__eql_find_slave_dev.exit.i119.if.end15.i_crit_edge ], [ -22, %if.end4.i108.if.end15.i_crit_edge ], [ -22, %for.cond.i.i114.if.end15.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %add.ptr.i.i104) #8
  br label %eql_s_slave_cfg.exit

eql_s_slave_cfg.exit:                             ; preds = %if.end15.i, %if.end.i103.eql_s_slave_cfg.exit_crit_edge, %if.then11.i.i.i100
  %retval.0.i124 = phi i32 [ %ret.0.i, %if.end15.i ], [ -19, %if.end.i103.eql_s_slave_cfg.exit_crit_edge ], [ -14, %if.then11.i.i.i100 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sc.i85) #8
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mc.i) #8
  %106 = call ptr @memset(ptr %mc.i, i32 0, i32 16)
  %flags.i125 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %107 = ptrtoint ptr %flags.i125 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i125, align 8
  %and.i126 = and i32 %108, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %cmp.not.i127 = icmp eq i32 %and.i126, 0
  br i1 %cmp.not.i127, label %sw.bb13.eql_g_master_cfg.exit_crit_edge, label %if.then.i

sw.bb13.eql_g_master_cfg.exit_crit_edge:          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_g_master_cfg.exit

if.then.i:                                        ; preds = %sw.bb13
  %109 = getelementptr inbounds %struct.master_config, ptr %mc.i, i32 0, i32 2
  %110 = getelementptr inbounds %struct.master_config, ptr %mc.i, i32 0, i32 1
  %max_slaves.i = getelementptr i8, ptr %dev, i32 2368
  %111 = ptrtoint ptr %max_slaves.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %max_slaves.i, align 4
  %113 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %110, align 4
  %min_slaves.i = getelementptr i8, ptr %dev, i32 2364
  %114 = ptrtoint ptr %min_slaves.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %min_slaves.i, align 4
  %116 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %109, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 174) #8
  %call.i.i.i128 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i128, label %if.then.i.eql_g_master_cfg.exit_crit_edge, label %if.end.i.i.i131

if.then.i.eql_g_master_cfg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_g_master_cfg.exit

if.end.i.i.i131:                                  ; preds = %if.then.i
  %117 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 24, i32 -1226833920) #12, !srcloc !56
  %asmresult.i.i.i129 = extractvalue { i32, i32 } %117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i129)
  %cmp.i6.i.i130 = icmp eq i32 %asmresult.i.i.i129, 0
  br i1 %cmp.i6.i.i130, label %copy_to_user.exit.i135, label %if.end.i.i.i131.eql_g_master_cfg.exit_crit_edge

if.end.i.i.i131.eql_g_master_cfg.exit_crit_edge:  ; preds = %if.end.i.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_g_master_cfg.exit

copy_to_user.exit.i135:                           ; preds = %if.end.i.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i132 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %mc.i, i32 noundef 24) #8
  %call.i12.i.i.i133 = call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %mc.i, i32 noundef 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i133)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i133, 0
  %spec.select.i134 = select i1 %tobool.not.i, i32 0, i32 -14
  br label %eql_g_master_cfg.exit

eql_g_master_cfg.exit:                            ; preds = %copy_to_user.exit.i135, %if.end.i.i.i131.eql_g_master_cfg.exit_crit_edge, %if.then.i.eql_g_master_cfg.exit_crit_edge, %sw.bb13.eql_g_master_cfg.exit_crit_edge
  %retval.0.i136 = phi i32 [ -22, %sw.bb13.eql_g_master_cfg.exit_crit_edge ], [ -14, %if.then.i.eql_g_master_cfg.exit_crit_edge ], [ -14, %if.end.i.i.i131.eql_g_master_cfg.exit_crit_edge ], [ %spec.select.i134, %copy_to_user.exit.i135 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mc.i) #8
  br label %return

sw.bb15:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mc.i137) #8
  %118 = getelementptr inbounds %struct.master_config, ptr %mc.i137, i32 0, i32 1
  %119 = getelementptr inbounds %struct.master_config, ptr %mc.i137, i32 0, i32 2
  %120 = call ptr @memset(ptr %mc.i137, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.10, i32 noundef 156) #8
  %call.i.i.i138 = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i.i138, label %sw.bb15.if.then11.i.i.i152_crit_edge, label %land.lhs.true.i.i.i141

sw.bb15.if.then11.i.i.i152_crit_edge:             ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i152

land.lhs.true.i.i.i141:                           ; preds = %sw.bb15
  %121 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 24, i32 -1226833920) #12, !srcloc !52
  %asmresult.i.i.i139 = extractvalue { i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i139)
  %cmp.i6.i.i140 = icmp eq i32 %asmresult.i.i.i139, 0
  br i1 %cmp.i6.i.i140, label %if.end.i.i.i149, label %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, !prof !50

land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i152

if.end.i.i.i149:                                  ; preds = %land.lhs.true.i.i.i141
  %call.i.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %mc.i137, i32 noundef 24) #8
  %122 = call i32 @llvm.read_register.i32(metadata !36) #8
  %and.i.i.i.i.i.i.i143 = and i32 %122, -16384
  %123 = inttoptr i32 %and.i.i.i.i.i.i.i143 to ptr
  %cpu_domain.i.i.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %123, i32 0, i32 4
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i144) #5, !srcloc !53
  %and.i.i.i.i.i145 = and i32 %124, -13
  %or.i.i.i.i.i146 = or i32 %and.i.i.i.i.i145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i146) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %call1.i.i.i.i147 = call i32 @arm_copy_from_user(ptr noundef nonnull %mc.i137, ptr noundef %data, i32 noundef 24) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #8, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i147)
  %tobool4.not.i.i.i148 = icmp eq i32 %call1.i.i.i.i147, 0
  br i1 %tobool4.not.i.i.i148, label %if.end.i156, label %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, !prof !50

if.end.i.i.i149.if.then11.i.i.i152_crit_edge:     ; preds = %if.end.i.i.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i.i152

if.then11.i.i.i152:                               ; preds = %if.end.i.i.i149.if.then11.i.i.i152_crit_edge, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge, %sw.bb15.if.then11.i.i.i152_crit_edge
  %res.0.i.i11.i = phi i32 [ %call1.i.i.i.i147, %if.end.i.i.i149.if.then11.i.i.i152_crit_edge ], [ 24, %sw.bb15.if.then11.i.i.i152_crit_edge ], [ 24, %land.lhs.true.i.i.i141.if.then11.i.i.i152_crit_edge ]
  %sub.i.i.i150 = sub i32 24, %res.0.i.i11.i
  %add.ptr.i.i.i151 = getelementptr i8, ptr %mc.i137, i32 %sub.i.i.i150
  %125 = call ptr @memset(ptr %add.ptr.i.i.i151, i32 0, i32 %res.0.i.i11.i)
  br label %eql_s_master_cfg.exit

if.end.i156:                                      ; preds = %if.end.i.i.i149
  %flags.i153 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %126 = ptrtoint ptr %flags.i153 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags.i153, align 8
  %and.i154 = and i32 %127, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %cmp.not.i155 = icmp eq i32 %and.i154, 0
  br i1 %cmp.not.i155, label %if.end.i156.eql_s_master_cfg.exit_crit_edge, label %if.then1.i

if.end.i156.eql_s_master_cfg.exit_crit_edge:      ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %eql_s_master_cfg.exit

if.then1.i:                                       ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %118, align 4
  %max_slaves3.i = getelementptr i8, ptr %dev, i32 2368
  %130 = ptrtoint ptr %max_slaves3.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %max_slaves3.i, align 4
  %131 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %119, align 4
  %min_slaves4.i = getelementptr i8, ptr %dev, i32 2364
  %133 = ptrtoint ptr %min_slaves4.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %min_slaves4.i, align 4
  br label %eql_s_master_cfg.exit

eql_s_master_cfg.exit:                            ; preds = %if.then1.i, %if.end.i156.eql_s_master_cfg.exit_crit_edge, %if.then11.i.i.i152
  %retval.0.i157 = phi i32 [ 0, %if.then1.i ], [ -22, %if.end.i156.eql_s_master_cfg.exit_crit_edge ], [ -14, %if.then11.i.i.i152 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mc.i137) #8
  br label %return

return:                                           ; preds = %eql_s_master_cfg.exit, %eql_g_master_cfg.exit, %eql_s_slave_cfg.exit, %eql_g_slave_cfg.exit, %eql_emancipate.exit, %eql_enslave.exit, %if.end.return_crit_edge, %land.lhs.true2.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i157, %eql_s_master_cfg.exit ], [ %retval.0.i136, %eql_g_master_cfg.exit ], [ %retval.0.i124, %eql_s_slave_cfg.exit ], [ %retval.0.i84, %eql_g_slave_cfg.exit ], [ %retval.0.i, %eql_emancipate.exit ], [ %retval.1.i, %eql_enslave.exit ], [ -1, %land.lhs.true2.return_crit_edge ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !22, !24, !25, !27, !29, !31, !32, !34}
!llvm.named.register.sp = !{!36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_eql__337_609_eql_init_module6, !1, !"__initcall__kmod_eql__337_609_eql_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/net/eql.c", i32 609, i32 1}
!2 = !{ptr @__exitcall_eql_cleanup_module, !3, !"__exitcall_eql_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/net/eql.c", i32 610, i32 1}
!4 = !{ptr @__UNIQUE_ID_file338, !5, !"__UNIQUE_ID_file338", i1 false, i1 false}
!5 = !{!"../drivers/net/eql.c", i32 611, i32 1}
!6 = !{ptr @__UNIQUE_ID_license339, !5, !"__UNIQUE_ID_license339", i1 false, i1 false}
!7 = !{ptr @dev_eql, !8, !"dev_eql", i1 false, i1 false}
!8 = !{!"../drivers/net/eql.c", i32 584, i32 27}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/eql.c", i32 590, i32 2}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @eql_init_module._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @eql_init_module._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/eql.c", i32 592, i32 12}
!17 = !{ptr @version, !18, !"version", i1 false, i1 false}
!18 = !{!"../drivers/net/eql.c", i32 169, i32 19}
!19 = !{ptr @eql_setup.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/net/eql.c", i32 183, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @eql_setup.__key.5, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/eql.c", i32 186, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @eql_netdev_ops, !26, !"eql_netdev_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/eql.c", i32 172, i32 36}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/eql.c", i32 211, i32 7}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!31 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!36 = !{!"sp"}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 638566, i64 638627}
!47 = !{i64 641298}
!48 = !{!"branch_weights", i32 1, i32 2000}
!49 = !{i64 641583}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2155951460, i64 2155951942, i64 2155951497, i64 2155951553, i64 2155951587, i64 2155951611, i64 2155951652, i64 2155951673, i64 2155951701, i64 2155951735}
!52 = !{i64 2152276487, i64 2152276512}
!53 = !{i64 4772042}
!54 = !{i64 4772239}
!55 = !{i64 2152257472}
!56 = !{i64 2152277168, i64 2152277193}
