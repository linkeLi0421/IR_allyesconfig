; ModuleID = '/llk/IR_all_yes/net/caif/caif_dev.c_pt.bc'
source_filename = "../net/caif/caif_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+get_cfcnfg\22, \22a\22\09"
module asm "\09.weak\09__crc_get_cfcnfg\09\09\09\09"
module asm "\09.long\09__crc_get_cfcnfg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_cfcnfg:\09\09\09\09\09"
module asm "\09.asciz \09\22get_cfcnfg\22\09\09\09\09\09"
module asm "__kstrtabns_get_cfcnfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+caif_enroll_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_caif_enroll_dev\09\09\09\09"
module asm "\09.long\09__crc_caif_enroll_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_caif_enroll_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22caif_enroll_dev\22\09\09\09\09\09"
module asm "__kstrtabns_caif_enroll_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.119, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.119 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.113, i32, %struct.spinlock }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.14, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.14 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.caif_net = type { ptr, %struct.caif_device_entry_list }
%struct.caif_device_entry_list = type { %struct.list_head, %struct.mutex }
%struct.caif_device_entry = type { %struct.cflayer, %struct.list_head, ptr, ptr, %struct.spinlock, ptr, ptr, i8 }
%struct.cflayer = type { ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, [16 x i8] }
%struct.caif_dev_common = type { ptr, i32, i32, i32, i32 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_file366 = internal constant [24 x i8] c"caif.file=net/caif/caif\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [17 x i8] c"caif.license=GPL\00", section ".modinfo", align 1
@caif_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_get_cfcnfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_cfcnfg = external dso_local constant [0 x i8], align 1
@__ksymtab_get_cfcnfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_cfcnfg to i32), ptr @__kstrtab_get_cfcnfg, ptr @__kstrtabns_get_cfcnfg }, section "___ksymtab+get_cfcnfg", align 4
@caif_enroll_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&caifd->flow_lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_caif_enroll_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_caif_enroll_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_caif_enroll_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @caif_enroll_dev to i32), ptr @__kstrtab_caif_enroll_dev, ptr @__kstrtabns_caif_enroll_dev }, section "___ksymtab+caif_enroll_dev", align 4
@caif_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @caif_device_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@caif_packet_type = internal global %struct.packet_type { i16 247, i8 0, ptr null, ptr null, ptr @receive, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@caif_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @caif_init_net, ptr null, ptr @caif_exit_net, ptr null, ptr @caif_net_id, i32 104 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_caif__373_584_caif_device_init6 = internal global ptr @caif_device_init, section ".initcall6.init", align 4
@__exitcall_caif_device_exit = internal global ptr @caif_device_exit, section ".exitcall.exit", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@transmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/caif/caif_dev.c\00", [44 x i8] zeroinitializer }, align 32
@transmit.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caif\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"transmit\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"queue has stopped(%d) or is full (%d > %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"caif:%s(): queue has stopped(%d) or is full (%d > %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@caif_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@caif_device_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014caif:%s(): Out of memory\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"caif_device_notify\00", [45 x i8] zeroinitializer }, align 32
@caif_device_notify._entry_ptr = internal global ptr @caif_device_notify._entry, section ".printk_index", align 4
@caif_device_notify._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.6, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016caif:%s(): Wait for device inuse\0A\00", [60 x i8] zeroinitializer }, align 32
@caif_device_notify._entry_ptr.18 = internal global ptr @caif_device_notify._entry.16, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@caif_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&caifn->caifdevs.lock\00", [42 x i8] zeroinitializer }, align 32
@caif_exit_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.20, ptr @.str.6, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caif_exit_net\00", [18 x i8] zeroinitializer }, align 32
@caif_exit_net._entry_ptr = internal global ptr @caif_exit_net._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"caif_net_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 55, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 329, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [21 x i8] c"caif_device_notifier\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 501, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"caif_net_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 554, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 45, i32 7 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 695, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 194, i32 9 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 220, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 749, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 115, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 760, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 395, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 483, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 511, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [23 x i8] c"../net/caif/caif_dev.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 539, i32 4 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__exitcall_caif_device_exit, ptr @__initcall__kmod_caif__373_584_caif_device_init6, ptr @__ksymtab_caif_enroll_dev, ptr @__ksymtab_get_cfcnfg, ptr @caif_device_exit, ptr @caif_device_notify._entry, ptr @caif_device_notify._entry.16, ptr @caif_device_notify._entry_ptr, ptr @caif_device_notify._entry_ptr.18, ptr @caif_exit_net._entry, ptr @caif_exit_net._entry_ptr, ptr @caif_net_id, ptr @caif_enroll_dev.__key, ptr @.str, ptr @caif_device_notifier, ptr @caif_net_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @caif_init_net.__key, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_enroll_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_device_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_device_notify._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caif_exit_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_cfcnfg(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @caif_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %8 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caif_enroll_dev(ptr noundef %dev, ptr nocapture noundef readonly %caifdev, ptr noundef %link_support, i32 noundef %head_room, ptr nocapture noundef writeonly %layer, ptr noundef writeonly %rcv_func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %2 = load i32, ptr @caif_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2) #11
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %7 = load i32, ptr @caif_net_id, align 4
  %call.i42 = tail call fastcc ptr @net_generic(ptr noundef %6, i32 noundef %7) #11
  %caifdevs.i = getelementptr inbounds %struct.caif_net, ptr %call.i42, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 124) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %pcpu_refcnt.i = getelementptr inbounds %struct.caif_device_entry, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1.i, ptr %pcpu_refcnt.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %netdev.i = getelementptr inbounds %struct.caif_device_entry, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %netdev.i, align 4
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %if.end5.i.if.end_crit_edge, label %do.body1.i.i

if.end5.i.if.end_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body1.i.i:                                     ; preds = %if.end5.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %12 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13.i.i = add i32 %23, 1
  store i32 %add13.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !83

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #11, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %do.end30.i.i, %if.end5.i.if.end_crit_edge
  %25 = ptrtoint ptr %layer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %layer, align 4
  %flow_lock = getelementptr inbounds %struct.caif_device_entry, ptr %call7.i.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %flow_lock, ptr noundef nonnull @.str, ptr noundef nonnull @caif_enroll_dev.__key, i16 noundef signext 3) #11
  %link_select = getelementptr inbounds %struct.caif_dev_common, ptr %caifdev, i32 0, i32 1
  %26 = ptrtoint ptr %link_select to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_select, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %switch.selectcmp = icmp eq i32 %27, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %switch.selectcmp39 = icmp eq i32 %27, 0
  %switch.select40 = select i1 %switch.selectcmp39, i32 2, i32 %switch.select
  %lock = getelementptr inbounds %struct.caif_net, ptr %call.i42, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %list = getelementptr inbounds %struct.caif_device_entry, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %caifdevs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %caifdevs.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %caifdevs.i, ptr noundef %29) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.caif_device_entry, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %caifdevs.i, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  %32 = ptrtoint ptr %caifdevs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %caifdevs.i, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_add_rcu.exit_crit_edge
  %name = getelementptr inbounds %struct.cflayer, ptr %call7.i.i.i, i32 0, i32 8
  %call12 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %dev, i32 noundef 16) #11
  %transmit = getelementptr inbounds %struct.cflayer, ptr %call7.i.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %transmit to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @transmit, ptr %transmit, align 4
  %use_fcs = getelementptr inbounds %struct.caif_dev_common, ptr %caifdev, i32 0, i32 3
  %35 = ptrtoint ptr %use_fcs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %use_fcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool15 = icmp ne i32 %36, 0
  %call16 = tail call i32 @cfcnfg_add_phy_layer(ptr noundef %4, ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, i32 noundef %switch.select40, ptr noundef %link_support, i1 noundef zeroext %tobool15, i32 noundef %head_room) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  %tobool18.not = icmp eq ptr %rcv_func, null
  br i1 %tobool18.not, label %list_add_rcu.exit.cleanup_crit_edge, label %if.then19

list_add_rcu.exit.cleanup_crit_edge:              ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then19:                                        ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %rcv_func to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @receive, ptr %rcv_func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %list_add_rcu.exit.cleanup_crit_edge, %if.then4.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then19 ], [ %call16, %list_add_rcu.exit.cleanup_crit_edge ], [ -12, %if.then4.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !85
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @transmit(ptr noundef %layer, ptr noundef %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 750, ptr noundef nonnull @.str.11) #11
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %call = tail call ptr @cfpkt_tonative(ptr noundef %pkt) #11
  %netdev = getelementptr inbounds %struct.caif_device_entry, ptr %layer, i32 0, i32 2
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %2 = getelementptr inbounds %struct.anon.16, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %2, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %network_header.i, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 247, ptr %protocol, align 8
  %10 = load ptr, ptr %netdev, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags, align 16
  %and = and i64 %12, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %rcu_read_lock_bh.exit.noxoff_crit_edge, !prof !83

rcu_read_lock_bh.exit.noxoff_crit_edge:           ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %noxoff

if.end:                                           ; preds = %rcu_read_lock_bh.exit
  %xoff = getelementptr inbounds %struct.caif_device_entry, ptr %layer, i32 0, i32 7
  %13 = ptrtoint ptr %xoff to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %xoff, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.end12, label %if.end.noxoff_crit_edge, !prof !87

if.end.noxoff_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %noxoff

if.end12:                                         ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then23, label %if.end12.if.end60_crit_edge, !prof !87

if.end12.if.end60_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then23:                                        ; preds = %if.end12
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %19 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i, align 128
  %qdisc = getelementptr inbounds %struct.netdev_queue, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %qdisc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %qdisc, align 8
  %call27 = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.then23.do.end36_crit_edge

if.then23.do.end36_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true:                                    ; preds = %if.then23
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true.do.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b128 = load i1, ptr @transmit.__warned, align 1
  br i1 %.b128, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @transmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 194, ptr noundef nonnull @.str.2) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true.do.end36_crit_edge, %if.then23.do.end36_crit_edge
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %24, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end.i, label %if.then.i131

if.then.i131:                                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  %state.i.i130 = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 20
  %25 = ptrtoint ptr %state.i.i130 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i.i130, align 4
  %and.i4.i = and i32 %26, 12
  br label %qdisc_is_empty.exit

do.end.i:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %qlen.i, align 8
  br label %qdisc_is_empty.exit

qdisc_is_empty.exit:                              ; preds = %do.end.i, %if.then.i131
  %retval.0.in.i = phi i32 [ %and.i4.i, %if.then.i131 ], [ %28, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.in.i)
  %retval.0.i132 = icmp eq i32 %retval.0.in.i, 0
  br i1 %retval.0.i132, label %qdisc_is_empty.exit.noxoff_crit_edge, label %if.end46, !prof !87

qdisc_is_empty.exit.noxoff_crit_edge:             ; preds = %qdisc_is_empty.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %noxoff

if.end46:                                         ; preds = %qdisc_is_empty.exit
  %29 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %netdev, align 4
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 107
  %31 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_queue_len, align 16
  %mul = mul i32 %32, 50
  %div = udiv i32 %mul, 100
  %and48 = and i32 %24, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %if.end46.if.end60_crit_edge

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true50:                                  ; preds = %if.end46
  %qlen51 = getelementptr inbounds %struct.Qdisc, ptr %22, i32 0, i32 17, i32 2
  %33 = ptrtoint ptr %qlen51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %qlen51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %div)
  %cmp = icmp ult i32 %34, %div
  br i1 %cmp, label %land.lhs.true50.noxoff_crit_edge, label %land.lhs.true50.if.end60_crit_edge, !prof !87

land.lhs.true50.if.end60_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true50.noxoff_crit_edge:                 ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #13
  br label %noxoff

if.end60:                                         ; preds = %land.lhs.true50.if.end60_crit_edge, %if.end46.if.end60_crit_edge, %if.end12.if.end60_crit_edge
  %high.1 = phi i32 [ 0, %if.end12.if.end60_crit_edge ], [ %div, %if.end46.if.end60_crit_edge ], [ %div, %land.lhs.true50.if.end60_crit_edge ]
  %flow_lock = getelementptr inbounds %struct.caif_device_entry, ptr %layer, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %flow_lock) #11
  %35 = ptrtoint ptr %xoff to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %xoff, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool62.not = icmp eq i8 %36, 0
  br i1 %tobool62.not, label %do.body66, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_bh(ptr noundef %flow_lock) #11
  br label %noxoff

do.body66:                                        ; preds = %if.end60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @transmit.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@transmit, %do.end83)) #11
          to label %if.then78 [label %do.end83], !srcloc !88

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %netdev, align 4
  %_tx.i.i133 = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i133, align 128
  %state.i.i134 = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %state.i.i134 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i.i134, align 4
  %and1.i.i.i135 = and i32 %42, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @transmit.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef %and1.i.i.i135, i32 noundef 0, i32 noundef %high.1) #11
  br label %do.end83

do.end83:                                         ; preds = %if.then78, %do.body66
  %43 = ptrtoint ptr %xoff to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %xoff, align 4
  %xoff_skb = getelementptr inbounds %struct.caif_device_entry, ptr %layer, i32 0, i32 5
  %44 = ptrtoint ptr %xoff_skb to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call, ptr %xoff_skb, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %destructor, align 4
  %xoff_skb_dtor = getelementptr inbounds %struct.caif_device_entry, ptr %layer, i32 0, i32 6
  %47 = ptrtoint ptr %xoff_skb_dtor to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %xoff_skb_dtor, align 4
  store ptr @caif_flow_cb, ptr %destructor, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %flow_lock) #11
  %48 = ptrtoint ptr %layer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %layer, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrlcmd, align 4
  %id = getelementptr inbounds %struct.cflayer, ptr %layer, i32 0, i32 7
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 4
  tail call void %51(ptr noundef %49, i32 noundef 6, i32 noundef %53) #11
  br label %noxoff

noxoff:                                           ; preds = %do.end83, %if.then63, %land.lhs.true50.noxoff_crit_edge, %qdisc_is_empty.exit.noxoff_crit_edge, %if.end.noxoff_crit_edge, %rcu_read_lock_bh.exit.noxoff_crit_edge
  %call.i137 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i137, label %noxoff.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i140

noxoff.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %noxoff
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i140:                               ; preds = %noxoff
  %call1.i138 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i138)
  %tobool.not.i139 = icmp eq i32 %call1.i138, 0
  br i1 %tobool.not.i139, label %land.lhs.true.i140.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i142

land.lhs.true.i140.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i142:                              ; preds = %land.lhs.true.i140
  %.b4.i141 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i141, label %land.lhs.true2.i142.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i143

land.lhs.true2.i142.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock_bh.exit

if.then.i143:                                     ; preds = %land.lhs.true2.i142
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 761, ptr noundef nonnull @.str.13) #11
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i143, %land.lhs.true2.i142.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i140.rcu_read_unlock_bh.exit_crit_edge, %noxoff.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #11
  tail call fastcc void @local_bh_enable() #11
  %call91 = tail call i32 @dev_queue_xmit(ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp sgt i32 %call91, 0
  %spec.store.select = select i1 %cmp92, i32 -5, i32 %call91
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfcnfg_add_phy_layer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @receive(ptr noundef %skb, ptr noundef readonly %dev, ptr nocapture noundef readnone %pkttype, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @cfpkt_fromnative(i32 noundef 0, ptr noundef %skb) #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %6 = load i32, ptr @caif_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #11
  %caifdevs.i.i = getelementptr inbounds %struct.caif_net, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge, label %land.lhs.true.i34

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true.i34:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i33 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i33, label %land.lhs.true4.i, label %land.lhs.true.i34.for.cond.i.preheader_crit_edge

land.lhs.true.i34.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i34
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b33.i = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i35

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.then.i35:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i35, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i34.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %caifdevs.i.i, %for.cond.i.preheader ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %caifdevs.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %9, %dev
  br i1 %cmp15.i, label %caif_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

caif_get.exit:                                    ; preds = %for.body.i
  %netdev.i.le = getelementptr i8, ptr %.pn.i, i32 8
  %caifd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -52
  %tobool.not = icmp eq ptr %caifd.0.le.i, null
  br i1 %tobool.not, label %caif_get.exit.if.then_crit_edge, label %lor.lhs.false

caif_get.exit.if.then_crit_edge:                  ; preds = %caif_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %caif_get.exit
  %10 = ptrtoint ptr %caifd.0.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caifd.0.le.i, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false3

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %receive = getelementptr inbounds %struct.cflayer, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %receive to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %receive, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %lor.lhs.false3.if.then_crit_edge, label %lor.lhs.false7

lor.lhs.false3.if.then_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false3
  %14 = ptrtoint ptr %netdev.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev.i.le, align 4
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %operstate.i, align 8
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %lor.lhs.false7.if.then_crit_edge [
    i8 6, label %lor.lhs.false7.if.end_crit_edge
    i8 0, label %lor.lhs.false7.if.end_crit_edge77
  ]

lor.lhs.false7.if.end_crit_edge77:                ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false7.if.end_crit_edge:                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

lor.lhs.false7.if.then_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false7.if.then_crit_edge, %lor.lhs.false3.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %caif_get.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i36 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i36, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i39

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i39:                                ; preds = %if.then
  %call1.i37 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool.not.i38, label %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i41

land.lhs.true.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i41:                               ; preds = %land.lhs.true.i39
  %.b4.i40 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i40, label %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, label %if.then.i42

land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i42:                                      ; preds = %land.lhs.true2.i41
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i42, %land.lhs.true2.i41.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i39.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %19 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i43 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i43 to ptr
  %preempt_count.i.i.i.i44 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i44, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i44, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7.if.end_crit_edge, %lor.lhs.false7.if.end_crit_edge77
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn.i, i32 12
  %24 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcpu_refcnt.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %add13.i = add i32 %35, 1
  store i32 %add13.i, ptr %33, align 4
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i46 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i46, label %if.then.i47, label %if.end.caifd_hold.exit_crit_edge, !prof !83

if.end.caifd_hold.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_hold.exit

if.then.i47:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_hold.exit

caifd_hold.exit:                                  ; preds = %if.then.i47, %if.end.caifd_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #11, !srcloc !84
  %call.i48 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i48, label %caifd_hold.exit.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true.i51

caifd_hold.exit.rcu_read_unlock.exit59_crit_edge: ; preds = %caifd_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

land.lhs.true.i51:                                ; preds = %caifd_hold.exit
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit59_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit59_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit59_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit59

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit59

rcu_read_unlock.exit59:                           ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit59_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit59_crit_edge, %caifd_hold.exit.rcu_read_unlock.exit59_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %37 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i55 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i57 = add i32 %40, -1
  store volatile i32 %sub.i.i.i57, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %41 = ptrtoint ptr %caifd.0.le.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %caifd.0.le.i, align 4
  %receive11 = getelementptr inbounds %struct.cflayer, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %receive11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %receive11, align 4
  %call14 = tail call i32 %44(ptr noundef %42, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -84, i32 %call14)
  %cmp = icmp eq i32 %call14, -84
  br i1 %cmp, label %if.then15, label %rcu_read_unlock.exit59.if.end16_crit_edge

rcu_read_unlock.exit59.if.end16_crit_edge:        ; preds = %rcu_read_unlock.exit59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %rcu_read_unlock.exit59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cfpkt_destroy(ptr noundef %call) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %rcu_read_unlock.exit59.if.end16_crit_edge
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %46 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i61 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i61 to ptr
  %cpu.i62 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i62, align 4
  %arrayidx.i63 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i63, align 4
  %add.i64 = add i32 %54, %48
  %55 = inttoptr i32 %add.i64 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i65 = add i32 %57, -1
  store i32 %add13.i65, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i66 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i66)
  %tobool.not.i67 = icmp eq i32 %and.i.i.i66, 0
  br i1 %tobool.not.i67, label %if.then.i68, label %if.end16.caifd_put.exit_crit_edge, !prof !83

if.end16.caifd_put.exit_crit_edge:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_put.exit

if.then.i68:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_put.exit

caifd_put.exit:                                   ; preds = %if.then.i68, %if.end16.caifd_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #11, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp17.not = icmp ne i32 %call14, 0
  %spec.store.select = zext i1 %cmp17.not to i32
  br label %cleanup

cleanup:                                          ; preds = %caifd_put.exit, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ %spec.store.select, %caifd_put.exit ], [ 1, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @caif_device_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @caif_device_notifier) #11
  tail call void @dev_remove_pack(ptr noundef nonnull @caif_packet_type) #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @caif_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_device_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @caif_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @caif_device_notifier) #11
  tail call void @dev_add_pack(ptr noundef nonnull @caif_packet_type) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_tonative(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caif_flow_cb(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.anon.16, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !83

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 129, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 8
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i.i, align 4
  %11 = load i32, ptr @caif_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %10, i32 noundef %11) #11
  %caifdevs.i.i = getelementptr inbounds %struct.caif_net, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge, label %land.lhs.true.i127

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true.i127:                               ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i126 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i126, label %land.lhs.true4.i, label %land.lhs.true.i127.for.cond.i.preheader_crit_edge

land.lhs.true.i127.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i127
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b33.i = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i128

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.then.i128:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i128, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i127.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %caifdevs.i.i, %for.cond.i.preheader ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %caifdevs.i.i
  br i1 %cmp.not.i, label %for.cond.i.do.end36_crit_edge, label %for.body.i

for.cond.i.do.end36_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %13 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %14, %8
  br i1 %cmp15.i, label %caif_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

caif_get.exit:                                    ; preds = %for.body.i
  %caifd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -52
  %cond = icmp eq ptr %caifd.0.le.i, null
  br i1 %cond, label %caif_get.exit.do.end36_crit_edge, label %if.end52, !prof !83

caif_get.exit.do.end36_crit_edge:                 ; preds = %caif_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

do.end36:                                         ; preds = %caif_get.exit.do.end36_crit_edge, %for.cond.i.do.end36_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 134, i32 noundef 9, ptr noundef null) #11
  tail call fastcc void @rcu_read_unlock()
  br label %cleanup

if.end52:                                         ; preds = %caif_get.exit
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn.i, i32 12
  %16 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i = add i32 %27, 1
  store i32 %add13.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i129 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i129, label %if.then.i130, label %if.end52.caifd_hold.exit_crit_edge, !prof !83

if.end52.caifd_hold.exit_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_hold.exit

if.then.i130:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_hold.exit

caifd_hold.exit:                                  ; preds = %if.then.i130, %if.end52.caifd_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #11, !srcloc !84
  %call.i131 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i131, label %caifd_hold.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i134

caifd_hold.exit.rcu_read_unlock.exit_crit_edge:   ; preds = %caifd_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i134:                               ; preds = %caifd_hold.exit
  %call1.i132 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, %caifd_hold.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %29 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i138 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i139, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %flow_lock = getelementptr i8, ptr %.pn.i, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %flow_lock) #11
  %xoff = getelementptr i8, ptr %.pn.i, i32 68
  %33 = ptrtoint ptr %xoff to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %xoff, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool53.not = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %xoff to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %xoff, align 4
  %xoff_skb_dtor = getelementptr i8, ptr %.pn.i, i32 64
  %36 = ptrtoint ptr %xoff_skb_dtor to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xoff_skb_dtor, align 4
  %xoff_skb = getelementptr i8, ptr %.pn.i, i32 60
  %38 = ptrtoint ptr %xoff_skb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xoff_skb, align 4
  %cmp56.not = icmp eq ptr %39, %skb
  br i1 %cmp56.not, label %rcu_read_unlock.exit.if.end78_crit_edge, label %do.end72, !prof !87

rcu_read_unlock.exit.if.end78_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.end72:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 148, i32 noundef 9, ptr noundef null) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end72, %rcu_read_unlock.exit.if.end78_crit_edge
  %spec.select = phi ptr [ null, %do.end72 ], [ %skb, %rcu_read_unlock.exit.if.end78_crit_edge ]
  %40 = ptrtoint ptr %xoff_skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %xoff_skb, align 4
  %41 = ptrtoint ptr %xoff_skb_dtor to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %xoff_skb_dtor, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %flow_lock) #11
  %tobool92.not = icmp eq ptr %37, null
  %tobool93.not = icmp eq ptr %spec.select, null
  %or.cond = or i1 %tobool92.not, %tobool93.not
  br i1 %or.cond, label %if.end78.if.end95_crit_edge, label %if.then94

if.end78.if.end95_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then94:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %37(ptr noundef nonnull %spec.select) #11
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end78.if.end95_crit_edge
  br i1 %tobool53.not, label %if.end95.if.end101_crit_edge, label %if.then97

if.end95.if.end101_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then97:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %caifd.0.le.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %caifd.0.le.i, align 4
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrlcmd, align 4
  %id = getelementptr i8, ptr %.pn.i, i32 -20
  %46 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id, align 4
  tail call void %45(ptr noundef %43, i32 noundef 7, i32 noundef %47) #11
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.end95.if.end101_crit_edge
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %49 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcpu_refcnt.i, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i142 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i142 to ptr
  %cpu.i143 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i143, align 4
  %arrayidx.i144 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i144, align 4
  %add.i145 = add i32 %57, %51
  %58 = inttoptr i32 %add.i145 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i146 = add i32 %60, -1
  store i32 %add13.i146, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i147 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i147)
  %tobool.not.i148 = icmp eq i32 %and.i.i.i147, 0
  br i1 %tobool.not.i148, label %if.then.i149, label %if.end101.caifd_put.exit_crit_edge, !prof !83

if.end101.caifd_put.exit_crit_edge:               ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_put.exit

if.then.i149:                                     ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_put.exit

caifd_put.exit:                                   ; preds = %if.then.i149, %if.end101.caifd_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #11, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %caifd_put.exit, %do.end36
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfpkt_fromnative(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfpkt_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_device_notify(ptr nocapture noundef readnone %me, i32 noundef %what, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %layer = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %layer) #11
  %2 = ptrtoint ptr %layer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %layer, align 4, !annotation !89
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  %5 = load i32, ptr @caif_net_id, align 4
  %call.i162 = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #11
  %6 = ptrtoint ptr %call.i162 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i162, align 4
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %10 = load i32, ptr @caif_net_id, align 4
  %call.i164 = tail call fastcc ptr @net_generic(ptr noundef %9, i32 noundef %10) #11
  %caifdevs.i = getelementptr inbounds %struct.caif_net, ptr %call.i164, i32 0, i32 1
  %11 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i, align 4
  %13 = load i32, ptr @caif_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %12, i32 noundef %13) #11
  %caifdevs.i.i = getelementptr inbounds %struct.caif_net, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i, label %entry.for.cond.i.preheader_crit_edge, label %land.lhs.true.i166

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true.i166:                               ; preds = %entry
  %call3.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i165 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i165, label %land.lhs.true4.i, label %land.lhs.true.i166.for.cond.i.preheader_crit_edge

land.lhs.true.i166.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i166
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b33.i = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i167

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.then.i167:                                     ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i167, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i166.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %caifdevs.i.i, %for.cond.i.preheader ]
  %14 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %caifdevs.i.i
  br i1 %cmp.not.i, label %for.cond.i.land.lhs.true_crit_edge, label %for.body.i

for.cond.i.land.lhs.true_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %16, %1
  br i1 %cmp15.i, label %caif_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

caif_get.exit:                                    ; preds = %for.body.i
  %caifd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -52
  %cmp = icmp eq ptr %caifd.0.le.i, null
  br i1 %cmp, label %caif_get.exit.land.lhs.true_crit_edge, label %caif_get.exit.if.end_crit_edge

caif_get.exit.if.end_crit_edge:                   ; preds = %caif_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

caif_get.exit.land.lhs.true_crit_edge:            ; preds = %caif_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %caif_get.exit.land.lhs.true_crit_edge, %for.cond.i.land.lhs.true_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 822, i16 %18)
  %cmp6.not = icmp eq i16 %18, 822
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %caif_get.exit.if.end_crit_edge
  %cmp315 = phi i1 [ true, %land.lhs.true.if.end_crit_edge ], [ false, %caif_get.exit.if.end_crit_edge ]
  %19 = zext i32 %what to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %what, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 1, label %sw.bb25
    i32 2, label %sw.bb33
    i32 6, label %sw.bb65
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  br i1 %cmp315, label %if.end11, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %use_frag = getelementptr i8, ptr %1, i32 2312
  %20 = ptrtoint ptr %use_frag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %use_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end11.if.end20_crit_edge, label %if.then13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then13:                                        ; preds = %if.end11
  %ifindex = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex, align 4
  %use_stx = getelementptr i8, ptr %1, i32 2320
  %24 = ptrtoint ptr %use_stx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %use_stx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool14 = icmp ne i32 %25, 0
  %call15 = tail call ptr @cfserl_create(i32 noundef %23, i1 noundef zeroext %tobool14) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #16
  br label %cleanup

if.end20:                                         ; preds = %if.then13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %link_support.0 = phi ptr [ %call15, %if.then13.if.end20_crit_edge ], [ null, %if.end11.if.end20_crit_edge ]
  %head_room.0 = phi i32 [ 1, %if.then13.if.end20_crit_edge ], [ 0, %if.end11.if.end20_crit_edge ]
  %call21 = call i32 @caif_enroll_dev(ptr noundef %1, ptr noundef %add.ptr.i, ptr noundef %link_support.0, i32 noundef %head_room.0, ptr noundef nonnull %layer, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cfserl_release(ptr noundef %link_support.0) #11
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @dev_flowctrl, ptr %add.ptr.i, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end
  %27 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %sw.bb25.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb25.rcu_read_lock.exit_crit_edge:             ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb25
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb25.rcu_read_lock.exit_crit_edge
  %31 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nd_net.i, align 4
  %33 = load i32, ptr @caif_net_id, align 4
  %call.i.i169 = tail call fastcc ptr @net_generic(ptr noundef %32, i32 noundef %33) #11
  %caifdevs.i.i170 = getelementptr inbounds %struct.caif_net, ptr %call.i.i169, i32 0, i32 1
  %call2.i171 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i171, label %rcu_read_lock.exit.for.cond.i185.preheader_crit_edge, label %land.lhs.true.i174

rcu_read_lock.exit.for.cond.i185.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i185.preheader

land.lhs.true.i174:                               ; preds = %rcu_read_lock.exit
  %call3.i172 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i172)
  %tobool.not.i173 = icmp eq i32 %call3.i172, 0
  br i1 %tobool.not.i173, label %land.lhs.true4.i177, label %land.lhs.true.i174.for.cond.i185.preheader_crit_edge

land.lhs.true.i174.for.cond.i185.preheader_crit_edge: ; preds = %land.lhs.true.i174
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i185.preheader

land.lhs.true4.i177:                              ; preds = %land.lhs.true.i174
  %call5.i175 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i175)
  %tobool6.not.i176 = icmp eq i32 %call5.i175, 0
  br i1 %tobool6.not.i176, label %land.lhs.true4.i177.for.cond.i185.preheader_crit_edge, label %land.lhs.true7.i179

land.lhs.true4.i177.for.cond.i185.preheader_crit_edge: ; preds = %land.lhs.true4.i177
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i185.preheader

land.lhs.true7.i179:                              ; preds = %land.lhs.true4.i177
  %.b33.i178 = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i178, label %land.lhs.true7.i179.for.cond.i185.preheader_crit_edge, label %if.then.i180

land.lhs.true7.i179.for.cond.i185.preheader_crit_edge: ; preds = %land.lhs.true7.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i185.preheader

if.then.i180:                                     ; preds = %land.lhs.true7.i179
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i185.preheader

for.cond.i185.preheader:                          ; preds = %if.then.i180, %land.lhs.true7.i179.for.cond.i185.preheader_crit_edge, %land.lhs.true4.i177.for.cond.i185.preheader_crit_edge, %land.lhs.true.i174.for.cond.i185.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i185.preheader_crit_edge
  br label %for.cond.i185

for.cond.i185:                                    ; preds = %for.body.i188.for.cond.i185_crit_edge, %for.cond.i185.preheader
  %.pn.in.i182 = phi ptr [ %.pn.i183, %for.body.i188.for.cond.i185_crit_edge ], [ %caifdevs.i.i170, %for.cond.i185.preheader ]
  %34 = ptrtoint ptr %.pn.in.i182 to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i183 = load volatile ptr, ptr %.pn.in.i182, align 4
  %cmp.not.i184 = icmp eq ptr %.pn.i183, %caifdevs.i.i170
  br i1 %cmp.not.i184, label %for.cond.i185.if.then29_crit_edge, label %for.body.i188

for.cond.i185.if.then29_crit_edge:                ; preds = %for.cond.i185
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

for.body.i188:                                    ; preds = %for.cond.i185
  %netdev.i186 = getelementptr i8, ptr %.pn.i183, i32 8
  %35 = ptrtoint ptr %netdev.i186 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %netdev.i186, align 4
  %cmp15.i187 = icmp eq ptr %36, %1
  br i1 %cmp15.i187, label %caif_get.exit192, label %for.body.i188.for.cond.i185_crit_edge

for.body.i188.for.cond.i185_crit_edge:            ; preds = %for.body.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i185

caif_get.exit192:                                 ; preds = %for.body.i188
  %caifd.0.le.i189 = getelementptr i8, ptr %.pn.i183, i32 -52
  %cmp27 = icmp eq ptr %caifd.0.le.i189, null
  br i1 %cmp27, label %caif_get.exit192.if.then29_crit_edge, label %if.end30

caif_get.exit192.if.then29_crit_edge:             ; preds = %caif_get.exit192
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then29

if.then29:                                        ; preds = %caif_get.exit192.if.then29_crit_edge, %for.cond.i185.if.then29_crit_edge
  %call.i193 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i193, label %if.then29.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i196

if.then29.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i196:                               ; preds = %if.then29
  %call1.i194 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i194)
  %tobool.not.i195 = icmp eq i32 %call1.i194, 0
  br i1 %tobool.not.i195, label %land.lhs.true.i196.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i198

land.lhs.true.i196.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i198:                              ; preds = %land.lhs.true.i196
  %.b4.i197 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i197, label %land.lhs.true2.i198.rcu_read_unlock.exit_crit_edge, label %if.then.i199

land.lhs.true2.i198.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i199:                                     ; preds = %land.lhs.true2.i198
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i199, %land.lhs.true2.i198.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i196.rcu_read_unlock.exit_crit_edge, %if.then29.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %37 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i200 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i200 to ptr
  %preempt_count.i.i.i.i201 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i.i.i201 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i.i.i201, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i201, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end30:                                         ; preds = %caif_get.exit192
  %xoff = getelementptr i8, ptr %.pn.i183, i32 68
  %41 = ptrtoint ptr %xoff to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %xoff, align 4
  %call32 = tail call i32 @cfcnfg_set_phy_state(ptr noundef %7, ptr noundef nonnull %caifd.0.le.i189, i1 noundef zeroext true) #11
  %call.i203 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i203, label %if.end30.rcu_read_unlock.exit214_crit_edge, label %land.lhs.true.i206

if.end30.rcu_read_unlock.exit214_crit_edge:       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit214

land.lhs.true.i206:                               ; preds = %if.end30
  %call1.i204 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i204)
  %tobool.not.i205 = icmp eq i32 %call1.i204, 0
  br i1 %tobool.not.i205, label %land.lhs.true.i206.rcu_read_unlock.exit214_crit_edge, label %land.lhs.true2.i208

land.lhs.true.i206.rcu_read_unlock.exit214_crit_edge: ; preds = %land.lhs.true.i206
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit214

land.lhs.true2.i208:                              ; preds = %land.lhs.true.i206
  %.b4.i207 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i207, label %land.lhs.true2.i208.rcu_read_unlock.exit214_crit_edge, label %if.then.i209

land.lhs.true2.i208.rcu_read_unlock.exit214_crit_edge: ; preds = %land.lhs.true2.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit214

if.then.i209:                                     ; preds = %land.lhs.true2.i208
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit214

rcu_read_unlock.exit214:                          ; preds = %if.then.i209, %land.lhs.true2.i208.rcu_read_unlock.exit214_crit_edge, %land.lhs.true.i206.rcu_read_unlock.exit214_crit_edge, %if.end30.rcu_read_unlock.exit214_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %42 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i210 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i210 to ptr
  %preempt_count.i.i.i.i211 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i211 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i211, align 4
  %sub.i.i.i212 = add i32 %45, -1
  store volatile i32 %sub.i.i.i212, ptr %preempt_count.i.i.i.i211, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

sw.bb33:                                          ; preds = %if.end
  %46 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i151 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i151 to ptr
  %preempt_count.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i152, align 4
  %add.i.i.i153 = add i32 %49, 1
  store volatile i32 %add.i.i.i153, ptr %preempt_count.i.i.i.i152, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i154 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i154, label %sw.bb33.rcu_read_lock.exit161_crit_edge, label %land.lhs.true.i157

sw.bb33.rcu_read_lock.exit161_crit_edge:          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit161

land.lhs.true.i157:                               ; preds = %sw.bb33
  %call1.i155 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %tobool.not.i156 = icmp eq i32 %call1.i155, 0
  br i1 %tobool.not.i156, label %land.lhs.true.i157.rcu_read_lock.exit161_crit_edge, label %land.lhs.true2.i159

land.lhs.true.i157.rcu_read_lock.exit161_crit_edge: ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit161

land.lhs.true2.i159:                              ; preds = %land.lhs.true.i157
  %.b4.i158 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i158, label %land.lhs.true2.i159.rcu_read_lock.exit161_crit_edge, label %if.then.i160

land.lhs.true2.i159.rcu_read_lock.exit161_crit_edge: ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit161

if.then.i160:                                     ; preds = %land.lhs.true2.i159
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit161

rcu_read_lock.exit161:                            ; preds = %if.then.i160, %land.lhs.true2.i159.rcu_read_lock.exit161_crit_edge, %land.lhs.true.i157.rcu_read_lock.exit161_crit_edge, %sw.bb33.rcu_read_lock.exit161_crit_edge
  %50 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %nd_net.i, align 4
  %52 = load i32, ptr @caif_net_id, align 4
  %call.i.i216 = tail call fastcc ptr @net_generic(ptr noundef %51, i32 noundef %52) #11
  %caifdevs.i.i217 = getelementptr inbounds %struct.caif_net, ptr %call.i.i216, i32 0, i32 1
  %call2.i218 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i218, label %rcu_read_lock.exit161.for.cond.i232.preheader_crit_edge, label %land.lhs.true.i221

rcu_read_lock.exit161.for.cond.i232.preheader_crit_edge: ; preds = %rcu_read_lock.exit161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i232.preheader

land.lhs.true.i221:                               ; preds = %rcu_read_lock.exit161
  %call3.i219 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i219)
  %tobool.not.i220 = icmp eq i32 %call3.i219, 0
  br i1 %tobool.not.i220, label %land.lhs.true4.i224, label %land.lhs.true.i221.for.cond.i232.preheader_crit_edge

land.lhs.true.i221.for.cond.i232.preheader_crit_edge: ; preds = %land.lhs.true.i221
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i232.preheader

land.lhs.true4.i224:                              ; preds = %land.lhs.true.i221
  %call5.i222 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i222)
  %tobool6.not.i223 = icmp eq i32 %call5.i222, 0
  br i1 %tobool6.not.i223, label %land.lhs.true4.i224.for.cond.i232.preheader_crit_edge, label %land.lhs.true7.i226

land.lhs.true4.i224.for.cond.i232.preheader_crit_edge: ; preds = %land.lhs.true4.i224
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i232.preheader

land.lhs.true7.i226:                              ; preds = %land.lhs.true4.i224
  %.b33.i225 = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i225, label %land.lhs.true7.i226.for.cond.i232.preheader_crit_edge, label %if.then.i227

land.lhs.true7.i226.for.cond.i232.preheader_crit_edge: ; preds = %land.lhs.true7.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i232.preheader

if.then.i227:                                     ; preds = %land.lhs.true7.i226
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i232.preheader

for.cond.i232.preheader:                          ; preds = %if.then.i227, %land.lhs.true7.i226.for.cond.i232.preheader_crit_edge, %land.lhs.true4.i224.for.cond.i232.preheader_crit_edge, %land.lhs.true.i221.for.cond.i232.preheader_crit_edge, %rcu_read_lock.exit161.for.cond.i232.preheader_crit_edge
  br label %for.cond.i232

for.cond.i232:                                    ; preds = %for.body.i235.for.cond.i232_crit_edge, %for.cond.i232.preheader
  %.pn.in.i229 = phi ptr [ %.pn.i230, %for.body.i235.for.cond.i232_crit_edge ], [ %caifdevs.i.i217, %for.cond.i232.preheader ]
  %53 = ptrtoint ptr %.pn.in.i229 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn.i230 = load volatile ptr, ptr %.pn.in.i229, align 4
  %cmp.not.i231 = icmp eq ptr %.pn.i230, %caifdevs.i.i217
  br i1 %cmp.not.i231, label %for.cond.i232.if.then42_crit_edge, label %for.body.i235

for.cond.i232.if.then42_crit_edge:                ; preds = %for.cond.i232
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

for.body.i235:                                    ; preds = %for.cond.i232
  %netdev.i233 = getelementptr i8, ptr %.pn.i230, i32 8
  %54 = ptrtoint ptr %netdev.i233 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %netdev.i233, align 4
  %cmp15.i234 = icmp eq ptr %55, %1
  br i1 %cmp15.i234, label %caif_get.exit239, label %for.body.i235.for.cond.i232_crit_edge

for.body.i235.for.cond.i232_crit_edge:            ; preds = %for.body.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i232

caif_get.exit239:                                 ; preds = %for.body.i235
  %caifd.0.le.i236 = getelementptr i8, ptr %.pn.i230, i32 -52
  %tobool35.not = icmp eq ptr %caifd.0.le.i236, null
  br i1 %tobool35.not, label %caif_get.exit239.if.then42_crit_edge, label %lor.lhs.false

caif_get.exit239.if.then42_crit_edge:             ; preds = %caif_get.exit239
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

lor.lhs.false:                                    ; preds = %caif_get.exit239
  %56 = ptrtoint ptr %caifd.0.le.i236 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %caifd.0.le.i236, align 4
  %tobool37.not = icmp eq ptr %57, null
  br i1 %tobool37.not, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false38

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

lor.lhs.false38:                                  ; preds = %lor.lhs.false
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrlcmd, align 4
  %tobool41.not = icmp eq ptr %59, null
  br i1 %tobool41.not, label %lor.lhs.false38.if.then42_crit_edge, label %if.end43

lor.lhs.false38.if.then42_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false38.if.then42_crit_edge, %lor.lhs.false.if.then42_crit_edge, %caif_get.exit239.if.then42_crit_edge, %for.cond.i232.if.then42_crit_edge
  %call.i240 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i240, label %if.then42.rcu_read_unlock.exit251_crit_edge, label %land.lhs.true.i243

if.then42.rcu_read_unlock.exit251_crit_edge:      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit251

land.lhs.true.i243:                               ; preds = %if.then42
  %call1.i241 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i241)
  %tobool.not.i242 = icmp eq i32 %call1.i241, 0
  br i1 %tobool.not.i242, label %land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge, label %land.lhs.true2.i245

land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge: ; preds = %land.lhs.true.i243
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit251

land.lhs.true2.i245:                              ; preds = %land.lhs.true.i243
  %.b4.i244 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i244, label %land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge, label %if.then.i246

land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge: ; preds = %land.lhs.true2.i245
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit251

if.then.i246:                                     ; preds = %land.lhs.true2.i245
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit251

rcu_read_unlock.exit251:                          ; preds = %if.then.i246, %land.lhs.true2.i245.rcu_read_unlock.exit251_crit_edge, %land.lhs.true.i243.rcu_read_unlock.exit251_crit_edge, %if.then42.rcu_read_unlock.exit251_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %60 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i247 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i247 to ptr
  %preempt_count.i.i.i.i248 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i248 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i248, align 4
  %sub.i.i.i249 = add i32 %63, -1
  store volatile i32 %sub.i.i.i249, ptr %preempt_count.i.i.i.i248, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end43:                                         ; preds = %lor.lhs.false38
  %call45 = tail call i32 @cfcnfg_set_phy_state(ptr noundef %7, ptr noundef nonnull %caifd.0.le.i236, i1 noundef zeroext false) #11
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn.i230, i32 12
  %65 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pcpu_refcnt.i, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %73, %67
  %74 = inttoptr i32 %add.i to ptr
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %add13.i = add i32 %76, 1
  store i32 %add13.i, ptr %74, align 4
  %77 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i = and i32 %77, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i252 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i252, label %if.then.i253, label %if.end43.caifd_hold.exit_crit_edge, !prof !83

if.end43.caifd_hold.exit_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_hold.exit

if.then.i253:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_hold.exit

caifd_hold.exit:                                  ; preds = %if.then.i253, %if.end43.caifd_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #11, !srcloc !84
  %call.i254 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i254, label %caifd_hold.exit.rcu_read_unlock.exit265_crit_edge, label %land.lhs.true.i257

caifd_hold.exit.rcu_read_unlock.exit265_crit_edge: ; preds = %caifd_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit265

land.lhs.true.i257:                               ; preds = %caifd_hold.exit
  %call1.i255 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i255)
  %tobool.not.i256 = icmp eq i32 %call1.i255, 0
  br i1 %tobool.not.i256, label %land.lhs.true.i257.rcu_read_unlock.exit265_crit_edge, label %land.lhs.true2.i259

land.lhs.true.i257.rcu_read_unlock.exit265_crit_edge: ; preds = %land.lhs.true.i257
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit265

land.lhs.true2.i259:                              ; preds = %land.lhs.true.i257
  %.b4.i258 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i258, label %land.lhs.true2.i259.rcu_read_unlock.exit265_crit_edge, label %if.then.i260

land.lhs.true2.i259.rcu_read_unlock.exit265_crit_edge: ; preds = %land.lhs.true2.i259
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit265

if.then.i260:                                     ; preds = %land.lhs.true2.i259
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit265

rcu_read_unlock.exit265:                          ; preds = %if.then.i260, %land.lhs.true2.i259.rcu_read_unlock.exit265_crit_edge, %land.lhs.true.i257.rcu_read_unlock.exit265_crit_edge, %caifd_hold.exit.rcu_read_unlock.exit265_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %78 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i261 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i261 to ptr
  %preempt_count.i.i.i.i262 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i262, align 4
  %sub.i.i.i263 = add i32 %81, -1
  store volatile i32 %sub.i.i.i263, ptr %preempt_count.i.i.i.i262, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %82 = ptrtoint ptr %caifd.0.le.i236 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %caifd.0.le.i236, align 4
  %ctrlcmd48 = getelementptr inbounds %struct.cflayer, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %ctrlcmd48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctrlcmd48, align 4
  %id = getelementptr i8, ptr %.pn.i230, i32 -20
  %86 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id, align 4
  tail call void %85(ptr noundef %83, i32 noundef 8, i32 noundef %87) #11
  %flow_lock = getelementptr i8, ptr %.pn.i230, i32 16
  tail call void @_raw_spin_lock_bh(ptr noundef %flow_lock) #11
  %xoff_skb_dtor = getelementptr i8, ptr %.pn.i230, i32 64
  %88 = ptrtoint ptr %xoff_skb_dtor to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %xoff_skb_dtor, align 4
  %cmp52.not = icmp eq ptr %89, null
  br i1 %cmp52.not, label %rcu_read_unlock.exit265.if.end60_crit_edge, label %land.lhs.true54

rcu_read_unlock.exit265.if.end60_crit_edge:       ; preds = %rcu_read_unlock.exit265
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true54:                                  ; preds = %rcu_read_unlock.exit265
  %xoff_skb = getelementptr i8, ptr %.pn.i230, i32 60
  %90 = ptrtoint ptr %xoff_skb to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %xoff_skb, align 4
  %cmp55.not = icmp eq ptr %91, null
  br i1 %cmp55.not, label %land.lhs.true54.if.end60_crit_edge, label %if.then57

land.lhs.true54.if.end60_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #13
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %91, i32 0, i32 4, i32 0, i32 1
  %92 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %destructor, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %land.lhs.true54.if.end60_crit_edge, %rcu_read_unlock.exit265.if.end60_crit_edge
  %xoff61 = getelementptr i8, ptr %.pn.i230, i32 68
  %93 = ptrtoint ptr %xoff61 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %xoff61, align 4
  %94 = ptrtoint ptr %xoff_skb_dtor to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %xoff_skb_dtor, align 4
  %xoff_skb63 = getelementptr i8, ptr %.pn.i230, i32 60
  %95 = ptrtoint ptr %xoff_skb63 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %xoff_skb63, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %flow_lock) #11
  %96 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %97 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pcpu_refcnt.i, align 4
  %99 = ptrtoint ptr %98 to i32
  %100 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i267 = and i32 %100, -16384
  %101 = inttoptr i32 %and.i.i267 to ptr
  %cpu.i268 = getelementptr inbounds %struct.thread_info, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cpu.i268 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cpu.i268, align 4
  %arrayidx.i269 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %103
  %104 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i269, align 4
  %add.i270 = add i32 %105, %99
  %106 = inttoptr i32 %add.i270 to ptr
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %add13.i271 = add i32 %108, -1
  store i32 %add13.i271, ptr %106, align 4
  %109 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i272 = and i32 %109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i272)
  %tobool.not.i273 = icmp eq i32 %and.i.i.i272, 0
  br i1 %tobool.not.i273, label %if.then.i274, label %if.end60.caifd_put.exit_crit_edge, !prof !83

if.end60.caifd_put.exit_crit_edge:                ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_put.exit

if.then.i274:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_put.exit

caifd_put.exit:                                   ; preds = %if.then.i274, %if.end60.caifd_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %96) #11, !srcloc !84
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.caif_net, ptr %call.i164, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %110 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %nd_net.i, align 4
  %112 = load i32, ptr @caif_net_id, align 4
  %call.i.i276 = tail call fastcc ptr @net_generic(ptr noundef %111, i32 noundef %112) #11
  %caifdevs.i.i277 = getelementptr inbounds %struct.caif_net, ptr %call.i.i276, i32 0, i32 1
  %call2.i278 = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i278, label %sw.bb65.for.cond.i292.preheader_crit_edge, label %land.lhs.true.i281

sw.bb65.for.cond.i292.preheader_crit_edge:        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i292.preheader

land.lhs.true.i281:                               ; preds = %sw.bb65
  %call3.i279 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i279)
  %tobool.not.i280 = icmp eq i32 %call3.i279, 0
  br i1 %tobool.not.i280, label %land.lhs.true4.i284, label %land.lhs.true.i281.for.cond.i292.preheader_crit_edge

land.lhs.true.i281.for.cond.i292.preheader_crit_edge: ; preds = %land.lhs.true.i281
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i292.preheader

land.lhs.true4.i284:                              ; preds = %land.lhs.true.i281
  %call5.i282 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i282)
  %tobool6.not.i283 = icmp eq i32 %call5.i282, 0
  br i1 %tobool6.not.i283, label %land.lhs.true4.i284.for.cond.i292.preheader_crit_edge, label %land.lhs.true7.i286

land.lhs.true4.i284.for.cond.i292.preheader_crit_edge: ; preds = %land.lhs.true4.i284
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i292.preheader

land.lhs.true7.i286:                              ; preds = %land.lhs.true4.i284
  %.b33.i285 = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i285, label %land.lhs.true7.i286.for.cond.i292.preheader_crit_edge, label %if.then.i287

land.lhs.true7.i286.for.cond.i292.preheader_crit_edge: ; preds = %land.lhs.true7.i286
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i292.preheader

if.then.i287:                                     ; preds = %land.lhs.true7.i286
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i292.preheader

for.cond.i292.preheader:                          ; preds = %if.then.i287, %land.lhs.true7.i286.for.cond.i292.preheader_crit_edge, %land.lhs.true4.i284.for.cond.i292.preheader_crit_edge, %land.lhs.true.i281.for.cond.i292.preheader_crit_edge, %sw.bb65.for.cond.i292.preheader_crit_edge
  br label %for.cond.i292

for.cond.i292:                                    ; preds = %for.body.i295.for.cond.i292_crit_edge, %for.cond.i292.preheader
  %.pn.in.i289 = phi ptr [ %.pn.i290, %for.body.i295.for.cond.i292_crit_edge ], [ %caifdevs.i.i277, %for.cond.i292.preheader ]
  %113 = ptrtoint ptr %.pn.in.i289 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pn.i290 = load volatile ptr, ptr %.pn.in.i289, align 4
  %cmp.not.i291 = icmp eq ptr %.pn.i290, %caifdevs.i.i277
  br i1 %cmp.not.i291, label %for.cond.i292.if.then69_crit_edge, label %for.body.i295

for.cond.i292.if.then69_crit_edge:                ; preds = %for.cond.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

for.body.i295:                                    ; preds = %for.cond.i292
  %netdev.i293 = getelementptr i8, ptr %.pn.i290, i32 8
  %114 = ptrtoint ptr %netdev.i293 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %netdev.i293, align 4
  %cmp15.i294 = icmp eq ptr %115, %1
  br i1 %cmp15.i294, label %caif_get.exit299, label %for.body.i295.for.cond.i292_crit_edge

for.body.i295.for.cond.i292_crit_edge:            ; preds = %for.body.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i292

caif_get.exit299:                                 ; preds = %for.body.i295
  %netdev.i293.le = getelementptr i8, ptr %.pn.i290, i32 8
  %caifd.0.le.i296 = getelementptr i8, ptr %.pn.i290, i32 -52
  %cmp67 = icmp eq ptr %caifd.0.le.i296, null
  br i1 %cmp67, label %caif_get.exit299.if.then69_crit_edge, label %if.end71

caif_get.exit299.if.then69_crit_edge:             ; preds = %caif_get.exit299
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then69

if.then69:                                        ; preds = %caif_get.exit299.if.then69_crit_edge, %for.cond.i292.if.then69_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end71:                                         ; preds = %caif_get.exit299
  %call.i.i300 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i290) #11
  br i1 %call.i.i300, label %if.end.i.i, label %if.end71.list_del_rcu.exit_crit_edge

if.end71.list_del_rcu.exit_crit_edge:             ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i290, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i, align 4
  %118 = ptrtoint ptr %.pn.i290 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %.pn.i290, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.end71.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i290, i32 0, i32 1
  %122 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %123 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %123)
  %cmp7.i = icmp ult i32 %call6.i, %123
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %list_del_rcu.exit.lor.lhs.false75_crit_edge

list_del_rcu.exit.lor.lhs.false75_crit_edge:      ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false75

do.body.lr.ph.i:                                  ; preds = %list_del_rcu.exit
  %pcpu_refcnt.i301 = getelementptr i8, ptr %.pn.i290, i32 12
  %124 = ptrtoint ptr %pcpu_refcnt.i301 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pcpu_refcnt.i301, align 4
  %126 = ptrtoint ptr %125 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call9.i = phi i32 [ %call6.i, %do.body.lr.ph.i ], [ %call.i304, %do.body.i.do.body.i_crit_edge ]
  %refcnt.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add2.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i302 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %127 = ptrtoint ptr %arrayidx.i302 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx.i302, align 4
  %add.i303 = add i32 %128, %126
  %129 = inttoptr i32 %add.i303 to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add2.i = add i32 %131, %refcnt.08.i
  %call.i304 = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp.i = icmp ult i32 %call.i304, %123
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %caifd_refcnt_read.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

caifd_refcnt_read.exit:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %cmp73.not = icmp eq i32 %add2.i, 0
  br i1 %cmp73.not, label %caifd_refcnt_read.exit.lor.lhs.false75_crit_edge, label %caifd_refcnt_read.exit.do.end83_crit_edge

caifd_refcnt_read.exit.do.end83_crit_edge:        ; preds = %caifd_refcnt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

caifd_refcnt_read.exit.lor.lhs.false75_crit_edge: ; preds = %caifd_refcnt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %caifd_refcnt_read.exit.lor.lhs.false75_crit_edge, %list_del_rcu.exit.lor.lhs.false75_crit_edge
  %call77 = tail call i32 @cfcnfg_del_phy_layer(ptr noundef %7, ptr noundef nonnull %caifd.0.le.i296) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78.not = icmp eq i32 %call77, 0
  br i1 %cmp78.not, label %if.end89, label %lor.lhs.false75.do.end83_crit_edge

lor.lhs.false75.do.end83_crit_edge:               ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end83

do.end83:                                         ; preds = %lor.lhs.false75.do.end83_crit_edge, %caifd_refcnt_read.exit.do.end83_crit_edge
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15) #16
  tail call fastcc void @list_add_rcu(ptr noundef %.pn.i290, ptr noundef %caifdevs.i)
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

if.end89:                                         ; preds = %lor.lhs.false75
  tail call void @synchronize_rcu() #11
  %132 = ptrtoint ptr %netdev.i293.le to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %netdev.i293.le, align 4
  %tobool.not.i305 = icmp eq ptr %133, null
  br i1 %tobool.not.i305, label %if.end89.dev_put.exit_crit_edge, label %do.body1.i

if.end89.dev_put.exit_crit_edge:                  ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end89
  %134 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i306 = getelementptr inbounds %struct.net_device, ptr %133, i32 0, i32 118
  %135 = ptrtoint ptr %pcpu_refcnt.i306 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcpu_refcnt.i306, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i307 = and i32 %138, -16384
  %139 = inttoptr i32 %and.i.i307 to ptr
  %cpu.i308 = getelementptr inbounds %struct.thread_info, ptr %139, i32 0, i32 3
  %140 = ptrtoint ptr %cpu.i308 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %cpu.i308, align 4
  %arrayidx.i309 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %141
  %142 = ptrtoint ptr %arrayidx.i309 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx.i309, align 4
  %add.i310 = add i32 %143, %137
  %144 = inttoptr i32 %add.i310 to ptr
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %144, align 4
  %add13.i311 = add i32 %146, -1
  store i32 %add13.i311, ptr %144, align 4
  %147 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i312 = and i32 %147, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i312)
  %tobool24.not.i = icmp eq i32 %and.i.i.i312, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !83

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %134) #11, !srcloc !84
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end89.dev_put.exit_crit_edge
  %pcpu_refcnt = getelementptr i8, ptr %.pn.i290, i32 12
  %148 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pcpu_refcnt, align 4
  tail call void @free_percpu(ptr noundef %149) #11
  tail call void @kfree(ptr noundef nonnull %caifd.0.le.i296) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %dev_put.exit, %do.end83, %if.then69, %caifd_put.exit, %rcu_read_unlock.exit251, %rcu_read_unlock.exit214, %rcu_read_unlock.exit, %if.end24, %do.end, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rcu_read_unlock.exit251 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %dev_put.exit ], [ 0, %do.end83 ], [ 0, %if.then69 ], [ 0, %caifd_put.exit ], [ 0, %rcu_read_unlock.exit214 ], [ 0, %rcu_read_unlock.exit ], [ 0, %if.end24 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %layer) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfserl_create(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfserl_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dev_flowctrl(ptr noundef readonly %dev, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !79
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i.i, align 4
  %6 = load i32, ptr @caif_net_id, align 4
  %call.i.i = tail call fastcc ptr @net_generic(ptr noundef %5, i32 noundef %6) #11
  %caifdevs.i.i = getelementptr inbounds %struct.caif_net, ptr %call.i.i, i32 0, i32 1
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #11
  br i1 %call2.i, label %rcu_read_lock.exit.for.cond.i.preheader_crit_edge, label %land.lhs.true.i21

rcu_read_lock.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true.i21:                                ; preds = %rcu_read_lock.exit
  %call3.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i20 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i20, label %land.lhs.true4.i, label %land.lhs.true.i21.for.cond.i.preheader_crit_edge

land.lhs.true.i21.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i21
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %land.lhs.true7.i

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

land.lhs.true7.i:                                 ; preds = %land.lhs.true4.i
  %.b33.i = load i1, ptr @caif_get.__warned, align 1
  br i1 %.b33.i, label %land.lhs.true7.i.for.cond.i.preheader_crit_edge, label %if.then.i22

land.lhs.true7.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.preheader

if.then.i22:                                      ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @caif_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 116, ptr noundef nonnull @.str.12) #11
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i22, %land.lhs.true7.i.for.cond.i.preheader_crit_edge, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i21.for.cond.i.preheader_crit_edge, %rcu_read_lock.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %caifdevs.i.i, %for.cond.i.preheader ]
  %7 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %caifdevs.i.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %netdev.i = getelementptr i8, ptr %.pn.i, i32 8
  %8 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %netdev.i, align 4
  %cmp15.i = icmp eq ptr %9, %dev
  br i1 %cmp15.i, label %caif_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

caif_get.exit:                                    ; preds = %for.body.i
  %caifd.0.le.i = getelementptr i8, ptr %.pn.i, i32 -52
  %tobool.not = icmp eq ptr %caifd.0.le.i, null
  br i1 %tobool.not, label %caif_get.exit.if.then_crit_edge, label %lor.lhs.false

caif_get.exit.if.then_crit_edge:                  ; preds = %caif_get.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %caif_get.exit
  %10 = ptrtoint ptr %caifd.0.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caifd.0.le.i, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false2

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ctrlcmd = getelementptr inbounds %struct.cflayer, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ctrlcmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrlcmd, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %lor.lhs.false2.if.then_crit_edge, label %if.end

lor.lhs.false2.if.then_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false2.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %caif_get.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge
  %call.i23 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i23, label %if.then.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i26

if.then.rcu_read_unlock.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i26:                                ; preds = %if.then
  %call1.i24 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i28

land.lhs.true.i26.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i28:                               ; preds = %land.lhs.true.i26
  %.b4.i27 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i27, label %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, label %if.then.i29

land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i29:                                      ; preds = %land.lhs.true2.i28
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i29, %land.lhs.true2.i28.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i26.rcu_read_unlock.exit_crit_edge, %if.then.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %14 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i30 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i30 to ptr
  %preempt_count.i.i.i.i31 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i31, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i31, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn.i, i32 12
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, 1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i33 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i33, label %if.then.i34, label %if.end.caifd_hold.exit_crit_edge, !prof !83

if.end.caifd_hold.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_hold.exit

if.then.i34:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_hold.exit

caifd_hold.exit:                                  ; preds = %if.then.i34, %if.end.caifd_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #11, !srcloc !84
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i35, label %caifd_hold.exit.rcu_read_unlock.exit46_crit_edge, label %land.lhs.true.i38

caifd_hold.exit.rcu_read_unlock.exit46_crit_edge: ; preds = %caifd_hold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit46

land.lhs.true.i38:                                ; preds = %caifd_hold.exit
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit46_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit46_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit46

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit46_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit46_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit46

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit46

rcu_read_unlock.exit46:                           ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit46_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit46_crit_edge, %caifd_hold.exit.rcu_read_unlock.exit46_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !80
  %32 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i.i.i.i42 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i44 = add i32 %35, -1
  store volatile i32 %sub.i.i.i44, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %36 = ptrtoint ptr %caifd.0.le.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %caifd.0.le.i, align 4
  %ctrlcmd8 = getelementptr inbounds %struct.cflayer, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ctrlcmd8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrlcmd8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool11.not = icmp eq i32 %on, 0
  %cond = select i1 %tobool11.not, i32 6, i32 7
  %id = getelementptr i8, ptr %.pn.i, i32 -20
  %40 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id, align 4
  tail call void %39(ptr noundef %37, i32 noundef %cond, i32 noundef %41) #11
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %43 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcpu_refcnt.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i48 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i48 to ptr
  %cpu.i49 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i49, align 4
  %arrayidx.i50 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i50, align 4
  %add.i51 = add i32 %51, %45
  %52 = inttoptr i32 %add.i51 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %add13.i52 = add i32 %54, -1
  store i32 %add13.i52, ptr %52, align 4
  %55 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i53 = and i32 %55, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i53)
  %tobool.not.i54 = icmp eq i32 %and.i.i.i53, 0
  br i1 %tobool.not.i54, label %if.then.i55, label %rcu_read_unlock.exit46.caifd_put.exit_crit_edge, !prof !83

rcu_read_unlock.exit46.caifd_put.exit_crit_edge:  ; preds = %rcu_read_unlock.exit46
  call void @__sanitizer_cov_trace_pc() #13
  br label %caifd_put.exit

if.then.i55:                                      ; preds = %rcu_read_unlock.exit46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %caifd_put.exit

caifd_put.exit:                                   ; preds = %if.then.i55, %rcu_read_unlock.exit46.caifd_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #11, !srcloc !84
  br label %cleanup

cleanup:                                          ; preds = %caifd_put.exit, %rcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfcnfg_set_phy_state(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cfcnfg_del_phy_layer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caif_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @caif_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %caifdevs = getelementptr inbounds %struct.caif_net, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %caifdevs to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %caifdevs, ptr %caifdevs, align 4
  %prev.i = getelementptr inbounds %struct.caif_net, ptr %call, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %caifdevs, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.caif_net, ptr %call, i32 0, i32 1, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @caif_init_net.__key) #11
  %call2 = tail call ptr @cfcnfg_create() #11
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call, align 4
  %tobool.not = icmp eq ptr %call2, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caif_exit_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @caif_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #11
  %caifdevs.i = getelementptr inbounds %struct.caif_net, ptr %call.i, i32 0, i32 1
  %1 = load i32, ptr @caif_net_id, align 4
  %call.i43 = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %1) #11
  %2 = ptrtoint ptr %call.i43 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i43, align 4
  tail call void @rtnl_lock() #11
  %lock = getelementptr inbounds %struct.caif_net, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %4 = ptrtoint ptr %caifdevs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %caifdevs.i, align 4
  %cmp.not53 = icmp eq ptr %5, %caifdevs.i
  br i1 %cmp.not53, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %dev_put.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in54 = phi ptr [ %.pn56, %dev_put.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %caifd.055 = getelementptr i8, ptr %.pn.in54, i32 -52
  %6 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn56 = load ptr, ptr %.pn.in54, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call11 = tail call i32 @cfcnfg_set_phy_state(ptr noundef %3, ptr noundef %caifd.055, i1 noundef zeroext false) #11
  %pcpu_refcnt.i = getelementptr i8, ptr %.pn.in54, i32 12
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %list_del_rcu.exit
  %i.050 = phi i32 [ 0, %list_del_rcu.exit ], [ %inc, %do.end.land.rhs_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  %call6.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %14)
  %cmp7.i = icmp ult i32 %call6.i, %14
  br i1 %cmp7.i, label %do.body.lr.ph.i, label %land.rhs.lor.rhs_crit_edge

land.rhs.lor.rhs_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

do.body.lr.ph.i:                                  ; preds = %land.rhs
  %15 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcpu_refcnt.i, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call9.i = phi i32 [ %call6.i, %do.body.lr.ph.i ], [ %call.i44, %do.body.i.do.body.i_crit_edge ]
  %refcnt.08.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %add2.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %17
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add2.i = add i32 %22, %refcnt.08.i
  %call.i44 = tail call i32 @cpumask_next(i32 noundef %call9.i, ptr noundef nonnull @__cpu_possible_mask) #17
  %cmp.i = icmp ult i32 %call.i44, %14
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %caifd_refcnt_read.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

caifd_refcnt_read.exit:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2.i)
  %cmp14.not = icmp eq i32 %add2.i, 0
  br i1 %cmp14.not, label %caifd_refcnt_read.exit.lor.rhs_crit_edge, label %caifd_refcnt_read.exit.do.end_crit_edge

caifd_refcnt_read.exit.do.end_crit_edge:          ; preds = %caifd_refcnt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

caifd_refcnt_read.exit.lor.rhs_crit_edge:         ; preds = %caifd_refcnt_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.rhs

lor.rhs:                                          ; preds = %caifd_refcnt_read.exit.lor.rhs_crit_edge, %land.rhs.lor.rhs_crit_edge
  %call16 = tail call i32 @cfcnfg_del_phy_layer(ptr noundef %3, ptr noundef %caifd.055) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17.not = icmp eq i32 %call16, 0
  br i1 %cmp17.not, label %lor.rhs.while.end_crit_edge, label %lor.rhs.do.end_crit_edge

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs.while.end_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %caifd_refcnt_read.exit.do.end_crit_edge
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.20) #16
  tail call void @msleep(i32 noundef 250) #11
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end.while.end_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %lor.rhs.while.end_crit_edge
  tail call void @synchronize_rcu() #11
  %netdev = getelementptr i8, ptr %.pn.in54, i32 8
  %23 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %while.end.dev_put.exit_crit_edge, label %do.body1.i

while.end.dev_put.exit_crit_edge:                 ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_put.exit

do.body1.i:                                       ; preds = %while.end
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !81
  %pcpu_refcnt.i45 = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 118
  %26 = ptrtoint ptr %pcpu_refcnt.i45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcpu_refcnt.i45, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !69) #11
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i46 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i46, align 4
  %add.i47 = add i32 %34, %28
  %35 = inttoptr i32 %add.i47 to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add13.i = add i32 %37, -1
  store i32 %add13.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !82
  %and.i.i.i = and i32 %38, 128
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
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #11, !srcloc !84
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %while.end.dev_put.exit_crit_edge
  %39 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcpu_refcnt.i, align 4
  tail call void @free_percpu(ptr noundef %40) #11
  tail call void @kfree(ptr noundef %caifd.055) #11
  %cmp.not = icmp eq ptr %.pn56, %caifdevs.i
  br i1 %cmp.not, label %dev_put.exit.for.end_crit_edge, label %dev_put.exit.for.body_crit_edge

dev_put.exit.for.body_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

dev_put.exit.for.end_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %dev_put.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @cfcnfg_remove(ptr noundef %3) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @rtnl_unlock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cfcnfg_create() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfcnfg_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !41, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !67, !68}
!llvm.named.register.sp = !{!69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__UNIQUE_ID_file366, !1, !"__UNIQUE_ID_file366", i1 false, i1 false}
!1 = !{!"../net/caif/caif_dev.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_license367, !1, !"__UNIQUE_ID_license367", i1 false, i1 false}
!3 = !{ptr @__ksymtab_get_cfcnfg, !4, !"__ksymtab_get_cfcnfg", i1 false, i1 false}
!4 = !{!"../net/caif/caif_dev.c", i32 64, i32 1}
!5 = !{ptr @caif_enroll_dev.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/caif/caif_dev.c", i32 329, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__ksymtab_caif_enroll_dev, !9, !"__ksymtab_caif_enroll_dev", i1 false, i1 false}
!9 = !{!"../net/caif/caif_dev.c", i32 360, i32 1}
!10 = !{ptr @__initcall__kmod_caif__373_584_caif_device_init6, !11, !"__initcall__kmod_caif__373_584_caif_device_init6", i1 false, i1 false}
!11 = !{!"../net/caif/caif_dev.c", i32 584, i32 1}
!12 = !{ptr @__exitcall_caif_device_exit, !13, !"__exitcall_caif_device_exit", i1 false, i1 false}
!13 = !{!"../net/caif/caif_dev.c", i32 585, i32 1}
!14 = !{ptr @caif_net_id, !15, !"caif_net_id", i1 false, i1 false}
!15 = !{!"../net/caif/caif_dev.c", i32 55, i32 21}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/caif/caif_dev.c", i32 194, i32 9}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/caif/caif_dev.c", i32 220, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @transmit.__UNIQUE_ID_ddebug372, !31, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!35 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"q_high", i1 false, i1 false}
!40 = !{!"../net/caif/caif_dev.c", i32 56, i32 12}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/caif/caif_dev.c", i32 115, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @caif_device_notifier, !48, !"caif_device_notifier", i1 false, i1 false}
!48 = !{!"../net/caif/caif_dev.c", i32 501, i32 30}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/caif/caif_dev.c", i32 395, i32 5}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @caif_device_notify._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @caif_device_notify._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/caif/caif_dev.c", i32 483, i32 4}
!56 = !{ptr @caif_device_notify._entry.16, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @caif_device_notify._entry_ptr.18, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @caif_packet_type, !59, !"caif_packet_type", i1 false, i1 false}
!59 = !{!"../net/caif/caif_dev.c", i32 283, i32 27}
!60 = !{ptr @caif_net_ops, !61, !"caif_net_ops", i1 false, i1 false}
!61 = !{!"../net/caif/caif_dev.c", i32 554, i32 33}
!62 = !{ptr @caif_init_net.__key, !63, !"__key", i1 false, i1 false}
!63 = !{!"../net/caif/caif_dev.c", i32 511, i32 2}
!64 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/caif/caif_dev.c", i32 539, i32 4}
!67 = !{ptr @caif_exit_net._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @caif_exit_net._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{!"sp"}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2149658440}
!80 = !{i64 2149658706}
!81 = !{i64 613620, i64 613681}
!82 = !{i64 616352}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{i64 616637}
!85 = !{i64 2149683832}
!86 = !{i8 0, i8 2}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2148702954, i64 2148702959, i64 2148702972, i64 2148703016, i64 2148703050, i64 2148703071}
!89 = !{!"auto-init"}
