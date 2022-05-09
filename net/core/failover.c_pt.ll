; ModuleID = '/llk/IR_all_yes/net/core/failover.c_pt.bc'
source_filename = "../net/core/failover.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+failover_slave_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_failover_slave_unregister\09\09\09\09"
module asm "\09.long\09__crc_failover_slave_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_slave_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_failover_slave_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+failover_register\22, \22a\22\09"
module asm "\09.weak\09__crc_failover_register\09\09\09\09"
module asm "\09.long\09__crc_failover_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_register:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_register\22\09\09\09\09\09"
module asm "__kstrtabns_failover_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+failover_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_failover_unregister\09\09\09\09"
module asm "\09.long\09__crc_failover_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_failover_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22failover_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_failover_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.failover_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.failover = type { %struct.list_head, ptr, ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.62, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.netdev_lag_upper_info = type { i32, i32 }

@failover_slave_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/core/failover.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_failover_slave_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_slave_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_slave_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_slave_unregister to i32), ptr @__kstrtab_failover_slave_unregister, ptr @__kstrtabns_failover_slave_unregister }, section "___ksymtab_gpl+failover_slave_unregister", align 4
@failover_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.23 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@failover_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @failover_list, ptr @failover_list }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failover master:%s registered\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_failover_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_register = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_register to i32), ptr @__kstrtab_failover_register, ptr @__kstrtabns_failover_register }, section "___ksymtab_gpl+failover_register", align 4
@failover_unregister.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failover master:%s unregistered\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_failover_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_failover_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_failover_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @failover_unregister to i32), ptr @__kstrtab_failover_unregister, ptr @__kstrtabns_failover_unregister }, section "___ksymtab_gpl+failover_unregister", align 4
@__initcall__kmod_failover__349_305_failover_init6 = internal global ptr @failover_init, section ".initcall6.init", align 4
@failover_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @failover_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__exitcall_failover_exit = internal global ptr @failover_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description350 = internal constant [63 x i8] c"failover.description=Generic failover infrastructure/interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [32 x i8] c"failover.file=net/core/failover\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [24 x i8] c"failover.license=GPL v2\00", section ".modinfo", align 1
@failover_get_bymac.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@failover_get_bymac.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"failover_lock\00", [18 x i8] zeroinitializer }, align 32
@failover_slave_register.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"can not register failover rx handler (err = %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can not set failover device %s (err = %d)\0A\00", [53 x i8] zeroinitializer }, align 32
@failover_slave_link_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@failover_slave_name_change.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 5, i64 6, i64 11]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 112, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"failover_lock\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"failover_list\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 17, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 263, i32 19 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 282, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 284, i32 28 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"failover_notifier\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 210, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 27, i32 18 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 18, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 69, i32 25 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [23 x i8] c"../net/core/failover.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 78, i32 25 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_description350, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_failover_exit, ptr @__initcall__kmod_failover__349_305_failover_init6, ptr @__ksymtab_failover_register, ptr @__ksymtab_failover_slave_unregister, ptr @__ksymtab_failover_unregister, ptr @failover_exit, ptr @.str, ptr @.str.1, ptr @failover_lock, ptr @failover_list, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @failover_notifier, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failover_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failover_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failover_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @failover_slave_unregister(ptr noundef %slave_dev) #0 align 64 {
entry:
  %fops = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fops) #7
  %0 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fops, align 4, !annotation !58
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %2, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.rhs:                                         ; preds = %if.end
  %.b76 = load i1, ptr @failover_slave_unregister.__already_done, align 1
  br i1 %.b76, label %land.rhs.if.end32_crit_edge, label %if.then10, !prof !59

land.rhs.if.end32_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_slave_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 112) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then10, %land.rhs.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 54
  %call40 = call fastcc ptr @failover_get_bymac(ptr noundef %perm_addr, ptr noundef nonnull %fops)
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end32.done_crit_edge, label %if.end43

if.end32.done_crit_edge:                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end43:                                         ; preds = %if.end32
  %3 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fops, align 4
  %tobool44.not = icmp eq ptr %4, null
  br i1 %tobool44.not, label %done.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end43
  %slave_pre_unregister = getelementptr inbounds %struct.failover_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %slave_pre_unregister to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slave_pre_unregister, align 4
  %tobool45.not = icmp eq ptr %6, null
  br i1 %tobool45.not, label %land.lhs.true.land.lhs.true53_crit_edge, label %land.lhs.true46

land.lhs.true.land.lhs.true53_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true53

land.lhs.true46:                                  ; preds = %land.lhs.true
  %call48 = tail call i32 %6(ptr noundef %slave_dev, ptr noundef nonnull %call40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true46.land.lhs.true53_crit_edge, label %land.lhs.true46.done_crit_edge

land.lhs.true46.done_crit_edge:                   ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true46.land.lhs.true53_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true46.land.lhs.true53_crit_edge, %land.lhs.true.land.lhs.true53_crit_edge
  tail call void @netdev_rx_handler_unregister(ptr noundef %slave_dev) #7
  tail call void @netdev_upper_dev_unlink(ptr noundef %slave_dev, ptr noundef nonnull %call40) #7
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %storemerge.in = load i64, ptr %priv_flags.i, align 16
  %storemerge = and i64 %storemerge.in, -1342177281
  store i64 %storemerge, ptr %priv_flags.i, align 16
  %slave_unregister = getelementptr inbounds %struct.failover_ops, ptr %4, i32 0, i32 3
  %8 = ptrtoint ptr %slave_unregister to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave_unregister, align 4
  %tobool54.not = icmp eq ptr %9, null
  br i1 %tobool54.not, label %land.lhs.true53.done_crit_edge, label %land.lhs.true55

land.lhs.true53.done_crit_edge:                   ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true55:                                  ; preds = %land.lhs.true53
  %call57 = tail call i32 %9(ptr noundef %slave_dev, ptr noundef nonnull %call40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true55.cleanup_crit_edge, label %land.lhs.true55.done_crit_edge

land.lhs.true55.done_crit_edge:                   ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

done.critedge:                                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netdev_rx_handler_unregister(ptr noundef %slave_dev) #7
  tail call void @netdev_upper_dev_unlink(ptr noundef %slave_dev, ptr noundef nonnull %call40) #7
  %10 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %priv_flags.i, align 16
  %and.c79 = and i64 %11, -1342177281
  store i64 %and.c79, ptr %priv_flags.i, align 16
  br label %done

done:                                             ; preds = %done.critedge, %land.lhs.true55.done_crit_edge, %land.lhs.true53.done_crit_edge, %land.lhs.true46.done_crit_edge, %if.end32.done_crit_edge, %entry.done_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %done, %land.lhs.true55.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %done ], [ 1, %land.lhs.true55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fops) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @failover_get_bymac(ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %ops) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond

for.cond:                                         ; preds = %do.end.for.cond_crit_edge, %entry
  %failover.0.in = phi ptr [ @failover_list, %entry ], [ %failover.0, %do.end.for.cond_crit_edge ]
  %0 = ptrtoint ptr %failover.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %failover.0 = load ptr, ptr %failover.0.in, align 4
  %cmp.not = icmp eq ptr %failover.0, @failover_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %do.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %for.cond
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @failover_get_bymac.__warned, align 1
  br i1 %.b33, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_get_bymac.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 27, ptr noundef nonnull @.str.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %failover_dev5 = getelementptr inbounds %struct.failover, ptr %failover.0, i32 0, i32 1
  %1 = ptrtoint ptr %failover_dev5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %failover_dev5, align 4
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 54
  %3 = ptrtoint ptr %perm_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %perm_addr, align 4
  %5 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %6, %4
  %add.ptr.i = getelementptr %struct.net_device, ptr %2, i32 0, i32 54, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i, align 2
  %9 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %10, %8
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %do.body8, label %do.end.for.cond_crit_edge

do.end.for.cond_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.body8:                                         ; preds = %do.end
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call9, label %do.body8.do.end18_crit_edge, label %land.lhs.true10

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true10:                                  ; preds = %do.body8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b3132 = load i1, ptr @failover_get_bymac.__warned.6, align 1
  br i1 %.b3132, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_get_bymac.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 29, ptr noundef nonnull @.str.5) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %do.body8.do.end18_crit_edge
  %ops20 = getelementptr inbounds %struct.failover, ptr %failover.0, i32 0, i32 3
  %11 = ptrtoint ptr %ops20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops20, align 4
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %do.end18 ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @failover_lock) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_handler_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_upper_dev_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @failover_register(ptr noundef %dev, ptr noundef %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not = icmp eq i16 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !60
  %ops30 = getelementptr inbounds %struct.failover, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %ops30 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %ops, ptr %ops30, align 8
  %dev_tracker = getelementptr inbounds %struct.failover, ptr %call7.i.i, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %do.body.dev_hold_track.exit_crit_edge, label %do.body1.i.i

do.body.dev_hold_track.exit_crit_edge:            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold_track.exit

do.body1.i.i:                                     ; preds = %do.body
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i.i = add i32 %16, 1
  store i32 %add13.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !62
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !63

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !64
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 3264) #7
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %dev_hold.exit.i, %do.body.dev_hold_track.exit_crit_edge
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %18 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv_flags, align 16
  %or = or i64 %19, 134217728
  store i64 %or, ptr %priv_flags, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  %failover_dev71 = getelementptr inbounds %struct.failover, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %failover_dev71 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %dev, ptr %failover_dev71, align 8
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @failover_list, i32 0, i32 1), align 4
  %call.i.i94 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %21, ptr noundef nonnull @failover_list) #7
  br i1 %call.i.i94, label %if.end.i.i, label %dev_hold_track.exit.list_add_tail.exit_crit_edge

dev_hold_track.exit.list_add_tail.exit_crit_edge: ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @failover_list, i32 0, i32 1), align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @failover_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev3.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call7.i.i, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %dev_hold_track.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @failover_lock) #7
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %dev) #11
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i.i, align 4
  tail call void @rtnl_lock() #7
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn20.i = load ptr, ptr %dev_base_head.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn20.i, %dev_base_head.i
  br i1 %cmp.not22.i, label %list_add_tail.exit.failover_existing_slave_register.exit_crit_edge, label %for.body.lr.ph.i

list_add_tail.exit.failover_existing_slave_register.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %failover_existing_slave_register.exit

for.body.lr.ph.i:                                 ; preds = %list_add_tail.exit
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 54
  %add.ptr.i.i = getelementptr %struct.net_device, ptr %dev, i32 0, i32 54, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn23.i = phi ptr [ %.pn20.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %dev.024.i = getelementptr i8, ptr %.pn23.i, i32 -40
  %priv_flags.i.i = getelementptr i8, ptr %.pn23.i, i32 72
  %28 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %perm_addr3.i = getelementptr i8, ptr %.pn23.i, i32 324
  %30 = ptrtoint ptr %perm_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %perm_addr.i, align 4
  %32 = ptrtoint ptr %perm_addr3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %perm_addr3.i, align 4
  %xor.i.i = xor i32 %33, %31
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %.pn23.i, i32 328
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %37, %35
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.then6.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call fastcc i32 @failover_slave_register(ptr noundef %dev.024.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dev_base_head.i
  br i1 %cmp.not.i, label %for.inc.i.failover_existing_slave_register.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.failover_existing_slave_register.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failover_existing_slave_register.exit

failover_existing_slave_register.exit:            ; preds = %for.inc.i.failover_existing_slave_register.exit_crit_edge, %list_add_tail.exit.failover_existing_slave_register.exit_crit_edge
  tail call void @rtnl_unlock() #7
  br label %cleanup

cleanup:                                          ; preds = %failover_existing_slave_register.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %failover_existing_slave_register.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @failover_unregister(ptr noundef %failover) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %failover_dev1 = getelementptr inbounds %struct.failover, ptr %failover, i32 0, i32 1
  %0 = ptrtoint ptr %failover_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %failover_dev1, align 4
  %call = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @failover_unregister.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_unregister.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 282, ptr noundef nonnull @.str.3) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %1) #11
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags, align 16
  %and = and i64 %3, -134217729
  store i64 %and, ptr %priv_flags, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end8.dev_put_track.exit_crit_edge, label %do.body1.i.i

do.end8.dev_put_track.exit_crit_edge:             ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %do.end8
  %dev_tracker = getelementptr inbounds %struct.failover, ptr %failover, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #7
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !61
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !48) #7
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i.i = add i32 %16, -1
  store i32 %add13.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !62
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !63

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #7, !srcloc !64
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %do.end8.dev_put_track.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @failover_lock) #7
  %call.i.i17 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %failover) #7
  br i1 %call.i.i17, label %if.end.i.i, label %dev_put_track.exit.list_del.exit_crit_edge

dev_put_track.exit.list_del.exit_crit_edge:       ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %failover, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %failover to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %failover, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dev_put_track.exit.list_del.exit_crit_edge
  %24 = ptrtoint ptr %failover to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %failover, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %failover, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @failover_lock) #7
  tail call void @kfree(ptr noundef %failover) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @failover_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @failover_notifier) #7
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @failover_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @failover_notifier) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @failover_slave_register(ptr noundef %slave_dev) unnamed_addr #0 align 64 {
entry:
  %lag_upper_info = alloca %struct.netdev_lag_upper_info, align 4
  %fops = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lag_upper_info) #7
  %0 = getelementptr inbounds %struct.netdev_lag_upper_info, ptr %lag_upper_info, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4, !annotation !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fops) #7
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fops, align 4, !annotation !58
  %type = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 32
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %cmp.not = icmp eq i16 %4, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.if.end33_crit_edge

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.rhs:                                         ; preds = %if.end
  %.b100 = load i1, ptr @failover_slave_register.__already_done, align 1
  br i1 %.b100, label %land.rhs.if.end33_crit_edge, label %if.then11, !prof !59

land.rhs.if.end33_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_slave_register.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 56) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then11, %land.rhs.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %perm_addr = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 54
  %call41 = call fastcc ptr @failover_get_bymac(ptr noundef %perm_addr, ptr noundef nonnull %fops)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.end33.cleanup_crit_edge, label %if.end44

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end33
  %5 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fops, align 4
  %tobool45.not = icmp eq ptr %6, null
  br i1 %tobool45.not, label %if.end44.if.end52_crit_edge, label %land.lhs.true

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true:                                    ; preds = %if.end44
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool46.not = icmp eq ptr %8, null
  br i1 %tobool46.not, label %land.lhs.true.if.end52_crit_edge, label %land.lhs.true47

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true47:                                  ; preds = %land.lhs.true
  %call49 = tail call i32 %8(ptr noundef %slave_dev, ptr noundef nonnull %call41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.end52_crit_edge, label %land.lhs.true47.cleanup_crit_edge

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true47.if.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true47.if.end52_crit_edge, %land.lhs.true.if.end52_crit_edge, %if.end44.if.end52_crit_edge
  %slave_handle_frame = getelementptr inbounds %struct.failover_ops, ptr %6, i32 0, i32 6
  %9 = ptrtoint ptr %slave_handle_frame to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave_handle_frame, align 4
  %call53 = tail call i32 @netdev_rx_handler_register(ptr noundef %slave_dev, ptr noundef %10, ptr noundef nonnull %call41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %slave_dev, ptr noundef nonnull @.str.8, i32 noundef %call53) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %11 = ptrtoint ptr %lag_upper_info to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %lag_upper_info, align 4
  %call57 = call i32 @netdev_master_upper_dev_link(ptr noundef %slave_dev, ptr noundef nonnull %call41, ptr noundef null, ptr noundef nonnull %lag_upper_info, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end61, label %if.then59

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %slave_dev, ptr noundef nonnull @.str.9, ptr noundef nonnull %call41, i32 noundef %call57) #11
  br label %err_upper_link

if.end61:                                         ; preds = %if.end56
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %slave_dev, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags, align 16
  %or = or i64 %13, 1342177280
  store i64 %or, ptr %priv_flags, align 16
  br i1 %tobool45.not, label %if.end61.if.end70_crit_edge, label %land.lhs.true63

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true63:                                  ; preds = %if.end61
  %slave_register = getelementptr inbounds %struct.failover_ops, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %slave_register to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slave_register, align 4
  %tobool64.not = icmp eq ptr %15, null
  br i1 %tobool64.not, label %land.lhs.true63.if.end70_crit_edge, label %land.lhs.true65

land.lhs.true63.if.end70_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true65:                                  ; preds = %land.lhs.true63
  %call67 = call i32 %15(ptr noundef %slave_dev, ptr noundef nonnull %call41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true65.cleanup_crit_edge, label %land.lhs.true65.if.end70_crit_edge

land.lhs.true65.if.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

land.lhs.true65.cleanup_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end70:                                         ; preds = %land.lhs.true65.if.end70_crit_edge, %land.lhs.true63.if.end70_crit_edge, %if.end61.if.end70_crit_edge
  call void @netdev_upper_dev_unlink(ptr noundef %slave_dev, ptr noundef nonnull %call41) #7
  %16 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %priv_flags, align 16
  %and = and i64 %17, -1342177281
  store i64 %and, ptr %priv_flags, align 16
  br label %err_upper_link

err_upper_link:                                   ; preds = %if.end70, %if.then59
  call void @netdev_rx_handler_unregister(ptr noundef %slave_dev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_upper_link, %land.lhs.true65.cleanup_crit_edge, %if.then55, %land.lhs.true47.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true65.cleanup_crit_edge ], [ 0, %land.lhs.true47.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %err_upper_link ], [ 0, %if.then55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fops) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lag_upper_info) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_rx_handler_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_master_upper_dev_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @failover_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %fops.i13 = alloca ptr, align 4
  %fops.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
    i32 1, label %if.end.sw.bb5_crit_edge
    i32 2, label %if.end.sw.bb5_crit_edge40
    i32 4, label %if.end.sw.bb5_crit_edge41
    i32 11, label %sw.bb7
  ]

if.end.sw.bb5_crit_edge41:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge40:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call fastcc i32 @failover_slave_register(ptr noundef %1)
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @failover_slave_unregister(ptr noundef %1)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge40, %if.end.sw.bb5_crit_edge41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fops.i) #7
  %5 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fops.i, align 4, !annotation !58
  %and.i.i = and i64 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb5.done.i_crit_edge, label %if.end.i

sw.bb5.done.i_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end.i:                                         ; preds = %sw.bb5
  %call1.i = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.i.if.end32.i_crit_edge

if.end.i.if.end32.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

land.rhs.i:                                       ; preds = %if.end.i
  %.b63.i = load i1, ptr @failover_slave_link_change.__already_done, align 1
  br i1 %.b63.i, label %land.rhs.i.if.end32.i_crit_edge, label %if.then10.i, !prof !59

land.rhs.i.if.end32.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_slave_link_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 143) #7
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then10.i, %land.rhs.i.if.end32.i_crit_edge, %if.end.i.if.end32.i_crit_edge
  %perm_addr.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %call40.i = call fastcc ptr @failover_get_bymac(ptr noundef %perm_addr.i, ptr noundef nonnull %fops.i) #7
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end32.i.done.i_crit_edge, label %if.end43.i

if.end32.i.done.i_crit_edge:                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end43.i:                                       ; preds = %if.end32.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %call40.i, i32 0, i32 6
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i64.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i64.not.i, label %if.end43.i.done.i_crit_edge, label %if.end46.i

if.end43.i.done.i_crit_edge:                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

if.end46.i:                                       ; preds = %if.end43.i
  %8 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fops.i, align 4
  %tobool47.not.i = icmp eq ptr %9, null
  br i1 %tobool47.not.i, label %if.end46.i.done.i_crit_edge, label %land.lhs.true.i

if.end46.i.done.i_crit_edge:                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

land.lhs.true.i:                                  ; preds = %if.end46.i
  %slave_link_change.i = getelementptr inbounds %struct.failover_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %slave_link_change.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_link_change.i, align 4
  %tobool48.not.i = icmp eq ptr %11, null
  br i1 %tobool48.not.i, label %land.lhs.true.i.done.i_crit_edge, label %land.lhs.true49.i

land.lhs.true.i.done.i_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

land.lhs.true49.i:                                ; preds = %land.lhs.true.i
  %call51.i = tail call i32 %11(ptr noundef %1, ptr noundef nonnull %call40.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %land.lhs.true49.i.failover_slave_link_change.exit_crit_edge, label %land.lhs.true49.i.done.i_crit_edge

land.lhs.true49.i.done.i_crit_edge:               ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i

land.lhs.true49.i.failover_slave_link_change.exit_crit_edge: ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %failover_slave_link_change.exit

done.i:                                           ; preds = %land.lhs.true49.i.done.i_crit_edge, %land.lhs.true.i.done.i_crit_edge, %if.end46.i.done.i_crit_edge, %if.end43.i.done.i_crit_edge, %if.end32.i.done.i_crit_edge, %sw.bb5.done.i_crit_edge
  br label %failover_slave_link_change.exit

failover_slave_link_change.exit:                  ; preds = %done.i, %land.lhs.true49.i.failover_slave_link_change.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %done.i ], [ 1, %land.lhs.true49.i.failover_slave_link_change.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fops.i) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fops.i13) #7
  %12 = ptrtoint ptr %fops.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %fops.i13, align 4, !annotation !58
  %and.i.i15 = and i64 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i15)
  %tobool.i.not.i16 = icmp eq i64 %and.i.i15, 0
  br i1 %tobool.i.not.i16, label %sw.bb7.done.i38_crit_edge, label %if.end.i19

sw.bb7.done.i38_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

if.end.i19:                                       ; preds = %sw.bb7
  %call1.i17 = tail call i32 @rtnl_is_locked() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.rhs.i21, label %if.end.i19.if.end32.i26_crit_edge

if.end.i19.if.end32.i26_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i26

land.rhs.i21:                                     ; preds = %if.end.i19
  %.b63.i20 = load i1, ptr @failover_slave_name_change.__already_done, align 1
  br i1 %.b63.i20, label %land.rhs.i21.if.end32.i26_crit_edge, label %if.then10.i22, !prof !59

land.rhs.i21.if.end32.i26_crit_edge:              ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i26

if.then10.i22:                                    ; preds = %land.rhs.i21
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @failover_slave_name_change.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 168) #7
  br label %if.end32.i26

if.end32.i26:                                     ; preds = %if.then10.i22, %land.rhs.i21.if.end32.i26_crit_edge, %if.end.i19.if.end32.i26_crit_edge
  %perm_addr.i23 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 54
  %call40.i24 = call fastcc ptr @failover_get_bymac(ptr noundef %perm_addr.i23, ptr noundef nonnull %fops.i13) #7
  %tobool41.not.i25 = icmp eq ptr %call40.i24, null
  br i1 %tobool41.not.i25, label %if.end32.i26.done.i38_crit_edge, label %if.end43.i30

if.end32.i26.done.i38_crit_edge:                  ; preds = %if.end32.i26
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

if.end43.i30:                                     ; preds = %if.end32.i26
  %state.i.i27 = getelementptr inbounds %struct.net_device, ptr %call40.i24, i32 0, i32 6
  %13 = ptrtoint ptr %state.i.i27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.i27, align 4
  %and1.i.i.i28 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i28)
  %tobool.i64.not.i29 = icmp eq i32 %and1.i.i.i28, 0
  br i1 %tobool.i64.not.i29, label %if.end43.i30.done.i38_crit_edge, label %if.end46.i32

if.end43.i30.done.i38_crit_edge:                  ; preds = %if.end43.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

if.end46.i32:                                     ; preds = %if.end43.i30
  %15 = ptrtoint ptr %fops.i13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fops.i13, align 4
  %tobool47.not.i31 = icmp eq ptr %16, null
  br i1 %tobool47.not.i31, label %if.end46.i32.done.i38_crit_edge, label %land.lhs.true.i34

if.end46.i32.done.i38_crit_edge:                  ; preds = %if.end46.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

land.lhs.true.i34:                                ; preds = %if.end46.i32
  %slave_name_change.i = getelementptr inbounds %struct.failover_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %slave_name_change.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave_name_change.i, align 4
  %tobool48.not.i33 = icmp eq ptr %18, null
  br i1 %tobool48.not.i33, label %land.lhs.true.i34.done.i38_crit_edge, label %land.lhs.true49.i37

land.lhs.true.i34.done.i38_crit_edge:             ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

land.lhs.true49.i37:                              ; preds = %land.lhs.true.i34
  %call51.i35 = tail call i32 %18(ptr noundef %1, ptr noundef nonnull %call40.i24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i35)
  %tobool52.not.i36 = icmp eq i32 %call51.i35, 0
  br i1 %tobool52.not.i36, label %land.lhs.true49.i37.failover_slave_name_change.exit_crit_edge, label %land.lhs.true49.i37.done.i38_crit_edge

land.lhs.true49.i37.done.i38_crit_edge:           ; preds = %land.lhs.true49.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.i38

land.lhs.true49.i37.failover_slave_name_change.exit_crit_edge: ; preds = %land.lhs.true49.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %failover_slave_name_change.exit

done.i38:                                         ; preds = %land.lhs.true49.i37.done.i38_crit_edge, %land.lhs.true.i34.done.i38_crit_edge, %if.end46.i32.done.i38_crit_edge, %if.end43.i30.done.i38_crit_edge, %if.end32.i26.done.i38_crit_edge, %sw.bb7.done.i38_crit_edge
  br label %failover_slave_name_change.exit

failover_slave_name_change.exit:                  ; preds = %done.i38, %land.lhs.true49.i37.failover_slave_name_change.exit_crit_edge
  %retval.0.i39 = phi i32 [ 0, %done.i38 ], [ 1, %land.lhs.true49.i37.failover_slave_name_change.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fops.i13) #7
  br label %cleanup

cleanup:                                          ; preds = %failover_slave_name_change.exit, %failover_slave_link_change.exit, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %failover_slave_name_change.exit ], [ %retval.0.i, %failover_slave_link_change.exit ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/core/failover.c", i32 112, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_failover_slave_unregister, !5, !"__ksymtab_failover_slave_unregister", i1 false, i1 false}
!5 = !{!"../net/core/failover.c", i32 133, i32 1}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/core/failover.c", i32 263, i32 19}
!8 = !{ptr @__ksymtab_failover_register, !9, !"__ksymtab_failover_register", i1 false, i1 false}
!9 = !{!"../net/core/failover.c", i32 269, i32 1}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/core/failover.c", i32 282, i32 17}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/core/failover.c", i32 284, i32 28}
!15 = !{ptr @__ksymtab_failover_unregister, !16, !"__ksymtab_failover_unregister", i1 false, i1 false}
!16 = !{!"../net/core/failover.c", i32 296, i32 1}
!17 = !{ptr @__initcall__kmod_failover__349_305_failover_init6, !18, !"__initcall__kmod_failover__349_305_failover_init6", i1 false, i1 false}
!18 = !{!"../net/core/failover.c", i32 305, i32 1}
!19 = !{ptr @__exitcall_failover_exit, !20, !"__exitcall_failover_exit", i1 false, i1 false}
!20 = !{!"../net/core/failover.c", i32 312, i32 1}
!21 = !{ptr @__UNIQUE_ID_description350, !22, !"__UNIQUE_ID_description350", i1 false, i1 false}
!22 = !{!"../net/core/failover.c", i32 314, i32 1}
!23 = !{ptr @__UNIQUE_ID_file351, !24, !"__UNIQUE_ID_file351", i1 false, i1 false}
!24 = !{!"../net/core/failover.c", i32 315, i32 1}
!25 = !{ptr @__UNIQUE_ID_license352, !24, !"__UNIQUE_ID_license352", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/core/failover.c", i32 27, i32 18}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/core/failover.c", i32 29, i32 11}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/core/failover.c", i32 18, i32 8}
!33 = !{ptr @failover_lock, !32, !"failover_lock", i1 false, i1 false}
!34 = !{ptr @failover_list, !35, !"failover_list", i1 false, i1 false}
!35 = !{!"../net/core/failover.c", i32 17, i32 8}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../net/core/failover.c", i32 56, i32 2}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/core/failover.c", i32 69, i32 25}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/core/failover.c", i32 78, i32 25}
!42 = !{ptr @failover_notifier, !43, !"failover_notifier", i1 false, i1 false}
!43 = !{!"../net/core/failover.c", i32 210, i32 30}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/core/failover.c", i32 143, i32 2}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/core/failover.c", i32 168, i32 2}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2156059417}
!61 = !{i64 749465, i64 749526}
!62 = !{i64 752197}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 752482}
!65 = !{i64 2156071759}
