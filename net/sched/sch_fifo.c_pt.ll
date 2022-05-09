; ModuleID = '/llk/IR_all_yes/net/sched/sch_fifo.c_pt.bc'
source_filename = "../net/sched/sch_fifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pfifo_qdisc_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_pfifo_qdisc_ops\09\09\09\09"
module asm "\09.long\09__crc_pfifo_qdisc_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pfifo_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22pfifo_qdisc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_pfifo_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bfifo_qdisc_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bfifo_qdisc_ops\09\09\09\09"
module asm "\09.long\09__crc_bfifo_qdisc_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bfifo_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bfifo_qdisc_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bfifo_qdisc_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fifo_set_limit\22, \22a\22\09"
module asm "\09.weak\09__crc_fifo_set_limit\09\09\09\09"
module asm "\09.long\09__crc_fifo_set_limit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fifo_set_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22fifo_set_limit\22\09\09\09\09\09"
module asm "__kstrtabns_fifo_set_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fifo_create_dflt\22, \22a\22\09"
module asm "\09.weak\09__crc_fifo_create_dflt\09\09\09\09"
module asm "\09.long\09__crc_fifo_create_dflt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fifo_create_dflt:\09\09\09\09\09"
module asm "\09.asciz \09\22fifo_create_dflt\22\09\09\09\09\09"
module asm "__kstrtabns_fifo_create_dflt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.25 }
%union.anon.25 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.26 }
%union.anon.26 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_fifo_qopt_offload = type { i32, i32, i32, %union.anon.127 }
%union.anon.127 = type { %struct.tc_qopt_offload_stats }
%struct.tc_qopt_offload_stats = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tc_fifo_qopt = type { i32 }
%struct.nlattr = type { i16, i16 }

@pfifo_qdisc_ops = dso_local global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"pfifo\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, ptr @pfifo_enqueue, ptr @qdisc_dequeue_head, ptr @qdisc_peek_head, ptr @fifo_init, ptr @qdisc_reset_queue, ptr @fifo_destroy, ptr @fifo_init, ptr null, ptr null, ptr null, ptr @fifo_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__kstrtab_pfifo_qdisc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_pfifo_qdisc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_pfifo_qdisc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pfifo_qdisc_ops to i32), ptr @__kstrtab_pfifo_qdisc_ops, ptr @__kstrtabns_pfifo_qdisc_ops }, section "___ksymtab+pfifo_qdisc_ops", align 4
@bfifo_qdisc_ops = dso_local global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"bfifo\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, ptr @bfifo_enqueue, ptr @qdisc_dequeue_head, ptr @qdisc_peek_head, ptr @fifo_init, ptr @qdisc_reset_queue, ptr @fifo_destroy, ptr @fifo_init, ptr null, ptr null, ptr null, ptr @fifo_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@__kstrtab_bfifo_qdisc_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bfifo_qdisc_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bfifo_qdisc_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bfifo_qdisc_ops to i32), ptr @__kstrtab_bfifo_qdisc_ops, ptr @__kstrtabns_bfifo_qdisc_ops }, section "___ksymtab+bfifo_qdisc_ops", align 4
@pfifo_head_drop_qdisc_ops = dso_local local_unnamed_addr global %struct.Qdisc_ops { ptr null, ptr null, [16 x i8] c"pfifo_head_drop\00", i32 0, i32 0, ptr @pfifo_tail_enqueue, ptr @qdisc_dequeue_head, ptr @qdisc_peek_head, ptr @fifo_hd_init, ptr @qdisc_reset_queue, ptr null, ptr @fifo_hd_init, ptr null, ptr null, ptr null, ptr @fifo_hd_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fifo\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_fifo_set_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_fifo_set_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_fifo_set_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fifo_set_limit to i32), ptr @__kstrtab_fifo_set_limit, ptr @__kstrtabns_fifo_set_limit }, section "___ksymtab+fifo_set_limit", align 4
@__kstrtab_fifo_create_dflt = external dso_local constant [0 x i8], align 1
@__kstrtabns_fifo_create_dflt = external dso_local constant [0 x i8], align 1
@__ksymtab_fifo_create_dflt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fifo_create_dflt to i32), ptr @__kstrtab_fifo_create_dflt, ptr @__kstrtabns_fifo_create_dflt }, section "___ksymtab+fifo_create_dflt", align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@__qdisc_reset_queue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private constant [24 x i8] c"../net/sched/sch_fifo.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 233, i32 30 }
@___asan_gen_.8 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 271, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 1165, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_bfifo_qdisc_ops, ptr @__ksymtab_fifo_create_dflt, ptr @__ksymtab_fifo_set_limit, ptr @__ksymtab_pfifo_qdisc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pfifo_enqueue(ptr noundef %skb, ptr nocapture noundef %sch, ptr nocapture noundef %to_free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end, !prof !33

if.then:                                          ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %skb, align 8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %5, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %9 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %10 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen, align 4
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %qlen, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %to_free, align 4
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %return

return:                                           ; preds = %if.end, %qdisc_enqueue_tail.exit
  %drops.i.i.i.sink8 = phi ptr [ %drops.i.i.i, %if.end ], [ %backlog.i.i, %qdisc_enqueue_tail.exit ]
  %.sink7 = phi i32 [ 1, %if.end ], [ %13, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %qdisc_enqueue_tail.exit ]
  %17 = ptrtoint ptr %drops.i.i.i.sink8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drops.i.i.i.sink8, align 4
  %inc.i.i.i = add i32 %18, %.sink7
  store i32 %inc.i.i.i, ptr %drops.i.i.i.sink8, align 4
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @qdisc_dequeue_head(ptr noundef %sch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i, !prof !34

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %q, align 4
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %qlen.i, align 4
  %cmp4.i = icmp eq ptr %3, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %if.then.i.if.then_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %12, %10
  store i32 %sub.i, ptr %backlog.i, align 4
  %13 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.i.not.i.i = icmp eq i16 %17, 0
  br i1 %tobool.i.not.i.i, label %if.then.cond.end.i.i_crit_edge, label %cond.true.i.i

if.then.cond.end.i.i_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %gso_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_segs.i.i, align 2
  %conv4.i.i = zext i16 %19 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv4.i.i, %cond.true.i.i ], [ 1, %if.then.cond.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i.i.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i.i.i, label %cond.end.i.i.qdisc_bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i.i

cond.end.i.i.qdisc_bstats_update.exit_crit_edge:  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.lhs.true.i.i.i.i.i:                          ; preds = %cond.end.i.i
  %21 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %24, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !35
  %25 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %30, ptrtoint (ptr @lockdep_recursion to i32)
  %31 = inttoptr i32 %add.i.i.i.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !36
  %34 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i7.i.i.i.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i7.i.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %37, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool20.not.i.i.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool20.not.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %38 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i.i.i.i = icmp eq i32 %41, 0
  br i1 %cmp.i.i.i.i.i, label %land.rhs22.i.i.i.i.i, label %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge

land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs22.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i9.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i9.i.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  %add.i11.i.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i11.i.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !37
  %46 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx46.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx46.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx46.i.i.i.i.i, align 4
  %add47.i.i.i.i.i = add i32 %49, ptrtoint (ptr @hardirqs_enabled to i32)
  %50 = inttoptr i32 %add47.i.i.i.i.i to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %50, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !38
  %53 = tail call i32 @llvm.read_register.i32(metadata !23) #11
  %and.i.i.i12.i.i.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i12.i.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  %sub.i14.i.i.i.i.i = add i32 %56, -1
  store volatile i32 %sub.i14.i.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool54.not.i.i.i.i.i = icmp eq i32 %52, 0
  br i1 %tobool54.not.i.i.i.i.i, label %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i.i

land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

land.rhs58.i.i.i.i.i:                             ; preds = %land.rhs22.i.i.i.i.i
  %.b1.i.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i.i, label %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, label %if.then.i.i.i.i.i, !prof !33

land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %qdisc_bstats_update.exit

if.then.i.i.i.i.i:                                ; preds = %land.rhs58.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %qdisc_bstats_update.exit

qdisc_bstats_update.exit:                         ; preds = %if.then.i.i.i.i.i, %land.rhs58.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.i.qdisc_bstats_update.exit_crit_edge, %cond.end.i.i.qdisc_bstats_update.exit_crit_edge
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %conv.i.i = zext i32 %13 to i64
  %syncp.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2
  %57 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !39
  %dep_map.i.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 2, i32 0, i32 1
  %59 = tail call ptr @llvm.returnaddress(i32 0) #11
  %60 = ptrtoint ptr %59 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %60) #11
  %61 = ptrtoint ptr %bstats.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %bstats.i, align 8
  %add.i.i.i.i = add i64 %62, %conv.i.i
  store i64 %add.i.i.i.i, ptr %bstats.i, align 8
  %packets2.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18, i32 1
  %conv.i7.i.i.i = zext i32 %cond.i.i to i64
  %63 = ptrtoint ptr %packets2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %packets2.i.i.i, align 8
  %add.i8.i.i.i = add i64 %64, %conv.i7.i.i.i
  store i64 %add.i8.i.i.i, ptr %packets2.i.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i.i, i32 noundef %60) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !40
  %65 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %66, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %qdisc_bstats_update.exit, %entry.if.end_crit_edge
  ret ptr %1
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @qdisc_peek_head(ptr nocapture noundef readonly %sch) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %q, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_init(ptr nocapture noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  %qopt.i = alloca %struct.tc_fifo_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 16
  %cmp.i = icmp eq ptr %1, @bfifo_qdisc_ops
  %cmp1.i = icmp eq ptr %opt, null
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queue_len.i, align 16
  br i1 %cmp.i, label %if.end13.i.thread, label %if.end13.i.thread7

if.end13.i.thread7:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %limit12.i9 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %8 = ptrtoint ptr %limit12.i9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %limit12.i9, align 4
  br label %if.end25.i

if.end13.i.thread:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add i32 %10, %conv.i.i
  %mul.i = mul i32 %add.i.i, %7
  %limit12.i5 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %13 = ptrtoint ptr %limit12.i5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %limit12.i5, align 4
  br label %if.then15.i

if.else.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opt, align 2
  %16 = and i16 %15, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %16)
  %cmp8.i = icmp eq i16 %16, 4
  br i1 %cmp8.i, label %if.else.i.cleanup_crit_edge, label %if.end13.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13.i:                                       ; preds = %if.else.i
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %limit12.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %19 = ptrtoint ptr %limit12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %limit12.i, align 4
  br i1 %cmp.i, label %if.end13.i.if.then15.i_crit_edge, label %if.end13.i.if.end25.i_crit_edge

if.end13.i.if.end25.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.end13.i.if.then15.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i.if.then15.i_crit_edge, %if.end13.i.thread
  %.sink.i6 = phi i32 [ %mul.i, %if.end13.i.thread ], [ %18, %if.end13.i.if.then15.i_crit_edge ]
  %dev_queue.i3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %20 = ptrtoint ptr %dev_queue.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_queue.i3.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %mtu.i4.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %mtu.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu.i4.i, align 4
  %hard_header_len.i5.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len.i5.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hard_header_len.i5.i, align 2
  %conv.i6.i = zext i16 %27 to i32
  %add.i7.i = add i32 %25, %conv.i6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink.i6, i32 %add.i7.i)
  %cmp19.not.i = icmp ult i32 %.sink.i6, %add.i7.i
  br i1 %cmp19.not.i, label %if.then15.i.if.else28.i_crit_edge, label %if.then15.i.if.then27.i_crit_edge

if.then15.i.if.then27.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then15.i.if.else28.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28.i

if.end25.i:                                       ; preds = %if.end13.i.if.end25.i_crit_edge, %if.end13.i.thread7
  %.sink.i10 = phi i32 [ %7, %if.end13.i.thread7 ], [ %18, %if.end13.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink.i10)
  %cmp23.not.i = icmp eq i32 %.sink.i10, 0
  br i1 %cmp23.not.i, label %if.end25.i.if.else28.i_crit_edge, label %if.end25.i.if.then27.i_crit_edge

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.end25.i.if.else28.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.then15.i.if.then27.i_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %29, 4
  store i32 %or.i, ptr %flags.i, align 8
  br label %if.end

if.else28.i:                                      ; preds = %if.end25.i.if.else28.i_crit_edge, %if.then15.i.if.else28.i_crit_edge
  %flags29.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %30 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags29.i, align 8
  %and.i = and i32 %31, -5
  store i32 %and.i, ptr %flags29.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else28.i, %if.then27.i
  %dev_queue.i.i3 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %32 = ptrtoint ptr %dev_queue.i.i3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_queue.i.i3, align 8
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qopt.i) #11
  %36 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 23
  %38 = getelementptr inbounds i8, ptr %qopt.i, i32 12
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 -1, ptr %38, align 4
  %40 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %41, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.fifo_offload_init.exit_crit_edge, label %lor.lhs.false.i

if.end.fifo_offload_init.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %fifo_offload_init.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %35, i32 0, i32 16
  %42 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %43, i32 0, i32 42
  %44 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.fifo_offload_init.exit_crit_edge, label %if.end.i

lor.lhs.false.i.fifo_offload_init.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fifo_offload_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %47 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle.i, align 32
  %49 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %36, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %50 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %parent.i, align 4
  %52 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %37, align 4
  %call6.i = call i32 %45(ptr noundef %35, i32 noundef 17, ptr noundef nonnull %qopt.i) #11
  br label %fifo_offload_init.exit

fifo_offload_init.exit:                           ; preds = %if.end.i, %lor.lhs.false.i.fifo_offload_init.exit_crit_edge, %if.end.fifo_offload_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qopt.i) #11
  br label %cleanup

cleanup:                                          ; preds = %fifo_offload_init.exit, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %fifo_offload_init.exit ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qdisc_reset_queue(ptr nocapture noundef %sch) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %call.i = tail call i32 @rtnl_is_locked() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b50.i = load i1, ptr @__qdisc_reset_queue.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !33

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__qdisc_reset_queue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1165, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 1165) #11
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %qlen.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool37.not.i = icmp eq i32 %1, 0
  br i1 %tobool37.not.i, label %if.end29.i.__qdisc_reset_queue.exit_crit_edge, label %if.then38.i

if.end29.i.__qdisc_reset_queue.exit_crit_edge:    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__qdisc_reset_queue.exit

if.then38.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q, align 4
  %tail.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 4
  tail call void @rtnl_kfree_skbs(ptr noundef %3, ptr noundef %5) #11
  %6 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %q, align 4
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  %8 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %qlen.i, align 4
  br label %__qdisc_reset_queue.exit

__qdisc_reset_queue.exit:                         ; preds = %if.then38.i, %if.end29.i.__qdisc_reset_queue.exit_crit_edge
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %9 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %backlog, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fifo_destroy(ptr nocapture noundef readonly %sch) #3 align 64 {
entry:
  %qopt.i = alloca %struct.tc_fifo_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue.i.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qopt.i) #11
  %4 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 23
  %6 = getelementptr inbounds i8, ptr %qopt.i, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 -1, ptr %6, align 4
  %8 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i, align 16
  %and.i.i = and i64 %9, 562949953421312
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.fifo_offload_destroy.exit_crit_edge, label %lor.lhs.false.i

entry.fifo_offload_destroy.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fifo_offload_destroy.exit

lor.lhs.false.i:                                  ; preds = %entry
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %10 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_ops.i, align 8
  %ndo_setup_tc.i = getelementptr inbounds %struct.net_device_ops, ptr %11, i32 0, i32 42
  %12 = ptrtoint ptr %ndo_setup_tc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndo_setup_tc.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.fifo_offload_destroy.exit_crit_edge, label %if.end.i

lor.lhs.false.i.fifo_offload_destroy.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fifo_offload_destroy.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %15 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %handle.i, align 32
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %4, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %parent.i, align 4
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %5, align 4
  %call6.i = call i32 %13(ptr noundef %3, i32 noundef 17, ptr noundef nonnull %qopt.i) #11
  br label %fifo_offload_destroy.exit

fifo_offload_destroy.exit:                        ; preds = %if.end.i, %lor.lhs.false.i.fifo_offload_destroy.exit_crit_edge, %entry.fifo_offload_destroy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qopt.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_dump(ptr noundef %sch, ptr noundef %skb) #3 align 64 {
entry:
  %opt.i = alloca %struct.tc_fifo_qopt, align 4
  %qopt.i = alloca %struct.tc_fifo_qopt_offload, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %qopt.i) #11
  %0 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 2
  %2 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tc_fifo_qopt_offload, ptr %qopt.i, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %qopt.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %qopt.i, align 4
  %handle.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %5 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %handle.i, align 32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %0, align 4
  %parent.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 8
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %1, align 4
  %bstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 18
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bstats.i, ptr %2, align 4
  %qstats.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %qstats.i, ptr %3, align 4
  %call.i = call i32 @qdisc_offload_dump_helper(ptr noundef %sch, i32 noundef 17, ptr noundef nonnull %qopt.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %qopt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt.i) #11
  %limit1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %13 = ptrtoint ptr %limit1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %limit1.i, align 4
  %15 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %opt.i, align 4
  %call.i4 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %opt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.__fifo_dump.exit_crit_edge

if.end.__fifo_dump.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fifo_dump.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  br label %__fifo_dump.exit

__fifo_dump.exit:                                 ; preds = %if.end.i, %if.end.__fifo_dump.exit_crit_edge
  %retval.0.i = phi i32 [ %17, %if.end.i ], [ -1, %if.end.__fifo_dump.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt.i) #11
  br label %cleanup

cleanup:                                          ; preds = %__fifo_dump.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__fifo_dump.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bfifo_enqueue(ptr noundef %skb, ptr nocapture noundef %sch, ptr nocapture noundef %to_free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %backlog, align 4
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %2 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cb.i.i, align 4
  %add = add i32 %3, %1
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %4 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp.not = icmp ugt i32 %add, %5
  br i1 %cmp.not, label %if.end, label %if.then, !prof !34

if.then:                                          ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %skb, align 8
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %7, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %11 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i, align 4
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %qlen.i.i, align 4
  %14 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cb.i.i, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %to_free, align 4
  %18 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %skb, align 8
  store ptr %skb, ptr %to_free, align 4
  %drops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  br label %return

return:                                           ; preds = %if.end, %qdisc_enqueue_tail.exit
  %drops.i.i.i.sink10 = phi ptr [ %drops.i.i.i, %if.end ], [ %backlog, %qdisc_enqueue_tail.exit ]
  %.sink9 = phi i32 [ 1, %if.end ], [ %15, %qdisc_enqueue_tail.exit ]
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %qdisc_enqueue_tail.exit ]
  %19 = ptrtoint ptr %drops.i.i.i.sink10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %drops.i.i.i.sink10, align 4
  %inc.i.i.i = add i32 %20, %.sink9
  store i32 %inc.i.i.i, ptr %drops.i.i.i.sink10, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pfifo_tail_enqueue(ptr noundef %skb, ptr noundef %sch, ptr nocapture noundef %to_free) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %qlen = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 2
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 8
  %limit = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %2 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end, !prof !33

if.then:                                          ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %skb, align 8
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %skb, ptr %5, align 8
  br label %qdisc_enqueue_tail.exit

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %q.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %tail.i.i, align 4
  br label %qdisc_enqueue_tail.exit

qdisc_enqueue_tail.exit:                          ; preds = %if.else.i.i, %if.then.i.i
  %qh.sink.i.i = phi ptr [ %q.i, %if.else.i.i ], [ %tail.i.i, %if.then.i.i ]
  %9 = ptrtoint ptr %qh.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %qh.sink.i.i, align 4
  %10 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qlen, align 4
  %inc.i.i = add i32 %11, 1
  store i32 %inc.i.i, ptr %qlen, align 4
  %cb.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %12 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cb.i.i.i.i, align 4
  %backlog.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %14 = ptrtoint ptr %backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backlog.i.i, align 4
  %add.i.i = add i32 %15, %13
  store i32 %add.i.i, ptr %backlog.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %q = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17
  %backlog = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %backlog, align 4
  tail call fastcc void @__qdisc_queue_drop_head(ptr noundef %sch, ptr noundef %q, ptr noundef %to_free)
  %drops.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 2
  %18 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drops.i.i, align 4
  %inc.i.i17 = add i32 %19, 1
  store i32 %inc.i.i17, ptr %drops.i.i, align 4
  %tail.i.i18 = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 17, i32 1
  %20 = ptrtoint ptr %tail.i.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i18, align 4
  %tobool.not.i.i19 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i19, label %if.else.i.i22, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %skb, align 8
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %skb, ptr %21, align 8
  br label %qdisc_enqueue_tail.exit29

if.else.i.i22:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %tail.i.i18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %skb, ptr %tail.i.i18, align 4
  br label %qdisc_enqueue_tail.exit29

qdisc_enqueue_tail.exit29:                        ; preds = %if.else.i.i22, %if.then.i.i20
  %qh.sink.i.i23 = phi ptr [ %q, %if.else.i.i22 ], [ %tail.i.i18, %if.then.i.i20 ]
  %25 = ptrtoint ptr %qh.sink.i.i23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %skb, ptr %qh.sink.i.i23, align 4
  %26 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen, align 4
  %inc.i.i25 = add i32 %27, 1
  store i32 %inc.i.i25, ptr %qlen, align 4
  %cb.i.i.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %28 = ptrtoint ptr %cb.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cb.i.i.i.i26, align 4
  %30 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %backlog, align 4
  %add.i.i28 = add i32 %31, %29
  store i32 %add.i.i28, ptr %backlog, align 4
  %sub = sub i32 %17, %add.i.i28
  tail call void @qdisc_tree_reduce_backlog(ptr noundef %sch, i32 noundef 0, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %qdisc_enqueue_tail.exit29, %qdisc_enqueue_tail.exit
  %retval.0 = phi i32 [ 0, %qdisc_enqueue_tail.exit ], [ 2, %qdisc_enqueue_tail.exit29 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fifo_hd_init(ptr nocapture noundef %sch, ptr noundef readonly %opt, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 4
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 16
  %cmp.i = icmp eq ptr %1, @bfifo_qdisc_ops
  %cmp1.i = icmp eq ptr %opt, null
  br i1 %cmp1.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %dev_queue.i.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %2 = ptrtoint ptr %dev_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_queue.i.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %tx_queue_len.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 107
  %6 = ptrtoint ptr %tx_queue_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_queue_len.i, align 16
  br i1 %cmp.i, label %if.end13.thread.i, label %if.end13.thread11.i

if.end13.thread11.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %limit1213.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %8 = ptrtoint ptr %limit1213.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %limit1213.i, align 4
  br label %if.end25.i

if.end13.thread.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %9 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu.i.i, align 4
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %add.i.i = add i32 %10, %conv.i.i
  %mul.i = mul i32 %add.i.i, %7
  %limit129.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %13 = ptrtoint ptr %limit129.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i, ptr %limit129.i, align 4
  br label %if.then15.i

if.else.i:                                        ; preds = %entry
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %opt, align 2
  %16 = and i16 %15, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %16)
  %cmp8.i = icmp eq i16 %16, 4
  br i1 %cmp8.i, label %if.else.i.__fifo_init.exit_crit_edge, label %if.end13.i

if.else.i.__fifo_init.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fifo_init.exit

if.end13.i:                                       ; preds = %if.else.i
  %add.ptr.i.i = getelementptr i8, ptr %opt, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %limit12.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %19 = ptrtoint ptr %limit12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %limit12.i, align 4
  br i1 %cmp.i, label %if.end13.i.if.then15.i_crit_edge, label %if.end13.i.if.end25.i_crit_edge

if.end13.i.if.end25.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25.i

if.end13.i.if.then15.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i.if.then15.i_crit_edge, %if.end13.thread.i
  %.sink10.i = phi i32 [ %mul.i, %if.end13.thread.i ], [ %18, %if.end13.i.if.then15.i_crit_edge ]
  %dev_queue.i3.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %20 = ptrtoint ptr %dev_queue.i3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_queue.i3.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 128
  %mtu.i4.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %mtu.i4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mtu.i4.i, align 4
  %hard_header_len.i5.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 19
  %26 = ptrtoint ptr %hard_header_len.i5.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hard_header_len.i5.i, align 2
  %conv.i6.i = zext i16 %27 to i32
  %add.i7.i = add i32 %25, %conv.i6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %.sink10.i, i32 %add.i7.i)
  %cmp19.not.i = icmp ult i32 %.sink10.i, %add.i7.i
  br i1 %cmp19.not.i, label %if.then15.i.if.else28.i_crit_edge, label %if.then15.i.if.then27.i_crit_edge

if.then15.i.if.then27.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.then15.i.if.else28.i_crit_edge:                ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28.i

if.end25.i:                                       ; preds = %if.end13.i.if.end25.i_crit_edge, %if.end13.thread11.i
  %.sink14.i = phi i32 [ %7, %if.end13.thread11.i ], [ %18, %if.end13.i.if.end25.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.sink14.i)
  %cmp23.not.i = icmp eq i32 %.sink14.i, 0
  br i1 %cmp23.not.i, label %if.end25.i.if.else28.i_crit_edge, label %if.end25.i.if.then27.i_crit_edge

if.end25.i.if.then27.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then27.i

if.end25.i.if.else28.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else28.i

if.then27.i:                                      ; preds = %if.end25.i.if.then27.i_crit_edge, %if.then15.i.if.then27.i_crit_edge
  %flags.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 8
  %or.i = or i32 %29, 4
  store i32 %or.i, ptr %flags.i, align 8
  br label %__fifo_init.exit

if.else28.i:                                      ; preds = %if.end25.i.if.else28.i_crit_edge, %if.then15.i.if.else28.i_crit_edge
  %flags29.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 2
  %30 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags29.i, align 8
  %and.i = and i32 %31, -5
  store i32 %and.i, ptr %flags29.i, align 8
  br label %__fifo_init.exit

__fifo_init.exit:                                 ; preds = %if.else28.i, %if.then27.i, %if.else.i.__fifo_init.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.else28.i ], [ 0, %if.then27.i ], [ -22, %if.else.i.__fifo_init.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_hd_dump(ptr nocapture noundef readonly %sch, ptr noundef %skb) #3 align 64 {
entry:
  %opt.i = alloca %struct.tc_fifo_qopt, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt.i) #11
  %limit1.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 3
  %0 = ptrtoint ptr %limit1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limit1.i, align 4
  %2 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %opt.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %opt.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__fifo_dump.exit_crit_edge

entry.__fifo_dump.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__fifo_dump.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  br label %__fifo_dump.exit

__fifo_dump.exit:                                 ; preds = %if.end.i, %entry.__fifo_dump.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.end.i ], [ -1, %entry.__fifo_dump.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt.i) #11
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fifo_set_limit(ptr noundef %q, i32 noundef %limit) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 16
  %add.ptr = getelementptr %struct.Qdisc_ops, ptr %1, i32 0, i32 2, i32 1
  %call = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %change = getelementptr inbounds %struct.Qdisc_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %change, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #14
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %nla_type = getelementptr inbounds %struct.nlattr, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 36, ptr %nla_type, align 2
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 8, ptr %call7.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call7.i, i32 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %limit, ptr %add.ptr.i, align 4
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 16
  %change12 = getelementptr inbounds %struct.Qdisc_ops, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %change12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %change12, align 4
  %call13 = tail call i32 %11(ptr noundef %q, ptr noundef nonnull %call7.i, ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call13, %if.then7 ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fifo_create_dflt(ptr nocapture noundef readonly %sch, ptr noundef %ops, i32 noundef %limit, ptr noundef %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_queue = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 9
  %0 = ptrtoint ptr %dev_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_queue, align 8
  %handle = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 7
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 32
  %and = and i32 %3, -65536
  %or = or i32 %and, 1
  %call = tail call ptr @qdisc_create_dflt(ptr noundef %1, ptr noundef %ops, i32 noundef %or, ptr noundef %extack) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %if.then

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false

if.then:                                          ; preds = %entry
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 16
  %add.ptr.i = getelementptr %struct.Qdisc_ops, ptr %5, i32 0, i32 2, i32 1
  %call.i = tail call i32 @strncmp(ptr noundef %add.ptr.i, ptr noundef nonnull dereferenceable(5) @.str, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cond.end_crit_edge

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end.i:                                         ; preds = %if.then
  %change.i = getelementptr inbounds %struct.Qdisc_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %change.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %change.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.cond.end_crit_edge, label %if.end3.i

if.end.i.cond.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 8) #14
  %tobool6.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not.i, label %if.end3.i.if.then2_crit_edge, label %fifo_set_limit.exit

if.end3.i.if.then2_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

fifo_set_limit.exit:                              ; preds = %if.end3.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 36, ptr %nla_type.i, align 2
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %call7.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %limit, ptr %add.ptr.i.i, align 4
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 16
  %change12.i = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %change12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %change12.i, align 4
  %call13.i = tail call i32 %15(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i, ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp = icmp slt i32 %call13.i, 0
  br i1 %cmp, label %fifo_set_limit.exit.if.then2_crit_edge, label %fifo_set_limit.exit.cond.end_crit_edge

fifo_set_limit.exit.cond.end_crit_edge:           ; preds = %fifo_set_limit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

fifo_set_limit.exit.if.then2_crit_edge:           ; preds = %fifo_set_limit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2

if.then2:                                         ; preds = %fifo_set_limit.exit.if.then2_crit_edge, %if.end3.i.if.then2_crit_edge
  %retval.0.i16 = phi i32 [ %call13.i, %fifo_set_limit.exit.if.then2_crit_edge ], [ -12, %if.end3.i.if.then2_crit_edge ]
  tail call void @qdisc_put(ptr noundef nonnull %call) #11
  br label %cond.false

cond.false:                                       ; preds = %if.then2, %entry.cond.false_crit_edge
  %err.0.ph = phi i32 [ -12, %entry.cond.false_crit_edge ], [ %retval.0.i16, %if.then2 ]
  %16 = inttoptr i32 %err.0.ph to ptr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %fifo_set_limit.exit.cond.end_crit_edge, %if.end.i.cond.end_crit_edge, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %16, %cond.false ], [ %call, %fifo_set_limit.exit.cond.end_crit_edge ], [ %call, %if.then.cond.end_crit_edge ], [ %call, %if.end.i.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qdisc_create_dflt(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_kfree_skbs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qdisc_offload_dump_helper(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @__qdisc_queue_drop_head(ptr nocapture noundef %sch, ptr nocapture noundef %qh, ptr nocapture noundef %to_free) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %qh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qh, align 4
  %cmp.not.i = icmp eq ptr %1, null
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %if.then.i, !prof !34

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %qh to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %qh, align 4
  %qlen.i = getelementptr inbounds %struct.qdisc_skb_head, ptr %qh, i32 0, i32 2
  %5 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %qlen.i, align 4
  %dec.i = add i32 %6, -1
  store i32 %dec.i, ptr %qlen.i, align 4
  %cmp4.i = icmp eq ptr %3, null
  br i1 %cmp4.i, label %if.then5.i, label %if.then.i.if.then_crit_edge

if.then.i.if.then_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %tail.i = getelementptr inbounds %struct.qdisc_skb_head, ptr %qh, i32 0, i32 1
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %if.then

if.then:                                          ; preds = %if.then5.i, %if.then.i.if.then_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cb.i.i, align 4
  %backlog.i = getelementptr inbounds %struct.Qdisc, ptr %sch, i32 0, i32 19, i32 1
  %11 = ptrtoint ptr %backlog.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %backlog.i, align 4
  %sub.i = sub i32 %12, %10
  store i32 %sub.i, ptr %backlog.i, align 4
  %13 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %to_free, align 4
  store ptr %14, ptr %1, align 8
  store ptr %1, ptr %to_free, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qdisc_tree_reduce_backlog(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !22}
!llvm.named.register.sp = !{!23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @pfifo_qdisc_ops, !1, !"pfifo_qdisc_ops", i1 false, i1 false}
!1 = !{!"../net/sched/sch_fifo.c", i32 183, i32 18}
!2 = !{ptr @__ksymtab_pfifo_qdisc_ops, !3, !"__ksymtab_pfifo_qdisc_ops", i1 false, i1 false}
!3 = !{!"../net/sched/sch_fifo.c", i32 196, i32 1}
!4 = !{ptr @bfifo_qdisc_ops, !5, !"bfifo_qdisc_ops", i1 false, i1 false}
!5 = !{!"../net/sched/sch_fifo.c", i32 198, i32 18}
!6 = !{ptr @__ksymtab_bfifo_qdisc_ops, !7, !"__ksymtab_bfifo_qdisc_ops", i1 false, i1 false}
!7 = !{!"../net/sched/sch_fifo.c", i32 211, i32 1}
!8 = !{ptr @pfifo_head_drop_qdisc_ops, !9, !"pfifo_head_drop_qdisc_ops", i1 false, i1 false}
!9 = !{!"../net/sched/sch_fifo.c", i32 213, i32 18}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sched/sch_fifo.c", i32 233, i32 30}
!12 = !{ptr @__ksymtab_fifo_set_limit, !13, !"__ksymtab_fifo_set_limit", i1 false, i1 false}
!13 = !{!"../net/sched/sch_fifo.c", i32 250, i32 1}
!14 = !{ptr @__ksymtab_fifo_create_dflt, !15, !"__ksymtab_fifo_create_dflt", i1 false, i1 false}
!15 = !{!"../net/sched/sch_fifo.c", i32 271, i32 1}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/net/sch_generic.h", i32 1165, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{!"sp"}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2149868357}
!36 = !{i64 2149873289}
!37 = !{i64 2149895001}
!38 = !{i64 2149899893}
!39 = !{i64 2149976350}
!40 = !{i64 2149976675}
