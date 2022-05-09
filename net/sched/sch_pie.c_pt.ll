; ModuleID = '/llk/IR_all_yes/net/sched/sch_pie.c_pt.bc'
source_filename = "../net/sched/sch_pie.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pie_drop_early\22, \22a\22\09"
module asm "\09.weak\09__crc_pie_drop_early\09\09\09\09"
module asm "\09.long\09__crc_pie_drop_early\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pie_drop_early:\09\09\09\09\09"
module asm "\09.asciz \09\22pie_drop_early\22\09\09\09\09\09"
module asm "__kstrtabns_pie_drop_early:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pie_process_dequeue\22, \22a\22\09"
module asm "\09.weak\09__crc_pie_process_dequeue\09\09\09\09"
module asm "\09.long\09__crc_pie_process_dequeue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pie_process_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22pie_process_dequeue\22\09\09\09\09\09"
module asm "__kstrtabns_pie_process_dequeue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pie_calculate_probability\22, \22a\22\09"
module asm "\09.weak\09__crc_pie_calculate_probability\09\09\09\09"
module asm "\09.long\09__crc_pie_calculate_probability\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pie_calculate_probability:\09\09\09\09\09"
module asm "\09.asciz \09\22pie_calculate_probability\22\09\09\09\09\09"
module asm "__kstrtabns_pie_calculate_probability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.pie_vars = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.127, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.127 = type { ptr }
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
%struct.pie_params = type { i64, i32, i32, i32, i32, i8, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.128, %union.anon.129, [48 x i8], %union.anon.130, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.132, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.128 = type { ptr }
%union.anon.129 = type { i64 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, ptr }
%union.anon.132 = type { %struct.anon.133 }
%struct.anon.133 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.134, i32, i32, i32, i16, i16, %union.anon.136, i32, %union.anon.137, %union.anon.138, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.134 = type { i32 }
%union.anon.136 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i16 }
%struct.vlan_hdr = type { i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff_list = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.tc_pie_xstats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_pie_drop_early = external dso_local constant [0 x i8], align 1
@__kstrtabns_pie_drop_early = external dso_local constant [0 x i8], align 1
@__ksymtab_pie_drop_early = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pie_drop_early to i32), ptr @__kstrtab_pie_drop_early, ptr @__kstrtabns_pie_drop_early }, section "___ksymtab_gpl+pie_drop_early", align 4
@__kstrtab_pie_process_dequeue = external dso_local constant [0 x i8], align 1
@__kstrtabns_pie_process_dequeue = external dso_local constant [0 x i8], align 1
@__ksymtab_pie_process_dequeue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pie_process_dequeue to i32), ptr @__kstrtab_pie_process_dequeue, ptr @__kstrtabns_pie_process_dequeue }, section "___ksymtab_gpl+pie_process_dequeue", align 4
@__kstrtab_pie_calculate_probability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pie_calculate_probability = external dso_local constant [0 x i8], align 1
@__ksymtab_pie_calculate_probability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pie_calculate_probability to i32), ptr @__kstrtab_pie_calculate_probability, ptr @__kstrtabns_pie_calculate_probability }, section "___ksymtab_gpl+pie_calculate_probability", align 4
@pie_qdisc_ops = internal global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"pie\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 168, i32 0, ptr @pie_qdisc_enqueue, ptr @pie_qdisc_dequeue, ptr @qdisc_peek_dequeued, ptr @pie_init, ptr @pie_reset, ptr @pie_destroy, ptr @pie_change, ptr null, ptr null, ptr null, ptr @pie_dump, ptr @pie_dump_stats, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__initcall__kmod_sch_pie__497_570_pie_module_init6 = internal global ptr @pie_module_init, section ".initcall6.init", align 4
@__exitcall_pie_module_exit = internal global ptr @pie_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description498 = internal constant [78 x i8] c"sch_pie.description=Proportional Integral controller Enhanced (PIE) scheduler\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [33 x i8] c"sch_pie.author=Vijay Subramanian\00", section ".modinfo", align 1
@__UNIQUE_ID_author500 = internal constant [30 x i8] c"sch_pie.author=Mythili Prabhu\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [31 x i8] c"sch_pie.file=net/sched/sch_pie\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [20 x i8] c"sch_pie.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@pie_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&q->adapt_timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@pie_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.9 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 598, i32 8 }
@___asan_gen_.12 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 271, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 448, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 1165, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"pie_policy\00", align 1
@___asan_gen_.27 = private constant [23 x i8] c"../net/sched/sch_pie.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 127, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 991, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_license502, ptr @__exitcall_pie_module_exit, ptr @__initcall__kmod_sch_pie__497_570_pie_module_init6, ptr @__ksymtab_pie_calculate_probability, ptr @__ksymtab_pie_drop_early, ptr @__ksymtab_pie_process_dequeue, ptr @pie_module_exit, ptr @.str, ptr @.str.1, ptr @pie_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pie_policy, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pie_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pie_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @pie_drop_early(ptr nocapture noundef readonly %sch, ptr nocapture noundef readonly %params, ptr nocapture noundef %vars, i32 noundef %backlog, i32 noundef %packet_size) #0 align 64 {
entry:
  %rnd = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rnd) #9
  %0 = ptrtoint ptr %rnd to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %rnd, align 8, !annotation !49
  %prob = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 4
  %1 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %prob, align 8
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %3 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_queue.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mtu.i, align 4
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %9 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %10 to i32
  %add.i = add i32 %8, %conv.i
  %burst_time = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 2
  %11 = ptrtoint ptr %burst_time to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %burst_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.not = icmp eq i64 %12, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %vars to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vars, align 8
  %15 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %params, align 8
  %div58 = lshr i64 %16, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %div58)
  %cmp2 = icmp ult i64 %14, %div58
  br i1 %cmp2, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 14411518807585587, i64 %2)
  %cmp4 = icmp ult i64 %2, 14411518807585587
  %mul = shl i32 %add.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %backlog)
  %cmp7 = icmp ugt i32 %mul, %backlog
  %or.cond59 = select i1 %cmp4, i1 true, i1 %cmp7
  br i1 %or.cond59, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mul.old = shl i32 %add.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.old, i32 %backlog)
  %cmp7.old = icmp ugt i32 %mul.old, %backlog
  br i1 %cmp7.old, label %if.end6.cleanup_crit_edge, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge
  %bytemode = getelementptr inbounds %struct.pie_params, ptr %params, i32 0, i32 6
  %17 = ptrtoint ptr %bytemode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bytemode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %packet_size)
  %cmp11.not = icmp ult i32 %add.i, %packet_size
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp11.not
  br i1 %or.cond, label %if.end9.if.end18_crit_edge, label %if.then13

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then13:                                        ; preds = %if.end9
  %conv14 = zext i32 %packet_size to i64
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %2)
  %cmp164.i.i = icmp ult i64 %2, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !50

if.then168.i.i:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %2 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add.i
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %2) #12, !srcloc !51
  %asmresult1.i.i.i = extractvalue { i64, i64 } %19, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %mul16 = mul i64 %dividend.addr.0.i.i, %conv14
  br label %if.end18

if.end18:                                         ; preds = %div_u64.exit, %if.end9.if.end18_crit_edge
  %local_prob.0 = phi i64 [ %mul16, %div_u64.exit ], [ %2, %if.end9.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %local_prob.0)
  %cmp19 = icmp eq i64 %local_prob.0, 0
  %accu_prob = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 5
  br i1 %cmp19, label %if.end18.if.end24_crit_edge, label %if.else22

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.else22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %accu_prob to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %accu_prob, align 8
  %add = add i64 %21, %local_prob.0
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.end18.if.end24_crit_edge
  %add.sink = phi i64 [ %add, %if.else22 ], [ 0, %if.end18.if.end24_crit_edge ]
  %22 = ptrtoint ptr %accu_prob to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %add.sink, ptr %accu_prob, align 8
  %accu_prob25 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp8(i64 61248954932238715, i64 %add.sink)
  %cmp26 = icmp ult i64 %add.sink, 61248954932238715
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp8(i64 612489549322387438, i64 %add.sink)
  %cmp31 = icmp ugt i64 %add.sink, 612489549322387438
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @prandom_bytes(ptr noundef nonnull %rnd, i32 noundef 8) #9
  %23 = ptrtoint ptr %rnd to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rnd, align 8
  %shr = lshr i64 %24, 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr, i64 %local_prob.0)
  %cmp35 = icmp ult i64 %shr, %local_prob.0
  br i1 %cmp35, label %if.then37, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %accu_prob25 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %accu_prob25, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then37 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %if.end6.cleanup_crit_edge ], [ false, %if.end24.cleanup_crit_edge ], [ true, %if.end29.cleanup_crit_edge ], [ false, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rnd) #9
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pie_process_dequeue(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %params, ptr nocapture noundef %vars, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i64 @ktime_get() #9
  %shr.i = lshr i64 %call.i.i, 6
  %dq_rate_estimator = getelementptr inbounds %struct.pie_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data.i.i, align 8
  %sub = sub i64 %shr.i, %3
  %4 = ptrtoint ptr %vars to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %sub, ptr %vars, align 8
  %dq_tstamp = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 3
  %5 = ptrtoint ptr %dq_tstamp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %dq_tstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp.not = icmp eq i64 %6, -1
  %sub4 = sub i64 %shr.i, %6
  %conv = trunc i64 %sub4 to i32
  %7 = ptrtoint ptr %dq_tstamp to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %shr.i, ptr %dq_tstamp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backlog)
  %cmp6 = icmp eq i32 %backlog, 0
  br i1 %cmp6, label %if.then8, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %vars to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %vars, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.then.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %cmp11128 = icmp eq i32 %conv, 0
  %cmp11 = select i1 %cmp.not, i1 true, i1 %cmp11128
  br i1 %cmp11, label %if.end10.cleanup81_crit_edge, label %if.end10.burst_allowance_reduction_crit_edge

if.end10.burst_allowance_reduction_crit_edge:     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %burst_allowance_reduction

if.end10.cleanup81_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %backlog)
  %cmp16 = icmp ugt i32 %backlog, 16383
  br i1 %cmp16, label %land.lhs.true, label %if.end15.if.end24_crit_edge

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end15
  %dq_count = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 6
  %9 = ptrtoint ptr %dq_count to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dq_count, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp18 = icmp eq i64 %10, -1
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i124 = tail call i64 @ktime_get() #9
  %shr.i125 = lshr i64 %call.i.i124, 6
  %dq_tstamp22 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 3
  %11 = ptrtoint ptr %dq_tstamp22 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shr.i125, ptr %dq_tstamp22, align 8
  %12 = ptrtoint ptr %dq_count to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %dq_count, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %land.lhs.true.if.end24_crit_edge, %if.end15.if.end24_crit_edge
  %dq_count25 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 6
  %13 = ptrtoint ptr %dq_count25 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dq_count25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp26.not = icmp eq i64 %14, -1
  br i1 %cmp26.not, label %if.end24.cleanup81_crit_edge, label %if.then28

if.end24.cleanup81_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.then28:                                        ; preds = %if.end24
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %conv29 = zext i32 %16 to i64
  %add = add i64 %14, %conv29
  %17 = ptrtoint ptr %dq_count25 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add, ptr %dq_count25, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16383, i64 %add)
  %cmp32 = icmp ugt i64 %add, 16383
  br i1 %cmp32, label %if.then34, label %if.then28.cleanup81_crit_edge

if.then28.cleanup81_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.then34:                                        ; preds = %if.then28
  %dq_tstamp37 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 3
  %18 = ptrtoint ptr %dq_tstamp37 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dq_tstamp37, align 8
  %sub38 = sub i64 %shr.i, %19
  %conv39 = trunc i64 %sub38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv39)
  %cmp40 = icmp eq i32 %conv39, 0
  br i1 %cmp40, label %if.then34.cleanup81_crit_edge, label %if.end43

if.then34.cleanup81_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.end43:                                         ; preds = %if.then34
  %add.tr = trunc i64 %add to i32
  %conv36 = shl i32 %add.tr, 8
  %div = udiv i32 %conv36, %conv39
  %avg_dq_rate = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 7
  %20 = ptrtoint ptr %avg_dq_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %avg_dq_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp44 = icmp eq i32 %21, 0
  %shr = lshr i32 %21, 3
  %shr51 = lshr i32 %div, 3
  %sub50 = add i32 %shr51, %21
  %add52 = sub i32 %sub50, %shr
  %storemerge = select i1 %cmp44, i32 %div, i32 %add52
  %22 = ptrtoint ptr %avg_dq_rate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %avg_dq_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %backlog)
  %cmp55 = icmp ult i32 %backlog, 16384
  br i1 %cmp55, label %if.then57, label %if.else59

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dq_count25 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 -1, ptr %dq_count25, align 8
  br label %burst_allowance_reduction

if.else59:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %dq_count25 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %dq_count25, align 8
  %call.i.i126 = tail call i64 @ktime_get() #9
  %shr.i127 = lshr i64 %call.i.i126, 6
  %25 = ptrtoint ptr %dq_tstamp37 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %shr.i127, ptr %dq_tstamp37, align 8
  br label %burst_allowance_reduction

burst_allowance_reduction:                        ; preds = %if.else59, %if.then57, %if.end10.burst_allowance_reduction_crit_edge
  %dtime.1 = phi i32 [ %conv, %if.end10.burst_allowance_reduction_crit_edge ], [ %conv39, %if.then57 ], [ %conv39, %if.else59 ]
  %burst_time = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 2
  %26 = ptrtoint ptr %burst_time to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %burst_time, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %27)
  %cmp66.not = icmp eq i64 %27, 0
  br i1 %cmp66.not, label %burst_allowance_reduction.cleanup81_crit_edge, label %if.then68

burst_allowance_reduction.cleanup81_crit_edge:    ; preds = %burst_allowance_reduction
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup81

if.then68:                                        ; preds = %burst_allowance_reduction
  call void @__sanitizer_cov_trace_pc() #11
  %conv70 = zext i32 %dtime.1 to i64
  %28 = call i64 @llvm.usub.sat.i64(i64 %27, i64 %conv70)
  %29 = ptrtoint ptr %burst_time to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %burst_time, align 8
  br label %cleanup81

cleanup81:                                        ; preds = %if.then68, %burst_allowance_reduction.cleanup81_crit_edge, %if.then34.cleanup81_crit_edge, %if.then28.cleanup81_crit_edge, %if.end24.cleanup81_crit_edge, %if.end10.cleanup81_crit_edge
  ret void
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pie_calculate_probability(ptr nocapture noundef readonly %params, ptr nocapture noundef %vars, i32 noundef %backlog) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dq_rate_estimator = getelementptr inbounds %struct.pie_params, ptr %params, i32 0, i32 7
  %0 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %vars to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %vars, align 8
  %qdelay_old8 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 1
  br i1 %tobool.not, label %if.else6, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %qdelay_old8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %qdelay_old8, align 8
  %avg_dq_rate = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 7
  %5 = ptrtoint ptr %avg_dq_rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %avg_dq_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.then.if.end9_crit_edge, label %if.then4

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 %backlog, 8
  %div = udiv i32 %shl, %6
  %conv = zext i32 %div to i64
  br label %if.end9

if.else6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %qdelay_old8 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %qdelay_old8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4, %if.then.if.end9_crit_edge
  %qdelay.0 = phi i64 [ %conv, %if.then4 ], [ %3, %if.else6 ], [ 0, %if.then.if.end9_crit_edge ]
  %qdelay_old.0 = phi i64 [ %3, %if.then4 ], [ %8, %if.else6 ], [ %3, %if.then.if.end9_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %qdelay.0)
  %cmp10 = icmp eq i64 %qdelay.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backlog)
  %cmp12.not = icmp ne i32 %backlog, 0
  %9 = and i1 %cmp12.not, %cmp10
  %alpha16 = getelementptr inbounds %struct.pie_params, ptr %params, i32 0, i32 3
  %10 = ptrtoint ptr %alpha16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alpha16, align 8
  %conv17 = zext i32 %11 to i64
  %mul = mul i64 %conv17, 4611686018
  %shr = lshr i64 %mul, 4
  %beta18 = getelementptr inbounds %struct.pie_params, ptr %params, i32 0, i32 4
  %12 = ptrtoint ptr %beta18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %beta18, align 4
  %conv19 = zext i32 %13 to i64
  %mul20 = mul i64 %conv19, 4611686018
  %shr21 = lshr i64 %mul20, 4
  %prob = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 4
  %14 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %prob, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7205759403792793, i64 %15)
  %cmp22 = icmp ult i64 %15, 7205759403792793
  br i1 %cmp22, label %if.else162.i.i, label %if.end9.if.end35_crit_edge

if.end9.if.end35_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.else162.i.i:                                   ; preds = %if.end9
  %shr26 = lshr i64 %mul20, 5
  %shr25 = lshr i64 %mul, 5
  %16 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 100, i64 72057594037927935) #12, !srcloc !51
  %asmresult1.i.i.i = extractvalue { i64, i64 } %16, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %asmresult1.i.i.i)
  %cmp28 = icmp ult i64 %15, %asmresult1.i.i.i
  br i1 %cmp28, label %while.body, label %if.else162.i.i.if.end35_crit_edge

if.else162.i.i.if.end35_crit_edge:                ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.body:                                       ; preds = %if.else162.i.i
  %shr32 = lshr i64 %mul, 7
  %shr33 = lshr i64 %mul20, 7
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 1000, i64 72057594037927935) #12, !srcloc !51
  %asmresult1.i.i.i.1 = extractvalue { i64, i64 } %17, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %asmresult1.i.i.i.1)
  %cmp28.1 = icmp ult i64 %15, %asmresult1.i.i.i.1
  br i1 %cmp28.1, label %while.body.1, label %while.body.if.end35_crit_edge

while.body.if.end35_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.body.1:                                     ; preds = %while.body
  %shr32.1 = lshr i64 %mul, 9
  %shr33.1 = lshr i64 %mul20, 9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 10000, i64 72057594037927935) #12, !srcloc !51
  %asmresult1.i.i.i.2 = extractvalue { i64, i64 } %18, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %asmresult1.i.i.i.2)
  %cmp28.2 = icmp ult i64 %15, %asmresult1.i.i.i.2
  br i1 %cmp28.2, label %while.body.2, label %while.body.1.if.end35_crit_edge

while.body.1.if.end35_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.body.2:                                     ; preds = %while.body.1
  %shr32.2 = lshr i64 %mul, 11
  %shr33.2 = lshr i64 %mul20, 11
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 100000, i64 72057594037927935) #12, !srcloc !51
  %asmresult1.i.i.i.3 = extractvalue { i64, i64 } %19, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %asmresult1.i.i.i.3)
  %cmp28.3 = icmp ult i64 %15, %asmresult1.i.i.i.3
  br i1 %cmp28.3, label %while.body.3, label %while.body.2.if.end35_crit_edge

while.body.2.if.end35_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.body.3:                                     ; preds = %while.body.2
  %shr32.3 = lshr i64 %mul, 13
  %shr33.3 = lshr i64 %mul20, 13
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 1000000, i64 72057594037927935) #12, !srcloc !51
  %asmresult1.i.i.i.4 = extractvalue { i64, i64 } %20, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %asmresult1.i.i.i.4)
  %cmp28.4 = icmp ult i64 %15, %asmresult1.i.i.i.4
  br i1 %cmp28.4, label %while.body.4, label %while.body.3.if.end35_crit_edge

while.body.3.if.end35_crit_edge:                  ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #11
  %shr32.4 = lshr i64 %mul, 15
  %shr33.4 = lshr i64 %mul20, 15
  %21 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 10000000, i64 72057594037927935) #12, !srcloc !51
  br label %if.end35

if.end35:                                         ; preds = %while.body.4, %while.body.3.if.end35_crit_edge, %while.body.2.if.end35_crit_edge, %while.body.1.if.end35_crit_edge, %while.body.if.end35_crit_edge, %if.else162.i.i.if.end35_crit_edge, %if.end9.if.end35_crit_edge
  %alpha.1 = phi i64 [ %shr, %if.end9.if.end35_crit_edge ], [ %shr25, %if.else162.i.i.if.end35_crit_edge ], [ %shr32, %while.body.if.end35_crit_edge ], [ %shr32.1, %while.body.1.if.end35_crit_edge ], [ %shr32.2, %while.body.2.if.end35_crit_edge ], [ %shr32.3, %while.body.3.if.end35_crit_edge ], [ %shr32.4, %while.body.4 ]
  %beta.1 = phi i64 [ %shr21, %if.end9.if.end35_crit_edge ], [ %shr26, %if.else162.i.i.if.end35_crit_edge ], [ %shr33, %while.body.if.end35_crit_edge ], [ %shr33.1, %while.body.1.if.end35_crit_edge ], [ %shr33.2, %while.body.2.if.end35_crit_edge ], [ %shr33.3, %while.body.3.if.end35_crit_edge ], [ %shr33.4, %while.body.4 ]
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %params, align 8
  %sub = sub i64 %qdelay.0, %23
  %mul36 = mul i64 %sub, %alpha.1
  %sub37 = sub i64 %qdelay.0, %qdelay_old.0
  %mul38 = mul i64 %beta.1, %sub37
  %add39 = add i64 %mul36, %mul38
  call void @__sanitizer_cov_trace_const_cmp8(i64 1441151880758558, i64 %add39)
  %cmp41 = icmp sgt i64 %add39, 1441151880758558
  call void @__sanitizer_cov_trace_const_cmp8(i64 7205759403792792, i64 %15)
  %cmp45 = icmp ugt i64 %15, 7205759403792792
  %or.cond174 = select i1 %cmp41, i1 %cmp45, i1 false
  %delta.0 = select i1 %or.cond174, i64 1441151880758558, i64 %add39
  call void @__sanitizer_cov_trace_const_cmp8(i64 3906250, i64 %qdelay.0)
  %cmp49 = icmp ugt i64 %qdelay.0, 3906250
  %add52 = add i64 %delta.0, 1441151880758558
  %delta.1 = select i1 %cmp49, i64 %add52, i64 %delta.0
  %add55 = add i64 %delta.1, %15
  %24 = ptrtoint ptr %prob to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add55, ptr %prob, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta.1)
  %cmp56 = icmp sgt i64 %delta.1, 0
  br i1 %cmp56, label %if.then58, label %if.else65

if.then58:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp8(i64 %add55, i64 %15)
  %cmp60 = icmp ult i64 %add55, %15
  br i1 %cmp60, label %if.then58.if.end86.sink.split_crit_edge, label %if.then58.if.end72_crit_edge

if.then58.if.end72_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then58.if.end86.sink.split_crit_edge:          ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.sink.split

if.else65:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_cmp8(i64 %add55, i64 %15)
  %cmp67 = icmp ugt i64 %add55, %15
  br i1 %cmp67, label %if.then69, label %if.else65.if.end72_crit_edge

if.else65.if.end72_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then69:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %prob to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 0, ptr %prob, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.else65.if.end72_crit_edge, %if.then58.if.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %qdelay_old.0)
  %cmp76 = icmp ne i64 %qdelay_old.0, 0
  %not.cmp10 = xor i1 %cmp10, true
  %or.cond175 = select i1 %not.cmp10, i1 true, i1 %cmp76
  %brmerge = or i1 %9, %or.cond175
  br i1 %brmerge, label %if.end72.if.end86_crit_edge, label %if.then81

if.end72.if.end86_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then81:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %prob, align 8
  %div83172 = lshr i64 %27, 6
  %sub85 = sub i64 %27, %div83172
  br label %if.end86.sink.split

if.end86.sink.split:                              ; preds = %if.then81, %if.then58.if.end86.sink.split_crit_edge
  %.sink = phi i64 [ %sub85, %if.then81 ], [ 72057594037927935, %if.then58.if.end86.sink.split_crit_edge ]
  %28 = ptrtoint ptr %prob to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %.sink, ptr %prob, align 8
  br label %if.end86

if.end86:                                         ; preds = %if.end86.sink.split, %if.end72.if.end86_crit_edge
  %29 = ptrtoint ptr %vars to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %qdelay.0, ptr %vars, align 8
  %backlog_old = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 8
  %30 = ptrtoint ptr %backlog_old to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %backlog, ptr %backlog_old, align 4
  %31 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %params, align 8
  %div90171 = lshr i64 %32, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %qdelay.0, i64 %div90171)
  %cmp91 = icmp ult i64 %qdelay.0, %div90171
  br i1 %cmp91, label %land.lhs.true93, label %if.end86.if.end110_crit_edge

if.end86.if.end110_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

land.lhs.true93:                                  ; preds = %if.end86
  %qdelay_old94 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 1
  %33 = ptrtoint ptr %qdelay_old94 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %qdelay_old94, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %div90171)
  %cmp97 = icmp ult i64 %34, %div90171
  br i1 %cmp97, label %land.lhs.true99, label %land.lhs.true93.if.end110_crit_edge

land.lhs.true93.if.end110_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

land.lhs.true99:                                  ; preds = %land.lhs.true93
  %35 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %prob, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp101 = icmp eq i64 %36, 0
  br i1 %cmp101, label %land.lhs.true103, label %land.lhs.true99.if.end110_crit_edge

land.lhs.true99.if.end110_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

land.lhs.true103:                                 ; preds = %land.lhs.true99
  %37 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool105.not = icmp eq i8 %38, 0
  br i1 %tobool105.not, label %land.lhs.true103.if.then109_crit_edge, label %lor.lhs.false

land.lhs.true103.if.then109_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

lor.lhs.false:                                    ; preds = %land.lhs.true103
  %avg_dq_rate106 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 7
  %39 = ptrtoint ptr %avg_dq_rate106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %avg_dq_rate106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp107.not = icmp eq i32 %40, 0
  br i1 %cmp107.not, label %lor.lhs.false.if.end110_crit_edge, label %lor.lhs.false.if.then109_crit_edge

lor.lhs.false.if.then109_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then109

lor.lhs.false.if.end110_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then109:                                       ; preds = %lor.lhs.false.if.then109_crit_edge, %land.lhs.true103.if.then109_crit_edge
  %burst_time.i = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 2
  %41 = ptrtoint ptr %burst_time.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 2343750, ptr %burst_time.i, align 8
  %dq_tstamp.i = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 3
  %42 = ptrtoint ptr %dq_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 -1, ptr %dq_tstamp.i, align 8
  %accu_prob.i = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 5
  %43 = ptrtoint ptr %accu_prob.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %accu_prob.i, align 8
  %dq_count.i = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 6
  %44 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 -1, ptr %dq_count.i, align 8
  %avg_dq_rate.i = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 7
  %45 = ptrtoint ptr %avg_dq_rate.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %avg_dq_rate.i, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then109, %lor.lhs.false.if.end110_crit_edge, %land.lhs.true99.if.end110_crit_edge, %land.lhs.true93.if.end110_crit_edge, %if.end86.if.end110_crit_edge
  %46 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool112.not = icmp eq i8 %47, 0
  br i1 %tobool112.not, label %if.then113, label %if.end110.if.end115_crit_edge

if.end110.if.end115_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end115

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %qdelay_old114 = getelementptr inbounds %struct.pie_vars, ptr %vars, i32 0, i32 1
  %48 = ptrtoint ptr %qdelay_old114 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %qdelay.0, ptr %qdelay_old114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %if.end110.if.end115_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pie_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_qdisc(ptr noundef nonnull @pie_qdisc_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_qdisc(ptr noundef nonnull @pie_qdisc_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_qdisc_enqueue(ptr noundef %skb, ptr nocapture noundef %sch, ptr nocapture noundef %to_free) #0 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %if.then, !prof !50

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %overlimit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %4 = ptrtoint ptr %overlimit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %overlimit, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %overlimit, align 8
  br label %out

if.end:                                           ; preds = %entry
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %call3 = tail call zeroext i1 @pie_drop_early(ptr noundef %sch, ptr noundef %params, ptr noundef %privdata.i, i32 noundef %7, i32 noundef %9)
  br i1 %call3, label %if.else, label %if.end.if.then19_crit_edge

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.else:                                          ; preds = %if.end
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %10 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ecn, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool6.not = icmp eq i8 %11, 0
  br i1 %tobool6.not, label %if.else.out_crit_edge, label %land.lhs.true

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true:                                    ; preds = %if.else
  %prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %12 = ptrtoint ptr %prob to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %prob, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 7205759403792794, i64 %13)
  %cmp8 = icmp ult i64 %13, 7205759403792794
  br i1 %cmp8, label %land.lhs.true10, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true10:                                  ; preds = %land.lhs.true
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %14 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %16 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %17 to i32
  %18 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %land.lhs.true10.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %land.lhs.true10.if.then.i.i.i.i_crit_edge
    i16 -32512, label %land.lhs.true10.if.then.i.i.i.i_crit_edge81
  ]

land.lhs.true10.if.then.i.i.i.i_crit_edge81:      ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

land.lhs.true10.if.then.i.i.i.i_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i.i

land.lhs.true10.skb_protocol.exit.i_crit_edge:    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true10.if.then.i.i.i.i_crit_edge, %land.lhs.true10.if.then.i.i.i.i_crit_edge81
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i.i.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %17)
  %cmp.i.i.i.i = icmp ult i16 %17, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !52

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #9
  br label %out

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %19 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %20 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !49
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %19, align 2, !annotation !49
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %24 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %26 = add i32 %vlan_depth.1.i.i.i.i, %25
  %sub.i1.i.i.i.i.i = sub i32 %23, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !50

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %28, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !52
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %29 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !52
  br i1 %29, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !52

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  br label %out

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #9
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %31, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge82
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge82: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge82
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %land.lhs.true10.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %15, %land.lhs.true10.skb_protocol.exit.i_crit_edge ], [ %31, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %33 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.out_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.out_crit_edge:                ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %36 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %37 to i32
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %38 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %39
  br i1 %cmp.not.i, label %sw.bb.i.out_crit_edge, label %if.then.i

sw.bb.i.out_crit_edge:                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tos.i.i, align 1
  %42 = add i8 %41, 1
  %43 = and i8 %42, 3
  %44 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i, label %INET_ECN_set_ce.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv4.i.i = zext i8 %43 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %46, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %47 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %48 = or i8 %41, 3
  %49 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %tos.i.i, align 1
  br label %if.then13

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i23.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %50 = ptrtoint ptr %head.i23.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i23.i, align 8
  %network_header.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i24.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i24.i, align 4
  %conv.i25.i = zext i16 %53 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %51, i32 %conv.i25.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i26.i, i32 40
  %tail.i27.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i27.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i27.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %55
  br i1 %cmp10.not.i, label %sw.bb6.i.out_crit_edge, label %if.then12.i

sw.bb6.i.out_crit_edge:                           ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then12.i:                                      ; preds = %sw.bb6.i
  %56 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i26.i, align 2
  %58 = and i16 %57, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp.i14.not.i.i = icmp eq i16 %58, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.out_crit_edge, label %if.end.i32.i

if.then12.i.out_crit_edge:                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i32.i:                                     ; preds = %if.then12.i
  %59 = ptrtoint ptr %add.ptr.i26.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i26.i, align 4
  %or.i.i = or i32 %60, 3145728
  store i32 %or.i.i, ptr %add.ptr.i26.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %61 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %62 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %62)
  %cmp.i.i = icmp eq i16 %62, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i32.i.if.then13_crit_edge

if.end.i32.i.if.then13_crit_edge:                 ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then3.i.i:                                     ; preds = %if.end.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 8
  %neg.i.i.i = xor i32 %60, -1
  %add.i.i.i33.i = add i32 %65, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i33.i, i32 %neg.i.i.i)
  %cmp.i.i.i34.i = icmp ult i32 %add.i.i.i33.i, %neg.i.i.i
  %conv.i.i.i35.i = zext i1 %cmp.i.i.i34.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i33.i, %or.i.i
  %add.i.i36.i = add i32 %add1.i.i.i.i, %conv.i.i.i35.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i36.i, i32 %or.i.i)
  %cmp.i.i37.i = icmp ult i32 %add.i.i36.i, %or.i.i
  %conv.i.i38.i = zext i1 %cmp.i.i37.i to i32
  %add1.i.i.i = add i32 %add.i.i36.i, %conv.i.i38.i
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add1.i.i.i, ptr %63, align 8
  br label %if.then13

INET_ECN_set_ce.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool2.not.i.i.not = icmp eq i8 %43, 0
  br i1 %tobool2.not.i.i.not, label %INET_ECN_set_ce.exit.if.then13_crit_edge, label %INET_ECN_set_ce.exit.out_crit_edge

INET_ECN_set_ce.exit.out_crit_edge:               ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

INET_ECN_set_ce.exit.if.then13_crit_edge:         ; preds = %INET_ECN_set_ce.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %INET_ECN_set_ce.exit.if.then13_crit_edge, %if.then3.i.i, %if.end.i32.i.if.then13_crit_edge, %if.end.i.i
  %ecn_mark = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %67 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ecn_mark, align 4
  %inc15 = add i32 %68, 1
  store i32 %inc15, ptr %ecn_mark, align 4
  br label %if.then19

if.then19:                                        ; preds = %if.then13, %if.end.if.then19_crit_edge
  %dq_rate_estimator = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 26
  %69 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dq_rate_estimator, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool21.not = icmp eq i8 %70, 0
  br i1 %tobool21.not, label %if.then22, label %if.then19.if.end23_crit_edge

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i64 @ktime_get() #9
  %shr.i.i = lshr i64 %call.i.i.i, 6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %shr.i.i, ptr %data.i.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then19.if.end23_crit_edge
  %stats24 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %72 = ptrtoint ptr %stats24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %stats24, align 8
  %inc25 = add i32 %73, 1
  store i32 %inc25, ptr %stats24, align 8
  %74 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i, align 8
  %maxq = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %76 = ptrtoint ptr %maxq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %maxq, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %77)
  %cmp28 = icmp ugt i32 %75, %77
  br i1 %cmp28, label %if.then30, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %maxq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %75, ptr %maxq, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end23.if.end34_crit_edge
  %tail.i.i69 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %79 = ptrtoint ptr %tail.i.i69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i69, align 4
  %tobool.not.i.i70 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i70, label %if.else.i.i, label %if.then.i.i71

if.then.i.i71:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %skb, align 8
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %skb, ptr %80, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %83 = ptrtoint ptr %tail.i.i69 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %skb, ptr %tail.i.i69, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i71
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i69, %if.then.i.i71 ]
  %84 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %85 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %qlen.i, align 4
  %inc.i.i = add i32 %86, 1
  store i32 %inc.i.i, ptr %qlen.i, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %87 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cb.i.i.i.i, align 4
  br label %cleanup

out:                                              ; preds = %INET_ECN_set_ce.exit.out_crit_edge, %if.then12.i.out_crit_edge, %sw.bb6.i.out_crit_edge, %sw.bb.i.out_crit_edge, %skb_protocol.exit.i.out_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %land.lhs.true.out_crit_edge, %if.else.out_crit_edge, %if.then
  %dropped = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %89 = ptrtoint ptr %dropped to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dropped, align 4
  %inc38 = add i32 %90, 1
  store i32 %inc38, ptr %dropped, align 4
  %accu_prob = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %91 = ptrtoint ptr %accu_prob to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 0, ptr %accu_prob, align 8
  %92 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %to_free, align 4
  %94 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %cleanup

cleanup:                                          ; preds = %out, %qdisc_enqueue_tail.exit
  %drops.i.i.i.sink80 = phi ptr [ %drops.i.i.i, %out ], [ %backlog, %qdisc_enqueue_tail.exit ]
  %.sink79 = phi i32 [ 1, %out ], [ %88, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 1, %out ], [ 0, %qdisc_enqueue_tail.exit ]
  %95 = ptrtoint ptr %drops.i.i.i.sink80 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %drops.i.i.i.sink80, align 4
  %inc.i.i.i = add i32 %96, %.sink79
  store i32 %inc.i.i.i, ptr %drops.i.i.i.sink80, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @pie_qdisc_dequeue(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q.i, align 4
  %cmp.not.i.i = icmp eq ptr %1, null
  br i1 %cmp.not.i.i, label %entry.cleanup_crit_edge, label %if.then.i.i, !prof !52

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i.i:                                      ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %q.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i.i, align 4
  %dec.i.i = add i32 %6, -1
  store i32 %dec.i.i, ptr %qlen.i.i, align 4
  %cmp4.i.i = icmp eq ptr %3, null
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.then.i.i.if.then.i_crit_edge

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then5.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then5.i.i, %if.then.i.i.if.then.i_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog.i.i, align 4
  %sub.i.i = sub i32 %12, %10
  store i32 %sub.i.i, ptr %backlog.i.i, align 4
  %13 = load i32, ptr %cb.i.i.i.i, align 4
  %end.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i.i, align 4
  %gso_size.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i.i.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i.i.i, label %if.then.i.cond.end.i.i.i_crit_edge, label %cond.true.i.i.i

if.then.i.cond.end.i.i.i_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i.i.i

cond.true.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %gso_segs.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_segs.i.i.i, align 2
  %conv4.i.i.i = zext i16 %19 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.true.i.i.i, %if.then.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv4.i.i.i, %cond.true.i.i.i ], [ 1, %if.then.i.cond.end.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %cond.end.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.i.i.i

cond.end.i.i.i.if.end_crit_edge:                  ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.i.i.i.i.i:                        ; preds = %cond.end.i.i.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !53
  %25 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %30, ptrtoint (ptr @lockdep_recursion to i32)
  %31 = inttoptr i32 %add.i.i.i.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !54
  %34 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i7.i.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.i.if.end_crit_edge

land.lhs.true.i.i.i.i.i.i.if.end_crit_edge:       ; preds = %land.lhs.true.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i.i.i.i.i.i:                             ; preds = %land.lhs.true.i.i.i.i.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.if.end_crit_edge

land.rhs.i.i.i.i.i.i.if.end_crit_edge:            ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs22.i.i.i.i.i.i:                           ; preds = %land.rhs.i.i.i.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i9.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i9.i.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i11.i.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !55
  %46 = ptrtoint ptr %cpu.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.i.i.i.i.i.i, align 4
  %add47.i.i.i.i.i.i = add i32 %49, ptrtoint (ptr @hardirqs_enabled to i32)
  %50 = inttoptr i32 %add47.i.i.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !56
  %53 = tail call i32 @llvm.read_register.i32(metadata !39) #9
  %and.i.i.i12.i.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i12.i.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i14.i.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool54.not.i.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool54.not.i.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.i.if.end_crit_edge, label %land.rhs58.i.i.i.i.i.i

land.rhs22.i.i.i.i.i.i.if.end_crit_edge:          ; preds = %land.rhs22.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs58.i.i.i.i.i.i:                           ; preds = %land.rhs22.i.i.i.i.i.i
  %.b1.i.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.i.if.end_crit_edge, label %if.then.i.i.i.i.i.i, !prof !50

land.rhs58.i.i.i.i.i.i.if.end_crit_edge:          ; preds = %land.rhs58.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs58.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i.i.i.i, %land.rhs58.i.i.i.i.i.i.if.end_crit_edge, %land.rhs22.i.i.i.i.i.i.if.end_crit_edge, %land.rhs.i.i.i.i.i.i.if.end_crit_edge, %land.lhs.true.i.i.i.i.i.i.if.end_crit_edge, %cond.end.i.i.i.if.end_crit_edge
  %bstats.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i.i = zext i32 %13 to i64
  %syncp.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %57 = ptrtoint ptr %syncp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp.i.i.i.i, align 4
  %inc.i.i.i.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i.i.i.i, ptr %syncp.i.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !57
  %dep_map.i.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %59 = tail call ptr @llvm.returnaddress(i32 0) #9
  %60 = ptrtoint ptr %59 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %60) #9
  %61 = ptrtoint ptr %bstats.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bstats.i.i, align 8
  %add.i.i.i.i.i = add i64 %62, %conv.i.i.i
  store i64 %add.i.i.i.i.i, ptr %bstats.i.i, align 8
  %packets2.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i.i = zext i32 %cond.i.i.i to i64
  %63 = ptrtoint ptr %packets2.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %packets2.i.i.i.i, align 8
  %add.i8.i.i.i.i = add i64 %64, %conv.i7.i.i.i.i
  store i64 %add.i8.i.i.i.i, ptr %packets2.i.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i.i, i32 noundef %60) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !58
  %65 = ptrtoint ptr %syncp.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i.i, align 4
  %params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %67 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %backlog.i.i, align 4
  tail call void @pie_process_dequeue(ptr noundef nonnull %1, ptr noundef %params, ptr noundef %privdata.i, i32 noundef %68)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_peek_dequeued(ptr noundef %sch) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %gso_skb = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16
  %0 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gso_skb, align 4
  %cmp.i = icmp eq ptr %1, %gso_skb
  %tobool.not15 = icmp eq ptr %1, null
  %tobool.not = or i1 %cmp.i, %tobool.not15
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %dequeue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 1
  %2 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dequeue, align 4
  %call1 = tail call ptr %3(ptr noundef %sch) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %gso_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gso_skb, align 4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %call1, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %gso_skb, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call1, ptr %prev17.i.i.i, align 4
  store volatile ptr %call1, ptr %gso_skb, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3
  %11 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %13 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %backlog.i, align 4
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %backlog.i, align 4
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %15 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen, align 8
  %inc = add i32 %16, 1
  store i32 %inc, ptr %qlen, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call1, %if.then3 ], [ null, %if.then.if.end5_crit_edge ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_init(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %0 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 234375, ptr %params, align 8
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 15000
  %spec.select.i = select i1 %cmp.i.i, i32 1073741822, i32 2
  %tupdate.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %1 = ptrtoint ptr %tupdate.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %spec.select.i, ptr %tupdate.i, align 8
  %limit.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %2 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1000, ptr %limit.i, align 4
  %alpha.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %3 = ptrtoint ptr %alpha.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %alpha.i, align 8
  %beta.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %4 = ptrtoint ptr %beta.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 20, ptr %beta.i, align 4
  %ecn.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %5 = ptrtoint ptr %ecn.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ecn.i, align 8
  %bytemode.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 25
  %6 = ptrtoint ptr %bytemode.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %bytemode.i, align 1
  %dq_rate_estimator.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 26
  %7 = ptrtoint ptr %dq_rate_estimator.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dq_rate_estimator.i, align 2
  %burst_time.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %8 = ptrtoint ptr %burst_time.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 2343750, ptr %burst_time.i, align 8
  %dq_tstamp.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %9 = ptrtoint ptr %dq_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %dq_tstamp.i, align 8
  %accu_prob.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %10 = ptrtoint ptr %accu_prob.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %accu_prob.i, align 8
  %dq_count.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %11 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %dq_count.i, align 8
  %avg_dq_rate.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %12 = ptrtoint ptr %avg_dq_rate.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %avg_dq_rate.i, align 8
  %limit2 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %13 = ptrtoint ptr %limit2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1000, ptr %limit2, align 4
  %sch3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 16, i32 2, i32 0, i32 0, i32 4, i32 1, i32 1
  %14 = ptrtoint ptr %sch3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %sch, ptr %sch3, align 4
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  tail call void @init_timer_key(ptr noundef %adapt_timer, ptr noundef nonnull @pie_timer, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @pie_init.__key) #9
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call i32 @pie_change(ptr noundef %sch, ptr noundef nonnull %opt, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup10_crit_edge

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup10

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %15, 50
  %call9 = tail call i32 @mod_timer(ptr noundef %adapt_timer, i32 noundef %add) #9
  br label %cleanup10

cleanup10:                                        ; preds = %if.end7, %if.then.cleanup10_crit_edge
  %retval.1 = phi i32 [ 0, %if.end7 ], [ %call4, %if.then.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pie_reset(ptr nocapture noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.if.end29.i.i_crit_edge

entry.if.end29.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b50.i.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 1165) #9
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %entry.if.end29.i.i_crit_edge
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i.i, label %if.end29.i.i.qdisc_reset_queue.exit_crit_edge, label %if.then38.i.i

if.end29.i.i.qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qdisc_reset_queue.exit

if.then38.i.i:                                    ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q.i, align 4
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q.i, align 4
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i.i, align 4
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i.i, align 4
  br label %qdisc_reset_queue.exit

qdisc_reset_queue.exit:                           ; preds = %if.then38.i.i, %if.end29.i.i.qdisc_reset_queue.exit_crit_edge
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog.i, align 4
  %burst_time.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 4
  %10 = ptrtoint ptr %burst_time.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 2343750, ptr %burst_time.i, align 8
  %dq_tstamp.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 6
  %11 = ptrtoint ptr %dq_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %dq_tstamp.i, align 8
  %accu_prob.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 9
  %12 = ptrtoint ptr %accu_prob.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %accu_prob.i, align 8
  %dq_count.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 11
  %13 = ptrtoint ptr %dq_count.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 -1, ptr %dq_count.i, align 8
  %avg_dq_rate.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %14 = ptrtoint ptr %avg_dq_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %avg_dq_rate.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pie_destroy(ptr noundef %sch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %0 = ptrtoint ptr %tupdate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tupdate, align 8
  %adapt_timer = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 52
  %call1 = tail call i32 @del_timer_sync(ptr noundef %adapt_timer) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_change(ptr noundef %sch, ptr noundef %opt, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %tb = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #9
  %0 = call ptr @memset(ptr %tb, i32 255, i32 36)
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %1 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %opt, align 2
  %conv.i.i = zext i16 %2 to i32
  %sub.i.i113 = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i113, ptr noundef nonnull @pie_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i114, label %if.end3.sch_tree_lock.exit_crit_edge

if.end3.sch_tree_lock.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.else.i114:                                     ; preds = %if.end3
  %dev_queue.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %5 = ptrtoint ptr %dev_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_queue.i.i.i, align 8
  %qdisc_sleeping.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %qdisc_sleeping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qdisc_sleeping.i.i.i, align 4
  %call1.i.i = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %if.else.i114.sch_tree_lock.exit_crit_edge

if.else.i114.sch_tree_lock.exit_crit_edge:        ; preds = %if.else.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

land.rhs.i.i:                                     ; preds = %if.else.i114
  %.b41.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i, label %land.rhs.i.i.sch_tree_lock.exit_crit_edge, label %if.then.i.i, !prof !50

land.rhs.i.i.sch_tree_lock.exit_crit_edge:        ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 596) #9
  br label %sch_tree_lock.exit

sch_tree_lock.exit:                               ; preds = %if.then.i.i, %land.rhs.i.i.sch_tree_lock.exit_crit_edge, %if.else.i114.sch_tree_lock.exit_crit_edge, %if.end3.sch_tree_lock.exit_crit_edge
  %.sink.i = phi ptr [ %sch, %if.end3.sch_tree_lock.exit_crit_edge ], [ %8, %if.else.i114.sch_tree_lock.exit_crit_edge ], [ %8, %land.rhs.i.i.sch_tree_lock.exit_crit_edge ], [ %8, %if.then.i.i ]
  %lock.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i) #9
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %sch_tree_lock.exit.if.end9_crit_edge, label %if.then5

sch_tree_lock.exit.if.end9_crit_edge:             ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then5:                                         ; preds = %sch_tree_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i116 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i116 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i116, align 4
  %conv = zext i32 %12 to i64
  %mul = mul nuw nsw i64 %conv, 1000
  %shr = lshr i64 %mul, 6
  %params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %13 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shr, ptr %params, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %sch_tree_lock.exit.if.end9_crit_edge
  %arrayidx10 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %if.end9.if.end17_crit_edge, label %if.else.i

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i117 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i117 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i117, align 4
  %call3.i = call i32 @__usecs_to_jiffies(i32 noundef %17) #9
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %18 = ptrtoint ptr %tupdate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call3.i, ptr %tupdate, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.else.i, %if.end9.if.end17_crit_edge
  %arrayidx18 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %20, null
  br i1 %tobool19.not, label %if.end17.if.end26_crit_edge, label %if.then20

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i118 = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i.i118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i118, align 4
  %limit24 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 12
  %23 = ptrtoint ptr %limit24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %limit24, align 4
  %limit25 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %24 = ptrtoint ptr %limit25 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %limit25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end17.if.end26_crit_edge
  %arrayidx27 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx27, align 4
  %tobool28.not = icmp eq ptr %26, null
  br i1 %tobool28.not, label %if.end26.if.end33_crit_edge, label %if.then29

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i119 = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i119, align 4
  %alpha = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %29 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %alpha, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end26.if.end33_crit_edge
  %arrayidx34 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %31, null
  br i1 %tobool35.not, label %if.end33.if.end40_crit_edge, label %if.then36

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i120 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i120 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i120, align 4
  %beta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %34 = ptrtoint ptr %beta to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %beta, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end33.if.end40_crit_edge
  %arrayidx41 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %35 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %36, null
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %if.then43

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i121 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i121 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i121, align 4
  %conv46 = trunc i32 %38 to i8
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %39 = ptrtoint ptr %ecn to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv46, ptr %ecn, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end40.if.end48_crit_edge
  %arrayidx49 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %41, null
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %if.then51

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i122 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i122 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i122, align 4
  %conv54 = trunc i32 %43 to i8
  %bytemode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 25
  %44 = ptrtoint ptr %bytemode to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv54, ptr %bytemode, align 1
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end48.if.end56_crit_edge
  %arrayidx57 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx57, align 4
  %tobool58.not = icmp eq ptr %46, null
  br i1 %tobool58.not, label %if.end56.if.end64_crit_edge, label %if.then59

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i123 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i123, align 4
  %conv62 = trunc i32 %48 to i8
  %dq_rate_estimator = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 26
  %49 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv62, ptr %dq_rate_estimator, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end56.if.end64_crit_edge
  %q65 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %qlen66 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %50 = ptrtoint ptr %qlen66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %qlen66, align 8
  %limit69 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %52 = ptrtoint ptr %limit69 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %limit69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp70140 = icmp ugt i32 %51, %53
  br i1 %cmp70140, label %while.body.lr.ph, label %if.end64.while.end_crit_edge

if.end64.while.end_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end64
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %while.body

while.body:                                       ; preds = %__qdisc_dequeue_head.exit.while.body_crit_edge, %while.body.lr.ph
  %dropped.0141 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %__qdisc_dequeue_head.exit.while.body_crit_edge ]
  %54 = ptrtoint ptr %q65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %q65, align 4
  %cmp.not.i = icmp eq ptr %55, null
  br i1 %cmp.not.i, label %while.body.__qdisc_dequeue_head.exit_crit_edge, label %if.then.i124, !prof !52

while.body.__qdisc_dequeue_head.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %__qdisc_dequeue_head.exit

if.then.i124:                                     ; preds = %while.body
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %58 = ptrtoint ptr %q65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %q65, align 4
  %59 = ptrtoint ptr %qlen66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen66, align 4
  %dec.i = add i32 %60, -1
  store i32 %dec.i, ptr %qlen66, align 4
  %cmp4.i = icmp eq ptr %57, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i124.if.end.i125_crit_edge

if.then.i124.if.end.i125_crit_edge:               ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i125

if.then5.i:                                       ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %tail.i, align 4
  br label %if.end.i125

if.end.i125:                                      ; preds = %if.then5.i, %if.then.i124.if.end.i125_crit_edge
  %62 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %55, align 8
  br label %__qdisc_dequeue_head.exit

__qdisc_dequeue_head.exit:                        ; preds = %if.end.i125, %while.body.__qdisc_dequeue_head.exit_crit_edge
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3
  %63 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %64, %dropped.0141
  %65 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %66, %64
  store i32 %sub.i, ptr %backlog.i, align 4
  call void @rtnl_kfree_skbs(ptr noundef %55, ptr noundef %55) #9
  %67 = ptrtoint ptr %drops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %drops.i.i.i, align 4
  %inc.i.i.i = add i32 %68, 1
  store i32 %inc.i.i.i, ptr %drops.i.i.i, align 4
  %69 = ptrtoint ptr %qlen66 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %qlen66, align 8
  %71 = ptrtoint ptr %limit69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %limit69, align 4
  %cmp70 = icmp ugt i32 %70, %72
  br i1 %cmp70, label %__qdisc_dequeue_head.exit.while.body_crit_edge, label %__qdisc_dequeue_head.exit.while.end_crit_edge

__qdisc_dequeue_head.exit.while.end_crit_edge:    ; preds = %__qdisc_dequeue_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

__qdisc_dequeue_head.exit.while.body_crit_edge:   ; preds = %__qdisc_dequeue_head.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %__qdisc_dequeue_head.exit.while.end_crit_edge, %if.end64.while.end_crit_edge
  %dropped.0.lcssa = phi i32 [ 0, %if.end64.while.end_crit_edge ], [ %add, %__qdisc_dequeue_head.exit.while.end_crit_edge ]
  %.lcssa = phi i32 [ %51, %if.end64.while.end_crit_edge ], [ %70, %__qdisc_dequeue_head.exit.while.end_crit_edge ]
  %sub = sub i32 %51, %.lcssa
  call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef %sub, i32 noundef %dropped.0.lcssa) #9
  %73 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags.i, align 8
  %and.i127 = and i32 %74, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i127)
  %tobool.not.i128 = icmp eq i32 %and.i127, 0
  br i1 %tobool.not.i128, label %if.else.i133, label %while.end.sch_tree_unlock.exit_crit_edge

while.end.sch_tree_unlock.exit_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.else.i133:                                     ; preds = %while.end
  %dev_queue.i.i.i129 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %75 = ptrtoint ptr %dev_queue.i.i.i129 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_queue.i.i.i129, align 8
  %qdisc_sleeping.i.i.i130 = getelementptr inbounds %struct.netdev_queue, ptr %76, i32 0, i32 3
  %77 = ptrtoint ptr %qdisc_sleeping.i.i.i130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %qdisc_sleeping.i.i.i130, align 4
  %call1.i.i131 = call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i131)
  %tobool.not.i.i132 = icmp eq i32 %call1.i.i131, 0
  br i1 %tobool.not.i.i132, label %land.rhs.i.i135, label %if.else.i133.sch_tree_unlock.exit_crit_edge

if.else.i133.sch_tree_unlock.exit_crit_edge:      ; preds = %if.else.i133
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

land.rhs.i.i135:                                  ; preds = %if.else.i133
  %.b41.i.i134 = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i134, label %land.rhs.i.i135.sch_tree_unlock.exit_crit_edge, label %if.then.i.i136, !prof !50

land.rhs.i.i135.sch_tree_unlock.exit_crit_edge:   ; preds = %land.rhs.i.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit

if.then.i.i136:                                   ; preds = %land.rhs.i.i135
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 596) #9
  br label %sch_tree_unlock.exit

sch_tree_unlock.exit:                             ; preds = %if.then.i.i136, %land.rhs.i.i135.sch_tree_unlock.exit_crit_edge, %if.else.i133.sch_tree_unlock.exit_crit_edge, %while.end.sch_tree_unlock.exit_crit_edge
  %.sink.i137 = phi ptr [ %sch, %while.end.sch_tree_unlock.exit_crit_edge ], [ %78, %if.else.i133.sch_tree_unlock.exit_crit_edge ], [ %78, %land.rhs.i.i135.sch_tree_unlock.exit_crit_edge ], [ %78, %if.then.i.i136 ]
  %lock.i.i.i138 = getelementptr inbounds %struct.Qdisc, ptr %.sink.i137, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i138) #9
  br label %cleanup

cleanup:                                          ; preds = %sch_tree_unlock.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sch_tree_unlock.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #0 align 64 {
entry:
  %tmp.i69 = alloca i32, align 4
  %tmp.i67 = alloca i32, align 4
  %tmp.i65 = alloca i32, align 4
  %tmp.i63 = alloca i32, align 4
  %tmp.i61 = alloca i32, align 4
  %tmp.i59 = alloca i32, align 4
  %tmp.i57 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not72 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not72
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %params = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %params, align 8
  %.tr = trunc i64 %3 to i32
  %conv = shl i32 %.tr, 6
  %div = udiv i32 %conv, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %5 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %limit, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i57) #9
  %7 = ptrtoint ptr %tmp.i57 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i57, align 4
  %call.i58 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i57) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool5.not = icmp eq i32 %call.i58, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %tupdate = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 8
  %8 = ptrtoint ptr %tupdate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tupdate, align 8
  %call8 = call i32 @jiffies_to_usecs(i32 noundef %9) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i59) #9
  %10 = ptrtoint ptr %tmp.i59 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call8, ptr %tmp.i59, align 4
  %call.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i59) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool10.not = icmp eq i32 %call.i60, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false6.if.then.i.i_crit_edge

lor.lhs.false6.if.then.i.i_crit_edge:             ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false11:                                  ; preds = %lor.lhs.false6
  %alpha = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 16
  %11 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %alpha, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i61) #9
  %13 = ptrtoint ptr %tmp.i61 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i61, align 4
  %call.i62 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i61) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool14.not = icmp eq i32 %call.i62, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false11.if.then.i.i_crit_edge

lor.lhs.false11.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %beta = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 20
  %14 = ptrtoint ptr %beta to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %beta, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i63) #9
  %16 = ptrtoint ptr %tmp.i63 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tmp.i63, align 4
  %call.i64 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i63) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool18.not = icmp eq i32 %call.i64, 0
  br i1 %tobool18.not, label %lor.lhs.false19, label %lor.lhs.false15.if.then.i.i_crit_edge

lor.lhs.false15.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %ecn = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 24
  %17 = ptrtoint ptr %ecn to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ecn, align 8
  %conv21 = zext i8 %18 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i65) #9
  %19 = ptrtoint ptr %tmp.i65 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv21, ptr %tmp.i65, align 4
  %call.i66 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i65) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool23.not = icmp eq i32 %call.i66, 0
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false19.if.then.i.i_crit_edge

lor.lhs.false19.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %bytemode = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 25
  %20 = ptrtoint ptr %bytemode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bytemode, align 1
  %conv26 = zext i8 %21 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i67) #9
  %22 = ptrtoint ptr %tmp.i67 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv26, ptr %tmp.i67, align 4
  %call.i68 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i67) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool28.not = icmp eq i32 %call.i68, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false24.if.then.i.i_crit_edge

lor.lhs.false24.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %dq_rate_estimator = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 26
  %23 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dq_rate_estimator, align 2
  %conv31 = zext i8 %24 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i69) #9
  %25 = ptrtoint ptr %tmp.i69 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv31, ptr %tmp.i69, align 4
  %call.i70 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i69) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool33.not = icmp eq i32 %call.i70, 0
  br i1 %tobool33.not, label %if.end35, label %lor.lhs.false29.if.then.i.i_crit_edge

lor.lhs.false29.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end35:                                         ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false29.if.then.i.i_crit_edge, %lor.lhs.false24.if.then.i.i_crit_edge, %lor.lhs.false19.if.then.i.i_crit_edge, %lor.lhs.false15.if.then.i.i_crit_edge, %lor.lhs.false11.if.then.i.i_crit_edge, %lor.lhs.false6.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %32, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !52

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.end35 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pie_dump_stats(ptr nocapture noundef readonly %sch, ptr noundef %d) #0 align 64 {
entry:
  %st = alloca %struct.tc_pie_xstats, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 30
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %st) #9
  %prob1 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 7
  %0 = ptrtoint ptr %prob1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %prob1, align 8
  %shl = shl i64 %1, 8
  %2 = ptrtoint ptr %st to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %shl, ptr %st, align 8
  %delay = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 1
  %3 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %privdata.i, align 8
  %.tr = trunc i64 %4 to i32
  %conv = shl i32 %.tr, 6
  %div = udiv i32 %conv, 1000
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %delay, align 8
  %avg_dq_rate = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 2
  %6 = ptrtoint ptr %avg_dq_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %avg_dq_rate, align 4
  %dq_rate_estimating = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 3
  %packets_in = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 4
  %stats = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 32
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stats, align 8
  %9 = ptrtoint ptr %packets_in to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %packets_in, align 4
  %dropped = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 5
  %dropped6 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 36
  %10 = ptrtoint ptr %dropped6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dropped6, align 4
  %12 = ptrtoint ptr %dropped to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %dropped, align 8
  %overlimit = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 6
  %overlimit8 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 40
  %13 = ptrtoint ptr %overlimit8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %overlimit8, align 8
  %15 = ptrtoint ptr %overlimit to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %overlimit, align 4
  %maxq = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 7
  %maxq10 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 48
  %16 = ptrtoint ptr %maxq10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxq10, align 8
  %18 = ptrtoint ptr %maxq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %maxq, align 8
  %ecn_mark = getelementptr inbounds %struct.tc_pie_xstats, ptr %st, i32 0, i32 8
  %ecn_mark12 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 44
  %19 = ptrtoint ptr %ecn_mark12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ecn_mark12, align 4
  %21 = ptrtoint ptr %ecn_mark to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ecn_mark, align 4
  %dq_rate_estimator = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 15, i32 26
  %22 = ptrtoint ptr %dq_rate_estimator to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dq_rate_estimator, align 2
  %conv13 = zext i8 %23 to i32
  %24 = ptrtoint ptr %dq_rate_estimating to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv13, ptr %dq_rate_estimating, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %avg_dq_rate18 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 1, i32 13
  %25 = ptrtoint ptr %avg_dq_rate18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %avg_dq_rate18, align 8
  %mul = mul i32 %26, 15625000
  %shr = lshr i32 %mul, 8
  %27 = ptrtoint ptr %avg_dq_rate to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %avg_dq_rate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call20 = call i32 @gnet_stats_copy_app(ptr noundef %d, ptr noundef nonnull %st, i32 noundef 40) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %st) #9
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pie_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -116
  %sch1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %sch1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch1, align 4
  %dev_queue.i = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i, align 8
  %qdisc_sleeping.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %qdisc_sleeping.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qdisc_sleeping.i, align 4
  %lock.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %params = getelementptr i8, ptr %t, i32 -52
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %1, i32 0, i32 19, i32 1
  %6 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %backlog, align 4
  tail call void @pie_calculate_probability(ptr noundef %params, ptr noundef %add.ptr, i32 noundef %7)
  %tupdate = getelementptr i8, ptr %t, i32 -44
  %8 = ptrtoint ptr %tupdate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tupdate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, %9
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gnet_stats_copy_app(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_qdisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !29, !31, !32, !33, !35, !37}
!llvm.named.register.sp = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__ksymtab_pie_drop_early, !1, !"__ksymtab_pie_drop_early", i1 false, i1 false}
!1 = !{!"../net/sched/sch_pie.c", i32 83, i32 1}
!2 = !{ptr @__ksymtab_pie_process_dequeue, !3, !"__ksymtab_pie_process_dequeue", i1 false, i1 false}
!3 = !{!"../net/sched/sch_pie.c", i32 298, i32 1}
!4 = !{ptr @__ksymtab_pie_calculate_probability, !5, !"__ksymtab_pie_calculate_probability", i1 false, i1 false}
!5 = !{!"../net/sched/sch_pie.c", i32 421, i32 1}
!6 = !{ptr @__initcall__kmod_sch_pie__497_570_pie_module_init6, !7, !"__initcall__kmod_sch_pie__497_570_pie_module_init6", i1 false, i1 false}
!7 = !{!"../net/sched/sch_pie.c", i32 570, i32 1}
!8 = !{ptr @__exitcall_pie_module_exit, !9, !"__exitcall_pie_module_exit", i1 false, i1 false}
!9 = !{!"../net/sched/sch_pie.c", i32 571, i32 1}
!10 = !{ptr @__UNIQUE_ID_description498, !11, !"__UNIQUE_ID_description498", i1 false, i1 false}
!11 = !{!"../net/sched/sch_pie.c", i32 573, i32 1}
!12 = !{ptr @__UNIQUE_ID_author499, !13, !"__UNIQUE_ID_author499", i1 false, i1 false}
!13 = !{!"../net/sched/sch_pie.c", i32 574, i32 1}
!14 = !{ptr @__UNIQUE_ID_author500, !15, !"__UNIQUE_ID_author500", i1 false, i1 false}
!15 = !{!"../net/sched/sch_pie.c", i32 575, i32 1}
!16 = !{ptr @__UNIQUE_ID_file501, !17, !"__UNIQUE_ID_file501", i1 false, i1 false}
!17 = !{!"../net/sched/sch_pie.c", i32 576, i32 1}
!18 = !{ptr @__UNIQUE_ID_license502, !17, !"__UNIQUE_ID_license502", i1 false, i1 false}
!19 = !{ptr @pie_qdisc_ops, !20, !"pie_qdisc_ops", i1 false, i1 false}
!20 = !{!"../net/sched/sch_pie.c", i32 545, i32 25}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!25 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pie_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/sched/sch_pie.c", i32 448, i32 2}
!28 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pie_policy, !34, !"pie_policy", i1 false, i1 false}
!34 = !{!"../net/sched/sch_pie.c", i32 127, i32 32}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/netlink.h", i32 991, i32 3}
!39 = !{!"sp"}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148199778, i64 2148200058, i64 2148200392, i64 2148200726}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2149877512}
!54 = !{i64 2149882444}
!55 = !{i64 2149904156}
!56 = !{i64 2149909048}
!57 = !{i64 2149985505}
!58 = !{i64 2149985830}
