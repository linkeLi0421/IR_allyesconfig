; ModuleID = '/llk/IR_all_yes/net/can/gw.c_pt.bc'
source_filename = "../net/can/gw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.cgw_job = type { %struct.hlist_node, %struct.callback_head, i32, i32, i32, [4 x i8], %struct.cf_mod, %union.anon.149, %union.anon.150, %union.anon.151, i8, i8, i16, [4 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.cf_mod = type { %struct.anon.145, %struct.anon.146, [16 x ptr], %struct.anon.147, %struct.anon.148, i32 }
%struct.anon.145 = type { %struct.canfd_frame, %struct.canfd_frame, %struct.canfd_frame, %struct.canfd_frame }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.anon.146 = type { i8, i8, i8, i8 }
%struct.anon.147 = type { %struct.cgw_csum_xor, %struct.cgw_csum_crc8 }
%struct.cgw_csum_xor = type { i8, i8, i8, i8 }
%struct.cgw_csum_crc8 = type { i8, i8, i8, i8, i8, [256 x i8], i8, [20 x i8] }
%struct.anon.148 = type { ptr, ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { %struct.can_can_gw }
%struct.can_can_gw = type { %struct.can_filter, i32, i32 }
%struct.can_filter = type { i32, i32 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
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
%struct.cgw_fdframe_mod = type <{ %struct.canfd_frame, i8 }>
%struct.cgw_frame_mod = type <{ %struct.can_frame, i8 }>
%struct.can_frame = type { i32, %union.anon.152, i8, i8, i8, [8 x i8] }
%union.anon.152 = type { i8 }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.134 }
%union.anon.134 = type { [6 x i32], [24 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@__UNIQUE_ID_description457 = internal constant [42 x i8] c"can_gw.description=PF_CAN netlink gateway\00", section ".modinfo", align 1
@__UNIQUE_ID_file458 = internal constant [27 x i8] c"can_gw.file=net/can/can-gw\00", section ".modinfo", align 1
@__UNIQUE_ID_license459 = internal constant [28 x i8] c"can_gw.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author460 = internal constant [62 x i8] c"can_gw.author=Oliver Hartkopp <oliver.hartkopp@volkswagen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [20 x i8] c"can_gw.alias=can-gw\00", section ".modinfo", align 1
@__param_str_max_hops = internal constant [16 x i8] c"can_gw.max_hops\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@max_hops = internal global i32 1, section ".data..read_mostly", align 4
@__param_max_hops = internal constant %struct.kernel_param { ptr @__param_str_max_hops, ptr null, ptr @param_ops_uint, i16 292, i8 -1, i8 0, %union.anon.124 { ptr @max_hops } }, section "__param", align 4
@__UNIQUE_ID_max_hopstype462 = internal constant [30 x i8] c"can_gw.parmtype=max_hops:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_max_hops463 = internal constant [101 x i8] c"can_gw.parm=max_hops:maximum can-gw routing hops for CAN frames (valid values: 1-6 hops, default: 1)\00", section ".modinfo", align 1
@notifier = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@cangw_pernet_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @cangw_pernet_init, ptr null, ptr @cangw_pernet_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@cgw_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@__initcall__kmod_can_gw__472_1321_cgw_module_init6 = internal global ptr @cgw_module_init, section ".initcall6.init", align 4
@__exitcall_cgw_module_exit = internal global ptr @cgw_module_exit, section ".exitcall.exit", align 4
@cgw_remove_all_jobs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net/can/gw.c\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cgw_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 1261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016can: netlink gateway - max_hops=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cgw_module_init\00", [16 x i8] zeroinitializer }, align 32
@cgw_module_init._entry_ptr = internal global ptr @cgw_module_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"can_gw\00", [25 x i8] zeroinitializer }, align 32
@cgw_notifier.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgw_dump_jobs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@cgw_create_job.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgw_create_job.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@cgw_policy = internal constant { [19 x %struct.nla_policy], [40 x i8] } { [19 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 17, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 282, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 73, %union.anon.76 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"gw\00", [29 x i8] zeroinitializer }, align 32
@cgw_remove_job.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.14 = private unnamed_addr constant [9 x i8] c"notifier\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 81, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"cangw_pernet_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1249, i32 33 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1153, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1261, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1268, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 757, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 695, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 991, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"cgw_policy\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 775, i32 32 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [16 x i8] c"../net/can/gw.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 571, i32 16 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author460, ptr @__UNIQUE_ID_description457, ptr @__UNIQUE_ID_file458, ptr @__UNIQUE_ID_license459, ptr @__UNIQUE_ID_max_hops463, ptr @__UNIQUE_ID_max_hopstype462, ptr @__exitcall_cgw_module_exit, ptr @__initcall__kmod_can_gw__472_1321_cgw_module_init6, ptr @__param_max_hops, ptr @cgw_module_exit, ptr @cgw_module_init._entry, ptr @cgw_module_init._entry_ptr, ptr @notifier, ptr @cangw_pernet_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cgw_policy, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cangw_pernet_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgw_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cgw_policy to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cgw_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @rtnl_unregister_all(i32 noundef 29) #14
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @notifier) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #14
  tail call void @rcu_barrier() #14
  %0 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unregister_all(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cgw_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_hops, align 4
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 6)
  store i32 %2, ptr @max_hops, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %2) #17
  %call8 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 720, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  store ptr %call9, ptr @cgw_cache, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.out_cache_create_crit_edge, label %if.end12

if.end.out_cache_create_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_cache_create

if.end12:                                         ; preds = %if.end
  store ptr @cgw_notifier, ptr @notifier, align 4
  %call13 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.out_register_notifier_crit_edge

if.end12.out_register_notifier_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_register_notifier

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 26, ptr noundef null, ptr noundef nonnull @cgw_dump_jobs, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.out_rtnl_register1_crit_edge

if.end16.out_rtnl_register1_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rtnl_register1

if.end20:                                         ; preds = %if.end16
  %call21 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 24, ptr noundef nonnull @cgw_create_job, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.out_rtnl_register2_crit_edge

if.end20.out_rtnl_register2_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_rtnl_register2

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 29, i32 noundef 25, ptr noundef nonnull @cgw_remove_job, ptr noundef null, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %out_rtnl_register3

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out_rtnl_register3:                               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %call29 = tail call i32 @rtnl_unregister(i32 noundef 29, i32 noundef 24) #14
  br label %out_rtnl_register2

out_rtnl_register2:                               ; preds = %out_rtnl_register3, %if.end20.out_rtnl_register2_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end20.out_rtnl_register2_crit_edge ], [ %call25, %out_rtnl_register3 ]
  %call30 = tail call i32 @rtnl_unregister(i32 noundef 29, i32 noundef 26) #14
  br label %out_rtnl_register1

out_rtnl_register1:                               ; preds = %out_rtnl_register2, %if.end16.out_rtnl_register1_crit_edge
  %ret.1 = phi i32 [ %call17, %if.end16.out_rtnl_register1_crit_edge ], [ %ret.0, %out_rtnl_register2 ]
  %call31 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @notifier) #14
  br label %out_register_notifier

out_register_notifier:                            ; preds = %out_rtnl_register1, %if.end12.out_register_notifier_crit_edge
  %ret.2 = phi i32 [ %call13, %if.end12.out_register_notifier_crit_edge ], [ %ret.1, %out_rtnl_register1 ]
  %3 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %3) #14
  br label %out_cache_create

out_cache_create:                                 ; preds = %out_register_notifier, %if.end.out_cache_create_crit_edge
  %ret.3 = phi i32 [ %ret.2, %out_register_notifier ], [ -12, %if.end.out_cache_create_crit_edge ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cangw_pernet_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %out_cache_create, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_cache_create ], [ %call8, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cangw_pernet_init(ptr nocapture noundef writeonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cgw_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 15
  %0 = ptrtoint ptr %cgw_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cgw_list, align 16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cangw_pernet_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #14
  tail call fastcc void @cgw_remove_all_jobs(ptr noundef %net)
  tail call void @rtnl_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cgw_remove_all_jobs(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b66 = load i1, ptr @cgw_remove_all_jobs.__already_done, align 1
  br i1 %.b66, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !74

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_remove_all_jobs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1153, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1153) #14
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %cgw_list = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 50, i32 15
  %0 = ptrtoint ptr %cgw_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cgw_list, align 16
  %tobool40.not67 = icmp eq ptr %1, null
  br i1 %tobool40.not67, label %if.end29.for.end_crit_edge, label %if.end29.land.rhs41_crit_edge

if.end29.land.rhs41_crit_edge:                    ; preds = %if.end29
  br label %land.rhs41

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.rhs41:                                       ; preds = %hlist_del.exit.land.rhs41_crit_edge, %if.end29.land.rhs41_crit_edge
  %gwj.068 = phi ptr [ %3, %hlist_del.exit.land.rhs41_crit_edge ], [ %1, %if.end29.land.rhs41_crit_edge ]
  %2 = ptrtoint ptr %gwj.068 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gwj.068, align 8
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %gwj.068, i32 0, i32 1
  %4 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev2.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %3, ptr %5, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %land.rhs41.hlist_del.exit_crit_edge, label %do.body13.i.i

land.rhs41.hlist_del.exit_crit_edge:              ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %land.rhs41
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %land.rhs41.hlist_del.exit_crit_edge
  %8 = ptrtoint ptr %gwj.068 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %gwj.068, align 4
  %9 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %src.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.068, i32 0, i32 7
  %10 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src.i, align 8
  %12 = getelementptr inbounds %struct.cgw_job, ptr %gwj.068, i32 0, i32 9
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %can_mask.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.068, i32 0, i32 9, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %can_mask.i, align 4
  tail call void @can_rx_unregister(ptr noundef %net, ptr noundef %11, i32 noundef %14, i32 noundef %16, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %gwj.068) #14
  tail call void @synchronize_rcu() #14
  %17 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef nonnull %gwj.068) #14
  br i1 %tobool.not.i.i, label %hlist_del.exit.for.end_crit_edge, label %hlist_del.exit.land.rhs41_crit_edge

hlist_del.exit.land.rhs41_crit_edge:              ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs41

hlist_del.exit.for.end_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %hlist_del.exit.for.end_crit_edge, %if.end29.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_rx_unregister(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @can_can_gw_rcv(ptr noundef %skb, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len3, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %4)
  %cmp.not = icmp eq i32 %4, 72
  br i1 %cmp.not, label %if.then.do.body_crit_edge, label %if.then.cleanup135_crit_edge

if.then.cleanup135_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup135

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp4.not = icmp eq i32 %4, 16
  br i1 %cmp4.not, label %if.else.do.body_crit_edge, label %if.else.cleanup135_crit_edge

if.else.cleanup135_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup135

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

do.body:                                          ; preds = %if.else.do.body_crit_edge, %if.then.do.body_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %5 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %ip_summed, align 8
  %6 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp10.not = icmp eq i16 %6, 512
  br i1 %cmp10.not, label %do.end21, label %do.body15, !prof !74

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/can/gw.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 486, 0\0A.popsection", ""() #14, !srcloc !75
  unreachable

do.end21:                                         ; preds = %do.body
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 8
  %conv22 = zext i16 %9 to i32
  %10 = load i32, ptr @max_hops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv22)
  %cmp23.not = icmp ugt i32 %10, %conv22
  br i1 %cmp23.not, label %if.end26, label %if.then25

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #16
  %deleted_frames = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %deleted_frames to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %deleted_frames, align 8
  %inc = add i32 %12, 1
  store i32 %inc, ptr %deleted_frames, align 8
  br label %cleanup135

if.end26:                                         ; preds = %do.end21
  %dst = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 8
  %13 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst, align 4
  %flags27 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags27, align 8
  %and28 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  %dropped_frames = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dropped_frames, align 4
  %inc31 = add i32 %18, 1
  store i32 %inc31, ptr %dropped_frames, align 4
  br label %cleanup135

if.end32:                                         ; preds = %if.end26
  %19 = and i16 %1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool36.not = icmp eq i16 %19, 0
  br i1 %tobool36.not, label %land.lhs.true, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true:                                    ; preds = %if.end32
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  %ifindex38 = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 17
  %24 = ptrtoint ptr %ifindex38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp39 = icmp eq i32 %23, %25
  br i1 %cmp39, label %land.lhs.true.cleanup135_crit_edge, label %land.lhs.true.if.end42_crit_edge

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end42

land.lhs.true.cleanup135_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup135

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %if.end32.if.end42_crit_edge
  %mod = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 6
  %modfunc = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %modfunc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %modfunc, align 4
  %tobool43.not = icmp eq ptr %27, null
  br i1 %tobool43.not, label %if.else46, label %if.then44

if.then44:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %call45 = tail call ptr @skb_copy(ptr noundef %skb, i32 noundef 2592) #14
  br label %if.end48

if.else46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #16
  %call47 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then44
  %nskb.0 = phi ptr [ %call45, %if.then44 ], [ %call47, %if.else46 ]
  %tobool49.not = icmp eq ptr %nskb.0, null
  br i1 %tobool49.not, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %dropped_frames51 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %dropped_frames51 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dropped_frames51, align 4
  %inc52 = add i32 %29, 1
  store i32 %inc52, ptr %dropped_frames51, align 4
  br label %cleanup135

if.end53:                                         ; preds = %if.end48
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %7, align 8
  %add = add i16 %31, 1
  %32 = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 15, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %add, ptr %32, align 8
  %limit_hops = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 11
  %34 = ptrtoint ptr %limit_hops to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %limit_hops, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool59.not = icmp ne i8 %35, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp63 = icmp eq i16 %31, 0
  %or.cond = select i1 %tobool59.not, i1 %cmp63, i1 false
  br i1 %or.cond, label %if.then65, label %if.end53.if.end71_crit_edge

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then65:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %conv58 = zext i8 %35 to i32
  %36 = load i32, ptr @max_hops, align 4
  %sub = sub i32 %36, %conv58
  %37 = trunc i32 %sub to i16
  %conv69 = add i16 %37, 1
  %38 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv69, ptr %32, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %if.end53.if.end71_crit_edge
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dst, align 4
  %41 = getelementptr inbounds %struct.anon.51, ptr %nskb.0, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %41, align 8
  %data73 = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 19
  %43 = ptrtoint ptr %data73 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data73, align 4
  %45 = ptrtoint ptr %modfunc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %modfunc, align 4
  %tobool79.not = icmp eq ptr %46, null
  br i1 %tobool79.not, label %if.end71.if.end117_crit_edge, label %while.body

if.end71.if.end117_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

while.body:                                       ; preds = %if.end71
  tail call void %46(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.1 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 1
  %47 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx78.1, align 4
  %tobool79.not.1 = icmp eq ptr %48, null
  br i1 %tobool79.not.1, label %while.body.if.then86_crit_edge, label %while.body.1

while.body.if.then86_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.1:                                     ; preds = %while.body
  tail call void %48(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.2 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 2
  %49 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx78.2, align 4
  %tobool79.not.2 = icmp eq ptr %50, null
  br i1 %tobool79.not.2, label %while.body.1.if.then86_crit_edge, label %while.body.2

while.body.1.if.then86_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.2:                                     ; preds = %while.body.1
  tail call void %50(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.3 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 3
  %51 = ptrtoint ptr %arrayidx78.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx78.3, align 4
  %tobool79.not.3 = icmp eq ptr %52, null
  br i1 %tobool79.not.3, label %while.body.2.if.then86_crit_edge, label %while.body.3

while.body.2.if.then86_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.3:                                     ; preds = %while.body.2
  tail call void %52(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.4 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 4
  %53 = ptrtoint ptr %arrayidx78.4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx78.4, align 4
  %tobool79.not.4 = icmp eq ptr %54, null
  br i1 %tobool79.not.4, label %while.body.3.if.then86_crit_edge, label %while.body.4

while.body.3.if.then86_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.4:                                     ; preds = %while.body.3
  tail call void %54(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.5 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 5
  %55 = ptrtoint ptr %arrayidx78.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx78.5, align 4
  %tobool79.not.5 = icmp eq ptr %56, null
  br i1 %tobool79.not.5, label %while.body.4.if.then86_crit_edge, label %while.body.5

while.body.4.if.then86_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.5:                                     ; preds = %while.body.4
  tail call void %56(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.6 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 6
  %57 = ptrtoint ptr %arrayidx78.6 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx78.6, align 4
  %tobool79.not.6 = icmp eq ptr %58, null
  br i1 %tobool79.not.6, label %while.body.5.if.then86_crit_edge, label %while.body.6

while.body.5.if.then86_crit_edge:                 ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.6:                                     ; preds = %while.body.5
  tail call void %58(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.7 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 7
  %59 = ptrtoint ptr %arrayidx78.7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx78.7, align 4
  %tobool79.not.7 = icmp eq ptr %60, null
  br i1 %tobool79.not.7, label %while.body.6.if.then86_crit_edge, label %while.body.7

while.body.6.if.then86_crit_edge:                 ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.7:                                     ; preds = %while.body.6
  tail call void %60(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.8 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 8
  %61 = ptrtoint ptr %arrayidx78.8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx78.8, align 4
  %tobool79.not.8 = icmp eq ptr %62, null
  br i1 %tobool79.not.8, label %while.body.7.if.then86_crit_edge, label %while.body.8

while.body.7.if.then86_crit_edge:                 ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.8:                                     ; preds = %while.body.7
  tail call void %62(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.9 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 9
  %63 = ptrtoint ptr %arrayidx78.9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx78.9, align 4
  %tobool79.not.9 = icmp eq ptr %64, null
  br i1 %tobool79.not.9, label %while.body.8.if.then86_crit_edge, label %while.body.9

while.body.8.if.then86_crit_edge:                 ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.9:                                     ; preds = %while.body.8
  tail call void %64(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.10 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 10
  %65 = ptrtoint ptr %arrayidx78.10 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx78.10, align 4
  %tobool79.not.10 = icmp eq ptr %66, null
  br i1 %tobool79.not.10, label %while.body.9.if.then86_crit_edge, label %while.body.10

while.body.9.if.then86_crit_edge:                 ; preds = %while.body.9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.10:                                    ; preds = %while.body.9
  tail call void %66(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.11 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 11
  %67 = ptrtoint ptr %arrayidx78.11 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx78.11, align 4
  %tobool79.not.11 = icmp eq ptr %68, null
  br i1 %tobool79.not.11, label %while.body.10.if.then86_crit_edge, label %while.body.11

while.body.10.if.then86_crit_edge:                ; preds = %while.body.10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.11:                                    ; preds = %while.body.10
  tail call void %68(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.12 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 12
  %69 = ptrtoint ptr %arrayidx78.12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx78.12, align 4
  %tobool79.not.12 = icmp eq ptr %70, null
  br i1 %tobool79.not.12, label %while.body.11.if.then86_crit_edge, label %while.body.12

while.body.11.if.then86_crit_edge:                ; preds = %while.body.11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.12:                                    ; preds = %while.body.11
  tail call void %70(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.13 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 13
  %71 = ptrtoint ptr %arrayidx78.13 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx78.13, align 4
  %tobool79.not.13 = icmp eq ptr %72, null
  br i1 %tobool79.not.13, label %while.body.12.if.then86_crit_edge, label %while.body.13

while.body.12.if.then86_crit_edge:                ; preds = %while.body.12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.13:                                    ; preds = %while.body.12
  tail call void %72(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.14 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 14
  %73 = ptrtoint ptr %arrayidx78.14 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx78.14, align 4
  %tobool79.not.14 = icmp eq ptr %74, null
  br i1 %tobool79.not.14, label %while.body.13.if.then86_crit_edge, label %while.body.14

while.body.13.if.then86_crit_edge:                ; preds = %while.body.13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.14:                                    ; preds = %while.body.13
  tail call void %74(ptr noundef %44, ptr noundef %mod) #14
  %arrayidx78.15 = getelementptr %struct.cgw_job, ptr %data, i32 0, i32 6, i32 2, i32 15
  %75 = ptrtoint ptr %arrayidx78.15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx78.15, align 4
  %tobool79.not.15 = icmp eq ptr %76, null
  br i1 %tobool79.not.15, label %while.body.14.if.then86_crit_edge, label %while.body.15

while.body.14.if.then86_crit_edge:                ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then86

while.body.15:                                    ; preds = %while.body.14
  call void @__sanitizer_cov_trace_pc() #16
  tail call void %76(ptr noundef %44, ptr noundef %mod) #14
  br label %if.then86

if.then86:                                        ; preds = %while.body.15, %while.body.14.if.then86_crit_edge, %while.body.13.if.then86_crit_edge, %while.body.12.if.then86_crit_edge, %while.body.11.if.then86_crit_edge, %while.body.10.if.then86_crit_edge, %while.body.9.if.then86_crit_edge, %while.body.8.if.then86_crit_edge, %while.body.7.if.then86_crit_edge, %while.body.6.if.then86_crit_edge, %while.body.5.if.then86_crit_edge, %while.body.4.if.then86_crit_edge, %while.body.3.if.then86_crit_edge, %while.body.2.if.then86_crit_edge, %while.body.1.if.then86_crit_edge, %while.body.if.then86_crit_edge
  %len87 = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 6
  %77 = ptrtoint ptr %len87 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len87, align 4
  %sub88 = add i32 %78, -8
  %len89 = getelementptr inbounds %struct.canfd_frame, ptr %44, i32 0, i32 1
  %79 = ptrtoint ptr %len89 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %len89, align 4
  %conv90 = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub88, i32 %conv90)
  %cmp91 = icmp slt i32 %sub88, %conv90
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #16
  %deleted_frames94 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 4
  %81 = ptrtoint ptr %deleted_frames94 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %deleted_frames94, align 8
  %inc95 = add i32 %82, 1
  store i32 %inc95, ptr %deleted_frames94, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %nskb.0, i32 noundef 0) #14
  br label %cleanup135

if.end96:                                         ; preds = %if.then86
  %csumfunc = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 6, i32 4
  %crc8 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 6, i32 4, i32 1
  %83 = ptrtoint ptr %crc8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %crc8, align 4
  %tobool98.not = icmp eq ptr %84, null
  br i1 %tobool98.not, label %if.end96.if.end105_crit_edge, label %if.then99

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  %crc8104 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 6, i32 3, i32 1
  tail call void %84(ptr noundef %44, ptr noundef %crc8104) #14
  br label %if.end105

if.end105:                                        ; preds = %if.then99, %if.end96.if.end105_crit_edge
  %85 = ptrtoint ptr %csumfunc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %csumfunc, align 4
  %tobool108.not = icmp eq ptr %86, null
  br i1 %tobool108.not, label %if.end105.if.end117_crit_edge, label %if.then109

if.end105.if.end117_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then109:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  %csum114 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 6, i32 3
  tail call void %86(ptr noundef %44, ptr noundef %csum114) #14
  br label %if.end117

if.end117:                                        ; preds = %if.then109, %if.end105.if.end117_crit_edge, %if.end71.if.end117_crit_edge
  %87 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %flags, align 2
  %89 = and i16 %88, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool121.not = icmp eq i16 %89, 0
  br i1 %tobool121.not, label %if.then122, label %if.end117.if.end123_crit_edge

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end123

if.then122:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  %90 = getelementptr inbounds %struct.sk_buff, ptr %nskb.0, i32 0, i32 2
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %90, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end117.if.end123_crit_edge
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags, align 2
  %94 = and i16 %93, 1
  %and126 = zext i16 %94 to i32
  %call127 = tail call i32 @can_send(ptr noundef nonnull %nskb.0, i32 noundef %and126) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.else132, label %if.then129

if.then129:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %dropped_frames130 = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 3
  %95 = ptrtoint ptr %dropped_frames130 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dropped_frames130, align 4
  %inc131 = add i32 %96, 1
  store i32 %inc131, ptr %dropped_frames130, align 4
  br label %cleanup135

if.else132:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #16
  %handled_frames = getelementptr inbounds %struct.cgw_job, ptr %data, i32 0, i32 2
  %97 = ptrtoint ptr %handled_frames to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %handled_frames, align 8
  %inc133 = add i32 %98, 1
  store i32 %inc133, ptr %handled_frames, align 8
  br label %cleanup135

cleanup135:                                       ; preds = %if.else132, %if.then129, %if.then93, %if.then50, %land.lhs.true.cleanup135_crit_edge, %if.then30, %if.then25, %if.else.cleanup135_crit_edge, %if.then.cleanup135_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_send(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgw_notifier(ptr nocapture noundef readnone %nb, i32 noundef %msg, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %5)
  %cmp.not = icmp eq i16 %5, 280
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %msg)
  %cmp3 = icmp eq i32 %msg, 6
  %or.cond = and i1 %cmp3, %cmp.not
  br i1 %or.cond, label %if.then5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %entry
  %call6 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.rhs, label %if.then5.if.end38_crit_edge

if.then5.if.end38_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

land.rhs:                                         ; preds = %if.then5
  %.b88 = load i1, ptr @cgw_notifier.__already_done, align 1
  br i1 %.b88, label %land.rhs.if.end38_crit_edge, label %if.then16, !prof !74

land.rhs.if.end38_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end38

if.then16:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_notifier.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 593, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 593) #14
  br label %if.end38

if.end38:                                         ; preds = %if.then16, %land.rhs.if.end38_crit_edge, %if.then5.if.end38_crit_edge
  %cgw_list = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 50, i32 15
  %6 = ptrtoint ptr %cgw_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cgw_list, align 16
  %tobool49.not90 = icmp eq ptr %7, null
  br i1 %tobool49.not90, label %if.end38.cleanup_crit_edge, label %if.end38.land.rhs50_crit_edge

if.end38.land.rhs50_crit_edge:                    ; preds = %if.end38
  br label %land.rhs50

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs50:                                       ; preds = %for.inc.land.rhs50_crit_edge, %if.end38.land.rhs50_crit_edge
  %gwj.091 = phi ptr [ %9, %for.inc.land.rhs50_crit_edge ], [ %7, %if.end38.land.rhs50_crit_edge ]
  %8 = ptrtoint ptr %gwj.091 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gwj.091, align 8
  %src = getelementptr inbounds %struct.cgw_job, ptr %gwj.091, i32 0, i32 7
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %cmp54 = icmp eq ptr %11, %1
  br i1 %cmp54, label %land.rhs50.if.then58_crit_edge, label %lor.lhs.false

land.rhs50.if.then58_crit_edge:                   ; preds = %land.rhs50
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

lor.lhs.false:                                    ; preds = %land.rhs50
  %dst = getelementptr inbounds %struct.cgw_job, ptr %gwj.091, i32 0, i32 8
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 4
  %cmp56 = icmp eq ptr %13, %1
  br i1 %cmp56, label %lor.lhs.false.if.then58_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

lor.lhs.false.if.then58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then58

if.then58:                                        ; preds = %lor.lhs.false.if.then58_crit_edge, %land.rhs50.if.then58_crit_edge
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %gwj.091, i32 0, i32 1
  %14 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pprev2.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %9, ptr %15, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then58.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then58.hlist_del.exit_crit_edge:               ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then58.hlist_del.exit_crit_edge
  %18 = ptrtoint ptr %gwj.091 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %gwj.091, align 4
  %19 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 8
  %22 = getelementptr inbounds %struct.cgw_job, ptr %gwj.091, i32 0, i32 9
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 8
  %can_mask.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.091, i32 0, i32 9, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %can_mask.i, align 4
  tail call void @can_rx_unregister(ptr noundef %3, ptr noundef %21, i32 noundef %24, i32 noundef %26, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %gwj.091) #14
  tail call void @synchronize_rcu() #14
  %27 = load ptr, ptr @cgw_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %gwj.091) #14
  br label %for.inc

for.inc:                                          ; preds = %hlist_del.exit, %lor.lhs.false.for.inc_crit_edge
  %tobool49.not = icmp eq ptr %9, null
  br i1 %tobool49.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs50_crit_edge

for.inc.land.rhs50_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs50

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgw_dump_jobs(ptr noundef %skb, ptr nocapture noundef %cb) #3 align 64 {
entry:
  %tmp.i14.i = alloca i32, align 4
  %tmp.i12.i = alloca i32, align 4
  %tmp.i10.i = alloca i32, align 4
  %tmp.i8.i = alloca i8, align 1
  %tmp.i6.i = alloca i32, align 4
  %tmp.i4.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %mb.i = alloca %struct.cgw_fdframe_mod, align 1
  %mb108.i = alloca %struct.cgw_frame_mod, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !64) #14
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !76
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b50 = load i1, ptr @cgw_dump_jobs.__warned, align 1
  br i1 %.b50, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_dump_jobs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 757, ptr noundef nonnull @.str.5) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %cgw_list = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 50, i32 15
  %12 = ptrtoint ptr %cgw_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %gwj.072 = load volatile ptr, ptr %cgw_list, align 8
  %tobool13.not73 = icmp eq ptr %gwj.072, null
  br i1 %tobool13.not73, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %modtype47.i = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %mb.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.cgw_frame_mod, ptr %mb108.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %gwj.086 = phi ptr [ %gwj.072, %for.body.lr.ph ], [ %gwj.0, %cont.for.body_crit_edge ]
  %idx.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cont.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.074, i32 %7)
  %cmp = icmp slt i32 %idx.074, %7
  br i1 %cmp, label %for.body.cont_crit_edge, label %if.end15

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cont

if.end15:                                         ; preds = %for.body
  %14 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 3, i32 12
  %16 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %portid, align 4
  %18 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nlmsg_seq, align 4
  %22 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %if.end15.for.end_crit_edge

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

skb_tailroom.exit.i.i:                            ; preds = %if.end15
  %24 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i.i, align 4
  %26 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.for.end_crit_edge, label %nlmsg_put.exit.i, !prof !77

skb_tailroom.exit.i.i.for.end_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %17, i32 noundef %21, i32 noundef 24, i32 noundef 4, i32 noundef 2) #14
  %tobool.not.i52 = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i52, label %nlmsg_put.exit.i.for.end_crit_edge, label %if.end.i

nlmsg_put.exit.i.for.end_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.i:                                         ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %28 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 29, ptr %add.ptr.i.i, align 2
  %gwtype.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 10
  %29 = ptrtoint ptr %gwtype.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gwtype.i, align 8
  %gwtype2.i = getelementptr i8, ptr %call3.i.i, i32 17
  %31 = ptrtoint ptr %gwtype2.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %gwtype2.i, align 1
  %flags3.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 12
  %32 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags3.i, align 2
  %flags4.i = getelementptr i8, ptr %call3.i.i, i32 18
  %34 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %flags4.i, align 2
  %handled_frames.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 2
  %35 = ptrtoint ptr %handled_frames.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handled_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool5.not.i = icmp eq i32 %36, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then6.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #14
  %37 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then6.i.if.then.i.i.i_crit_edge, label %if.then6.i.if.end11.i_crit_edge

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11.i

if.then6.i.if.then.i.i.i_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %dropped_frames.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 3
  %38 = ptrtoint ptr %dropped_frames.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dropped_frames.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool12.not.i = icmp eq i32 %39, 0
  br i1 %tobool12.not.i, label %if.end11.i.if.end19.i_crit_edge, label %if.then13.i

if.end11.i.if.end19.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4.i) #14
  %40 = ptrtoint ptr %tmp.i4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %tmp.i4.i, align 4
  %call.i5.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i4.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %cmp16.i = icmp slt i32 %call.i5.i, 0
  br i1 %cmp16.i, label %if.then13.i.if.then.i.i.i_crit_edge, label %if.then13.i.if.end19.i_crit_edge

if.then13.i.if.end19.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

if.then13.i.if.then.i.i.i_crit_edge:              ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end19.i:                                       ; preds = %if.then13.i.if.end19.i_crit_edge, %if.end11.i.if.end19.i_crit_edge
  %deleted_frames.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 4
  %41 = ptrtoint ptr %deleted_frames.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %deleted_frames.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool20.not.i = icmp eq i32 %42, 0
  br i1 %tobool20.not.i, label %if.end19.i.if.end27.i_crit_edge, label %if.then21.i

if.end19.i.if.end27.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6.i) #14
  %43 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i6.i, align 4
  %call.i7.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 4, ptr noundef nonnull %tmp.i6.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %cmp24.i = icmp slt i32 %call.i7.i, 0
  br i1 %cmp24.i, label %if.then21.i.if.then.i.i.i_crit_edge, label %if.then21.i.if.end27.i_crit_edge

if.then21.i.if.end27.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27.i

if.then21.i.if.then.i.i.i_crit_edge:              ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end27.i:                                       ; preds = %if.then21.i.if.end27.i_crit_edge, %if.end19.i.if.end27.i_crit_edge
  %limit_hops.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 11
  %44 = ptrtoint ptr %limit_hops.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %limit_hops.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool28.not.i = icmp eq i8 %45, 0
  br i1 %tobool28.not.i, label %if.end27.i.if.end35.i_crit_edge, label %if.then29.i

if.end27.i.if.end35.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8.i) #14
  %46 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %tmp.i8.i, align 1
  %call.i9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i8.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %cmp32.i = icmp slt i32 %call.i9.i, 0
  br i1 %cmp32.i, label %if.then29.i.if.then.i.i.i_crit_edge, label %if.then29.i.if.end35.i_crit_edge

if.then29.i.if.end35.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end35.i

if.then29.i.if.then.i.i.i_crit_edge:              ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end35.i:                                       ; preds = %if.then29.i.if.end35.i_crit_edge, %if.end27.i.if.end35.i_crit_edge
  %47 = ptrtoint ptr %flags3.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags3.i, align 2
  %49 = and i16 %48, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool37.not.i = icmp eq i16 %49, 0
  br i1 %tobool37.not.i, label %if.else.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %mb.i) #14
  %50 = call ptr @memset(ptr %mb.i, i32 255, i32 73)
  %modtype.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %modtype.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %modtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool40.not.i = icmp eq i8 %52, 0
  br i1 %tobool40.not.i, label %if.then38.i.if.end53.i_crit_edge, label %if.then41.i

if.then38.i.if.end53.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i

if.then41.i:                                      ; preds = %if.then38.i
  %mod.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6
  %53 = call ptr @memcpy(ptr %mb.i, ptr %mod.i, i32 72)
  %54 = ptrtoint ptr %modtype47.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %52, ptr %modtype47.i, align 1
  %call48.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 15, i32 noundef 73, ptr noundef nonnull %mb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then41.i.cleanup.thread.i_crit_edge, label %if.then41.i.if.end53.i_crit_edge

if.then41.i.if.end53.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53.i

if.then41.i.cleanup.thread.i_crit_edge:           ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end53.i:                                       ; preds = %if.then41.i.if.end53.i_crit_edge, %if.then38.i.if.end53.i_crit_edge
  %or.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 1
  %55 = ptrtoint ptr %or.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %or.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool56.not.i = icmp eq i8 %56, 0
  br i1 %tobool56.not.i, label %if.end53.i.if.end71.i_crit_edge, label %if.then57.i

if.end53.i.if.end71.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i

if.then57.i:                                      ; preds = %if.end53.i
  %or61.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 1
  %57 = call ptr @memcpy(ptr %mb.i, ptr %or61.i, i32 72)
  %58 = ptrtoint ptr %modtype47.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %56, ptr %modtype47.i, align 1
  %call66.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 16, i32 noundef 73, ptr noundef nonnull %mb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %if.then57.i.cleanup.thread.i_crit_edge, label %if.then57.i.if.end71.i_crit_edge

if.then57.i.if.end71.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71.i

if.then57.i.cleanup.thread.i_crit_edge:           ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end71.i:                                       ; preds = %if.then57.i.if.end71.i_crit_edge, %if.end53.i.if.end71.i_crit_edge
  %xor.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 2
  %59 = ptrtoint ptr %xor.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool74.not.i = icmp eq i8 %60, 0
  br i1 %tobool74.not.i, label %if.end71.i.if.end89.i_crit_edge, label %if.then75.i

if.end71.i.if.end89.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then75.i:                                      ; preds = %if.end71.i
  %xor79.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 2
  %61 = call ptr @memcpy(ptr %mb.i, ptr %xor79.i, i32 72)
  %62 = ptrtoint ptr %modtype47.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %60, ptr %modtype47.i, align 1
  %call84.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 17, i32 noundef 73, ptr noundef nonnull %mb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp slt i32 %call84.i, 0
  br i1 %cmp85.i, label %if.then75.i.cleanup.thread.i_crit_edge, label %if.then75.i.if.end89.i_crit_edge

if.then75.i.if.end89.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89.i

if.then75.i.cleanup.thread.i_crit_edge:           ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

if.end89.i:                                       ; preds = %if.then75.i.if.end89.i_crit_edge, %if.end71.i.if.end89.i_crit_edge
  %set.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 3
  %63 = ptrtoint ptr %set.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %set.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool92.not.i = icmp eq i8 %64, 0
  br i1 %tobool92.not.i, label %if.end89.i.cleanup.i_crit_edge, label %if.then93.i

if.end89.i.cleanup.i_crit_edge:                   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then93.i:                                      ; preds = %if.end89.i
  %set97.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 3
  %65 = call ptr @memcpy(ptr %mb.i, ptr %set97.i, i32 72)
  %66 = ptrtoint ptr %modtype47.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %64, ptr %modtype47.i, align 1
  %call102.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 18, i32 noundef 73, ptr noundef nonnull %mb.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %cmp103.i = icmp slt i32 %call102.i, 0
  br i1 %cmp103.i, label %if.then93.i.cleanup.thread.i_crit_edge, label %if.then93.i.cleanup.i_crit_edge

if.then93.i.cleanup.i_crit_edge:                  ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.then93.i.cleanup.thread.i_crit_edge:           ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then93.i.cleanup.thread.i_crit_edge, %if.then75.i.cleanup.thread.i_crit_edge, %if.then57.i.cleanup.thread.i_crit_edge, %if.then41.i.cleanup.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %mb.i) #14
  br label %if.then.i.i.i

cleanup.i:                                        ; preds = %if.then93.i.cleanup.i_crit_edge, %if.end89.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %mb.i) #14
  br label %if.end188.i

if.else.i:                                        ; preds = %if.end35.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %mb108.i) #14
  %modtype110.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1
  %67 = call ptr @memset(ptr %mb108.i, i32 255, i32 17)
  %68 = ptrtoint ptr %modtype110.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %modtype110.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool112.not.i = icmp eq i8 %69, 0
  br i1 %tobool112.not.i, label %if.else.i.if.end127.i_crit_edge, label %if.then113.i

if.else.i.if.end127.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127.i

if.then113.i:                                     ; preds = %if.else.i
  %mod109.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6
  %70 = call ptr @memcpy(ptr %mb108.i, ptr %mod109.i, i32 16)
  %71 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %69, ptr %13, align 4
  %call122.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %mb108.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122.i)
  %cmp123.i = icmp slt i32 %call122.i, 0
  br i1 %cmp123.i, label %if.then113.i.cleanup185.thread.i_crit_edge, label %if.then113.i.if.end127.i_crit_edge

if.then113.i.if.end127.i_crit_edge:               ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127.i

if.then113.i.cleanup185.thread.i_crit_edge:       ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.thread.i

if.end127.i:                                      ; preds = %if.then113.i.if.end127.i_crit_edge, %if.else.i.if.end127.i_crit_edge
  %or130.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 1
  %72 = ptrtoint ptr %or130.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %or130.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool131.not.i = icmp eq i8 %73, 0
  br i1 %tobool131.not.i, label %if.end127.i.if.end146.i_crit_edge, label %if.then132.i

if.end127.i.if.end146.i_crit_edge:                ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146.i

if.then132.i:                                     ; preds = %if.end127.i
  %or136.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 1
  %74 = call ptr @memcpy(ptr %mb108.i, ptr %or136.i, i32 16)
  %75 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %73, ptr %13, align 4
  %call141.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 17, ptr noundef nonnull %mb108.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141.i)
  %cmp142.i = icmp slt i32 %call141.i, 0
  br i1 %cmp142.i, label %if.then132.i.cleanup185.thread.i_crit_edge, label %if.then132.i.if.end146.i_crit_edge

if.then132.i.if.end146.i_crit_edge:               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end146.i

if.then132.i.cleanup185.thread.i_crit_edge:       ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.thread.i

if.end146.i:                                      ; preds = %if.then132.i.if.end146.i_crit_edge, %if.end127.i.if.end146.i_crit_edge
  %xor149.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 2
  %76 = ptrtoint ptr %xor149.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %xor149.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool150.not.i = icmp eq i8 %77, 0
  br i1 %tobool150.not.i, label %if.end146.i.if.end165.i_crit_edge, label %if.then151.i

if.end146.i.if.end165.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165.i

if.then151.i:                                     ; preds = %if.end146.i
  %xor155.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 2
  %78 = call ptr @memcpy(ptr %mb108.i, ptr %xor155.i, i32 16)
  %79 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %77, ptr %13, align 4
  %call160.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 17, ptr noundef nonnull %mb108.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160.i)
  %cmp161.i = icmp slt i32 %call160.i, 0
  br i1 %cmp161.i, label %if.then151.i.cleanup185.thread.i_crit_edge, label %if.then151.i.if.end165.i_crit_edge

if.then151.i.if.end165.i_crit_edge:               ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165.i

if.then151.i.cleanup185.thread.i_crit_edge:       ; preds = %if.then151.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.thread.i

if.end165.i:                                      ; preds = %if.then151.i.if.end165.i_crit_edge, %if.end146.i.if.end165.i_crit_edge
  %set168.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 1, i32 3
  %80 = ptrtoint ptr %set168.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %set168.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool169.not.i = icmp eq i8 %81, 0
  br i1 %tobool169.not.i, label %if.end165.i.cleanup185.i_crit_edge, label %if.then170.i

if.end165.i.cleanup185.i_crit_edge:               ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.i

if.then170.i:                                     ; preds = %if.end165.i
  %set174.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 0, i32 3
  %82 = call ptr @memcpy(ptr %mb108.i, ptr %set174.i, i32 16)
  %83 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %81, ptr %13, align 4
  %call179.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 17, ptr noundef nonnull %mb108.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179.i)
  %cmp180.i = icmp slt i32 %call179.i, 0
  br i1 %cmp180.i, label %if.then170.i.cleanup185.thread.i_crit_edge, label %if.then170.i.cleanup185.i_crit_edge

if.then170.i.cleanup185.i_crit_edge:              ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.i

if.then170.i.cleanup185.thread.i_crit_edge:       ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup185.thread.i

cleanup185.thread.i:                              ; preds = %if.then170.i.cleanup185.thread.i_crit_edge, %if.then151.i.cleanup185.thread.i_crit_edge, %if.then132.i.cleanup185.thread.i_crit_edge, %if.then113.i.cleanup185.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %mb108.i) #14
  br label %if.then.i.i.i

cleanup185.i:                                     ; preds = %if.then170.i.cleanup185.i_crit_edge, %if.end165.i.cleanup185.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %mb108.i) #14
  br label %if.end188.i

if.end188.i:                                      ; preds = %cleanup185.i, %cleanup.i
  %uid.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 5
  %84 = ptrtoint ptr %uid.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %uid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool190.not.i = icmp eq i32 %85, 0
  br i1 %tobool190.not.i, label %if.end188.i.if.end199.i_crit_edge, label %if.then191.i

if.end188.i.if.end199.i_crit_edge:                ; preds = %if.end188.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.i

if.then191.i:                                     ; preds = %if.end188.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i10.i) #14
  %86 = ptrtoint ptr %tmp.i10.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tmp.i10.i, align 4
  %call.i11.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 14, i32 noundef 4, ptr noundef nonnull %tmp.i10.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i10.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %cmp195.i = icmp slt i32 %call.i11.i, 0
  br i1 %cmp195.i, label %if.then191.i.if.then.i.i.i_crit_edge, label %if.then191.i.if.end199.i_crit_edge

if.then191.i.if.end199.i_crit_edge:               ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199.i

if.then191.i.if.then.i.i.i_crit_edge:             ; preds = %if.then191.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end199.i:                                      ; preds = %if.then191.i.if.end199.i_crit_edge, %if.end188.i.if.end199.i_crit_edge
  %csumfunc.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 4
  %crc8.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 4, i32 1
  %87 = ptrtoint ptr %crc8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %crc8.i, align 4
  %tobool201.not.i = icmp eq ptr %88, null
  br i1 %tobool201.not.i, label %if.end199.i.if.end210.i_crit_edge, label %if.then202.i

if.end199.i.if.end210.i_crit_edge:                ; preds = %if.end199.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210.i

if.then202.i:                                     ; preds = %if.end199.i
  %crc8204.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 3, i32 1
  %call205.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 282, ptr noundef %crc8204.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205.i)
  %cmp206.i = icmp slt i32 %call205.i, 0
  br i1 %cmp206.i, label %if.then202.i.if.then.i.i.i_crit_edge, label %if.then202.i.if.end210.i_crit_edge

if.then202.i.if.end210.i_crit_edge:               ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end210.i

if.then202.i.if.then.i.i.i_crit_edge:             ; preds = %if.then202.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end210.i:                                      ; preds = %if.then202.i.if.end210.i_crit_edge, %if.end199.i.if.end210.i_crit_edge
  %89 = ptrtoint ptr %csumfunc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %csumfunc.i, align 4
  %tobool214.not.i = icmp eq ptr %90, null
  br i1 %tobool214.not.i, label %if.end210.i.if.end224.i_crit_edge, label %if.then215.i

if.end210.i.if.end224.i_crit_edge:                ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end224.i

if.then215.i:                                     ; preds = %if.end210.i
  %csum217.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 6, i32 3
  %call219.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef %csum217.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219.i)
  %cmp220.i = icmp slt i32 %call219.i, 0
  br i1 %cmp220.i, label %if.then215.i.if.then.i.i.i_crit_edge, label %if.then215.i.if.end224.i_crit_edge

if.then215.i.if.end224.i_crit_edge:               ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end224.i

if.then215.i.if.then.i.i.i_crit_edge:             ; preds = %if.then215.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end224.i:                                      ; preds = %if.then215.i.if.end224.i_crit_edge, %if.end210.i.if.end224.i_crit_edge
  %91 = ptrtoint ptr %gwtype.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %gwtype.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %92)
  %cmp227.i = icmp eq i8 %92, 1
  br i1 %cmp227.i, label %if.then229.i, label %if.end224.i.cgw_put_job.exit_crit_edge

if.end224.i.cgw_put_job.exit_crit_edge:           ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cgw_put_job.exit

if.then229.i:                                     ; preds = %if.end224.i
  %93 = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 9
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool230.not.i = icmp eq i32 %95, 0
  br i1 %tobool230.not.i, label %lor.lhs.false.i, label %if.then229.i.if.then233.i_crit_edge

if.then229.i.if.then233.i_crit_edge:              ; preds = %if.then229.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233.i

lor.lhs.false.i:                                  ; preds = %if.then229.i
  %can_mask.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 9, i32 0, i32 0, i32 1
  %96 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %can_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool232.not.i = icmp eq i32 %97, 0
  br i1 %tobool232.not.i, label %lor.lhs.false.i.if.end240.i_crit_edge, label %lor.lhs.false.i.if.then233.i_crit_edge

lor.lhs.false.i.if.then233.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then233.i

lor.lhs.false.i.if.end240.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end240.i

if.then233.i:                                     ; preds = %lor.lhs.false.i.if.then233.i_crit_edge, %if.then229.i.if.then233.i_crit_edge
  %call235.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 8, ptr noundef %93) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235.i)
  %cmp236.i = icmp slt i32 %call235.i, 0
  br i1 %cmp236.i, label %if.then233.i.if.then.i.i.i_crit_edge, label %if.then233.i.if.end240.i_crit_edge

if.then233.i.if.end240.i_crit_edge:               ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end240.i

if.then233.i.if.then.i.i.i_crit_edge:             ; preds = %if.then233.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end240.i:                                      ; preds = %if.then233.i.if.end240.i_crit_edge, %lor.lhs.false.i.if.end240.i_crit_edge
  %src_idx.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 9, i32 0, i32 1
  %98 = ptrtoint ptr %src_idx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %src_idx.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i12.i) #14
  %100 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tmp.i12.i, align 4
  %call.i13.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i12.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i12.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %cmp242.i = icmp slt i32 %call.i13.i, 0
  br i1 %cmp242.i, label %if.end240.i.if.then.i.i.i_crit_edge, label %if.end245.i

if.end240.i.if.then.i.i.i_crit_edge:              ; preds = %if.end240.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end245.i:                                      ; preds = %if.end240.i
  %dst_idx.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.086, i32 0, i32 9, i32 0, i32 2
  %101 = ptrtoint ptr %dst_idx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dst_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14.i) #14
  %103 = ptrtoint ptr %tmp.i14.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %tmp.i14.i, align 4
  %call.i15.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i14.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %cmp247.i = icmp slt i32 %call.i15.i, 0
  br i1 %cmp247.i, label %if.end245.i.if.then.i.i.i_crit_edge, label %if.end245.i.cgw_put_job.exit_crit_edge

if.end245.i.cgw_put_job.exit_crit_edge:           ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cgw_put_job.exit

if.end245.i.if.then.i.i.i_crit_edge:              ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end245.i.if.then.i.i.i_crit_edge, %if.end240.i.if.then.i.i.i_crit_edge, %if.then233.i.if.then.i.i.i_crit_edge, %if.then215.i.if.then.i.i.i_crit_edge, %if.then202.i.if.then.i.i.i_crit_edge, %if.then191.i.if.then.i.i.i_crit_edge, %cleanup185.thread.i, %cleanup.thread.i, %if.then29.i.if.then.i.i.i_crit_edge, %if.then21.i.if.then.i.i.i_crit_edge, %if.then13.i.if.then.i.i.i_crit_edge, %if.then6.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %104 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %105, %call3.i.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge, !prof !77

if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nlmsg_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nlmsg_cancel.exit.i

nlmsg_cancel.exit.i:                              ; preds = %do.end.i.i.i, %if.then.i.i.i.nlmsg_cancel.exit.i_crit_edge
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i17.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i18.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i.i19.i = sub i32 %sub.ptr.lhs.cast.i.i17.i, %sub.ptr.rhs.cast.i.i18.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i19.i) #14
  br label %for.end

cgw_put_job.exit:                                 ; preds = %if.end245.i.cgw_put_job.exit_crit_edge, %if.end224.i.cgw_put_job.exit_crit_edge
  %108 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %110 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i, align 4
  br label %cont

cont:                                             ; preds = %cgw_put_job.exit, %for.body.cont_crit_edge
  %inc = add i32 %idx.074, 1
  %111 = ptrtoint ptr %gwj.086 to i32
  call void @__asan_load4_noabort(i32 %111)
  %gwj.0 = load volatile ptr, ptr %gwj.086, align 8
  %tobool13.not = icmp eq ptr %gwj.0, null
  br i1 %tobool13.not, label %cont.for.end_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cont.for.end_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %cont.for.end_crit_edge, %nlmsg_cancel.exit.i, %nlmsg_put.exit.i.for.end_crit_edge, %skb_tailroom.exit.i.i.for.end_crit_edge, %if.end15.for.end_crit_edge, %do.end.for.end_crit_edge
  %idx.067 = phi i32 [ %idx.074, %nlmsg_cancel.exit.i ], [ 0, %do.end.for.end_crit_edge ], [ %inc, %cont.for.end_crit_edge ], [ %idx.074, %nlmsg_put.exit.i.for.end_crit_edge ], [ %idx.074, %skb_tailroom.exit.i.i.for.end_crit_edge ], [ %idx.074, %if.end15.for.end_crit_edge ]
  %call.i53 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i53, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %for.end
  %call1.i54 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !78
  %112 = call i32 @llvm.read_register.i32(metadata !64) #14
  %and.i.i.i.i.i60 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %idx.067, ptr %5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %117 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len, align 4
  ret i32 %118
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgw_create_job(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %mod = alloca %struct.cf_mod, align 8
  %ccgw = alloca %struct.can_can_gw, align 4
  %limhops = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 656, ptr nonnull %mod) #14
  %5 = call ptr @memset(ptr %mod, i32 255, i32 656)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccgw) #14
  %6 = getelementptr inbounds %struct.can_can_gw, ptr %ccgw, i32 0, i32 1
  %7 = getelementptr inbounds %struct.can_can_gw, ptr %ccgw, i32 0, i32 2
  %8 = call ptr @memset(ptr %ccgw, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %limhops) #14
  %9 = ptrtoint ptr %limhops to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %limhops, align 1
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #14
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh, align 4
  %12 = and i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp eq i32 %12, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %14)
  %cmp6.not = icmp eq i8 %14, 29
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %gwtype = getelementptr i8, ptr %nlh, i32 17
  %15 = ptrtoint ptr %gwtype to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gwtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp11.not = icmp eq i8 %16, 1
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc i32 @cgw_parse_attr(ptr noundef %nlh, ptr noundef nonnull %mod, ptr noundef nonnull %ccgw, ptr noundef nonnull %limhops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %uid = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 5
  %17 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end19.if.end88_crit_edge, label %if.then20

if.end19.if.end88_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

if.then20:                                        ; preds = %if.end19
  %call21 = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.rhs, label %if.then20.if.end54_crit_edge

if.then20.if.end54_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.rhs:                                         ; preds = %if.then20
  %.b247 = load i1, ptr @cgw_create_job.__already_done, align 1
  br i1 %.b247, label %land.rhs.if.end54_crit_edge, label %if.then32, !prof !74

land.rhs.if.end54_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then32:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_create_job.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1080, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1080) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then32, %land.rhs.if.end54_crit_edge, %if.then20.if.end54_crit_edge
  %cgw_list = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 50, i32 15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end54
  %gwj.0.in = phi ptr [ %cgw_list, %if.end54 ], [ %gwj.0, %for.body.for.cond_crit_edge ]
  %19 = ptrtoint ptr %gwj.0.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %gwj.0 = load ptr, ptr %gwj.0.in, align 8
  %tobool65.not = icmp eq ptr %gwj.0, null
  br i1 %tobool65.not, label %for.cond.if.end88_crit_edge, label %for.body

for.cond.if.end88_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end88

for.body:                                         ; preds = %for.cond
  %uid67 = getelementptr inbounds %struct.cgw_job, ptr %gwj.0, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %uid67 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %uid67, align 4
  %22 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %uid, align 4
  %cmp69.not = icmp eq i32 %21, %23
  br i1 %cmp69.not, label %if.end72, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.end72:                                         ; preds = %for.body
  %24 = getelementptr inbounds %struct.cgw_job, ptr %gwj.0, i32 0, i32 9
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %24, ptr noundef nonnull dereferenceable(16) %ccgw, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool74.not = icmp eq i32 %bcmp, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end76:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  %mod66.le = getelementptr inbounds %struct.cgw_job, ptr %gwj.0, i32 0, i32 6
  call fastcc void @local_bh_disable()
  %25 = call ptr @memcpy(ptr %mod66.le, ptr %mod, i32 656)
  call fastcc void @local_bh_enable()
  br label %cleanup

if.end88:                                         ; preds = %for.cond.if.end88_crit_edge, %if.end19.if.end88_crit_edge
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool89.not = icmp eq i32 %27, 0
  br i1 %tobool89.not, label %if.end88.cleanup_crit_edge, label %lor.lhs.false

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end88
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool90.not = icmp eq i32 %29, 0
  br i1 %tobool90.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end92

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end92:                                         ; preds = %lor.lhs.false
  %30 = load ptr, ptr @cgw_cache, align 4
  %call93 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %30, i32 noundef 3264) #14
  %tobool94.not = icmp eq ptr %call93, null
  br i1 %tobool94.not, label %if.end92.cleanup_crit_edge, label %if.end96

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end96:                                         ; preds = %if.end92
  %handled_frames = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 2
  %31 = ptrtoint ptr %handled_frames to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %handled_frames, align 8
  %dropped_frames = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 3
  %32 = ptrtoint ptr %dropped_frames to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %dropped_frames, align 4
  %deleted_frames = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 4
  %33 = ptrtoint ptr %deleted_frames to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %deleted_frames, align 8
  %flags = getelementptr i8, ptr %nlh, i32 18
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 2
  %flags97 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 12
  %36 = ptrtoint ptr %flags97 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %flags97, align 2
  %37 = ptrtoint ptr %gwtype to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %gwtype, align 1
  %gwtype99 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 10
  %39 = ptrtoint ptr %gwtype99 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %gwtype99, align 8
  %40 = ptrtoint ptr %limhops to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %limhops, align 1
  %limit_hops = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 11
  %42 = ptrtoint ptr %limit_hops to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %limit_hops, align 1
  %mod100 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 6
  %43 = call ptr @memcpy(ptr %mod100, ptr %mod, i32 656)
  %44 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 9
  %45 = call ptr @memcpy(ptr %44, ptr %ccgw, i32 16)
  %src_idx101 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 9, i32 0, i32 1
  %46 = ptrtoint ptr %src_idx101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_idx101, align 8
  %call102 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %47) #14
  %src = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 7
  %48 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call102, ptr %src, align 8
  %tobool104.not = icmp eq ptr %call102, null
  br i1 %tobool104.not, label %if.end96.if.then192_crit_edge, label %if.end106

if.end96.if.then192_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then192

if.end106:                                        ; preds = %if.end96
  %type = getelementptr inbounds %struct.net_device, ptr %call102, i32 0, i32 32
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %50)
  %cmp109.not = icmp eq i16 %50, 280
  br i1 %cmp109.not, label %if.end112, label %if.end106.if.then192_crit_edge

if.end106.if.then192_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then192

if.end112:                                        ; preds = %if.end106
  %dst_idx113 = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 9, i32 0, i32 2
  %51 = ptrtoint ptr %dst_idx113 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dst_idx113, align 4
  %call114 = call ptr @__dev_get_by_index(ptr noundef %4, i32 noundef %52) #14
  %dst = getelementptr inbounds %struct.cgw_job, ptr %call93, i32 0, i32 8
  %53 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call114, ptr %dst, align 4
  %tobool116.not = icmp eq ptr %call114, null
  br i1 %tobool116.not, label %if.end112.if.then192_crit_edge, label %if.end118

if.end112.if.then192_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then192

if.end118:                                        ; preds = %if.end112
  %type120 = getelementptr inbounds %struct.net_device, ptr %call114, i32 0, i32 32
  %54 = ptrtoint ptr %type120 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %type120, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 280, i16 %55)
  %cmp122.not = icmp eq i16 %55, 280
  br i1 %cmp122.not, label %if.end125, label %if.end118.if.then192_crit_edge

if.end118.if.then192_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then192

if.end125:                                        ; preds = %if.end118
  %call127 = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %land.rhs138, label %if.end125.if.end176_crit_edge

if.end125.if.end176_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end176

land.rhs138:                                      ; preds = %if.end125
  %.b245246 = load i1, ptr @cgw_create_job.__already_done.10, align 1
  br i1 %.b245246, label %land.rhs138.if.end176_crit_edge, label %if.then149, !prof !74

land.rhs138.if.end176_crit_edge:                  ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end176

if.then149:                                       ; preds = %land.rhs138
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_create_job.__already_done.10, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1136, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1136) #14
  br label %if.end176

if.end176:                                        ; preds = %if.then149, %land.rhs138.if.end176_crit_edge, %if.end125.if.end176_crit_edge
  %call184 = call fastcc i32 @cgw_register_filter(ptr noundef %4, ptr noundef nonnull %call93)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.then186, label %if.end176.if.then192_crit_edge

if.end176.if.then192_crit_edge:                   ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then192

if.then186:                                       ; preds = %if.end176
  %cgw_list189 = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 50, i32 15
  %56 = ptrtoint ptr %cgw_list189 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cgw_list189, align 4
  %58 = ptrtoint ptr %call93 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %call93, align 8
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %call93, i32 0, i32 1
  %59 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %cgw_list189, ptr %pprev.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !79
  %60 = ptrtoint ptr %cgw_list189 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call93, ptr %cgw_list189, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.then186.cleanup_crit_edge, label %do.body49.i

if.then186.cleanup_crit_edge:                     ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body49.i:                                      ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #16
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %57, i32 0, i32 1
  %61 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %call93, ptr %pprev51.i, align 4
  br label %cleanup

if.then192:                                       ; preds = %if.end176.if.then192_crit_edge, %if.end118.if.then192_crit_edge, %if.end112.if.then192_crit_edge, %if.end106.if.then192_crit_edge, %if.end96.if.then192_crit_edge
  %err.0.ph = phi i32 [ -19, %if.end96.if.then192_crit_edge ], [ -19, %if.end112.if.then192_crit_edge ], [ %call184, %if.end176.if.then192_crit_edge ], [ -19, %if.end118.if.then192_crit_edge ], [ -19, %if.end106.if.then192_crit_edge ]
  %62 = load ptr, ptr @cgw_cache, align 4
  call void @kmem_cache_free(ptr noundef %62, ptr noundef nonnull %call93) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then192, %do.body49.i, %if.then186.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.end76, %if.end72.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end76 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -96, %if.end4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -22, %if.end72.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end88.cleanup_crit_edge ], [ -12, %if.end92.cleanup_crit_edge ], [ %err.0.ph, %if.then192 ], [ 0, %if.then186.cleanup_crit_edge ], [ 0, %do.body49.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limhops) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccgw) #14
  call void @llvm.lifetime.end.p0(i64 656, ptr nonnull %mod) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cgw_remove_job(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %mod = alloca %struct.cf_mod, align 8
  %ccgw = alloca %struct.can_can_gw, align 4
  %limhops = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 656, ptr nonnull %mod) #14
  %5 = call ptr @memset(ptr %mod, i32 255, i32 656)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ccgw) #14
  %6 = getelementptr inbounds %struct.can_can_gw, ptr %ccgw, i32 0, i32 1
  %7 = getelementptr inbounds %struct.can_can_gw, ptr %ccgw, i32 0, i32 2
  %8 = call ptr @memset(ptr %ccgw, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %limhops) #14
  %9 = ptrtoint ptr %limhops to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %limhops, align 1
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #14
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlh, align 4
  %12 = and i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp eq i32 %12, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %14)
  %cmp6.not = icmp eq i8 %14, 29
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %gwtype = getelementptr i8, ptr %nlh, i32 17
  %15 = ptrtoint ptr %gwtype to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %gwtype, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp11.not = icmp eq i8 %16, 1
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = call fastcc i32 @cgw_parse_attr(ptr noundef %nlh, ptr noundef nonnull %mod, ptr noundef nonnull %ccgw, ptr noundef nonnull %limhops)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end19.if.end22_crit_edge

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end19
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.then21, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end22

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @cgw_remove_all_jobs(ptr noundef %4)
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end19.if.end22_crit_edge
  %call23 = call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.rhs, label %if.end22.if.end56_crit_edge

if.end22.if.end56_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

land.rhs:                                         ; preds = %if.end22
  %.b150 = load i1, ptr @cgw_remove_job.__already_done, align 1
  br i1 %.b150, label %land.rhs.if.end56_crit_edge, label %if.then34, !prof !74

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end56

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @cgw_remove_job.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1201, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 1201) #14
  br label %if.end56

if.end56:                                         ; preds = %if.then34, %land.rhs.if.end56_crit_edge, %if.end22.if.end56_crit_edge
  %cgw_list = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 50, i32 15
  %21 = ptrtoint ptr %cgw_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cgw_list, align 16
  %tobool67.not154 = icmp eq ptr %22, null
  br i1 %tobool67.not154, label %if.end56.cleanup_crit_edge, label %land.rhs68.lr.ph

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.rhs68.lr.ph:                                 ; preds = %if.end56
  %flags73 = getelementptr i8, ptr %nlh, i32 18
  %23 = ptrtoint ptr %flags73 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags73, align 2
  %uid87 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 5
  br label %land.rhs68

land.rhs68:                                       ; preds = %for.inc.land.rhs68_crit_edge, %land.rhs68.lr.ph
  %gwj.0155 = phi ptr [ %22, %land.rhs68.lr.ph ], [ %26, %for.inc.land.rhs68_crit_edge ]
  %25 = ptrtoint ptr %gwj.0155 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gwj.0155, align 8
  %flags = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 12
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %24)
  %cmp75.not = icmp eq i16 %28, %24
  br i1 %cmp75.not, label %if.end78, label %land.rhs68.for.inc_crit_edge

land.rhs68.for.inc_crit_edge:                     ; preds = %land.rhs68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end78:                                         ; preds = %land.rhs68
  %limit_hops = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 11
  %29 = ptrtoint ptr %limit_hops to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %limit_hops, align 1
  %31 = ptrtoint ptr %limhops to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %limhops, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp81.not = icmp eq i8 %30, %32
  br i1 %cmp81.not, label %if.end84, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end84:                                         ; preds = %if.end78
  %mod85 = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 6
  %uid = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 6, i32 5
  %33 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %uid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool86.not = icmp eq i32 %34, 0
  br i1 %tobool86.not, label %lor.lhs.false, label %if.end84.if.then89_crit_edge

if.end84.if.then89_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

lor.lhs.false:                                    ; preds = %if.end84
  %35 = ptrtoint ptr %uid87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %uid87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool88.not = icmp eq i32 %36, 0
  br i1 %tobool88.not, label %if.else, label %lor.lhs.false.if.then89_crit_edge

lor.lhs.false.if.then89_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false.if.then89_crit_edge, %if.end84.if.then89_crit_edge
  %37 = ptrtoint ptr %uid87 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %uid87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %38)
  %cmp93.not = icmp eq i32 %34, %38
  br i1 %cmp93.not, label %if.then89.if.end102_crit_edge, label %if.then89.for.inc_crit_edge

if.then89.for.inc_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then89.if.end102_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.else:                                          ; preds = %lor.lhs.false
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(656) %mod85, ptr noundef nonnull dereferenceable(656) %mod, i32 656) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool99.not = icmp eq i32 %bcmp, 0
  br i1 %tobool99.not, label %if.else.if.end102_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.else.if.end102_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end102

if.end102:                                        ; preds = %if.else.if.end102_crit_edge, %if.then89.if.end102_crit_edge
  %39 = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 9
  %bcmp149 = call i32 @bcmp(ptr noundef dereferenceable(16) %39, ptr noundef nonnull dereferenceable(16) %ccgw, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp149)
  %tobool104.not = icmp eq i32 %bcmp149, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.for.inc_crit_edge

if.end102.for.inc_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end106:                                        ; preds = %if.end102
  %pprev2.i.i = getelementptr inbounds %struct.hlist_node, ptr %gwj.0155, i32 0, i32 1
  %40 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pprev2.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %26, ptr %41, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %if.end106.hlist_del.exit_crit_edge, label %do.body13.i.i

if.end106.hlist_del.exit_crit_edge:               ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #16
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %43 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.end106.hlist_del.exit_crit_edge
  %44 = ptrtoint ptr %gwj.0155 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %gwj.0155, align 4
  %45 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %src.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 7
  %46 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %src.i, align 8
  %48 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %39, align 8
  %can_mask.i = getelementptr inbounds %struct.cgw_job, ptr %gwj.0155, i32 0, i32 9, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %can_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %can_mask.i, align 4
  call void @can_rx_unregister(ptr noundef %4, ptr noundef %47, i32 noundef %49, i32 noundef %51, ptr noundef nonnull @can_can_gw_rcv, ptr noundef nonnull %gwj.0155) #14
  call void @synchronize_rcu() #14
  %52 = load ptr, ptr @cgw_cache, align 4
  call void @kmem_cache_free(ptr noundef %52, ptr noundef nonnull %gwj.0155) #14
  br label %cleanup

for.inc:                                          ; preds = %if.end102.for.inc_crit_edge, %if.else.for.inc_crit_edge, %if.then89.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %land.rhs68.for.inc_crit_edge
  %tobool67.not = icmp eq ptr %26, null
  br i1 %tobool67.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs68_crit_edge

for.inc.land.rhs68_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs68

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %hlist_del.exit, %if.end56.cleanup_crit_edge, %if.then21, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then21 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -96, %if.end4.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ 0, %hlist_del.exit ], [ -22, %if.end56.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %limhops) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ccgw) #14
  call void @llvm.lifetime.end.p0(i64 656, ptr nonnull %mod) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_unregister(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cgw_parse_attr(ptr noundef %nlh, ptr noundef %mod, ptr noundef %gwtypeattr, ptr nocapture noundef writeonly %limhops) unnamed_addr #3 align 64 {
entry:
  %tb = alloca [19 x ptr], align 4
  %mb = alloca %struct.cgw_fdframe_mod, align 4
  %mb200 = alloca %struct.cgw_frame_mod, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tb) #14
  %0 = call ptr @memset(ptr %tb, i32 255, i32 76)
  %1 = call ptr @memset(ptr %mod, i32 0, i32 656)
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp.i.i = icmp ult i32 %3, 20
  br i1 %cmp.i.i, label %nlmsg_parse_deprecated.exit.thread, label %nlmsg_parse_deprecated.exit

nlmsg_parse_deprecated.exit.thread:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #14
  br label %cleanup501

nlmsg_parse_deprecated.exit:                      ; preds = %entry
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 20
  %sub1.i.i.i = add i32 %3, -20
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 18, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @cgw_policy, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup501_crit_edge, label %if.end

nlmsg_parse_deprecated.exit.cleanup501_crit_edge: ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

if.end:                                           ; preds = %nlmsg_parse_deprecated.exit
  %arrayidx = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 13
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  %8 = ptrtoint ptr %limhops to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %limhops, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5 = icmp eq i8 %7, 0
  br i1 %cmp5, label %if.then2.cleanup501_crit_edge, label %lor.lhs.false

if.then2.cleanup501_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

lor.lhs.false:                                    ; preds = %if.then2
  %conv = zext i8 %7 to i32
  %9 = load i32, ptr @max_hops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp8 = icmp ult i32 %9, %conv
  br i1 %cmp8, label %lor.lhs.false.cleanup501_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

lor.lhs.false.cleanup501_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

if.end12:                                         ; preds = %lor.lhs.false.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %flags = getelementptr i8, ptr %nlh, i32 18
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool14.not = icmp eq i16 %12, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 73, ptr nonnull %mb) #14
  %13 = call ptr @memset(ptr %mb, i32 255, i32 73)
  %arrayidx16 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 15
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %if.then15.if.end58_crit_edge, label %if.then18

if.then15.if.end58_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then18:                                        ; preds = %if.then15
  %call20 = call i32 @nla_memcpy(ptr noundef nonnull %mb, ptr noundef nonnull %15, i32 noundef 73) #14
  %16 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mb, align 8
  %18 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mod, align 8
  %flags.i = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 2
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flags.i, align 1
  %flags2.i = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 2
  %21 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %flags2.i, align 1
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 1
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len.i, align 4
  %len3.i = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 1
  %24 = ptrtoint ptr %len3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %len3.i, align 4
  %data.i = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 5
  %data4.i = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 5
  %25 = call ptr @memcpy(ptr %data.i, ptr %data4.i, i32 64)
  %modtype = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %mb, i32 0, i32 1
  %26 = ptrtoint ptr %modtype to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %modtype, align 4
  %modtype22 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1
  %28 = ptrtoint ptr %modtype22 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %modtype22, align 8
  %29 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool27.not = icmp eq i8 %29, 0
  br i1 %tobool27.not, label %if.then18.if.end30_crit_edge, label %if.then28

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then28:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #16
  %modfunc = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 2
  %30 = ptrtoint ptr %modfunc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mod_and_id, ptr %modfunc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then18.if.end30_crit_edge
  %modidx.0 = phi i32 [ 1, %if.then28 ], [ 0, %if.then18.if.end30_crit_edge ]
  %31 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool34.not = icmp eq i8 %31, 0
  br i1 %tobool34.not, label %if.end30.if.end39_crit_edge, label %if.then35

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %inc37 = add nuw nsw i32 %modidx.0, 1
  %arrayidx38 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.0
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mod_and_len, ptr %arrayidx38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end30.if.end39_crit_edge
  %modidx.1 = phi i32 [ %inc37, %if.then35 ], [ %modidx.0, %if.end30.if.end39_crit_edge ]
  %33 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool43.not = icmp eq i8 %33, 0
  br i1 %tobool43.not, label %if.end39.if.end48_crit_edge, label %if.then44

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %inc46 = add nuw nsw i32 %modidx.1, 1
  %arrayidx47 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.1
  %34 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @mod_and_flags, ptr %arrayidx47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end39.if.end48_crit_edge
  %modidx.2 = phi i32 [ %inc46, %if.then44 ], [ %modidx.1, %if.end39.if.end48_crit_edge ]
  %35 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool52.not = icmp eq i8 %35, 0
  br i1 %tobool52.not, label %if.end48.if.end58_crit_edge, label %if.then53

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #16
  %inc55 = add nuw nsw i32 %modidx.2, 1
  %arrayidx56 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.2
  %36 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mod_and_fddata, ptr %arrayidx56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.end48.if.end58_crit_edge, %if.then15.if.end58_crit_edge
  %modidx.3 = phi i32 [ %inc55, %if.then53 ], [ %modidx.2, %if.end48.if.end58_crit_edge ], [ 0, %if.then15.if.end58_crit_edge ]
  %arrayidx59 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 16
  %37 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %38, null
  br i1 %tobool60.not, label %if.end58.if.end105_crit_edge, label %if.then61

if.end58.if.end105_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then61:                                        ; preds = %if.end58
  %call63 = call i32 @nla_memcpy(ptr noundef nonnull %mb, ptr noundef nonnull %38, i32 noundef 73) #14
  %or = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1
  %39 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mb, align 8
  %41 = ptrtoint ptr %or to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %or, align 8
  %flags.i5 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 2
  %42 = ptrtoint ptr %flags.i5 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags.i5, align 1
  %flags2.i6 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %flags2.i6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %flags2.i6, align 1
  %len.i7 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 1
  %45 = ptrtoint ptr %len.i7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len.i7, align 4
  %len3.i8 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %len3.i8 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %len3.i8, align 4
  %data.i9 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5
  %data4.i10 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 5
  %48 = call ptr @memcpy(ptr %data.i9, ptr %data4.i10, i32 64)
  %modtype66 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %mb, i32 0, i32 1
  %49 = ptrtoint ptr %modtype66 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %modtype66, align 4
  %or68 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %or68 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %or68, align 1
  %52 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool72.not = icmp eq i8 %52, 0
  br i1 %tobool72.not, label %if.then61.if.end77_crit_edge, label %if.then73

if.then61.if.end77_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

if.then73:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %inc75 = add nuw nsw i32 %modidx.3, 1
  %arrayidx76 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.3
  %53 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mod_or_id, ptr %arrayidx76, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %if.then61.if.end77_crit_edge
  %modidx.4 = phi i32 [ %inc75, %if.then73 ], [ %modidx.3, %if.then61.if.end77_crit_edge ]
  %54 = and i8 %50, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool81.not = icmp eq i8 %54, 0
  br i1 %tobool81.not, label %if.end77.if.end86_crit_edge, label %if.then82

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then82:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %inc84 = add nuw nsw i32 %modidx.4, 1
  %arrayidx85 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.4
  %55 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @mod_or_len, ptr %arrayidx85, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then82, %if.end77.if.end86_crit_edge
  %modidx.5 = phi i32 [ %inc84, %if.then82 ], [ %modidx.4, %if.end77.if.end86_crit_edge ]
  %56 = and i8 %50, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool90.not = icmp eq i8 %56, 0
  br i1 %tobool90.not, label %if.end86.if.end95_crit_edge, label %if.then91

if.end86.if.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end95

if.then91:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  %inc93 = add nuw nsw i32 %modidx.5, 1
  %arrayidx94 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.5
  %57 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @mod_or_flags, ptr %arrayidx94, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end86.if.end95_crit_edge
  %modidx.6 = phi i32 [ %inc93, %if.then91 ], [ %modidx.5, %if.end86.if.end95_crit_edge ]
  %58 = and i8 %50, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool99.not = icmp eq i8 %58, 0
  br i1 %tobool99.not, label %if.end95.if.end105_crit_edge, label %if.then100

if.end95.if.end105_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end105

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #16
  %inc102 = add nuw nsw i32 %modidx.6, 1
  %arrayidx103 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.6
  %59 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mod_or_fddata, ptr %arrayidx103, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then100, %if.end95.if.end105_crit_edge, %if.end58.if.end105_crit_edge
  %modidx.7 = phi i32 [ %inc102, %if.then100 ], [ %modidx.6, %if.end95.if.end105_crit_edge ], [ %modidx.3, %if.end58.if.end105_crit_edge ]
  %arrayidx106 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 17
  %60 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx106, align 4
  %tobool107.not = icmp eq ptr %61, null
  br i1 %tobool107.not, label %if.end105.if.end152_crit_edge, label %if.then108

if.end105.if.end152_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then108:                                       ; preds = %if.end105
  %call110 = call i32 @nla_memcpy(ptr noundef nonnull %mb, ptr noundef nonnull %61, i32 noundef 73) #14
  %xor = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2
  %62 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mb, align 8
  %64 = ptrtoint ptr %xor to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %xor, align 8
  %flags.i11 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 2
  %65 = ptrtoint ptr %flags.i11 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %flags.i11, align 1
  %flags2.i12 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 2
  %67 = ptrtoint ptr %flags2.i12 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %flags2.i12, align 1
  %len.i13 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 1
  %68 = ptrtoint ptr %len.i13 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %len.i13, align 4
  %len3.i14 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 1
  %70 = ptrtoint ptr %len3.i14 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %len3.i14, align 4
  %data.i15 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5
  %data4.i16 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 5
  %71 = call ptr @memcpy(ptr %data.i15, ptr %data4.i16, i32 64)
  %modtype113 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %mb, i32 0, i32 1
  %72 = ptrtoint ptr %modtype113 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %modtype113, align 4
  %xor115 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %xor115 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %xor115, align 2
  %75 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool119.not = icmp eq i8 %75, 0
  br i1 %tobool119.not, label %if.then108.if.end124_crit_edge, label %if.then120

if.then108.if.end124_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end124

if.then120:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  %inc122 = add nuw nsw i32 %modidx.7, 1
  %arrayidx123 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.7
  %76 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mod_xor_id, ptr %arrayidx123, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.then120, %if.then108.if.end124_crit_edge
  %modidx.8 = phi i32 [ %inc122, %if.then120 ], [ %modidx.7, %if.then108.if.end124_crit_edge ]
  %77 = and i8 %73, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool128.not = icmp eq i8 %77, 0
  br i1 %tobool128.not, label %if.end124.if.end133_crit_edge, label %if.then129

if.end124.if.end133_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end133

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #16
  %inc131 = add nuw nsw i32 %modidx.8, 1
  %arrayidx132 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.8
  %78 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @mod_xor_len, ptr %arrayidx132, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %if.end124.if.end133_crit_edge
  %modidx.9 = phi i32 [ %inc131, %if.then129 ], [ %modidx.8, %if.end124.if.end133_crit_edge ]
  %79 = and i8 %73, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool137.not = icmp eq i8 %79, 0
  br i1 %tobool137.not, label %if.end133.if.end142_crit_edge, label %if.then138

if.end133.if.end142_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end142

if.then138:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #16
  %inc140 = add nuw nsw i32 %modidx.9, 1
  %arrayidx141 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.9
  %80 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @mod_xor_flags, ptr %arrayidx141, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %if.end133.if.end142_crit_edge
  %modidx.10 = phi i32 [ %inc140, %if.then138 ], [ %modidx.9, %if.end133.if.end142_crit_edge ]
  %81 = and i8 %73, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool146.not = icmp eq i8 %81, 0
  br i1 %tobool146.not, label %if.end142.if.end152_crit_edge, label %if.then147

if.end142.if.end152_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end152

if.then147:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #16
  %inc149 = add nuw nsw i32 %modidx.10, 1
  %arrayidx150 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.10
  %82 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @mod_xor_fddata, ptr %arrayidx150, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.then147, %if.end142.if.end152_crit_edge, %if.end105.if.end152_crit_edge
  %modidx.11 = phi i32 [ %inc149, %if.then147 ], [ %modidx.10, %if.end142.if.end152_crit_edge ], [ %modidx.7, %if.end105.if.end152_crit_edge ]
  %arrayidx153 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 18
  %83 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx153, align 4
  %tobool154.not = icmp eq ptr %84, null
  br i1 %tobool154.not, label %if.end152.if.end199_crit_edge, label %if.then155

if.end152.if.end199_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then155:                                       ; preds = %if.end152
  %call157 = call i32 @nla_memcpy(ptr noundef nonnull %mb, ptr noundef nonnull %84, i32 noundef 73) #14
  %set = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3
  %85 = ptrtoint ptr %mb to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mb, align 8
  %87 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %set, align 8
  %flags.i17 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 2
  %88 = ptrtoint ptr %flags.i17 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %flags.i17, align 1
  %flags2.i18 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 2
  %90 = ptrtoint ptr %flags2.i18 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %89, ptr %flags2.i18, align 1
  %len.i19 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 1
  %91 = ptrtoint ptr %len.i19 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %len.i19, align 4
  %len3.i20 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %len3.i20 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %len3.i20, align 4
  %data.i21 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 5
  %data4.i22 = getelementptr inbounds %struct.canfd_frame, ptr %mb, i32 0, i32 5
  %94 = call ptr @memcpy(ptr %data.i21, ptr %data4.i22, i32 64)
  %modtype160 = getelementptr inbounds %struct.cgw_fdframe_mod, ptr %mb, i32 0, i32 1
  %95 = ptrtoint ptr %modtype160 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %modtype160, align 4
  %set162 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 3
  %97 = ptrtoint ptr %set162 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %set162, align 1
  %98 = and i8 %96, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool166.not = icmp eq i8 %98, 0
  br i1 %tobool166.not, label %if.then155.if.end171_crit_edge, label %if.then167

if.then155.if.end171_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end171

if.then167:                                       ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #16
  %inc169 = add nuw nsw i32 %modidx.11, 1
  %arrayidx170 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.11
  %99 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @mod_set_id, ptr %arrayidx170, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then167, %if.then155.if.end171_crit_edge
  %modidx.12 = phi i32 [ %inc169, %if.then167 ], [ %modidx.11, %if.then155.if.end171_crit_edge ]
  %100 = and i8 %96, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool175.not = icmp eq i8 %100, 0
  br i1 %tobool175.not, label %if.end171.if.end180_crit_edge, label %if.then176

if.end171.if.end180_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end180

if.then176:                                       ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #16
  %inc178 = add nuw nsw i32 %modidx.12, 1
  %arrayidx179 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.12
  %101 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @mod_set_len, ptr %arrayidx179, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then176, %if.end171.if.end180_crit_edge
  %modidx.13 = phi i32 [ %inc178, %if.then176 ], [ %modidx.12, %if.end171.if.end180_crit_edge ]
  %102 = and i8 %96, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool184.not = icmp eq i8 %102, 0
  br i1 %tobool184.not, label %if.end180.if.end189_crit_edge, label %if.then185

if.end180.if.end189_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end189

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #16
  %inc187 = add nuw nsw i32 %modidx.13, 1
  %arrayidx188 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.13
  %103 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @mod_set_flags, ptr %arrayidx188, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.end180.if.end189_crit_edge
  %modidx.14 = phi i32 [ %inc187, %if.then185 ], [ %modidx.13, %if.end180.if.end189_crit_edge ]
  %104 = and i8 %96, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool193.not = icmp eq i8 %104, 0
  br i1 %tobool193.not, label %if.end189.if.end199_crit_edge, label %if.then194

if.end189.if.end199_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end199

if.then194:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #16
  %inc196 = add nuw nsw i32 %modidx.14, 1
  %arrayidx197 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.14
  %105 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @mod_set_fddata, ptr %arrayidx197, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then194, %if.end189.if.end199_crit_edge, %if.end152.if.end199_crit_edge
  %modidx.15 = phi i32 [ %inc196, %if.then194 ], [ %modidx.14, %if.end189.if.end199_crit_edge ], [ %modidx.11, %if.end152.if.end199_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 73, ptr nonnull %mb) #14
  br label %if.end357

if.else:                                          ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %mb200) #14
  %106 = getelementptr inbounds %struct.can_frame, ptr %mb200, i32 0, i32 1
  %107 = getelementptr inbounds %struct.can_frame, ptr %mb200, i32 0, i32 5
  %108 = getelementptr inbounds %struct.cgw_frame_mod, ptr %mb200, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 1
  %109 = call ptr @memset(ptr %mb200, i32 255, i32 17)
  %110 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx201, align 4
  %tobool202.not = icmp eq ptr %111, null
  br i1 %tobool202.not, label %if.else.if.end239_crit_edge, label %if.then203

if.else.if.end239_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end239

if.then203:                                       ; preds = %if.else
  %call205 = call i32 @nla_memcpy(ptr noundef nonnull %mb200, ptr noundef nonnull %111, i32 noundef 17) #14
  %112 = ptrtoint ptr %mb200 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mb200, align 8
  %114 = ptrtoint ptr %mod to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %mod, align 8
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %106, align 4
  %len.i23 = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 1
  %117 = ptrtoint ptr %len.i23 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %len.i23, align 4
  %118 = ptrtoint ptr %107 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %107, align 8
  %data2.i = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 5
  %120 = ptrtoint ptr %data2.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %data2.i, align 8
  %121 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %108, align 4
  %modtype210 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1
  %123 = ptrtoint ptr %modtype210 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %122, ptr %modtype210, align 8
  %124 = and i8 %122, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool215.not = icmp eq i8 %124, 0
  br i1 %tobool215.not, label %if.then203.if.end220_crit_edge, label %if.then216

if.then203.if.end220_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end220

if.then216:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #16
  %modfunc217 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 2
  %125 = ptrtoint ptr %modfunc217 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @mod_and_id, ptr %modfunc217, align 4
  br label %if.end220

if.end220:                                        ; preds = %if.then216, %if.then203.if.end220_crit_edge
  %modidx.16 = phi i32 [ 1, %if.then216 ], [ 0, %if.then203.if.end220_crit_edge ]
  %126 = and i8 %122, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool224.not = icmp eq i8 %126, 0
  br i1 %tobool224.not, label %if.end220.if.end229_crit_edge, label %if.then225

if.end220.if.end229_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end229

if.then225:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #16
  %inc227 = add nuw nsw i32 %modidx.16, 1
  %arrayidx228 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.16
  %127 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @mod_and_ccdlc, ptr %arrayidx228, align 4
  br label %if.end229

if.end229:                                        ; preds = %if.then225, %if.end220.if.end229_crit_edge
  %modidx.17 = phi i32 [ %inc227, %if.then225 ], [ %modidx.16, %if.end220.if.end229_crit_edge ]
  %128 = and i8 %122, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool233.not = icmp eq i8 %128, 0
  br i1 %tobool233.not, label %if.end229.if.end239_crit_edge, label %if.then234

if.end229.if.end239_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end239

if.then234:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #16
  %inc236 = add nuw nsw i32 %modidx.17, 1
  %arrayidx237 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.17
  %129 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @mod_and_data, ptr %arrayidx237, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then234, %if.end229.if.end239_crit_edge, %if.else.if.end239_crit_edge
  %modidx.18 = phi i32 [ %inc236, %if.then234 ], [ %modidx.17, %if.end229.if.end239_crit_edge ], [ 0, %if.else.if.end239_crit_edge ]
  %arrayidx240 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 2
  %130 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx240, align 4
  %tobool241.not = icmp eq ptr %131, null
  br i1 %tobool241.not, label %if.end239.if.end278_crit_edge, label %if.then242

if.end239.if.end278_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end278

if.then242:                                       ; preds = %if.end239
  %call244 = call i32 @nla_memcpy(ptr noundef nonnull %mb200, ptr noundef nonnull %131, i32 noundef 17) #14
  %or246 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1
  %132 = ptrtoint ptr %mb200 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mb200, align 8
  %134 = ptrtoint ptr %or246 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %or246, align 8
  %135 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %106, align 4
  %len.i25 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %len.i25 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %136, ptr %len.i25, align 4
  %138 = ptrtoint ptr %107 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %107, align 8
  %data2.i27 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5
  %140 = ptrtoint ptr %data2.i27 to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %139, ptr %data2.i27, align 8
  %141 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %108, align 4
  %or250 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %or250 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %or250, align 1
  %144 = and i8 %142, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool254.not = icmp eq i8 %144, 0
  br i1 %tobool254.not, label %if.then242.if.end259_crit_edge, label %if.then255

if.then242.if.end259_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end259

if.then255:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #16
  %inc257 = add nuw nsw i32 %modidx.18, 1
  %arrayidx258 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.18
  %145 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @mod_or_id, ptr %arrayidx258, align 4
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %if.then242.if.end259_crit_edge
  %modidx.19 = phi i32 [ %inc257, %if.then255 ], [ %modidx.18, %if.then242.if.end259_crit_edge ]
  %146 = and i8 %142, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool263.not = icmp eq i8 %146, 0
  br i1 %tobool263.not, label %if.end259.if.end268_crit_edge, label %if.then264

if.end259.if.end268_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end268

if.then264:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #16
  %inc266 = add nuw nsw i32 %modidx.19, 1
  %arrayidx267 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.19
  %147 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @mod_or_ccdlc, ptr %arrayidx267, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.then264, %if.end259.if.end268_crit_edge
  %modidx.20 = phi i32 [ %inc266, %if.then264 ], [ %modidx.19, %if.end259.if.end268_crit_edge ]
  %148 = and i8 %142, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool272.not = icmp eq i8 %148, 0
  br i1 %tobool272.not, label %if.end268.if.end278_crit_edge, label %if.then273

if.end268.if.end278_crit_edge:                    ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end278

if.then273:                                       ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #16
  %inc275 = add nuw nsw i32 %modidx.20, 1
  %arrayidx276 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.20
  %149 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @mod_or_data, ptr %arrayidx276, align 4
  br label %if.end278

if.end278:                                        ; preds = %if.then273, %if.end268.if.end278_crit_edge, %if.end239.if.end278_crit_edge
  %modidx.21 = phi i32 [ %inc275, %if.then273 ], [ %modidx.20, %if.end268.if.end278_crit_edge ], [ %modidx.18, %if.end239.if.end278_crit_edge ]
  %arrayidx279 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 3
  %150 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx279, align 4
  %tobool280.not = icmp eq ptr %151, null
  br i1 %tobool280.not, label %if.end278.if.end317_crit_edge, label %if.then281

if.end278.if.end317_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end317

if.then281:                                       ; preds = %if.end278
  %call283 = call i32 @nla_memcpy(ptr noundef nonnull %mb200, ptr noundef nonnull %151, i32 noundef 17) #14
  %xor285 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2
  %152 = ptrtoint ptr %mb200 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mb200, align 8
  %154 = ptrtoint ptr %xor285 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %xor285, align 8
  %155 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %106, align 4
  %len.i28 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %len.i28 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %len.i28, align 4
  %158 = ptrtoint ptr %107 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %107, align 8
  %data2.i30 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5
  %160 = ptrtoint ptr %data2.i30 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %159, ptr %data2.i30, align 8
  %161 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %108, align 4
  %xor289 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 2
  %163 = ptrtoint ptr %xor289 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %162, ptr %xor289, align 2
  %164 = and i8 %162, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool293.not = icmp eq i8 %164, 0
  br i1 %tobool293.not, label %if.then281.if.end298_crit_edge, label %if.then294

if.then281.if.end298_crit_edge:                   ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end298

if.then294:                                       ; preds = %if.then281
  call void @__sanitizer_cov_trace_pc() #16
  %inc296 = add nuw nsw i32 %modidx.21, 1
  %arrayidx297 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.21
  %165 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @mod_xor_id, ptr %arrayidx297, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then294, %if.then281.if.end298_crit_edge
  %modidx.22 = phi i32 [ %inc296, %if.then294 ], [ %modidx.21, %if.then281.if.end298_crit_edge ]
  %166 = and i8 %162, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool302.not = icmp eq i8 %166, 0
  br i1 %tobool302.not, label %if.end298.if.end307_crit_edge, label %if.then303

if.end298.if.end307_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end307

if.then303:                                       ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #16
  %inc305 = add nuw nsw i32 %modidx.22, 1
  %arrayidx306 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.22
  %167 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @mod_xor_ccdlc, ptr %arrayidx306, align 4
  br label %if.end307

if.end307:                                        ; preds = %if.then303, %if.end298.if.end307_crit_edge
  %modidx.23 = phi i32 [ %inc305, %if.then303 ], [ %modidx.22, %if.end298.if.end307_crit_edge ]
  %168 = and i8 %162, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool311.not = icmp eq i8 %168, 0
  br i1 %tobool311.not, label %if.end307.if.end317_crit_edge, label %if.then312

if.end307.if.end317_crit_edge:                    ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end317

if.then312:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #16
  %inc314 = add nuw nsw i32 %modidx.23, 1
  %arrayidx315 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.23
  %169 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @mod_xor_data, ptr %arrayidx315, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.then312, %if.end307.if.end317_crit_edge, %if.end278.if.end317_crit_edge
  %modidx.24 = phi i32 [ %inc314, %if.then312 ], [ %modidx.23, %if.end307.if.end317_crit_edge ], [ %modidx.21, %if.end278.if.end317_crit_edge ]
  %arrayidx318 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 4
  %170 = ptrtoint ptr %arrayidx318 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx318, align 4
  %tobool319.not = icmp eq ptr %171, null
  br i1 %tobool319.not, label %if.end317.if.end356_crit_edge, label %if.then320

if.end317.if.end356_crit_edge:                    ; preds = %if.end317
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end356

if.then320:                                       ; preds = %if.end317
  %call322 = call i32 @nla_memcpy(ptr noundef nonnull %mb200, ptr noundef nonnull %171, i32 noundef 17) #14
  %set324 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3
  %172 = ptrtoint ptr %mb200 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %mb200, align 8
  %174 = ptrtoint ptr %set324 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %set324, align 8
  %175 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %106, align 4
  %len.i31 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 1
  %177 = ptrtoint ptr %len.i31 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %len.i31, align 4
  %178 = ptrtoint ptr %107 to i32
  call void @__asan_load8_noabort(i32 %178)
  %179 = load i64, ptr %107, align 8
  %data2.i33 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 5
  %180 = ptrtoint ptr %data2.i33 to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 %179, ptr %data2.i33, align 8
  %181 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %108, align 4
  %set328 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 1, i32 3
  %183 = ptrtoint ptr %set328 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 %182, ptr %set328, align 1
  %184 = and i8 %182, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool332.not = icmp eq i8 %184, 0
  br i1 %tobool332.not, label %if.then320.if.end337_crit_edge, label %if.then333

if.then320.if.end337_crit_edge:                   ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end337

if.then333:                                       ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #16
  %inc335 = add nuw nsw i32 %modidx.24, 1
  %arrayidx336 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.24
  %185 = ptrtoint ptr %arrayidx336 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @mod_set_id, ptr %arrayidx336, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.then333, %if.then320.if.end337_crit_edge
  %modidx.25 = phi i32 [ %inc335, %if.then333 ], [ %modidx.24, %if.then320.if.end337_crit_edge ]
  %186 = and i8 %182, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool341.not = icmp eq i8 %186, 0
  br i1 %tobool341.not, label %if.end337.if.end346_crit_edge, label %if.then342

if.end337.if.end346_crit_edge:                    ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end346

if.then342:                                       ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #16
  %inc344 = add nuw nsw i32 %modidx.25, 1
  %arrayidx345 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.25
  %187 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @mod_set_ccdlc, ptr %arrayidx345, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.then342, %if.end337.if.end346_crit_edge
  %modidx.26 = phi i32 [ %inc344, %if.then342 ], [ %modidx.25, %if.end337.if.end346_crit_edge ]
  %188 = and i8 %182, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool350.not = icmp eq i8 %188, 0
  br i1 %tobool350.not, label %if.end346.if.end356_crit_edge, label %if.then351

if.end346.if.end356_crit_edge:                    ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end356

if.then351:                                       ; preds = %if.end346
  call void @__sanitizer_cov_trace_pc() #16
  %inc353 = add nuw nsw i32 %modidx.26, 1
  %arrayidx354 = getelementptr %struct.cf_mod, ptr %mod, i32 0, i32 2, i32 %modidx.26
  %189 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @mod_set_data, ptr %arrayidx354, align 4
  br label %if.end356

if.end356:                                        ; preds = %if.then351, %if.end346.if.end356_crit_edge, %if.end317.if.end356_crit_edge
  %modidx.27 = phi i32 [ %inc353, %if.then351 ], [ %modidx.26, %if.end346.if.end356_crit_edge ], [ %modidx.24, %if.end317.if.end356_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %mb200) #14
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.end199
  %modidx.28 = phi i32 [ %modidx.15, %if.end199 ], [ %modidx.27, %if.end356 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %modidx.28)
  %tobool358.not = icmp eq i32 %modidx.28, 0
  br i1 %tobool358.not, label %if.end357.if.then466_crit_edge, label %if.then359

if.end357.if.then466_crit_edge:                   ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then466

if.then359:                                       ; preds = %if.end357
  %arrayidx360 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 6
  %190 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %arrayidx360, align 4
  %tobool361.not = icmp eq ptr %191, null
  br i1 %tobool361.not, label %if.then359.if.end402_crit_edge, label %if.then362

if.then359.if.end402_crit_edge:                   ; preds = %if.then359
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end402

if.then362:                                       ; preds = %if.then359
  %add.ptr.i34 = getelementptr i8, ptr %191, i32 4
  %192 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %add.ptr.i34, align 1
  %to_idx = getelementptr i8, ptr %191, i32 5
  %result_idx = getelementptr i8, ptr %191, i32 6
  %194 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %result_idx, align 1
  %196 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %flags, align 2
  %198 = and i16 %197, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %198)
  %tobool.not.i = icmp eq i16 %198, 0
  %conv1.i = sext i8 %193 to i32
  %.neg.i = select i1 %tobool.not.i, i32 -8, i32 -64
  %199 = select i1 %tobool.not.i, i32 8, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i, i32 %conv1.i)
  %cmp.not.i = icmp sle i32 %.neg.i, %conv1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %conv1.i)
  %cmp6.i = icmp sgt i32 %199, %conv1.i
  %or.cond.i = and i1 %cmp.not.i, %cmp6.i
  br i1 %or.cond.i, label %land.lhs.true8.i, label %if.then362.cleanup501_crit_edge

if.then362.cleanup501_crit_edge:                  ; preds = %if.then362
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

land.lhs.true8.i:                                 ; preds = %if.then362
  %200 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %to_idx, align 1
  %conv9.i = sext i8 %201 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i, i32 %conv9.i)
  %cmp12.not.i = icmp sle i32 %.neg.i, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %conv9.i)
  %cmp17.i = icmp sgt i32 %199, %conv9.i
  %or.cond39.i = and i1 %cmp12.not.i, %cmp17.i
  br i1 %or.cond39.i, label %land.lhs.true19.i, label %land.lhs.true8.i.cleanup501_crit_edge

land.lhs.true8.i.cleanup501_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

land.lhs.true19.i:                                ; preds = %land.lhs.true8.i
  %conv20.i = sext i8 %195 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i, i32 %conv20.i)
  %cmp23.not.i = icmp sle i32 %.neg.i, %conv20.i
  call void @__sanitizer_cov_trace_cmp4(i32 %199, i32 %conv20.i)
  %cmp28.i = icmp sgt i32 %199, %conv20.i
  %or.cond40.i = and i1 %cmp23.not.i, %cmp28.i
  br i1 %or.cond40.i, label %if.end368, label %land.lhs.true19.i.cleanup501_crit_edge

land.lhs.true19.i.cleanup501_crit_edge:           ; preds = %land.lhs.true19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

if.end368:                                        ; preds = %land.lhs.true19.i
  %crc8 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 3, i32 1
  %call370 = call i32 @nla_memcpy(ptr noundef %crc8, ptr noundef nonnull %191, i32 noundef 282) #14
  %202 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %add.ptr.i34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %cmp373 = icmp slt i8 %203, 0
  br i1 %cmp373, label %if.end368.if.then385_crit_edge, label %lor.lhs.false375

if.end368.if.then385_crit_edge:                   ; preds = %if.end368
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then385

lor.lhs.false375:                                 ; preds = %if.end368
  %204 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %to_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %cmp378 = icmp slt i8 %205, 0
  br i1 %cmp378, label %lor.lhs.false375.if.then385_crit_edge, label %lor.lhs.false380

lor.lhs.false375.if.then385_crit_edge:            ; preds = %lor.lhs.false375
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then385

lor.lhs.false380:                                 ; preds = %lor.lhs.false375
  %206 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %result_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %207)
  %cmp383 = icmp slt i8 %207, 0
  br i1 %cmp383, label %lor.lhs.false380.if.then385_crit_edge, label %if.else387

lor.lhs.false380.if.then385_crit_edge:            ; preds = %lor.lhs.false380
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then385

if.then385:                                       ; preds = %lor.lhs.false380.if.then385_crit_edge, %lor.lhs.false375.if.then385_crit_edge, %if.end368.if.then385_crit_edge
  %crc8386 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 4, i32 1
  %208 = ptrtoint ptr %crc8386 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @cgw_csum_crc8_rel, ptr %crc8386, align 4
  br label %if.end402

if.else387:                                       ; preds = %lor.lhs.false380
  call void @__sanitizer_cov_trace_cmp1(i8 %203, i8 %205)
  %cmp392.not = icmp ugt i8 %203, %205
  %crc8399 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 4, i32 1
  br i1 %cmp392.not, label %if.else397, label %if.then394

if.then394:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #16
  %209 = ptrtoint ptr %crc8399 to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @cgw_csum_crc8_pos, ptr %crc8399, align 4
  br label %if.end402

if.else397:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #16
  %210 = ptrtoint ptr %crc8399 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @cgw_csum_crc8_neg, ptr %crc8399, align 4
  br label %if.end402

if.end402:                                        ; preds = %if.else397, %if.then394, %if.then385, %if.then359.if.end402_crit_edge
  %arrayidx403 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 5
  %211 = ptrtoint ptr %arrayidx403 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx403, align 4
  %tobool404.not = icmp eq ptr %212, null
  br i1 %tobool404.not, label %if.end402.if.end455_crit_edge, label %if.then405

if.end402.if.end455_crit_edge:                    ; preds = %if.end402
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end455

if.then405:                                       ; preds = %if.end402
  %add.ptr.i36 = getelementptr i8, ptr %212, i32 4
  %213 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr.i36, align 1
  %to_idx410 = getelementptr i8, ptr %212, i32 5
  %result_idx411 = getelementptr i8, ptr %212, i32 6
  %215 = ptrtoint ptr %result_idx411 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %result_idx411, align 1
  %217 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %flags, align 2
  %219 = and i16 %218, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %219)
  %tobool.not.i38 = icmp eq i16 %219, 0
  %conv1.i39 = sext i8 %214 to i32
  %.neg.i40 = select i1 %tobool.not.i38, i32 -8, i32 -64
  %220 = select i1 %tobool.not.i38, i32 8, i32 64
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i40, i32 %conv1.i39)
  %cmp.not.i41 = icmp sle i32 %.neg.i40, %conv1.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %conv1.i39)
  %cmp6.i42 = icmp sgt i32 %220, %conv1.i39
  %or.cond.i43 = and i1 %cmp.not.i41, %cmp6.i42
  br i1 %or.cond.i43, label %land.lhs.true8.i48, label %if.then405.cleanup501_crit_edge

if.then405.cleanup501_crit_edge:                  ; preds = %if.then405
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

land.lhs.true8.i48:                               ; preds = %if.then405
  %221 = ptrtoint ptr %to_idx410 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %to_idx410, align 1
  %conv9.i44 = sext i8 %222 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i40, i32 %conv9.i44)
  %cmp12.not.i45 = icmp sle i32 %.neg.i40, %conv9.i44
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %conv9.i44)
  %cmp17.i46 = icmp sgt i32 %220, %conv9.i44
  %or.cond39.i47 = and i1 %cmp12.not.i45, %cmp17.i46
  br i1 %or.cond39.i47, label %land.lhs.true19.i53, label %land.lhs.true8.i48.cleanup501_crit_edge

land.lhs.true8.i48.cleanup501_crit_edge:          ; preds = %land.lhs.true8.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

land.lhs.true19.i53:                              ; preds = %land.lhs.true8.i48
  %conv20.i49 = sext i8 %216 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.neg.i40, i32 %conv20.i49)
  %cmp23.not.i50 = icmp sle i32 %.neg.i40, %conv20.i49
  call void @__sanitizer_cov_trace_cmp4(i32 %220, i32 %conv20.i49)
  %cmp28.i51 = icmp sgt i32 %220, %conv20.i49
  %or.cond40.i52 = and i1 %cmp23.not.i50, %cmp28.i51
  br i1 %or.cond40.i52, label %if.end415, label %land.lhs.true19.i53.cleanup501_crit_edge

land.lhs.true19.i53.cleanup501_crit_edge:         ; preds = %land.lhs.true19.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

if.end415:                                        ; preds = %land.lhs.true19.i53
  %csum416 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 3
  %call419 = call i32 @nla_memcpy(ptr noundef %csum416, ptr noundef nonnull %212, i32 noundef 4) #14
  %223 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %add.ptr.i36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %224)
  %cmp422 = icmp slt i8 %224, 0
  br i1 %cmp422, label %if.end415.if.then434_crit_edge, label %lor.lhs.false424

if.end415.if.then434_crit_edge:                   ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then434

lor.lhs.false424:                                 ; preds = %if.end415
  %225 = ptrtoint ptr %to_idx410 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %to_idx410, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %226)
  %cmp427 = icmp slt i8 %226, 0
  br i1 %cmp427, label %lor.lhs.false424.if.then434_crit_edge, label %lor.lhs.false429

lor.lhs.false424.if.then434_crit_edge:            ; preds = %lor.lhs.false424
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then434

lor.lhs.false429:                                 ; preds = %lor.lhs.false424
  %227 = ptrtoint ptr %result_idx411 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %result_idx411, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %cmp432 = icmp slt i8 %228, 0
  br i1 %cmp432, label %lor.lhs.false429.if.then434_crit_edge, label %if.else437

lor.lhs.false429.if.then434_crit_edge:            ; preds = %lor.lhs.false429
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then434

if.then434:                                       ; preds = %lor.lhs.false429.if.then434_crit_edge, %lor.lhs.false424.if.then434_crit_edge, %if.end415.if.then434_crit_edge
  %csumfunc435 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 4
  %229 = ptrtoint ptr %csumfunc435 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr @cgw_csum_xor_rel, ptr %csumfunc435, align 4
  br label %if.end455

if.else437:                                       ; preds = %lor.lhs.false429
  call void @__sanitizer_cov_trace_cmp1(i8 %224, i8 %226)
  %cmp442.not = icmp ugt i8 %224, %226
  %csumfunc448 = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 4
  br i1 %cmp442.not, label %if.else447, label %if.then444

if.then444:                                       ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #16
  %230 = ptrtoint ptr %csumfunc448 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr @cgw_csum_xor_pos, ptr %csumfunc448, align 4
  br label %if.end455

if.else447:                                       ; preds = %if.else437
  call void @__sanitizer_cov_trace_pc() #16
  %231 = ptrtoint ptr %csumfunc448 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @cgw_csum_xor_neg, ptr %csumfunc448, align 4
  br label %if.end455

if.end455:                                        ; preds = %if.else447, %if.then444, %if.then434, %if.end402.if.end455_crit_edge
  %arrayidx456 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 14
  %232 = ptrtoint ptr %arrayidx456 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx456, align 4
  %tobool457.not = icmp eq ptr %233, null
  br i1 %tobool457.not, label %if.end455.if.then466_crit_edge, label %if.then458

if.end455.if.then466_crit_edge:                   ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then466

if.then458:                                       ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #16
  %uid = getelementptr inbounds %struct.cf_mod, ptr %mod, i32 0, i32 5
  %call460 = call i32 @nla_memcpy(ptr noundef %uid, ptr noundef nonnull %233, i32 noundef 4) #14
  br label %if.then466

if.then466:                                       ; preds = %if.then458, %if.end455.if.then466_crit_edge, %if.end357.if.then466_crit_edge
  %234 = call ptr @memset(ptr %gwtypeattr, i32 0, i32 16)
  %arrayidx467 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 11
  %235 = ptrtoint ptr %arrayidx467 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %arrayidx467, align 4
  %tobool468.not = icmp eq ptr %236, null
  br i1 %tobool468.not, label %if.then466.if.end472_crit_edge, label %if.then469

if.then466.if.end472_crit_edge:                   ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end472

if.then469:                                       ; preds = %if.then466
  call void @__sanitizer_cov_trace_pc() #16
  %call471 = call i32 @nla_memcpy(ptr noundef %gwtypeattr, ptr noundef nonnull %236, i32 noundef 8) #14
  br label %if.end472

if.end472:                                        ; preds = %if.then469, %if.then466.if.end472_crit_edge
  %arrayidx473 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 9
  %237 = ptrtoint ptr %arrayidx473 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx473, align 4
  %tobool474.not = icmp eq ptr %238, null
  br i1 %tobool474.not, label %if.end472.cleanup501_crit_edge, label %lor.lhs.false475

if.end472.cleanup501_crit_edge:                   ; preds = %if.end472
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

lor.lhs.false475:                                 ; preds = %if.end472
  %arrayidx476 = getelementptr inbounds [19 x ptr], ptr %tb, i32 0, i32 10
  %239 = ptrtoint ptr %arrayidx476 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx476, align 4
  %tobool477.not = icmp eq ptr %240, null
  br i1 %tobool477.not, label %lor.lhs.false475.cleanup501_crit_edge, label %if.end479

lor.lhs.false475.cleanup501_crit_edge:            ; preds = %lor.lhs.false475
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup501

if.end479:                                        ; preds = %lor.lhs.false475
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i57 = getelementptr i8, ptr %238, i32 4
  %241 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %add.ptr.i.i57, align 4
  %src_idx = getelementptr inbounds %struct.can_can_gw, ptr %gwtypeattr, i32 0, i32 1
  %243 = ptrtoint ptr %src_idx to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %242, ptr %src_idx, align 4
  %add.ptr.i.i58 = getelementptr i8, ptr %240, i32 4
  %244 = ptrtoint ptr %add.ptr.i.i58 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %add.ptr.i.i58, align 4
  %dst_idx = getelementptr inbounds %struct.can_can_gw, ptr %gwtypeattr, i32 0, i32 2
  %246 = ptrtoint ptr %dst_idx to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %245, ptr %dst_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool485.not = icmp eq i32 %242, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool487.not = icmp eq i32 %245, 0
  %or.cond = select i1 %tobool485.not, i1 %tobool487.not, i1 false
  %.mux = select i1 %or.cond, i32 0, i32 -19
  %spec.select = select i1 %tobool487.not, i32 -19, i32 0
  %spec.select73 = select i1 %tobool485.not, i32 %.mux, i32 %spec.select
  br label %cleanup501

cleanup501:                                       ; preds = %if.end479, %lor.lhs.false475.cleanup501_crit_edge, %if.end472.cleanup501_crit_edge, %land.lhs.true19.i53.cleanup501_crit_edge, %land.lhs.true8.i48.cleanup501_crit_edge, %if.then405.cleanup501_crit_edge, %land.lhs.true19.i.cleanup501_crit_edge, %land.lhs.true8.i.cleanup501_crit_edge, %if.then362.cleanup501_crit_edge, %lor.lhs.false.cleanup501_crit_edge, %if.then2.cleanup501_crit_edge, %nlmsg_parse_deprecated.exit.cleanup501_crit_edge, %nlmsg_parse_deprecated.exit.thread
  %retval.6 = phi i32 [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup501_crit_edge ], [ -22, %lor.lhs.false.cleanup501_crit_edge ], [ -22, %if.then2.cleanup501_crit_edge ], [ -22, %nlmsg_parse_deprecated.exit.thread ], [ -22, %if.then362.cleanup501_crit_edge ], [ -22, %land.lhs.true8.i.cleanup501_crit_edge ], [ -22, %land.lhs.true19.i.cleanup501_crit_edge ], [ -22, %if.then405.cleanup501_crit_edge ], [ -22, %land.lhs.true8.i48.cleanup501_crit_edge ], [ -22, %land.lhs.true19.i53.cleanup501_crit_edge ], [ -19, %if.end472.cleanup501_crit_edge ], [ -19, %lor.lhs.false475.cleanup501_crit_edge ], [ %spec.select73, %if.end479 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tb) #14
  ret i32 %retval.6
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cgw_register_filter(ptr noundef %net, ptr noundef %gwj) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %src = getelementptr inbounds %struct.cgw_job, ptr %gwj, i32 0, i32 7
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %2 = getelementptr inbounds %struct.cgw_job, ptr %gwj, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %can_mask = getelementptr inbounds %struct.cgw_job, ptr %gwj, i32 0, i32 9, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %can_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %can_mask, align 4
  %call = tail call i32 @can_rx_register(ptr noundef %net, ptr noundef %1, i32 noundef %4, i32 noundef %6, ptr noundef nonnull @can_can_gw_rcv, ptr noundef %gwj, ptr noundef nonnull @.str.11, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_and_id(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mod, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cf, align 8
  %and2 = and i32 %3, %1
  store i32 %and2, ptr %cf, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_and_len(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len1, align 4
  %and35 = and i8 %3, %1
  store i8 %and35, ptr %len1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_and_flags(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %flags1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags1, align 1
  %and35 = and i8 %3, %1
  store i8 %and35, ptr %flags1, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mod_and_fddata(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 5
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %and4 = and i64 %3, %1
  store i64 %and4, ptr %data1, align 8
  %add.ptr.1 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.1, align 8
  %add.ptr3.1 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr3.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.1, align 8
  %and4.1 = and i64 %7, %5
  store i64 %and4.1, ptr %add.ptr3.1, align 8
  %add.ptr.2 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 16
  %8 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.2, align 8
  %add.ptr3.2 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 16
  %10 = ptrtoint ptr %add.ptr3.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr3.2, align 8
  %and4.2 = and i64 %11, %9
  store i64 %and4.2, ptr %add.ptr3.2, align 8
  %add.ptr.3 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 24
  %12 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.3, align 8
  %add.ptr3.3 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 24
  %14 = ptrtoint ptr %add.ptr3.3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr3.3, align 8
  %and4.3 = and i64 %15, %13
  store i64 %and4.3, ptr %add.ptr3.3, align 8
  %add.ptr.4 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 32
  %16 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.4, align 8
  %add.ptr3.4 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 32
  %18 = ptrtoint ptr %add.ptr3.4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr3.4, align 8
  %and4.4 = and i64 %19, %17
  store i64 %and4.4, ptr %add.ptr3.4, align 8
  %add.ptr.5 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 40
  %20 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.5, align 8
  %add.ptr3.5 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 40
  %22 = ptrtoint ptr %add.ptr3.5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr3.5, align 8
  %and4.5 = and i64 %23, %21
  store i64 %and4.5, ptr %add.ptr3.5, align 8
  %add.ptr.6 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 48
  %24 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.6, align 8
  %add.ptr3.6 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 48
  %26 = ptrtoint ptr %add.ptr3.6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr3.6, align 8
  %and4.6 = and i64 %27, %25
  store i64 %and4.6, ptr %add.ptr3.6, align 8
  %add.ptr.7 = getelementptr %struct.canfd_frame, ptr %mod, i32 0, i32 5, i32 56
  %28 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.7, align 8
  %add.ptr3.7 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 56
  %30 = ptrtoint ptr %add.ptr3.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr3.7, align 8
  %and4.7 = and i64 %31, %29
  store i64 %and4.7, ptr %add.ptr3.7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_or_id(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %or = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %or, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cf, align 8
  %or2 = or i32 %3, %1
  store i32 %or2, ptr %cf, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_or_len(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len1, align 4
  %or35 = or i8 %3, %1
  store i8 %or35, ptr %len1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_or_flags(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %flags1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags1, align 1
  %or35 = or i8 %3, %1
  store i8 %or35, ptr %flags1, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mod_or_fddata(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %or4 = or i64 %3, %1
  store i64 %or4, ptr %data1, align 8
  %add.ptr.1 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 8
  %4 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.1, align 8
  %add.ptr3.1 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr3.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.1, align 8
  %or4.1 = or i64 %7, %5
  store i64 %or4.1, ptr %add.ptr3.1, align 8
  %add.ptr.2 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 16
  %8 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.2, align 8
  %add.ptr3.2 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 16
  %10 = ptrtoint ptr %add.ptr3.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr3.2, align 8
  %or4.2 = or i64 %11, %9
  store i64 %or4.2, ptr %add.ptr3.2, align 8
  %add.ptr.3 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 24
  %12 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.3, align 8
  %add.ptr3.3 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 24
  %14 = ptrtoint ptr %add.ptr3.3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr3.3, align 8
  %or4.3 = or i64 %15, %13
  store i64 %or4.3, ptr %add.ptr3.3, align 8
  %add.ptr.4 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 32
  %16 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.4, align 8
  %add.ptr3.4 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 32
  %18 = ptrtoint ptr %add.ptr3.4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr3.4, align 8
  %or4.4 = or i64 %19, %17
  store i64 %or4.4, ptr %add.ptr3.4, align 8
  %add.ptr.5 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 40
  %20 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.5, align 8
  %add.ptr3.5 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 40
  %22 = ptrtoint ptr %add.ptr3.5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr3.5, align 8
  %or4.5 = or i64 %23, %21
  store i64 %or4.5, ptr %add.ptr3.5, align 8
  %add.ptr.6 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 48
  %24 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.6, align 8
  %add.ptr3.6 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 48
  %26 = ptrtoint ptr %add.ptr3.6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr3.6, align 8
  %or4.6 = or i64 %27, %25
  store i64 %or4.6, ptr %add.ptr3.6, align 8
  %add.ptr.7 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5, i32 56
  %28 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.7, align 8
  %add.ptr3.7 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 56
  %30 = ptrtoint ptr %add.ptr3.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr3.7, align 8
  %or4.7 = or i64 %31, %29
  store i64 %or4.7, ptr %add.ptr3.7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_xor_id(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %xor = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xor, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cf, align 8
  %xor2 = xor i32 %3, %1
  store i32 %xor2, ptr %cf, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_xor_len(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len1, align 4
  %xor35 = xor i8 %3, %1
  store i8 %xor35, ptr %len1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_xor_flags(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %flags1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %flags1, align 1
  %xor35 = xor i8 %3, %1
  store i8 %xor35, ptr %flags1, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mod_xor_fddata(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %xor4 = xor i64 %3, %1
  store i64 %xor4, ptr %data1, align 8
  %add.ptr.1 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 8
  %4 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %add.ptr.1, align 8
  %add.ptr3.1 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 8
  %6 = ptrtoint ptr %add.ptr3.1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %add.ptr3.1, align 8
  %xor4.1 = xor i64 %7, %5
  store i64 %xor4.1, ptr %add.ptr3.1, align 8
  %add.ptr.2 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 16
  %8 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %add.ptr.2, align 8
  %add.ptr3.2 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 16
  %10 = ptrtoint ptr %add.ptr3.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %add.ptr3.2, align 8
  %xor4.2 = xor i64 %11, %9
  store i64 %xor4.2, ptr %add.ptr3.2, align 8
  %add.ptr.3 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 24
  %12 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %add.ptr.3, align 8
  %add.ptr3.3 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 24
  %14 = ptrtoint ptr %add.ptr3.3 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %add.ptr3.3, align 8
  %xor4.3 = xor i64 %15, %13
  store i64 %xor4.3, ptr %add.ptr3.3, align 8
  %add.ptr.4 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 32
  %16 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr.4, align 8
  %add.ptr3.4 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 32
  %18 = ptrtoint ptr %add.ptr3.4 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %add.ptr3.4, align 8
  %xor4.4 = xor i64 %19, %17
  store i64 %xor4.4, ptr %add.ptr3.4, align 8
  %add.ptr.5 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 40
  %20 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.5, align 8
  %add.ptr3.5 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 40
  %22 = ptrtoint ptr %add.ptr3.5 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr3.5, align 8
  %xor4.5 = xor i64 %23, %21
  store i64 %xor4.5, ptr %add.ptr3.5, align 8
  %add.ptr.6 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 48
  %24 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.6, align 8
  %add.ptr3.6 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 48
  %26 = ptrtoint ptr %add.ptr3.6 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr3.6, align 8
  %xor4.6 = xor i64 %27, %25
  store i64 %xor4.6, ptr %add.ptr3.6, align 8
  %add.ptr.7 = getelementptr %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5, i32 56
  %28 = ptrtoint ptr %add.ptr.7 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr.7, align 8
  %add.ptr3.7 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 56
  %30 = ptrtoint ptr %add.ptr3.7 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %add.ptr3.7, align 8
  %xor4.7 = xor i64 %31, %29
  store i64 %xor4.7, ptr %add.ptr3.7, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_id(ptr nocapture noundef writeonly %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %set, align 8
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %cf, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_len(ptr nocapture noundef writeonly %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 4
  %len1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %len1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_flags(ptr nocapture noundef writeonly %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %flags1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 2
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %flags1, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_fddata(ptr nocapture noundef writeonly %cf, ptr nocapture noundef readonly %mod) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %data1 = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 5
  %0 = call ptr @memcpy(ptr %data, ptr %data1, i32 64)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_and_ccdlc(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.mod_retrieve_ccdlc.exit_crit_edge

entry.mod_retrieve_ccdlc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.end.i:                                         ; preds = %entry
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %3 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len8_dlc.i, align 1
  %5 = add i8 %4, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %if.then9.i, label %if.end.i.mod_retrieve_ccdlc.exit_crit_edge

if.end.i.mod_retrieve_ccdlc.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %0, align 4
  br label %mod_retrieve_ccdlc.exit

mod_retrieve_ccdlc.exit:                          ; preds = %if.then9.i, %if.end.i.mod_retrieve_ccdlc.exit_crit_edge, %entry.mod_retrieve_ccdlc.exit_crit_edge
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 4
  %and35.i = and i8 %11, %9
  store i8 %and35.i, ptr %0, align 4
  %len8_dlc.i3 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %12 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %len8_dlc.i3, align 1
  %13 = add i8 %and35.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %13)
  %14 = icmp ult i8 %13, -7
  br i1 %14, label %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge, label %if.end6.i

mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge: ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_store_ccdlc.exit

if.end6.i:                                        ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %and35.i, ptr %len8_dlc.i3, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %0, align 4
  br label %mod_store_ccdlc.exit

mod_store_ccdlc.exit:                             ; preds = %if.end6.i, %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_and_data(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.canfd_frame, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %and3 = and i64 %3, %1
  store i64 %and3, ptr %data1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_or_ccdlc(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.mod_retrieve_ccdlc.exit_crit_edge

entry.mod_retrieve_ccdlc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.end.i:                                         ; preds = %entry
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %3 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len8_dlc.i, align 1
  %5 = add i8 %4, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %if.then9.i, label %if.end.i.mod_retrieve_ccdlc.exit_crit_edge

if.end.i.mod_retrieve_ccdlc.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %0, align 4
  br label %mod_retrieve_ccdlc.exit

mod_retrieve_ccdlc.exit:                          ; preds = %if.then9.i, %if.end.i.mod_retrieve_ccdlc.exit_crit_edge, %entry.mod_retrieve_ccdlc.exit_crit_edge
  %len.i = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 4
  %or35.i = or i8 %11, %9
  store i8 %or35.i, ptr %0, align 4
  %len8_dlc.i3 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %12 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %len8_dlc.i3, align 1
  %13 = add i8 %or35.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %13)
  %14 = icmp ult i8 %13, -7
  br i1 %14, label %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge, label %if.end6.i

mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge: ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_store_ccdlc.exit

if.end6.i:                                        ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or35.i, ptr %len8_dlc.i3, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %0, align 4
  br label %mod_store_ccdlc.exit

mod_store_ccdlc.exit:                             ; preds = %if.end6.i, %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_or_data(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %or3 = or i64 %3, %1
  store i64 %or3, ptr %data1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_xor_ccdlc(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp.not.i = icmp eq i8 %2, 8
  br i1 %cmp.not.i, label %if.end.i, label %entry.mod_retrieve_ccdlc.exit_crit_edge

entry.mod_retrieve_ccdlc.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.end.i:                                         ; preds = %entry
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %3 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %len8_dlc.i, align 1
  %5 = add i8 %4, -9
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %5)
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %if.then9.i, label %if.end.i.mod_retrieve_ccdlc.exit_crit_edge

if.end.i.mod_retrieve_ccdlc.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_retrieve_ccdlc.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %0, align 4
  br label %mod_retrieve_ccdlc.exit

mod_retrieve_ccdlc.exit:                          ; preds = %if.then9.i, %if.end.i.mod_retrieve_ccdlc.exit_crit_edge, %entry.mod_retrieve_ccdlc.exit_crit_edge
  %len.i = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len.i, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 4
  %xor35.i = xor i8 %11, %9
  store i8 %xor35.i, ptr %0, align 4
  %len8_dlc.i3 = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %12 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %len8_dlc.i3, align 1
  %13 = add i8 %xor35.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %13)
  %14 = icmp ult i8 %13, -7
  br i1 %14, label %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge, label %if.end6.i

mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge: ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_store_ccdlc.exit

if.end6.i:                                        ; preds = %mod_retrieve_ccdlc.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %len8_dlc.i3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %xor35.i, ptr %len8_dlc.i3, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %0, align 4
  br label %mod_store_ccdlc.exit

mod_store_ccdlc.exit:                             ; preds = %if.end6.i, %mod_retrieve_ccdlc.exit.mod_store_ccdlc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_xor_data(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data1, align 8
  %xor3 = xor i64 %3, %1
  store i64 %xor3, ptr %data1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_ccdlc(ptr nocapture noundef %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len.i, align 4
  %len1.i = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %len1.i, align 4
  %len8_dlc.i = getelementptr inbounds %struct.can_frame, ptr %cf, i32 0, i32 4
  %3 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %len8_dlc.i, align 1
  %4 = add i8 %1, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %4)
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %entry.mod_store_ccdlc.exit_crit_edge, label %if.end6.i

entry.mod_store_ccdlc.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %mod_store_ccdlc.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %len8_dlc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %1, ptr %len8_dlc.i, align 1
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %len1.i, align 4
  br label %mod_store_ccdlc.exit

mod_store_ccdlc.exit:                             ; preds = %if.end6.i, %entry.mod_store_ccdlc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mod_set_data(ptr nocapture noundef writeonly %cf, ptr nocapture noundef readonly %mod) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.anon.145, ptr %mod, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %data, align 8
  %data1 = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 5
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %data1, align 8
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_rel(ptr nocapture noundef %cf, ptr nocapture noundef readonly %crc8) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crc8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crc8, align 1
  %conv = sext i8 %1 to i32
  %len = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 4
  %conv1 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp slt i8 %1, 0
  %add.i = select i1 %cmp.i, i32 %conv1, i32 0
  %retval.0.i = add nsw i32 %add.i, %conv
  %to_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 1
  %4 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_idx, align 1
  %conv2 = sext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i127 = icmp slt i8 %5, 0
  %add.i128 = select i1 %cmp.i127, i32 %conv1, i32 0
  %retval.0.i129 = add nsw i32 %add.i128, %conv2
  %result_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 2
  %6 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result_idx, align 1
  %conv6 = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i130 = icmp slt i8 %7, 0
  %add.i131 = select i1 %cmp.i130, i32 %conv1, i32 0
  %retval.0.i132 = add nsw i32 %add.i131, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129)
  %cmp11 = icmp slt i32 %retval.0.i129, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i132)
  %cmp14 = icmp slt i32 %retval.0.i132, 0
  %or.cond126 = select i1 %or.cond, i1 true, i1 %cmp14
  br i1 %or.cond126, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_crc_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 3
  %8 = ptrtoint ptr %init_crc_val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %init_crc_val, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i129)
  %cmp16.not = icmp ugt i32 %retval.0.i, %retval.0.i129
  br i1 %cmp16.not, label %for.cond30.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp23.not134 = icmp sgt i8 %1, %5
  br i1 %cmp23.not134, label %for.cond.preheader.if.end45_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end45_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.cond30.preheader:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp33.not137 = icmp slt i8 %1, %5
  br i1 %cmp33.not137, label %for.cond30.preheader.if.end45_crit_edge, label %for.cond30.preheader.for.body35_crit_edge

for.cond30.preheader.for.body35_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body35

for.cond30.preheader.if.end45_crit_edge:          ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0136 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %for.cond.preheader.for.body_crit_edge ]
  %crc.0135 = phi i8 [ %13, %for.body.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.0136
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %xor125 = xor i8 %11, %crc.0135
  %xor = zext i8 %xor125 to i32
  %arrayidx27 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor
  %12 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx27, align 1
  %inc = add nsw i32 %i.0136, 1
  %exitcond = icmp eq i32 %i.0136, %conv2
  br i1 %exitcond, label %for.body.if.end45_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.if.end45_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.body35:                                       ; preds = %for.body35.for.body35_crit_edge, %for.cond30.preheader.for.body35_crit_edge
  %i.1139 = phi i32 [ %dec, %for.body35.for.body35_crit_edge ], [ %conv, %for.cond30.preheader.for.body35_crit_edge ]
  %crc.1138 = phi i8 [ %17, %for.body35.for.body35_crit_edge ], [ %9, %for.cond30.preheader.for.body35_crit_edge ]
  %arrayidx39 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.1139
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx39, align 1
  %xor41124 = xor i8 %15, %crc.1138
  %xor41 = zext i8 %xor41124 to i32
  %arrayidx42 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor41
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx42, align 1
  %dec = add nsw i32 %i.1139, -1
  %cmp33.not.not = icmp sgt i32 %i.1139, %conv2
  br i1 %cmp33.not.not, label %for.body35.for.body35_crit_edge, label %for.body35.if.end45_crit_edge

for.body35.if.end45_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end45

for.body35.for.body35_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body35

if.end45:                                         ; preds = %for.body35.if.end45_crit_edge, %for.body.if.end45_crit_edge, %for.cond30.preheader.if.end45_crit_edge, %for.cond.preheader.if.end45_crit_edge
  %crc.2 = phi i8 [ %9, %for.cond30.preheader.if.end45_crit_edge ], [ %9, %for.cond.preheader.if.end45_crit_edge ], [ %17, %for.body35.if.end45_crit_edge ], [ %13, %for.body.if.end45_crit_edge ]
  %profile = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 6
  %18 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %profile, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end45.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb53
    i8 3, label %sw.bb64
  ]

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %profile_data = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7
  %21 = ptrtoint ptr %profile_data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %profile_data, align 1
  %xor51123 = xor i8 %22, %crc.2
  %xor51 = zext i8 %xor51123 to i32
  br label %sw.epilog.sink.split

sw.bb53:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx58 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx58, align 1
  %25 = and i8 %24, 15
  %and = zext i8 %25 to i32
  %arrayidx60 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7, i32 %and
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx60, align 1
  %xor62122 = xor i8 %27, %crc.2
  %xor62 = zext i8 %xor62122 to i32
  br label %sw.epilog.sink.split

sw.bb64:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #16
  %conv66 = zext i8 %crc.2 to i32
  %28 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cf, align 8
  %and67 = and i32 %29, 255
  %xor68 = xor i32 %and67, %conv66
  %shr = lshr i32 %29, 8
  %and70 = and i32 %shr, 255
  %xor71 = xor i32 %xor68, %and70
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb64, %sw.bb53, %sw.bb
  %xor71.sink = phi i32 [ %xor71, %sw.bb64 ], [ %xor62, %sw.bb53 ], [ %xor51, %sw.bb ]
  %arrayidx72 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor71.sink
  %30 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx72, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end45.sw.epilog_crit_edge
  %crc.3 = phi i8 [ %crc.2, %if.end45.sw.epilog_crit_edge ], [ %31, %sw.epilog.sink.split ]
  %final_xor_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 4
  %32 = ptrtoint ptr %final_xor_val to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %final_xor_val, align 1
  %xor75121 = xor i8 %33, %crc.3
  %arrayidx79 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %conv6
  %34 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %xor75121, ptr %arrayidx79, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_pos(ptr nocapture noundef %cf, ptr nocapture noundef readonly %crc8) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_crc_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 3
  %0 = ptrtoint ptr %crc8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crc8, align 1
  %to_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 1
  %2 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %to_idx, align 1
  %4 = ptrtoint ptr %init_crc_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %crc.064 = load i8, ptr %init_crc_val, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not65 = icmp sgt i8 %1, %3
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv1 = sext i8 %3 to i32
  %conv = sext i8 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %crc.067 = phi i8 [ %crc.0, %for.body.for.body_crit_edge ], [ %crc.064, %for.body.preheader ]
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.066
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %xor63 = xor i8 %6, %crc.067
  %xor = zext i8 %xor63 to i32
  %arrayidx5 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor
  %inc = add nsw i32 %i.066, 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %crc.0 = load i8, ptr %arrayidx5, align 1
  %exitcond = icmp eq i32 %i.066, %conv1
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %crc.0.lcssa = phi i8 [ %crc.064, %entry.for.end_crit_edge ], [ %crc.0, %for.body.for.end_crit_edge ]
  %profile = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 6
  %8 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %profile, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %9, label %for.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
    i8 3, label %sw.bb24
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %profile_data = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7
  %11 = ptrtoint ptr %profile_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %profile_data, align 1
  %xor1162 = xor i8 %12, %crc.0.lcssa
  %xor11 = zext i8 %xor1162 to i32
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx18 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %15 = and i8 %14, 15
  %and = zext i8 %15 to i32
  %arrayidx20 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7, i32 %and
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %xor2261 = xor i8 %17, %crc.0.lcssa
  %xor22 = zext i8 %xor2261 to i32
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv26 = zext i8 %crc.0.lcssa to i32
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cf, align 8
  %and27 = and i32 %19, 255
  %xor28 = xor i32 %and27, %conv26
  %shr = lshr i32 %19, 8
  %and30 = and i32 %shr, 255
  %xor31 = xor i32 %xor28, %and30
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb24, %sw.bb13, %sw.bb
  %xor31.sink = phi i32 [ %xor31, %sw.bb24 ], [ %xor22, %sw.bb13 ], [ %xor11, %sw.bb ]
  %arrayidx32 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor31.sink
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end.sw.epilog_crit_edge
  %crc.1 = phi i8 [ %crc.0.lcssa, %for.end.sw.epilog_crit_edge ], [ %21, %sw.epilog.sink.split ]
  %final_xor_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 4
  %22 = ptrtoint ptr %final_xor_val to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %final_xor_val, align 1
  %xor3560 = xor i8 %23, %crc.1
  %result_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 2
  %24 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %result_idx, align 1
  %idxprom = sext i8 %25 to i32
  %arrayidx38 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %xor3560, ptr %arrayidx38, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_crc8_neg(ptr nocapture noundef %cf, ptr nocapture noundef readonly %crc8) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_crc_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 3
  %0 = ptrtoint ptr %crc8 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %crc8, align 1
  %to_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 1
  %2 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %to_idx, align 1
  %conv1 = sext i8 %3 to i32
  %4 = ptrtoint ptr %init_crc_val to i32
  call void @__asan_load1_noabort(i32 %4)
  %crc.064 = load i8, ptr %init_crc_val, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp.not65 = icmp slt i8 %1, %3
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv = sext i8 %1 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %crc.067 = phi i8 [ %crc.0, %for.body.for.body_crit_edge ], [ %crc.064, %for.body.preheader ]
  %i.066 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.066
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %xor63 = xor i8 %6, %crc.067
  %xor = zext i8 %xor63 to i32
  %arrayidx5 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor
  %dec = add nsw i32 %i.066, -1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %crc.0 = load i8, ptr %arrayidx5, align 1
  %cmp.not.not = icmp sgt i32 %i.066, %conv1
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %crc.0.lcssa = phi i8 [ %crc.064, %entry.for.end_crit_edge ], [ %crc.0, %for.body.for.end_crit_edge ]
  %profile = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 6
  %8 = ptrtoint ptr %profile to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %profile, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %9, label %for.end.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb13
    i8 3, label %sw.bb24
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %profile_data = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7
  %11 = ptrtoint ptr %profile_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %profile_data, align 1
  %xor1162 = xor i8 %12, %crc.0.lcssa
  %xor11 = zext i8 %xor1162 to i32
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx18 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %15 = and i8 %14, 15
  %and = zext i8 %15 to i32
  %arrayidx20 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 7, i32 %and
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 1
  %xor2261 = xor i8 %17, %crc.0.lcssa
  %xor22 = zext i8 %xor2261 to i32
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %conv26 = zext i8 %crc.0.lcssa to i32
  %18 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cf, align 8
  %and27 = and i32 %19, 255
  %xor28 = xor i32 %and27, %conv26
  %shr = lshr i32 %19, 8
  %and30 = and i32 %shr, 255
  %xor31 = xor i32 %xor28, %and30
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb24, %sw.bb13, %sw.bb
  %xor31.sink = phi i32 [ %xor31, %sw.bb24 ], [ %xor22, %sw.bb13 ], [ %xor11, %sw.bb ]
  %arrayidx32 = getelementptr %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 5, i32 %xor31.sink
  %20 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx32, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.end.sw.epilog_crit_edge
  %crc.1 = phi i8 [ %crc.0.lcssa, %for.end.sw.epilog_crit_edge ], [ %21, %sw.epilog.sink.split ]
  %final_xor_val = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 4
  %22 = ptrtoint ptr %final_xor_val to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %final_xor_val, align 1
  %xor3560 = xor i8 %23, %crc.1
  %result_idx = getelementptr inbounds %struct.cgw_csum_crc8, ptr %crc8, i32 0, i32 2
  %24 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %result_idx, align 1
  %idxprom = sext i8 %25 to i32
  %arrayidx38 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %idxprom
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %xor3560, ptr %arrayidx38, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_xor_rel(ptr nocapture noundef %cf, ptr nocapture noundef readonly %xor) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xor to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xor, align 1
  %conv = sext i8 %1 to i32
  %len = getelementptr inbounds %struct.canfd_frame, ptr %cf, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 4
  %conv1 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp slt i8 %1, 0
  %add.i = select i1 %cmp.i, i32 %conv1, i32 0
  %retval.0.i = add nsw i32 %add.i, %conv
  %to_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 1
  %4 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_idx, align 1
  %conv2 = sext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i69 = icmp slt i8 %5, 0
  %add.i70 = select i1 %cmp.i69, i32 %conv1, i32 0
  %retval.0.i71 = add nsw i32 %add.i70, %conv2
  %result_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 2
  %6 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result_idx, align 1
  %conv6 = sext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i72 = icmp slt i8 %7, 0
  %add.i73 = select i1 %cmp.i72, i32 %conv1, i32 0
  %retval.0.i74 = add nsw i32 %add.i73, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i71)
  %cmp11 = icmp slt i32 %retval.0.i71, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i74)
  %cmp14 = icmp slt i32 %retval.0.i74, 0
  %or.cond68 = select i1 %or.cond, i1 true, i1 %cmp14
  br i1 %or.cond68, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_xor_val = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 3
  %8 = ptrtoint ptr %init_xor_val to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %init_xor_val, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %retval.0.i71)
  %cmp16.not = icmp ugt i32 %retval.0.i, %retval.0.i71
  br i1 %cmp16.not, label %if.end.for.body28_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.body28_crit_edge:                      ; preds = %if.end
  br label %for.body28

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %retval.0.i, %if.end.for.body_crit_edge ]
  %val.077 = phi i8 [ %xor2367, %for.body.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.078
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %xor2367 = xor i8 %11, %val.077
  %inc = add nsw i32 %i.078, 1
  %cmp19.not.not = icmp slt i32 %i.078, %retval.0.i71
  br i1 %cmp19.not.not, label %for.body.for.body_crit_edge, label %for.body.if.end37_crit_edge

for.body.if.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %if.end.for.body28_crit_edge
  %i.181 = phi i32 [ %dec, %for.body28.for.body28_crit_edge ], [ %retval.0.i, %if.end.for.body28_crit_edge ]
  %val.180 = phi i8 [ %xor3366, %for.body28.for.body28_crit_edge ], [ %9, %if.end.for.body28_crit_edge ]
  %arrayidx30 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.181
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx30, align 1
  %xor3366 = xor i8 %13, %val.180
  %dec = add nsw i32 %i.181, -1
  %cmp26.not.not = icmp sgt i32 %i.181, %retval.0.i71
  br i1 %cmp26.not.not, label %for.body28.for.body28_crit_edge, label %for.body28.if.end37_crit_edge

for.body28.if.end37_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body28

if.end37:                                         ; preds = %for.body28.if.end37_crit_edge, %for.body.if.end37_crit_edge
  %val.2 = phi i8 [ %xor3366, %for.body28.if.end37_crit_edge ], [ %xor2367, %for.body.if.end37_crit_edge ]
  %arrayidx39 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %retval.0.i74
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %val.2, ptr %arrayidx39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_xor_pos(ptr nocapture noundef %cf, ptr nocapture noundef readonly %xor) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_xor_val = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 3
  %0 = ptrtoint ptr %init_xor_val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_xor_val, align 1
  %2 = ptrtoint ptr %xor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xor, align 1
  %to_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 1
  %4 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_idx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not17 = icmp sgt i8 %3, %5
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv1 = sext i8 %5 to i32
  %conv = sext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %val.018 = phi i8 [ %xor516, %for.body.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %xor516 = xor i8 %7, %val.018
  %inc = add nsw i32 %i.019, 1
  %exitcond = icmp eq i32 %i.019, %conv1
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i8 [ %1, %entry.for.end_crit_edge ], [ %xor516, %for.body.for.end_crit_edge ]
  %result_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 2
  %8 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result_idx, align 1
  %idxprom = sext i8 %9 to i32
  %arrayidx8 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %val.0.lcssa, ptr %arrayidx8, align 1
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cgw_csum_xor_neg(ptr nocapture noundef %cf, ptr nocapture noundef readonly %xor) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %init_xor_val = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 3
  %0 = ptrtoint ptr %init_xor_val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_xor_val, align 1
  %2 = ptrtoint ptr %xor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xor, align 1
  %to_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 1
  %4 = ptrtoint ptr %to_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_idx, align 1
  %conv1 = sext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp.not17 = icmp slt i8 %3, %5
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv = sext i8 %3 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.019 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %conv, %for.body.preheader ]
  %val.018 = phi i8 [ %xor516, %for.body.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %arrayidx = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %xor516 = xor i8 %7, %val.018
  %dec = add nsw i32 %i.019, -1
  %cmp.not.not = icmp sgt i32 %i.019, %conv1
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i8 [ %1, %entry.for.end_crit_edge ], [ %xor516, %for.body.for.end_crit_edge ]
  %result_idx = getelementptr inbounds %struct.cgw_csum_xor, ptr %xor, i32 0, i32 2
  %8 = ptrtoint ptr %result_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result_idx, align 1
  %idxprom = sext i8 %9 to i32
  %arrayidx8 = getelementptr %struct.canfd_frame, ptr %cf, i32 0, i32 5, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %val.0.lcssa, ptr %arrayidx8, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_rx_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !36, !38, !40, !42, !43, !45, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_description457, !1, !"__UNIQUE_ID_description457", i1 false, i1 false}
!1 = !{!"../net/can/gw.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_file458, !3, !"__UNIQUE_ID_file458", i1 false, i1 false}
!3 = !{!"../net/can/gw.c", i32 65, i32 1}
!4 = !{ptr @__UNIQUE_ID_license459, !3, !"__UNIQUE_ID_license459", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author460, !6, !"__UNIQUE_ID_author460", i1 false, i1 false}
!6 = !{!"../net/can/gw.c", i32 66, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../net/can/gw.c", i32 67, i32 1}
!9 = !{ptr @__param_max_hops, !10, !"__param_max_hops", i1 false, i1 false}
!10 = !{!"../net/can/gw.c", i32 74, i32 1}
!11 = !{ptr @__UNIQUE_ID_max_hopstype462, !10, !"__UNIQUE_ID_max_hopstype462", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_max_hops463, !13, !"__UNIQUE_ID_max_hops463", i1 false, i1 false}
!13 = !{!"../net/can/gw.c", i32 75, i32 1}
!14 = !{ptr @__initcall__kmod_can_gw__472_1321_cgw_module_init6, !15, !"__initcall__kmod_can_gw__472_1321_cgw_module_init6", i1 false, i1 false}
!15 = !{!"../net/can/gw.c", i32 1321, i32 1}
!16 = !{ptr @__exitcall_cgw_module_exit, !17, !"__exitcall_cgw_module_exit", i1 false, i1 false}
!17 = !{!"../net/can/gw.c", i32 1322, i32 1}
!18 = !{ptr @notifier, !19, !"notifier", i1 false, i1 false}
!19 = !{!"../net/can/gw.c", i32 81, i32 30}
!20 = !{ptr @cgw_cache, !21, !"cgw_cache", i1 false, i1 false}
!21 = !{!"../net/can/gw.c", i32 82, i32 27}
!22 = !{ptr @__param_str_max_hops, !10, !"__param_str_max_hops", i1 false, i1 false}
!23 = !{ptr @max_hops, !24, !"max_hops", i1 false, i1 false}
!24 = !{!"../net/can/gw.c", i32 73, i32 21}
!25 = !{ptr @cangw_pernet_ops, !26, !"cangw_pernet_ops", i1 false, i1 false}
!26 = !{!"../net/can/gw.c", i32 1249, i32 33}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../net/can/gw.c", i32 1153, i32 2}
!29 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/can/gw.c", i32 1261, i32 2}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @cgw_module_init._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @cgw_module_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/can/gw.c", i32 1268, i32 32}
!38 = distinct !{null, !39, !"__already_done", i1 false, i1 false}
!39 = !{!"../net/can/gw.c", i32 593, i32 3}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/can/gw.c", i32 757, i32 2}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/net/netlink.h", i32 991, i32 3}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!51 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../net/can/gw.c", i32 1080, i32 3}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../net/can/gw.c", i32 1136, i32 2}
!56 = !{ptr @__nlmsg_parse.__msg, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../include/net/netlink.h", i32 729, i32 3}
!58 = !{ptr @cgw_policy, !59, !"cgw_policy", i1 false, i1 false}
!59 = !{!"../net/can/gw.c", i32 775, i32 32}
!60 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/can/gw.c", i32 571, i32 16}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../net/can/gw.c", i32 1201, i32 2}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2156887253, i64 2156887730, i64 2156887290, i64 2156887346, i64 2156887380, i64 2156887404, i64 2156887445, i64 2156887466, i64 2156887494, i64 2156887528}
!76 = !{i64 2149388479}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2149388745}
!79 = !{i64 2151664380}
