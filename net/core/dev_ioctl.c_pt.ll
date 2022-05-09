; ModuleID = '/llk/IR_all_yes/net/core/dev_ioctl.c_pt.bc'
source_filename = "../net/core/dev_ioctl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dev_load\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_load\09\09\09\09"
module asm "\09.long\09__crc_dev_load\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_load:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_load\22\09\09\09\09\09"
module asm "__kstrtabns_dev_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ifconf = type { i32, %union.anon.165 }
%union.anon.165 = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.159, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.159 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.ifreq = type { %union.anon.86, %union.anon.87 }
%union.anon.86 = type { [16 x i8] }
%union.anon.87 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.128, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.128 = type { ptr }
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
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dsa_port = type { %union.anon.114, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, [6 x i8], i8, i8, ptr, i32, ptr, %struct.devlink_port, ptr, %struct.phylink_config, ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.114 = type { ptr }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.98 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.98 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/core/dev_ioctl.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"netdev-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_dev_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_load = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_load to i32), ptr @__kstrtab_dev_load, ptr @__kstrtabns_dev_load }, section "___ksymtab+dev_load", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [39 x i64] [i64 37, i64 32, i64 35089, i64 35091, i64 35092, i64 35101, i64 35102, i64 35103, i64 35104, i64 35105, i64 35106, i64 35107, i64 35108, i64 35111, i64 35113, i64 35120, i64 35121, i64 35122, i64 35123, i64 35127, i64 35138, i64 35139, i64 35142, i64 35143, i64 35144, i64 35145, i64 35146, i64 35184, i64 35185, i64 35216, i64 35217, i64 35218, i64 35219, i64 35220, i64 35221, i64 35234, i64 35235, i64 35248, i64 35249]
@__sancov_gen_cov_switch_values.9 = internal global [9 x i64] [i64 7, i64 32, i64 35091, i64 35101, i64 35105, i64 35113, i64 35123, i64 35138, i64 35184]
@__sancov_gen_cov_switch_values.10 = internal global [16 x i64] [i64 14, i64 32, i64 35092, i64 35102, i64 35106, i64 35107, i64 35108, i64 35121, i64 35122, i64 35127, i64 35139, i64 35146, i64 35185, i64 35234, i64 35235, i64 35248]
@__sancov_gen_cov_switch_values.11 = internal global [13 x i64] [i64 11, i64 32, i64 35143, i64 35144, i64 35145, i64 35216, i64 35217, i64 35218, i64 35219, i64 35220, i64 35221, i64 35248, i64 35249]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 79, i32 9 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 447, i32 15 }
@___asan_gen_.19 = private constant [24 x i8] c"../net/core/dev_ioctl.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 449, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 156, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 695, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 723, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_dev_load, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_ifconf(ptr noundef readonly %net, ptr noundef %uifc) local_unnamed_addr #0 align 64 {
entry:
  %ifc = alloca %struct.ifconf, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ifc) #7
  %0 = ptrtoint ptr %ifc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ifc, align 4, !annotation !32
  %1 = getelementptr inbounds %struct.ifconf, ptr %ifc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !32
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uifc, i32 8, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !34

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ifc, i32 noundef 8) #7
  %4 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !35
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ifc, ptr noundef %uifc, i32 noundef 8) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end12, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !34

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ifc) #7
  br label %cleanup33

if.end12:                                         ; preds = %if.end.i.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %ifc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifc, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ifc) #7
  call void @rtnl_lock() #7
  %dev_base_head = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %11 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn67 = load ptr, ptr %dev_base_head, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %dev_base_head
  br i1 %cmp.not69, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %tobool14.not = icmp eq ptr %8, null
  br label %for.body

for.cond:                                         ; preds = %if.end20
  %add = add i32 %done.0, %total.070
  %12 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %.pn71 = phi ptr [ %.pn67, %for.body.lr.ph ], [ %.pn, %for.cond.for.body_crit_edge ]
  %total.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %dev.072 = getelementptr i8, ptr %.pn71, i32 -40
  br i1 %tobool14.not, label %if.then15, label %if.else17

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 @inet_gifconf(ptr noundef %dev.072, ptr noundef null, i32 noundef 0, i32 noundef 32) #7
  br label %if.end20

if.else17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr18 = getelementptr i8, ptr %8, i32 %total.070
  %sub = sub i32 %10, %total.070
  %call19 = call i32 @inet_gifconf(ptr noundef %dev.072, ptr noundef %add.ptr18, i32 noundef %sub, i32 noundef 32) #7
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15
  %done.0 = phi i32 [ %call19, %if.else17 ], [ %call16, %if.then15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.0)
  %cmp21 = icmp slt i32 %done.0, 0
  br i1 %cmp21, label %if.then22, label %for.cond

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @rtnl_unlock() #7
  br label %cleanup33

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end12.for.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %if.end12.for.end_crit_edge ], [ %add, %for.cond.for.end_crit_edge ]
  call void @rtnl_unlock() #7
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 79) #7
  %13 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !35
  %and.i = and i32 %15, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %16 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %uifc, i32 %total.0.lcssa, i32 -1226833921) #7, !srcloc !38
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  br label %cleanup33

cleanup33:                                        ; preds = %for.end, %if.then22, %if.then11.i.i
  %retval.2 = phi i32 [ -14, %if.then22 ], [ %16, %for.end ], [ -14, %if.then11.i.i ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_gifconf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_load(ptr noundef %net, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef %name) #7
  %call.i13 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i13, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i16

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i16:                                ; preds = %rcu_read_lock.exit
  %call1.i14 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %tobool.not.i15 = icmp eq i32 %call1.i14, 0
  br i1 %tobool.not.i15, label %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i18

land.lhs.true.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i18:                               ; preds = %land.lhs.true.i16
  %.b4.i17 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i17, label %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, label %if.then.i19

land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i19:                                      ; preds = %land.lhs.true2.i18
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i19, %land.lhs.true2.i18.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i16.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %4 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i20 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i20 to ptr
  %preempt_count.i.i.i.i21 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i21, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i21, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_unlock.exit.if.end9_crit_edge

rcu_read_unlock.exit.if.end9_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %rcu_read_unlock.exit
  %call2 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call2, label %if.end, label %land.lhs.true.land.lhs.true5_crit_edge

land.lhs.true.land.lhs.true5_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

if.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, ptr noundef %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.end.land.lhs.true5_crit_edge

if.end.land.lhs.true5_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true5:                                   ; preds = %if.end.land.lhs.true5_crit_edge, %land.lhs.true.land.lhs.true5_crit_edge
  %call6 = tail call zeroext i1 @capable(i32 noundef 16) #7
  br i1 %call6, label %if.then7, label %land.lhs.true5.if.end9_crit_edge

land.lhs.true5.if.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.2, ptr noundef %name) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %land.lhs.true5.if.end9_crit_edge, %if.end.if.end9_crit_edge, %rcu_read_unlock.exit.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dev_ioctl(ptr noundef %net, i32 noundef %cmd, ptr noundef %ifr, ptr noundef %data, ptr noundef writeonly %need_copyout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %need_copyout, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %need_copyout to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %need_copyout, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35088, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 35088
  %arrayidx.i = getelementptr [16 x i8], ptr %ifr, i32 0, i32 15
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx.i, align 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %2 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ifr_ifru.i, align 4
  %call.i126 = tail call i32 @netdev_get_name(ptr noundef %net, ptr noundef %ifr, i32 noundef %3) #7
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %call4 = tail call ptr @strchr(ptr noundef %ifr, i32 noundef 58)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end2.if.end7_crit_edge, label %if.then6

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call4, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end2.if.end7_crit_edge
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %lor.lhs.false59 [
    i32 35111, label %sw.bb
    i32 35091, label %if.end7.sw.bb16_crit_edge
    i32 35101, label %if.end7.sw.bb16_crit_edge141
    i32 35105, label %if.end7.sw.bb16_crit_edge142
    i32 35113, label %if.end7.sw.bb16_crit_edge143
    i32 35184, label %if.end7.sw.bb16_crit_edge144
    i32 35123, label %if.end7.sw.bb16_crit_edge145
    i32 35138, label %if.end7.sw.bb16_crit_edge146
    i32 35142, label %sw.bb23
    i32 35143, label %if.end7.sw.bb30_crit_edge
    i32 35144, label %if.end7.sw.bb30_crit_edge147
    i32 35107, label %if.end7.sw.bb30_crit_edge148
    i32 35185, label %if.end7.sw.bb40_crit_edge
    i32 35139, label %if.end7.sw.bb40_crit_edge149
    i32 35092, label %if.end7.sw.bb44_crit_edge
    i32 35102, label %if.end7.sw.bb44_crit_edge150
    i32 35106, label %if.end7.sw.bb44_crit_edge151
    i32 35108, label %if.end7.sw.bb44_crit_edge152
    i32 35120, label %if.end7.sw.bb44_crit_edge153
    i32 35121, label %if.end7.sw.bb44_crit_edge154
    i32 35122, label %if.end7.sw.bb44_crit_edge155
    i32 35127, label %if.end7.sw.bb44_crit_edge156
    i32 35145, label %if.end7.sw.bb44_crit_edge157
    i32 35216, label %if.end7.sw.bb44_crit_edge158
    i32 35217, label %if.end7.sw.bb44_crit_edge159
    i32 35218, label %if.end7.sw.bb44_crit_edge160
    i32 35221, label %if.end7.sw.bb44_crit_edge161
    i32 35234, label %if.end7.sw.bb44_crit_edge162
    i32 35235, label %if.end7.sw.bb44_crit_edge163
    i32 35248, label %if.end7.sw.bb44_crit_edge164
    i32 35219, label %if.end7.sw.bb49_crit_edge
    i32 35220, label %if.end7.sw.bb49_crit_edge165
    i32 35103, label %if.end7.cleanup_crit_edge
    i32 35104, label %if.end7.cleanup_crit_edge166
    i32 35089, label %if.end7.cleanup_crit_edge167
    i32 35146, label %if.end7.if.then62_crit_edge
    i32 35249, label %if.end7.if.then62_crit_edge168
  ]

if.end7.if.then62_crit_edge168:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end7.if.then62_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.end7.cleanup_crit_edge167:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.cleanup_crit_edge166:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.sw.bb49_crit_edge165:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end7.sw.bb49_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.end7.sw.bb44_crit_edge164:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge163:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge162:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge161:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge160:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge159:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge158:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge157:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge156:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge155:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge154:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge153:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge152:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge151:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge150:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb44_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.end7.sw.bb40_crit_edge149:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end7.sw.bb40_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb40

if.end7.sw.bb30_crit_edge148:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end7.sw.bb30_crit_edge147:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end7.sw.bb30_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

if.end7.sw.bb16_crit_edge146:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge145:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge144:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge143:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge142:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge141:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

if.end7.sw.bb16_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb:                                            ; preds = %if.end7
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call12 = tail call i32 @dev_get_mac_address(ptr noundef %ifr_ifru, ptr noundef %net, ptr noundef %ifr) #7
  br i1 %tobool5.not, label %sw.bb.cleanup_crit_edge, label %if.then14

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 58, ptr %call4, align 1
  br label %cleanup

sw.bb16:                                          ; preds = %if.end7.sw.bb16_crit_edge, %if.end7.sw.bb16_crit_edge141, %if.end7.sw.bb16_crit_edge142, %if.end7.sw.bb16_crit_edge143, %if.end7.sw.bb16_crit_edge144, %if.end7.sw.bb16_crit_edge145, %if.end7.sw.bb16_crit_edge146
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  %7 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %sw.bb16.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.bb16.rcu_read_lock.exit_crit_edge:             ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.bb16
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.bb16.rcu_read_lock.exit_crit_edge
  %call.i127 = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef %ifr) #7
  %tobool.not.i128 = icmp eq ptr %call.i127, null
  br i1 %tobool.not.i128, label %rcu_read_lock.exit.dev_ifsioc_locked.exit_crit_edge, label %if.end.i

rcu_read_lock.exit.dev_ifsioc_locked.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_ifsioc_locked.exit

if.end.i:                                         ; preds = %rcu_read_lock.exit
  %11 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %cmd, label %do.end.i [
    i32 35091, label %sw.bb.i
    i32 35101, label %sw.bb2.i
    i32 35105, label %sw.bb4.i
    i32 35113, label %if.end.i.dev_ifsioc_locked.exit_crit_edge
    i32 35184, label %sw.bb7.i
    i32 35123, label %sw.bb9.i
    i32 35138, label %sw.bb11.i
  ]

if.end.i.dev_ifsioc_locked.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_ifsioc_locked.exit

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i129 = tail call i32 @dev_get_flags(ptr noundef nonnull %call.i127) #7
  %conv.i = trunc i32 %call1.i129 to i16
  %ifr_ifru.i130 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %12 = ptrtoint ptr %ifr_ifru.i130 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %ifr_ifru.i130, align 4
  br label %dev_ifsioc_locked.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru3.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %13 = ptrtoint ptr %ifr_ifru3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ifr_ifru3.i, align 4
  br label %dev_ifsioc_locked.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 20
  %14 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mtu.i, align 4
  %ifr_ifru5.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %16 = ptrtoint ptr %ifr_ifru5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ifr_ifru5.i, align 4
  br label %dev_ifsioc_locked.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %mem_start7.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 4
  %17 = ptrtoint ptr %mem_start7.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mem_start7.i.i, align 4
  %19 = ptrtoint ptr %ifr_ifru.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %ifr_ifru.i.i, align 4
  %mem_end9.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 3
  %20 = ptrtoint ptr %mem_end9.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mem_end9.i.i, align 8
  %mem_end10.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %mem_end10.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %mem_end10.i.i, align 4
  %base_addr11.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 5
  %23 = ptrtoint ptr %base_addr11.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base_addr11.i.i, align 32
  %conv12.i.i = trunc i32 %24 to i16
  %base_addr13.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %base_addr13.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv12.i.i, ptr %base_addr13.i.i, align 4
  %irq14.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 64
  %26 = ptrtoint ptr %irq14.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq14.i.i, align 4
  %conv15.i.i = trunc i32 %27 to i8
  %irq16.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %irq16.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv15.i.i, ptr %irq16.i.i, align 2
  %dma17.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 53
  %29 = ptrtoint ptr %dma17.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dma17.i.i, align 1
  %dma18.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 4
  %31 = ptrtoint ptr %dma18.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %dma18.i.i, align 1
  %if_port19.i.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 52
  %32 = ptrtoint ptr %if_port19.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %if_port19.i.i, align 2
  %port20.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %port20.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %port20.i.i, align 4
  br label %dev_ifsioc_locked.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 17
  %35 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ifindex.i, align 4
  %ifr_ifru10.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %37 = ptrtoint ptr %ifr_ifru10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ifr_ifru10.i, align 4
  br label %dev_ifsioc_locked.exit

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %call.i127, i32 0, i32 107
  %38 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_queue_len.i, align 16
  %ifr_ifru12.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %40 = ptrtoint ptr %ifr_ifru12.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ifr_ifru12.i, align 4
  br label %dev_ifsioc_locked.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef null) #7
  br label %dev_ifsioc_locked.exit

dev_ifsioc_locked.exit:                           ; preds = %do.end.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb4.i, %sw.bb2.i, %sw.bb.i, %if.end.i.dev_ifsioc_locked.exit_crit_edge, %rcu_read_lock.exit.dev_ifsioc_locked.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.bb11.i ], [ 0, %sw.bb9.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb.i ], [ -19, %rcu_read_lock.exit.dev_ifsioc_locked.exit_crit_edge ], [ -25, %do.end.i ], [ -22, %if.end.i.dev_ifsioc_locked.exit_crit_edge ]
  %call.i131 = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i131, label %dev_ifsioc_locked.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i134

dev_ifsioc_locked.exit.rcu_read_unlock.exit_crit_edge: ; preds = %dev_ifsioc_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i134:                               ; preds = %dev_ifsioc_locked.exit
  %call1.i132 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, %dev_ifsioc_locked.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !40
  %41 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i138 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i139, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br i1 %tobool5.not, label %rcu_read_unlock.exit.cleanup_crit_edge, label %if.then21

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then21:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 58, ptr %call4, align 1
  br label %cleanup

sw.bb23:                                          ; preds = %if.end7
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  %call26 = tail call i32 @dev_ethtool(ptr noundef %net, ptr noundef %ifr, ptr noundef %data) #7
  br i1 %tobool5.not, label %sw.bb23.cleanup_crit_edge, label %if.then28

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 58, ptr %call4, align 1
  br label %cleanup

sw.bb30:                                          ; preds = %if.end7.sw.bb30_crit_edge, %if.end7.sw.bb30_crit_edge147, %if.end7.sw.bb30_crit_edge148
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  %user_ns = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %47 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user_ns, align 4
  %call33 = tail call zeroext i1 @ns_capable(ptr noundef %48, i32 noundef 12) #7
  br i1 %call33, label %if.end35, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %sw.bb30
  tail call void @rtnl_lock() #7
  %call36 = tail call fastcc i32 @dev_ifsioc(ptr noundef %net, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd)
  tail call void @rtnl_unlock() #7
  br i1 %tobool5.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 58, ptr %call4, align 1
  br label %cleanup

sw.bb40:                                          ; preds = %if.end7.sw.bb40_crit_edge, %if.end7.sw.bb40_crit_edge149
  %call41 = tail call zeroext i1 @capable(i32 noundef 12) #7
  br i1 %call41, label %sw.bb40.sw.bb44_crit_edge, label %sw.bb40.cleanup_crit_edge

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb40.sw.bb44_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

sw.bb44:                                          ; preds = %sw.bb40.sw.bb44_crit_edge, %if.end7.sw.bb44_crit_edge, %if.end7.sw.bb44_crit_edge150, %if.end7.sw.bb44_crit_edge151, %if.end7.sw.bb44_crit_edge152, %if.end7.sw.bb44_crit_edge153, %if.end7.sw.bb44_crit_edge154, %if.end7.sw.bb44_crit_edge155, %if.end7.sw.bb44_crit_edge156, %if.end7.sw.bb44_crit_edge157, %if.end7.sw.bb44_crit_edge158, %if.end7.sw.bb44_crit_edge159, %if.end7.sw.bb44_crit_edge160, %if.end7.sw.bb44_crit_edge161, %if.end7.sw.bb44_crit_edge162, %if.end7.sw.bb44_crit_edge163, %if.end7.sw.bb44_crit_edge164
  %user_ns45 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %50 = ptrtoint ptr %user_ns45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %user_ns45, align 4
  %call46 = tail call zeroext i1 @ns_capable(ptr noundef %51, i32 noundef 12) #7
  br i1 %call46, label %sw.bb44.sw.bb49_crit_edge, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb44.sw.bb49_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

sw.bb49:                                          ; preds = %sw.bb44.sw.bb49_crit_edge, %if.end7.sw.bb49_crit_edge, %if.end7.sw.bb49_crit_edge165
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  tail call void @rtnl_lock() #7
  %call52 = tail call fastcc i32 @dev_ifsioc(ptr noundef %net, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd)
  tail call void @rtnl_unlock() #7
  br i1 %tobool.not, label %sw.bb49.cleanup_crit_edge, label %if.then54

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then54:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %need_copyout to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %need_copyout, align 1
  br label %cleanup

lor.lhs.false59:                                  ; preds = %if.end7
  %53 = and i32 %cmd, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %53)
  %54 = icmp eq i32 %53, 35312
  br i1 %54, label %lor.lhs.false59.if.then62_crit_edge, label %lor.lhs.false59.cleanup_crit_edge

lor.lhs.false59.cleanup_crit_edge:                ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false59.if.then62_crit_edge:              ; preds = %lor.lhs.false59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false59.if.then62_crit_edge, %if.end7.if.then62_crit_edge, %if.end7.if.then62_crit_edge168
  tail call void @dev_load(ptr noundef %net, ptr noundef %ifr)
  tail call void @rtnl_lock() #7
  %call65 = tail call fastcc i32 @dev_ifsioc(ptr noundef %net, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd)
  tail call void @rtnl_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %lor.lhs.false59.cleanup_crit_edge, %if.then54, %sw.bb49.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %sw.bb40.cleanup_crit_edge, %if.then38, %if.end35.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.then28, %sw.bb23.cleanup_crit_edge, %if.then21, %rcu_read_unlock.exit.cleanup_crit_edge, %if.then14, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end7.cleanup_crit_edge166, %if.end7.cleanup_crit_edge167, %if.then1
  %retval.0 = phi i32 [ %call.i126, %if.then1 ], [ %call65, %if.then62 ], [ %call12, %if.then14 ], [ %call12, %sw.bb.cleanup_crit_edge ], [ %retval.0.i, %if.then21 ], [ %retval.0.i, %rcu_read_unlock.exit.cleanup_crit_edge ], [ %call26, %if.then28 ], [ %call26, %sw.bb23.cleanup_crit_edge ], [ -1, %sw.bb30.cleanup_crit_edge ], [ %call36, %if.then38 ], [ %call36, %if.end35.cleanup_crit_edge ], [ -1, %sw.bb40.cleanup_crit_edge ], [ -1, %sw.bb44.cleanup_crit_edge ], [ %call52, %if.then54 ], [ %call52, %sw.bb49.cleanup_crit_edge ], [ -25, %if.end7.cleanup_crit_edge ], [ -25, %if.end7.cleanup_crit_edge166 ], [ -25, %if.end7.cleanup_crit_edge167 ], [ -25, %lor.lhs.false59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_mac_address(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_ethtool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_ifsioc(ptr noundef %net, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %struct.hwtstamp_config, align 4
  %dev_tracker = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef %ifr) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_tracker) #7
  %0 = ptrtoint ptr %dev_tracker to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dev_tracker, align 4, !annotation !32
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netdev_ops, align 8
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %cmd, label %sw.default [
    i32 35092, label %sw.bb
    i32 35102, label %if.end.cleanup_crit_edge
    i32 35106, label %sw.bb3
    i32 35108, label %sw.bb6
    i32 35127, label %sw.bb13
    i32 35185, label %sw.bb29
    i32 35121, label %sw.bb31
    i32 35122, label %sw.bb47
    i32 35139, label %sw.bb65
    i32 35107, label %sw.bb73
    i32 35146, label %sw.bb78
    i32 35234, label %if.end.sw.bb81_crit_edge
    i32 35235, label %if.end.sw.bb81_crit_edge260
    i32 35248, label %sw.bb90
  ]

if.end.sw.bb81_crit_edge260:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

if.end.sw.bb81_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %4 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ifr_ifru, align 4
  %conv = sext i16 %5 to i32
  %call1 = tail call i32 @dev_change_flags(ptr noundef nonnull %call, i32 noundef %conv, ptr noundef null) #7
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru4 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %6 = ptrtoint ptr %ifr_ifru4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifr_ifru4, align 4
  %call5 = tail call i32 @dev_set_mtu(ptr noundef nonnull %call, i32 noundef %7) #7
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  %addr_len = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %cmp = icmp ugt i8 %9, 16
  br i1 %cmp, label %sw.bb6.cleanup_crit_edge, label %if.end10

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru11 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call12 = tail call i32 @dev_set_mac_address_user(ptr noundef nonnull %call, ptr noundef %ifr_ifru11, ptr noundef null) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %ifr_ifru14 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %10 = ptrtoint ptr %ifr_ifru14 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ifr_ifru14, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 32
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %13)
  %cmp17.not = icmp eq i16 %11, %13
  br i1 %cmp17.not, label %if.end20, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %broadcast = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 99
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %ifr_ifru14, i32 0, i32 1
  %addr_len24 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 56
  %14 = ptrtoint ptr %addr_len24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr_len24, align 1
  %16 = tail call i8 @llvm.umin.i8(i8 %15, i8 14)
  %cond = zext i8 %16 to i32
  %17 = call ptr @memcpy(ptr %broadcast, ptr %sa_data, i32 %cond)
  %call28 = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef nonnull %call) #7
  br label %cleanup

sw.bb29:                                          ; preds = %if.end
  %ndo_set_config.i = getelementptr inbounds %struct.net_device_ops, ptr %2, i32 0, i32 16
  %18 = ptrtoint ptr %ndo_set_config.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndo_set_config.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %sw.bb29.cleanup_crit_edge, label %if.end.i

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call15.i = tail call i32 %19(ptr noundef nonnull %call, ptr noundef %ifr_ifru.i) #7
  br label %cleanup

sw.bb31:                                          ; preds = %if.end
  %ndo_set_rx_mode = getelementptr inbounds %struct.net_device_ops, ptr %2, i32 0, i32 8
  %20 = ptrtoint ptr %ndo_set_rx_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndo_set_rx_mode, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %sw.bb31.cleanup_crit_edge, label %lor.lhs.false

sw.bb31.cleanup_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb31
  %ifr_ifru33 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %22 = ptrtoint ptr %ifr_ifru33 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ifr_ifru33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp36.not = icmp eq i16 %23, 0
  br i1 %cmp36.not, label %if.end39, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %lor.lhs.false
  %state.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %26 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not = icmp eq i32 %26, 0
  br i1 %tobool.i.not, label %if.end39.cleanup_crit_edge, label %if.end42

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %sa_data44 = getelementptr inbounds %struct.sockaddr, ptr %ifr_ifru33, i32 0, i32 1
  %call46 = tail call i32 @dev_mc_add_global(ptr noundef nonnull %call, ptr noundef %sa_data44) #7
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %ndo_set_rx_mode48 = getelementptr inbounds %struct.net_device_ops, ptr %2, i32 0, i32 8
  %27 = ptrtoint ptr %ndo_set_rx_mode48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ndo_set_rx_mode48, align 4
  %tobool49.not = icmp eq ptr %28, null
  br i1 %tobool49.not, label %sw.bb47.cleanup_crit_edge, label %lor.lhs.false50

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false50:                                  ; preds = %sw.bb47
  %ifr_ifru51 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %29 = ptrtoint ptr %ifr_ifru51 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ifr_ifru51, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp54.not = icmp eq i16 %30, 0
  br i1 %cmp54.not, label %if.end57, label %lor.lhs.false50.cleanup_crit_edge

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %lor.lhs.false50
  %state.i212 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %state.i212 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %state.i212, align 4
  %33 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i213.not = icmp eq i32 %33, 0
  br i1 %tobool.i213.not, label %if.end57.cleanup_crit_edge, label %if.end60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %sa_data62 = getelementptr inbounds %struct.sockaddr, ptr %ifr_ifru51, i32 0, i32 1
  %call64 = tail call i32 @dev_mc_del_global(ptr noundef nonnull %call, ptr noundef %sa_data62) #7
  br label %cleanup

sw.bb65:                                          ; preds = %if.end
  %ifr_ifru66 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %34 = ptrtoint ptr %ifr_ifru66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ifr_ifru66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp67 = icmp slt i32 %35, 0
  br i1 %cmp67, label %sw.bb65.cleanup_crit_edge, label %if.end70

sw.bb65.cleanup_crit_edge:                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #9
  %call72 = tail call i32 @dev_change_tx_queue_len(ptr noundef nonnull %call, i32 noundef %35) #7
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %ifr_ifru74 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %arrayidx = getelementptr [16 x i8], ptr %ifr_ifru74, i32 0, i32 15
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx, align 1
  %call77 = tail call i32 @dev_change_name(ptr noundef nonnull %call, ptr noundef %ifr_ifru74) #7
  br label %cleanup

sw.bb78:                                          ; preds = %if.end
  %ifr_ifru79 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %ndo_siocwandev.i = getelementptr inbounds %struct.net_device_ops, ptr %2, i32 0, i32 14
  %37 = ptrtoint ptr %ndo_siocwandev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndo_siocwandev.i, align 4
  %tobool.not.i215 = icmp eq ptr %38, null
  br i1 %tobool.not.i215, label %sw.bb78.cleanup_crit_edge, label %if.then.i

sw.bb78.cleanup_crit_edge:                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb78
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %state.i.i, align 4
  %41 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i, label %if.then.i.cleanup_crit_edge, label %if.then1.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 %38(ptr noundef nonnull %call, ptr noundef %ifr_ifru79) #7
  br label %cleanup

sw.bb81:                                          ; preds = %if.end.sw.bb81_crit_edge, %if.end.sw.bb81_crit_edge260
  %state.i217 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %42 = ptrtoint ptr %state.i217 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i217, align 4
  %44 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i218.not = icmp eq i32 %44, 0
  br i1 %tobool.i218.not, label %sw.bb81.cleanup_crit_edge, label %if.end84

sw.bb81.cleanup_crit_edge:                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end84:                                         ; preds = %sw.bb81
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %45 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %46, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i219.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i219.not, label %if.end84.cleanup_crit_edge, label %do.body1.i.i

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end84
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !41
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %48 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = tail call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i = and i32 %51, -16384
  %52 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %54
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %56, %50
  %57 = inttoptr i32 %add.i.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add13.i.i = add i32 %59, 1
  store i32 %add13.i.i, ptr %57, align 4
  %60 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !42
  %and.i.i.i.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.body1.i.i233_crit_edge, !prof !43

do.body1.i.i.do.body1.i.i233_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body1.i.i233

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.body1.i.i233

do.body1.i.i233:                                  ; preds = %if.then28.i.i, %do.body1.i.i.do.body1.i.i233_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #7, !srcloc !44
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 119
  %call.i.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef nonnull %dev_tracker, i32 noundef 3264) #7
  call void @rtnl_unlock() #7
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %call89 = call i32 @br_ioctl_call(ptr noundef %net, ptr noundef %add.ptr.i, i32 noundef %cmd, ptr noundef %ifr, ptr noundef null) #7
  %call.i.i224 = call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef nonnull %dev_tracker) #7
  %61 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !41
  %62 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %64 = ptrtoint ptr %63 to i32
  %65 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i226 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i226 to ptr
  %cpu.i.i227 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %cpu.i.i227 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i.i227, align 4
  %arrayidx.i.i228 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i228, align 4
  %add.i.i229 = add i32 %70, %64
  %71 = inttoptr i32 %add.i.i229 to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %add13.i.i230 = add i32 %73, -1
  store i32 %add13.i.i230, ptr %71, align 4
  %74 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !42
  %and.i.i.i.i231 = and i32 %74, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i231)
  %tobool24.not.i.i232 = icmp eq i32 %and.i.i.i.i231, 0
  br i1 %tobool24.not.i.i232, label %if.then28.i.i234, label %do.body1.i.i233.dev_put_track.exit_crit_edge, !prof !43

do.body1.i.i233.dev_put_track.exit_crit_edge:     ; preds = %do.body1.i.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put_track.exit

if.then28.i.i234:                                 ; preds = %do.body1.i.i233
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %if.then28.i.i234, %do.body1.i.i233.dev_put_track.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %61) #7, !srcloc !44
  call void @rtnl_lock() #7
  br label %cleanup

sw.bb90:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg.i) #7
  %75 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %cfg.i, align 4, !annotation !32
  %76 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1, ptr %76, align 4, !annotation !32
  %78 = getelementptr inbounds %struct.hwtstamp_config, ptr %cfg.i, i32 0, i32 2
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %78, align 4, !annotation !32
  %ifr_ifru.i236 = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %80 = ptrtoint ptr %ifr_ifru.i236 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ifr_ifru.i236, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.5, i32 noundef 156) #7
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i.i, label %sw.bb90.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb90.if.then11.i.i.i_crit_edge:                ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb90
  %82 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %81, i32 12, i32 -1226833920) #10, !srcloc !33
  %asmresult.i.i.i = extractvalue { i32, i32 } %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !34

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg.i, i32 noundef 12) #7
  %83 = call i32 @llvm.read_register.i32(metadata !22) #7
  %and.i.i.i.i.i.i.i = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !35
  %and.i.i.i.i.i = and i32 %85, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg.i, ptr noundef %81, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #7, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i237, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !34

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb90.if.then11.i.i.i_crit_edge
  %res.0.i.i21.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %sw.bb90.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i21.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cfg.i, i32 %sub.i.i.i
  %86 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i21.i)
  br label %net_hwtstamp_validate.exit.thread

if.end.i237:                                      ; preds = %if.end.i.i.i
  %87 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %tobool1.not.i = icmp ult i32 %88, 2
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i237.net_hwtstamp_validate.exit.thread_crit_edge

if.end.i237.net_hwtstamp_validate.exit.thread_crit_edge: ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_hwtstamp_validate.exit.thread

if.end3.i:                                        ; preds = %if.end.i237
  %89 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %76, align 4
  %91 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %switch.i = icmp ugt i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %92)
  %switch16.i = icmp ugt i32 %92, 15
  %brmerge.i = or i1 %switch.i, %switch16.i
  br i1 %brmerge.i, label %if.end3.i.net_hwtstamp_validate.exit.thread_crit_edge, label %if.end101.thread

if.end3.i.net_hwtstamp_validate.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_hwtstamp_validate.exit.thread

net_hwtstamp_validate.exit.thread:                ; preds = %if.end3.i.net_hwtstamp_validate.exit.thread_crit_edge, %if.end.i237.net_hwtstamp_validate.exit.thread_crit_edge, %if.then11.i.i.i
  %retval.0.i238.ph = phi i32 [ -14, %if.then11.i.i.i ], [ -22, %if.end.i237.net_hwtstamp_validate.exit.thread_crit_edge ], [ -34, %if.end3.i.net_hwtstamp_validate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #7
  br label %cleanup

if.end101.thread:                                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg.i) #7
  br label %if.then116

sw.default:                                       ; preds = %if.end
  %93 = and i32 %cmd, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 35312, i32 %93)
  %94 = icmp eq i32 %93, 35312
  br i1 %94, label %if.then99, label %if.end101

if.then99:                                        ; preds = %sw.default
  %95 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %netdev_ops, align 8
  %ndo_siocdevprivate.i = getelementptr inbounds %struct.net_device_ops, ptr %96, i32 0, i32 15
  %97 = ptrtoint ptr %ndo_siocdevprivate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ndo_siocdevprivate.i, align 4
  %tobool.not.i240 = icmp eq ptr %98, null
  br i1 %tobool.not.i240, label %if.then99.cleanup_crit_edge, label %if.then.i243

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i243:                                     ; preds = %if.then99
  %state.i.i241 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %99 = ptrtoint ptr %state.i.i241 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %state.i.i241, align 4
  %101 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.i.not.i242 = icmp eq i32 %101, 0
  br i1 %tobool.i.not.i242, label %if.then.i243.cleanup_crit_edge, label %if.then1.i245

if.then.i243.cleanup_crit_edge:                   ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.i245:                                    ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i244 = tail call i32 %98(ptr noundef nonnull %call, ptr noundef %ifr, ptr noundef %data, i32 noundef %cmd) #7
  br label %cleanup

if.end101:                                        ; preds = %sw.default
  %102 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cmd, label %if.end101.cleanup_crit_edge [
    i32 35143, label %if.end101.if.then116_crit_edge
    i32 35144, label %if.end101.if.then116_crit_edge261
    i32 35145, label %if.end101.if.then116_crit_edge262
    i32 35248, label %if.end101.if.then116_crit_edge263
    i32 35249, label %if.end101.if.then116_crit_edge264
    i32 35216, label %if.end101.if.then135_crit_edge
    i32 35217, label %if.end101.if.then135_crit_edge265
    i32 35218, label %if.end101.if.then135_crit_edge266
    i32 35219, label %if.end101.if.then135_crit_edge267
    i32 35220, label %if.end101.if.then135_crit_edge268
    i32 35221, label %if.end101.if.then135_crit_edge269
  ]

if.end101.if.then135_crit_edge269:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then135_crit_edge268:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then135_crit_edge267:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then135_crit_edge266:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then135_crit_edge265:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then135_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then135

if.end101.if.then116_crit_edge264:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.end101.if.then116_crit_edge263:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.end101.if.then116_crit_edge262:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.end101.if.then116_crit_edge261:                ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.end101.if.then116_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then116:                                       ; preds = %if.end101.if.then116_crit_edge, %if.end101.if.then116_crit_edge261, %if.end101.if.then116_crit_edge262, %if.end101.if.then116_crit_edge263, %if.end101.if.then116_crit_edge264, %if.end101.thread
  %call117 = call fastcc i32 @dev_eth_ioctl(ptr noundef nonnull %call, ptr noundef %ifr, i32 noundef %cmd)
  br label %cleanup

if.then135:                                       ; preds = %if.end101.if.then135_crit_edge, %if.end101.if.then135_crit_edge265, %if.end101.if.then135_crit_edge266, %if.end101.if.then135_crit_edge267, %if.end101.if.then135_crit_edge268, %if.end101.if.then135_crit_edge269
  %103 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev_ops, align 8
  %ndo_siocbond.i = getelementptr inbounds %struct.net_device_ops, ptr %104, i32 0, i32 13
  %105 = ptrtoint ptr %ndo_siocbond.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndo_siocbond.i, align 4
  %tobool.not.i248 = icmp eq ptr %106, null
  br i1 %tobool.not.i248, label %if.then135.cleanup_crit_edge, label %if.then.i251

if.then135.cleanup_crit_edge:                     ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i251:                                     ; preds = %if.then135
  %state.i.i249 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 6
  %107 = ptrtoint ptr %state.i.i249 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %state.i.i249, align 4
  %109 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.i.not.i250 = icmp eq i32 %109, 0
  br i1 %tobool.i.not.i250, label %if.then.i251.cleanup_crit_edge, label %if.then1.i253

if.then.i251.cleanup_crit_edge:                   ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1.i253:                                    ; preds = %if.then.i251
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i252 = tail call i32 %106(ptr noundef nonnull %call, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then1.i253, %if.then.i251.cleanup_crit_edge, %if.then135.cleanup_crit_edge, %if.then116, %if.end101.cleanup_crit_edge, %if.then1.i245, %if.then.i243.cleanup_crit_edge, %if.then99.cleanup_crit_edge, %net_hwtstamp_validate.exit.thread, %dev_put_track.exit, %if.end84.cleanup_crit_edge, %sw.bb81.cleanup_crit_edge, %if.then1.i, %if.then.i.cleanup_crit_edge, %sw.bb78.cleanup_crit_edge, %sw.bb73, %if.end70, %sw.bb65.cleanup_crit_edge, %if.end60, %if.end57.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %if.end42, %if.end39.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb31.cleanup_crit_edge, %if.end.i, %sw.bb29.cleanup_crit_edge, %if.end20, %sw.bb13.cleanup_crit_edge, %if.end10, %sw.bb6.cleanup_crit_edge, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %dev_put_track.exit ], [ %call77, %sw.bb73 ], [ %call72, %if.end70 ], [ %call64, %if.end60 ], [ %call46, %if.end42 ], [ 0, %if.end20 ], [ %call12, %if.end10 ], [ %call5, %sw.bb3 ], [ %call1, %sw.bb ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb31.cleanup_crit_edge ], [ -19, %if.end39.cleanup_crit_edge ], [ -22, %lor.lhs.false50.cleanup_crit_edge ], [ -22, %sw.bb47.cleanup_crit_edge ], [ -19, %if.end57.cleanup_crit_edge ], [ -22, %sw.bb65.cleanup_crit_edge ], [ -19, %sw.bb81.cleanup_crit_edge ], [ -95, %if.end84.cleanup_crit_edge ], [ %call117, %if.then116 ], [ -22, %if.end101.cleanup_crit_edge ], [ %call15.i, %if.end.i ], [ -95, %sw.bb29.cleanup_crit_edge ], [ %call3.i, %if.then1.i ], [ -19, %if.then.i.cleanup_crit_edge ], [ -95, %sw.bb78.cleanup_crit_edge ], [ %retval.0.i238.ph, %net_hwtstamp_validate.exit.thread ], [ %call3.i244, %if.then1.i245 ], [ -19, %if.then.i243.cleanup_crit_edge ], [ -95, %if.then99.cleanup_crit_edge ], [ %call3.i252, %if.then1.i253 ], [ -19, %if.then.i251.cleanup_crit_edge ], [ -95, %if.then135.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_tracker) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_get_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_flags(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mtu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_mac_address_user(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add_global(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del_global(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_tx_queue_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_change_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_ioctl_call(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_eth_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %dsa_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 75
  %2 = ptrtoint ptr %dsa_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsa_ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %if.end.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i:                                       ; preds = %entry
  %netdev_ops.i.i = getelementptr inbounds %struct.dsa_port, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end_crit_edge, label %dsa_ndo_eth_ioctl.exit

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

dsa_ndo_eth_ioctl.exit:                           ; preds = %if.end.i.i
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call1.i = tail call i32 %7(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, -95
  br i1 %cond, label %dsa_ndo_eth_ioctl.exit.if.end_crit_edge, label %dsa_ndo_eth_ioctl.exit.cleanup_crit_edge

dsa_ndo_eth_ioctl.exit.cleanup_crit_edge:         ; preds = %dsa_ndo_eth_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

dsa_ndo_eth_ioctl.exit.if.end_crit_edge:          ; preds = %dsa_ndo_eth_ioctl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %dsa_ndo_eth_ioctl.exit.if.end_crit_edge, %if.end.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ndo_eth_ioctl = getelementptr inbounds %struct.net_device_ops, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %ndo_eth_ioctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndo_eth_ioctl, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not = icmp eq i32 %12, 0
  br i1 %tobool.i.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 %9(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dsa_ndo_eth_ioctl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %dsa_ndo_eth_ioctl.exit.cleanup_crit_edge ], [ %call6, %if.then4 ], [ -95, %if.end.cleanup_crit_edge ], [ -19, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21}
!llvm.named.register.sp = !{!22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/core/dev_ioctl.c", i32 79, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/core/dev_ioctl.c", i32 447, i32 15}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/core/dev_ioctl.c", i32 449, i32 3}
!6 = !{ptr @__ksymtab_dev_load, !7, !"__ksymtab_dev_load", i1 false, i1 false}
!7 = !{!"../net/core/dev_ioctl.c", i32 451, i32 1}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!10 = distinct !{null, !9, !"<string literal>", i1 false, i1 false}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{!"sp"}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"auto-init"}
!33 = !{i64 2152883137, i64 2152883162}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 5378692}
!36 = !{i64 5378889}
!37 = !{i64 2152864122}
!38 = !{i64 2158101291, i64 2158101571, i64 2158101905, i64 2158102239}
!39 = !{i64 2149908574}
!40 = !{i64 2149908840}
!41 = !{i64 976383, i64 976444}
!42 = !{i64 979115}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 979400}
