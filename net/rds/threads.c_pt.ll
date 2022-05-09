; ModuleID = '/llk/IR_all_yes/net/rds/threads.c_pt.bc'
source_filename = "../net/rds/threads.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_wq\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_wq\09\09\09\09"
module asm "\09.long\09__crc_rds_wq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_wq\22\09\09\09\09\09"
module asm "__kstrtabns_rds_wq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_connect_path_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_connect_path_complete\09\09\09\09"
module asm "\09.long\09__crc_rds_connect_path_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_connect_path_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_connect_path_complete\22\09\09\09\09\09"
module asm "__kstrtabns_rds_connect_path_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_connect_complete\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_connect_complete\09\09\09\09"
module asm "\09.long\09__crc_rds_connect_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_connect_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_connect_complete\22\09\09\09\09\09"
module asm "__kstrtabns_rds_connect_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_addr_cmp\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_addr_cmp\09\09\09\09"
module asm "\09.long\09__crc_rds_addr_cmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_addr_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_addr_cmp\22\09\09\09\09\09"
module asm "__kstrtabns_rds_addr_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.possible_net_t = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rds_wq = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_rds_wq = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_wq = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_wq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_wq to i32), ptr @__kstrtab_rds_wq, ptr @__kstrtabns_rds_wq }, section "___ksymtab_gpl+rds_wq", align 4
@rds_connect_path_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014%s: Cannot transition to state UP, current state is %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rds_connect_path_complete\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/threads.c\00", [46 x i8] zeroinitializer }, align 32
@rds_connect_path_complete._entry_ptr = internal global ptr @rds_connect_path_complete._entry, section ".printk_index", align 4
@rds_connect_path_complete.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): conn %p for %pI6c to %pI6c complete\0A\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_rds_connect_path_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_connect_path_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_connect_path_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_connect_path_complete to i32), ptr @__kstrtab_rds_connect_path_complete, ptr @__kstrtabns_rds_connect_path_complete }, section "___ksymtab_gpl+rds_connect_path_complete", align 4
@__kstrtab_rds_connect_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_connect_complete = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_connect_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_connect_complete to i32), ptr @__kstrtab_rds_connect_complete, ptr @__kstrtabns_rds_connect_complete }, section "___ksymtab_gpl+rds_connect_complete", align 4
@rds_queue_reconnect.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_queue_reconnect\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(): conn %p for %pI6c to %pI6c reconnect jiffies %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@rds_sysctl_reconnect_min_jiffies = external dso_local local_unnamed_addr global i32, align 4
@rds_queue_reconnect.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): %lu delay %lu ceil conn %p for %pI6c -> %pI6c\0A\00", [43 x i8] zeroinitializer }, align 32
@rds_sysctl_reconnect_max_jiffies = external dso_local local_unnamed_addr global i32, align 4
@rds_connect_worker.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_connect_worker\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): conn %p for %pI6c to %pI6c dispatched, ret %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014RDS: connect failed\0A\00", [41 x i8] zeroinitializer }, align 32
@rds_send_worker.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_send_worker\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(): conn %p ret %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_recv_worker.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.13, ptr @.str.2, ptr @.str.12, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_recv_worker\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"krdsd\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_rds_addr_cmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_addr_cmp = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_addr_cmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_addr_cmp to i32), ptr @__kstrtab_rds_addr_cmp, ptr @__kstrtabns_rds_addr_cmp }, section "___ksymtab_gpl+rds_addr_cmp", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967285]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 4294967284, i64 4294967285]
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"rds_wq\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 71, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 77, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 85, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 129, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 149, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 177, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 186, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 202, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 227, i32 3 }
@___asan_gen_.72 = private constant [21 x i8] c"../net/rds/threads.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 259, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 695, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 723, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_rds_addr_cmp, ptr @__ksymtab_rds_connect_complete, ptr @__ksymtab_rds_connect_path_complete, ptr @__ksymtab_rds_wq, ptr @rds_connect_path_complete._entry, ptr @rds_connect_path_complete._entry_ptr, ptr @rds_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_connect_path_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_connect_path_complete(ptr noundef %cp, i32 noundef %curr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cp_state.i = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %cp_state.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i, ptr %cp_state.i, i32 %curr, i32 3, ptr elementtype(i32) %cp_state.i) #9, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %rds_conn_path_transition.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

rds_conn_path_transition.exit:                    ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %curr)
  %cmp.i.not = icmp eq i32 %asmresult3.i.i.i.i, %curr
  br i1 %cmp.i.not, label %do.body3, label %do.end

do.end:                                           ; preds = %rds_conn_path_transition.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #9
  %1 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %cp_state.i, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %2) #12
  tail call void @rds_conn_path_drop(ptr noundef %cp, i1 noundef zeroext false) #9
  br label %return

do.body3:                                         ; preds = %rds_conn_path_transition.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_connect_path_complete.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_connect_path_complete, %if.then9)) #9
          to label %do.end13 [label %if.then9], !srcloc !63

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cp, align 8
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %4, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %4, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_connect_path_complete.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %4, ptr noundef %c_laddr, ptr noundef %c_faddr) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body3
  %cp_reconnect_jiffies = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 17
  %5 = ptrtoint ptr %cp_reconnect_jiffies to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cp_reconnect_jiffies, align 8
  %6 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cp, align 8
  %c_map_queued = getelementptr inbounds %struct.rds_connection, ptr %7, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %c_map_queued) #9
  %8 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %do.end13.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end13.rcu_read_lock.exit_crit_edge:            ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end13
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end13.rcu_read_lock.exit_crit_edge
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cp, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #9
  %16 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i.not.i = icmp eq i32 %17, 0
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.if.end20_crit_edge, label %lor.rhs.i

rcu_read_lock.exit.if.end20_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %13, i32 0, i32 8
  %18 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.then17_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.then17_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = tail call zeroext i1 %21(ptr noundef %13) #9
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end20_crit_edge, label %rds_destroy_pending.exit.if.then17_crit_edge

rds_destroy_pending.exit.if.then17_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

rds_destroy_pending.exit.if.end20_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %rds_destroy_pending.exit.if.then17_crit_edge, %lor.rhs.i.if.then17_crit_edge
  %22 = load ptr, ptr @rds_wq, align 4
  %cp_send_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 18
  %call.i33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %cp_send_w, i32 noundef 0) #9
  %23 = load ptr, ptr @rds_wq, align 4
  %cp_recv_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 19
  %call.i34 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %cp_recv_w, i32 noundef 0) #9
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %rds_destroy_pending.exit.if.end20_crit_edge, %rcu_read_lock.exit.if.end20_crit_edge
  %call.i35 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i35, label %if.end20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i38

if.end20.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i38:                                ; preds = %if.end20
  %call1.i36 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool.not.i37 = icmp eq i32 %call1.i36, 0
  br i1 %tobool.not.i37, label %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i40

land.lhs.true.i38.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i40:                               ; preds = %land.lhs.true.i38
  %.b4.i39 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i39, label %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, label %if.then.i41

land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i41:                                      ; preds = %land.lhs.true2.i40
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i41, %land.lhs.true2.i40.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i38.rcu_read_unlock.exit_crit_edge, %if.end20.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %24 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i42 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i42 to ptr
  %preempt_count.i.i.i.i43 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i43, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i43, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %28 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cp, align 8
  %c_proposed_version = getelementptr inbounds %struct.rds_connection, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %c_proposed_version to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 769, ptr %c_proposed_version, align 4
  br label %return

return:                                           ; preds = %rcu_read_unlock.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_drop(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_connect_complete(ptr nocapture noundef readonly %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %0 = ptrtoint ptr %c_path to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c_path, align 4
  tail call void @rds_connect_path_complete(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_queue_reconnect(ptr noundef %cp) local_unnamed_addr #0 align 64 {
entry:
  %rand = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rand) #9
  %0 = ptrtoint ptr %rand to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rand, align 4, !annotation !66
  %1 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cp, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_queue_reconnect.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_queue_reconnect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 2
  %cp_reconnect_jiffies = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 17
  %3 = ptrtoint ptr %cp_reconnect_jiffies to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cp_reconnect_jiffies, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_queue_reconnect.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %2, ptr noundef %c_laddr, ptr noundef %c_faddr, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c_trans, align 4
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end8_crit_edge

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %do.end
  %c_laddr3 = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 1
  %c_faddr4 = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %c_laddr3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %c_laddr3, align 4
  %11 = ptrtoint ptr %c_faddr4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %c_faddr4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp3.not.i = icmp eq i32 %10, %12
  br i1 %cmp3.not.i, label %land.lhs.true.for.inc.i_crit_edge, label %if.then.i89

land.lhs.true.for.inc.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i89:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp8.i = icmp ult i32 %10, %12
  br i1 %cmp8.i, label %if.then.i89.if.end8_crit_edge, label %if.else.i

if.then.i89.if.end8_crit_edge:                    ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.i:                                        ; preds = %if.then.i89
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.i = icmp ugt i32 %10, %12
  br i1 %cmp10.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %land.lhs.true.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx2.1.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp3.not.1.i = icmp eq i32 %14, %16
  br i1 %cmp3.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8.1.i = icmp ult i32 %14, %16
  br i1 %cmp8.1.i, label %if.then.1.i.if.end8_crit_edge, label %if.else.1.i

if.then.1.i.if.end8_crit_edge:                    ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.1.i:                                      ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10.1.i = icmp ugt i32 %14, %16
  br i1 %cmp10.1.i, label %if.else.1.i.cleanup_crit_edge, label %if.else.1.i.for.inc.1.i_crit_edge

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.else.1.i.cleanup_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1.i:                                      ; preds = %if.else.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx2.2.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.not.2.i = icmp eq i32 %18, %20
  br i1 %cmp3.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp8.2.i = icmp ult i32 %18, %20
  br i1 %cmp8.2.i, label %if.then.2.i.if.end8_crit_edge, label %if.else.2.i

if.then.2.i.if.end8_crit_edge:                    ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.2.i:                                      ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp10.2.i = icmp ugt i32 %18, %20
  br i1 %cmp10.2.i, label %if.else.2.i.cleanup_crit_edge, label %if.else.2.i.for.inc.2.i_crit_edge

if.else.2.i.for.inc.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.else.2.i.cleanup_crit_edge:                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.i:                                      ; preds = %if.else.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 1, i32 0, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx2.3.i = getelementptr %struct.rds_connection, ptr %2, i32 0, i32 2, i32 0, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp8.3.i = icmp ult i32 %22, %24
  br i1 %cmp8.3.i, label %for.inc.2.i.if.end8_crit_edge, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %for.inc.2.i.if.end8_crit_edge, %if.then.2.i.if.end8_crit_edge, %if.then.1.i.if.end8_crit_edge, %if.then.i89.if.end8_crit_edge, %do.end.if.end8_crit_edge
  %cp_flags = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cp_flags) #9
  %cp_reconnect_jiffies9 = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 17
  %25 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cp_reconnect_jiffies9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp10 = icmp eq i32 %26, 0
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_reconnect_min_jiffies to i32))
  %27 = load i32, ptr @rds_sysctl_reconnect_min_jiffies, align 4
  %28 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cp_reconnect_jiffies9, align 8
  %29 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.then11.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then11.rcu_read_lock.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then11.rcu_read_lock.exit_crit_edge
  %33 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cp, align 8
  %c_net.i.i = getelementptr inbounds %struct.rds_connection, ptr %34, i32 0, i32 13
  %35 = ptrtoint ptr %c_net.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c_net.i.i, align 4
  %count.i.i = getelementptr inbounds %struct.net, ptr %36, i32 0, i32 14, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i, i32 noundef 4) #9
  %37 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.not.i = icmp eq i32 %38, 0
  br i1 %cmp.i.not.i, label %rcu_read_lock.exit.if.end17_crit_edge, label %lor.rhs.i

rcu_read_lock.exit.if.end17_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

lor.rhs.i:                                        ; preds = %rcu_read_lock.exit
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %34, i32 0, i32 8
  %39 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %c_trans.i, align 4
  %t_unloading.i = getelementptr inbounds %struct.rds_transport, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %t_unloading.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %t_unloading.i, align 4
  %tobool2.not.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i, label %lor.rhs.i.if.then15_crit_edge, label %rds_destroy_pending.exit

lor.rhs.i.if.then15_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

rds_destroy_pending.exit:                         ; preds = %lor.rhs.i
  %call5.i = tail call zeroext i1 %42(ptr noundef %34) #9
  br i1 %call5.i, label %rds_destroy_pending.exit.if.end17_crit_edge, label %rds_destroy_pending.exit.if.then15_crit_edge

rds_destroy_pending.exit.if.then15_crit_edge:     ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15

rds_destroy_pending.exit.if.end17_crit_edge:      ; preds = %rds_destroy_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %rds_destroy_pending.exit.if.then15_crit_edge, %lor.rhs.i.if.then15_crit_edge
  %43 = load ptr, ptr @rds_wq, align 4
  %cp_conn_w = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 20
  %call.i91 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %cp_conn_w, i32 noundef 0) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %rds_destroy_pending.exit.if.end17_crit_edge, %rcu_read_lock.exit.if.end17_crit_edge
  %call.i92 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i92, label %if.end17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i95

if.end17.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i95:                                ; preds = %if.end17
  %call1.i93 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93)
  %tobool.not.i94 = icmp eq i32 %call1.i93, 0
  br i1 %tobool.not.i94, label %land.lhs.true.i95.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i97

land.lhs.true.i95.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i97:                               ; preds = %land.lhs.true.i95
  %.b4.i96 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96, label %land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge, label %if.then.i98

land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i98:                                      ; preds = %land.lhs.true2.i97
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i98, %land.lhs.true2.i97.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i95.rcu_read_unlock.exit_crit_edge, %if.end17.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %44 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i99 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i99 to ptr
  %preempt_count.i.i.i.i100 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i100, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i100, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @get_random_bytes(ptr noundef nonnull %rand, i32 noundef 4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_queue_reconnect.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_queue_reconnect, %if.then31)) #9
          to label %do.end38 [label %if.then31], !srcloc !63

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %rand to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rand, align 4
  %50 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cp_reconnect_jiffies9, align 8
  %rem = urem i32 %49, %51
  %c_laddr34 = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 1
  %c_faddr35 = getelementptr inbounds %struct.rds_connection, ptr %2, i32 0, i32 2
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_queue_reconnect.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef %rem, i32 noundef %51, ptr noundef %2, ptr noundef %c_laddr34, ptr noundef %c_faddr35) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %if.end18
  %52 = call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i78 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %add.i.i.i80 = add i32 %55, 1
  store volatile i32 %add.i.i.i80, ptr %preempt_count.i.i.i.i79, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i81 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i81, label %do.end38.rcu_read_lock.exit88_crit_edge, label %land.lhs.true.i84

do.end38.rcu_read_lock.exit88_crit_edge:          ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit88

land.lhs.true.i84:                                ; preds = %do.end38
  %call1.i82 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i82)
  %tobool.not.i83 = icmp eq i32 %call1.i82, 0
  br i1 %tobool.not.i83, label %land.lhs.true.i84.rcu_read_lock.exit88_crit_edge, label %land.lhs.true2.i86

land.lhs.true.i84.rcu_read_lock.exit88_crit_edge: ; preds = %land.lhs.true.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit88

land.lhs.true2.i86:                               ; preds = %land.lhs.true.i84
  %.b4.i85 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i85, label %land.lhs.true2.i86.rcu_read_lock.exit88_crit_edge, label %if.then.i87

land.lhs.true2.i86.rcu_read_lock.exit88_crit_edge: ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit88

if.then.i87:                                      ; preds = %land.lhs.true2.i86
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 696, ptr noundef nonnull @.str.17) #9
  br label %rcu_read_lock.exit88

rcu_read_lock.exit88:                             ; preds = %if.then.i87, %land.lhs.true2.i86.rcu_read_lock.exit88_crit_edge, %land.lhs.true.i84.rcu_read_lock.exit88_crit_edge, %do.end38.rcu_read_lock.exit88_crit_edge
  %56 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cp, align 8
  %c_net.i.i101 = getelementptr inbounds %struct.rds_connection, ptr %57, i32 0, i32 13
  %58 = ptrtoint ptr %c_net.i.i101 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %c_net.i.i101, align 4
  %count.i.i102 = getelementptr inbounds %struct.net, ptr %59, i32 0, i32 14, i32 3
  %call.i.i.i.i.i103 = call zeroext i1 @__kasan_check_read(ptr noundef %count.i.i102, i32 noundef 4) #9
  %60 = ptrtoint ptr %count.i.i102 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %count.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.i.not.i104 = icmp eq i32 %61, 0
  br i1 %cmp.i.not.i104, label %rcu_read_lock.exit88.if.end46_crit_edge, label %lor.rhs.i108

rcu_read_lock.exit88.if.end46_crit_edge:          ; preds = %rcu_read_lock.exit88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

lor.rhs.i108:                                     ; preds = %rcu_read_lock.exit88
  %c_trans.i105 = getelementptr inbounds %struct.rds_connection, ptr %57, i32 0, i32 8
  %62 = ptrtoint ptr %c_trans.i105 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %c_trans.i105, align 4
  %t_unloading.i106 = getelementptr inbounds %struct.rds_transport, ptr %63, i32 0, i32 27
  %64 = ptrtoint ptr %t_unloading.i106 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %t_unloading.i106, align 4
  %tobool2.not.i107 = icmp eq ptr %65, null
  br i1 %tobool2.not.i107, label %lor.rhs.i108.if.then41_crit_edge, label %rds_destroy_pending.exit111

lor.rhs.i108.if.then41_crit_edge:                 ; preds = %lor.rhs.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

rds_destroy_pending.exit111:                      ; preds = %lor.rhs.i108
  %call5.i109 = call zeroext i1 %65(ptr noundef %57) #9
  br i1 %call5.i109, label %rds_destroy_pending.exit111.if.end46_crit_edge, label %rds_destroy_pending.exit111.if.then41_crit_edge

rds_destroy_pending.exit111.if.then41_crit_edge:  ; preds = %rds_destroy_pending.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

rds_destroy_pending.exit111.if.end46_crit_edge:   ; preds = %rds_destroy_pending.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then41:                                        ; preds = %rds_destroy_pending.exit111.if.then41_crit_edge, %lor.rhs.i108.if.then41_crit_edge
  %66 = load ptr, ptr @rds_wq, align 4
  %cp_conn_w42 = getelementptr inbounds %struct.rds_conn_path, ptr %cp, i32 0, i32 20
  %67 = ptrtoint ptr %rand to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rand, align 4
  %69 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cp_reconnect_jiffies9, align 8
  %rem44 = urem i32 %68, %70
  %call.i112 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %66, ptr noundef %cp_conn_w42, i32 noundef %rem44) #9
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %rds_destroy_pending.exit111.if.end46_crit_edge, %rcu_read_lock.exit88.if.end46_crit_edge
  %call.i113 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i113, label %if.end46.rcu_read_unlock.exit123_crit_edge, label %land.lhs.true.i116

if.end46.rcu_read_unlock.exit123_crit_edge:       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit123

land.lhs.true.i116:                               ; preds = %if.end46
  %call1.i114 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool.not.i115, label %land.lhs.true.i116.rcu_read_unlock.exit123_crit_edge, label %land.lhs.true2.i118

land.lhs.true.i116.rcu_read_unlock.exit123_crit_edge: ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit123

land.lhs.true2.i118:                              ; preds = %land.lhs.true.i116
  %.b4.i117 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i117, label %land.lhs.true2.i118.rcu_read_unlock.exit123_crit_edge, label %if.then.i119

land.lhs.true2.i118.rcu_read_unlock.exit123_crit_edge: ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit123

if.then.i119:                                     ; preds = %land.lhs.true2.i118
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 724, ptr noundef nonnull @.str.18) #9
  br label %rcu_read_unlock.exit123

rcu_read_unlock.exit123:                          ; preds = %if.then.i119, %land.lhs.true2.i118.rcu_read_unlock.exit123_crit_edge, %land.lhs.true.i116.rcu_read_unlock.exit123_crit_edge, %if.end46.rcu_read_unlock.exit123_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %71 = call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i.i.i120 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i120 to ptr
  %preempt_count.i.i.i.i121 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i121, align 4
  %sub.i.i.i122 = add i32 %74, -1
  store volatile i32 %sub.i.i.i122, ptr %preempt_count.i.i.i.i121, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %75 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cp_reconnect_jiffies9, align 8
  %mul = shl i32 %76, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_reconnect_max_jiffies to i32))
  %77 = load i32, ptr @rds_sysctl_reconnect_max_jiffies, align 4
  %78 = call i32 @llvm.umin.i32(i32 %mul, i32 %77)
  %79 = ptrtoint ptr %cp_reconnect_jiffies9 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %cp_reconnect_jiffies9, align 8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit123, %rcu_read_unlock.exit, %for.inc.2.i.cleanup_crit_edge, %if.else.2.i.cleanup_crit_edge, %if.else.1.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rand) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_addr_cmp(ptr nocapture noundef readonly %addr1, ptr nocapture noundef readonly %addr2) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr1, align 4
  %2 = ptrtoint ptr %addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp3.not = icmp eq i32 %1, %3
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp8 = icmp ult i32 %1, %3
  br i1 %cmp8, label %if.then.cleanup_crit_edge, label %if.else

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp10 = icmp ugt i32 %1, %3
  br i1 %cmp10, label %if.else.cleanup_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [4 x i32], ptr %addr1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr [4 x i32], ptr %addr2, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.1 = icmp eq i32 %5, %7
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8.1 = icmp ult i32 %5, %7
  br i1 %cmp8.1, label %if.then.1.cleanup_crit_edge, label %if.else.1

if.then.1.cleanup_crit_edge:                      ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.1:                                        ; preds = %if.then.1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp10.1 = icmp ugt i32 %5, %7
  br i1 %cmp10.1, label %if.else.1.cleanup_crit_edge, label %if.else.1.for.inc.1_crit_edge

if.else.1.for.inc.1_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.else.1.cleanup_crit_edge:                      ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1:                                        ; preds = %if.else.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [4 x i32], ptr %addr1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr [4 x i32], ptr %addr2, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.not.2 = icmp eq i32 %9, %11
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8.2 = icmp ult i32 %9, %11
  br i1 %cmp8.2, label %if.then.2.cleanup_crit_edge, label %if.else.2

if.then.2.cleanup_crit_edge:                      ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.2:                                        ; preds = %if.then.2
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.2 = icmp ugt i32 %9, %11
  br i1 %cmp10.2, label %if.else.2.cleanup_crit_edge, label %if.else.2.for.inc.2_crit_edge

if.else.2.for.inc.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.else.2.cleanup_crit_edge:                      ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2:                                        ; preds = %if.else.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [4 x i32], ptr %addr1, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr [4 x i32], ptr %addr2, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp3.not.3 = icmp eq i32 %13, %15
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp8.3 = icmp ult i32 %13, %15
  br i1 %cmp8.3, label %if.then.3.cleanup_crit_edge, label %if.else.3

if.then.3.cleanup_crit_edge:                      ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.3:                                        ; preds = %if.then.3
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10.3 = icmp ugt i32 %13, %15
  br i1 %cmp10.3, label %if.else.3.cleanup_crit_edge, label %if.else.3.for.inc.3_crit_edge

if.else.3.for.inc.3_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3

if.else.3.cleanup_crit_edge:                      ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.3:                                        ; preds = %if.else.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %if.else.3.cleanup_crit_edge, %if.then.3.cleanup_crit_edge, %if.else.2.cleanup_crit_edge, %if.then.2.cleanup_crit_edge, %if.else.1.cleanup_crit_edge, %if.then.1.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ -1, %if.then.1.cleanup_crit_edge ], [ 1, %if.else.1.cleanup_crit_edge ], [ -1, %if.then.2.cleanup_crit_edge ], [ 1, %if.else.2.cleanup_crit_edge ], [ -1, %if.then.3.cleanup_crit_edge ], [ 1, %if.else.3.cleanup_crit_edge ], [ 0, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_connect_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -332
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %cp_index = getelementptr i8, ptr %work, i32 296
  %2 = ptrtoint ptr %cp_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cp_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %c_laddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %c_laddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c_laddr, align 4
  %6 = ptrtoint ptr %c_faddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %c_faddr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not.i = icmp eq i32 %5, %7
  br i1 %cmp3.not.i, label %land.lhs.true.for.inc.i_crit_edge, label %if.then.i

land.lhs.true.for.inc.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp8.i = icmp ult i32 %5, %7
  br i1 %cmp8.i, label %if.then.i.if.end_crit_edge, label %if.else.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp10.i = icmp ugt i32 %5, %7
  br i1 %cmp10.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.for.inc.i_crit_edge

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %land.lhs.true.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx2.1.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3.not.1.i = icmp eq i32 %9, %11
  br i1 %cmp3.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8.1.i = icmp ult i32 %9, %11
  br i1 %cmp8.1.i, label %if.then.1.i.if.end_crit_edge, label %if.else.1.i

if.then.1.i.if.end_crit_edge:                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.1.i:                                      ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.1.i = icmp ugt i32 %9, %11
  br i1 %cmp10.1.i, label %if.else.1.i.cleanup_crit_edge, label %if.else.1.i.for.inc.1.i_crit_edge

if.else.1.i.for.inc.1.i_crit_edge:                ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.else.1.i.cleanup_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.1.i:                                      ; preds = %if.else.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx2.2.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp3.not.2.i = icmp eq i32 %13, %15
  br i1 %cmp3.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.then.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp8.2.i = icmp ult i32 %13, %15
  br i1 %cmp8.2.i, label %if.then.2.i.if.end_crit_edge, label %if.else.2.i

if.then.2.i.if.end_crit_edge:                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.2.i:                                      ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10.2.i = icmp ugt i32 %13, %15
  br i1 %cmp10.2.i, label %if.else.2.i.cleanup_crit_edge, label %if.else.2.i.for.inc.2.i_crit_edge

if.else.2.i.for.inc.2.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.else.2.i.cleanup_crit_edge:                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.i:                                      ; preds = %if.else.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 1, i32 0, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx2.3.i = getelementptr %struct.rds_connection, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx2.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp8.3.i = icmp ult i32 %17, %19
  br i1 %cmp8.3.i, label %for.inc.2.i.if.end_crit_edge, label %for.inc.2.i.cleanup_crit_edge

for.inc.2.i.cleanup_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.2.i.if.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.inc.2.i.if.end_crit_edge, %if.then.2.i.if.end_crit_edge, %if.then.1.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %cp_flags = getelementptr i8, ptr %work, i32 -208
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %cp_flags) #9
  %cp_state.i = getelementptr i8, ptr %work, i32 -216
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %cp_state.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.end
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i, ptr %cp_state.i, i32 0, i32 1, ptr elementtype(i32) %cp_state.i) #9, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %rds_conn_path_transition.exit, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

rds_conn_path_transition.exit:                    ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %20, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i.i)
  %cmp.i.not = icmp eq i32 %asmresult3.i.i.i.i, 0
  br i1 %cmp.i.not, label %if.then5, label %rds_conn_path_transition.exit.cleanup_crit_edge

rds_conn_path_transition.exit.cleanup_crit_edge:  ; preds = %rds_conn_path_transition.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %rds_conn_path_transition.exit
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c_trans, align 4
  %conn_path_connect = getelementptr inbounds %struct.rds_transport, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %conn_path_connect to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %conn_path_connect, align 4
  %call6 = tail call i32 %24(ptr noundef %add.ptr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_connect_worker.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_connect_worker, %if.then12)) #9
          to label %do.end [label %if.then12], !srcloc !63

if.then12:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %c_laddr13 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 1
  %c_faddr14 = getelementptr inbounds %struct.rds_connection, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_connect_worker.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef %c_laddr13, ptr noundef %c_faddr14, i32 noundef %call6) #9
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool16.not = icmp eq i32 %call6, 0
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.then17

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %do.end
  %call.i.i.i42 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cp_state.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %cp_state.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i45

do.body.i.i.i.i45:                                ; preds = %do.body.i.i.i.i45.do.body.i.i.i.i45_crit_edge, %if.then17
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %cp_state.i, ptr %cp_state.i, i32 1, i32 0, ptr elementtype(i32) %cp_state.i) #9, !srcloc !61
  %asmresult.i.i.i.i43 = extractvalue { i32, i32 } %25, 0
  %tobool.not.i.i.i.i44 = icmp eq i32 %asmresult.i.i.i.i43, 0
  br i1 %tobool.not.i.i.i.i44, label %rds_conn_path_transition.exit49, label %do.body.i.i.i.i45.do.body.i.i.i.i45_crit_edge

do.body.i.i.i.i45.do.body.i.i.i.i45_crit_edge:    ; preds = %do.body.i.i.i.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i45

rds_conn_path_transition.exit49:                  ; preds = %do.body.i.i.i.i45
  %asmresult3.i.i.i.i46 = extractvalue { i32, i32 } %25, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i.i46)
  %cmp.i47.not = icmp eq i32 %asmresult3.i.i.i.i46, 1
  br i1 %cmp.i47.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %rds_conn_path_transition.exit49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rds_queue_reconnect(ptr noundef %add.ptr)
  br label %cleanup

if.else:                                          ; preds = %rds_conn_path_transition.exit49
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__rds_conn_path_error(ptr noundef %add.ptr, ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %do.end.cleanup_crit_edge, %rds_conn_path_transition.exit.cleanup_crit_edge, %for.inc.2.i.cleanup_crit_edge, %if.else.2.i.cleanup_crit_edge, %if.else.1.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_conn_path_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_send_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -132
  %cp_state.i = getelementptr i8, ptr %work, i32 -16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end51_crit_edge

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then:                                          ; preds = %entry
  %cp_flags = getelementptr i8, ptr %work, i32 -8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %cp_flags) #9
  %call1 = tail call i32 @rds_send_xmit(ptr noundef %add.ptr) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_send_worker.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_send_worker, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !63

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_send_worker.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %3, i32 noundef %call1) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1, label %do.end.if.end51_crit_edge [
    i32 -11, label %do.body10
    i32 -12, label %do.body28
  ]

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %8, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %9 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add = add i32 %14, ptrtoint (ptr @rds_stats to i32)
  %15 = inttoptr i32 %add to ptr
  %s_send_immediate_retry = getelementptr inbounds %struct.rds_statistics, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %s_send_immediate_retry to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %s_send_immediate_retry, align 8
  %inc = add i64 %17, 1
  store i64 %inc, ptr %s_send_immediate_retry, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  br label %if.end51.sink.split

do.body28:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i60 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i60 to ptr
  %preempt_count.i.i61 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i61, align 4
  %add.i62 = add i32 %21, 1
  store volatile i32 %add.i62, ptr %preempt_count.i.i61, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %22 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i67 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i67 to ptr
  %cpu40 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu40, align 4
  %arrayidx41 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %27, ptrtoint (ptr @rds_stats to i32)
  %28 = inttoptr i32 %add42 to ptr
  %s_send_delayed_retry = getelementptr inbounds %struct.rds_statistics, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %s_send_delayed_retry to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %s_send_delayed_retry, align 8
  %inc43 = add i64 %30, 1
  store i64 %inc43, ptr %s_send_delayed_retry, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !70
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %do.body28, %do.body10
  %.sink70 = phi i32 [ 0, %do.body10 ], [ 2, %do.body28 ]
  %31 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i63 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i63 to ptr
  %preempt_count.i.i64 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i64 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i64, align 4
  %sub.i = add i32 %34, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i64, align 4
  %35 = load ptr, ptr @rds_wq, align 4
  %call.i66 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work, i32 noundef %.sink70) #9
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %do.end.if.end51_crit_edge, %entry.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_send_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_recv_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -232
  %cp_state.i = getelementptr i8, ptr %work, i32 -116
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cp_state.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %cp_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end50_crit_edge

entry.if.end50_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_trans, align 4
  %recv_path = getelementptr inbounds %struct.rds_transport, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %recv_path to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %recv_path, align 4
  %call1 = tail call i32 %7(ptr noundef %add.ptr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recv_worker.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_worker, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !63

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recv_worker.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef %9, i32 noundef %call1) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  %10 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call1, label %do.end.if.end50_crit_edge [
    i32 -11, label %do.body9
    i32 -12, label %do.body27
  ]

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !71
  %15 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, ptrtoint (ptr @rds_stats to i32)
  %21 = inttoptr i32 %add to ptr
  %s_recv_immediate_retry = getelementptr inbounds %struct.rds_statistics, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %s_recv_immediate_retry to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_recv_immediate_retry, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %s_recv_immediate_retry, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !72
  br label %if.end50.sink.split

do.body27:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %24 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i59 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i59 to ptr
  %preempt_count.i.i60 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i60, align 4
  %add.i61 = add i32 %27, 1
  store volatile i32 %add.i61, ptr %preempt_count.i.i60, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  %28 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i65 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i65 to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu39, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %33, ptrtoint (ptr @rds_stats to i32)
  %34 = inttoptr i32 %add41 to ptr
  %s_recv_delayed_retry = getelementptr inbounds %struct.rds_statistics, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %s_recv_delayed_retry to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %s_recv_delayed_retry, align 8
  %inc42 = add i64 %36, 1
  store i64 %inc42, ptr %s_recv_delayed_retry, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %do.body27, %do.body9
  %.sink68 = phi i32 [ 0, %do.body9 ], [ 2, %do.body27 ]
  %37 = tail call i32 @llvm.read_register.i32(metadata !50) #9
  %and.i.i.i62 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i62 to ptr
  %preempt_count.i.i63 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i63 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i63, align 4
  %sub.i = add i32 %40, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i63, align 4
  %41 = load ptr, ptr @rds_wq, align 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %work, i32 noundef %.sink68) #9
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %do.end.if.end50_crit_edge, %entry.if.end50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_shutdown_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -432
  tail call void @rds_conn_shutdown(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_threads_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rds_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_threads_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.15) #9
  store ptr %call, ptr @rds_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !43, !45, !46, !47, !49}
!llvm.named.register.sp = !{!50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__ksymtab_rds_wq, !1, !"__ksymtab_rds_wq", i1 false, i1 false}
!1 = !{!"../net/rds/threads.c", i32 72, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/rds/threads.c", i32 77, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rds_connect_path_complete._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rds_connect_path_complete._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/threads.c", i32 85, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rds_connect_path_complete.__UNIQUE_ID_ddebug544, !9, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!12 = !{ptr @__ksymtab_rds_connect_path_complete, !13, !"__ksymtab_rds_connect_path_complete", i1 false, i1 false}
!13 = !{!"../net/rds/threads.c", i32 98, i32 1}
!14 = !{ptr @__ksymtab_rds_connect_complete, !15, !"__ksymtab_rds_connect_complete", i1 false, i1 false}
!15 = !{!"../net/rds/threads.c", i32 104, i32 1}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/threads.c", i32 129, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rds_queue_reconnect.__UNIQUE_ID_ddebug545, !17, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/rds/threads.c", i32 149, i32 2}
!22 = !{ptr @rds_queue_reconnect.__UNIQUE_ID_ddebug546, !21, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/rds/threads.c", i32 177, i32 3}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rds_connect_worker.__UNIQUE_ID_ddebug549, !24, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rds/threads.c", i32 186, i32 5}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rds/threads.c", i32 202, i32 3}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rds_send_worker.__UNIQUE_ID_ddebug550, !30, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/threads.c", i32 227, i32 3}
!35 = !{ptr @rds_recv_worker.__UNIQUE_ID_ddebug551, !34, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rds/threads.c", i32 259, i32 11}
!38 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @__ksymtab_rds_addr_cmp, !40, !"__ksymtab_rds_addr_cmp", i1 false, i1 false}
!40 = !{!"../net/rds/threads.c", i32 311, i32 1}
!41 = !{ptr @rds_wq, !42, !"rds_wq", i1 false, i1 false}
!42 = !{!"../net/rds/threads.c", i32 71, i32 26}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{!"sp"}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148318651}
!61 = !{i64 700564, i64 700588, i64 700609, i64 700626, i64 700643}
!62 = !{i64 2148318877}
!63 = !{i64 2148698643, i64 2148698648, i64 2148698661, i64 2148698705, i64 2148698739, i64 2148698760}
!64 = !{i64 2149418438}
!65 = !{i64 2149418704}
!66 = !{!"auto-init"}
!67 = !{i64 2158219501}
!68 = !{i64 2158219674}
!69 = !{i64 2158221478}
!70 = !{i64 2158221651}
!71 = !{i64 2158227129}
!72 = !{i64 2158227302}
!73 = !{i64 2158229106}
!74 = !{i64 2158229279}
