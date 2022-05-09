; ModuleID = '/llk/IR_all_yes/drivers/net/can/dev/skb.c_pt.bc'
source_filename = "../drivers/net/can/dev/skb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+can_put_echo_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_can_put_echo_skb\09\09\09\09"
module asm "\09.long\09__crc_can_put_echo_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_put_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_put_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_put_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_get_echo_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_can_get_echo_skb\09\09\09\09"
module asm "\09.long\09__crc_can_get_echo_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_get_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_get_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_free_echo_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_can_free_echo_skb\09\09\09\09"
module asm "\09.long\09__crc_can_free_echo_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_free_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22can_free_echo_skb\22\09\09\09\09\09"
module asm "__kstrtabns_can_free_echo_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_can_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_can_skb\09\09\09\09"
module asm "\09.long\09__crc_alloc_can_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_can_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_can_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_can_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_canfd_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_canfd_skb\09\09\09\09"
module asm "\09.long\09__crc_alloc_canfd_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_canfd_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_canfd_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_canfd_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+alloc_can_err_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_can_err_skb\09\09\09\09"
module asm "\09.long\09__crc_alloc_can_err_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_can_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_can_err_skb\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_can_err_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
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
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }
%struct.can_frame = type { i32, %union.anon.145, i8, i8, i8, [8 x i8] }
%union.anon.145 = type { i8 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: BUG! echo_skb %d is occupied!\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.can_put_echo_skb = private unnamed_addr constant [17 x i8] c"can_put_echo_skb\00", align 1
@__kstrtab_can_put_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_put_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_put_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_put_echo_skb to i32), ptr @__kstrtab_can_put_echo_skb, ptr @__kstrtabns_can_put_echo_skb }, section "___ksymtab_gpl+can_put_echo_skb", align 4
@.str.1 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"%s: BUG! Trying to access can_priv::echo_skb out of bounds (%u/max %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@__func__.__can_get_echo_skb = private unnamed_addr constant [19 x i8] c"__can_get_echo_skb\00", align 1
@__kstrtab_can_get_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_get_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_get_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_get_echo_skb to i32), ptr @__kstrtab_can_get_echo_skb, ptr @__kstrtabns_can_get_echo_skb }, section "___ksymtab_gpl+can_get_echo_skb", align 4
@__func__.can_free_echo_skb = private unnamed_addr constant [18 x i8] c"can_free_echo_skb\00", align 1
@__kstrtab_can_free_echo_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_free_echo_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_can_free_echo_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_free_echo_skb to i32), ptr @__kstrtab_can_free_echo_skb, ptr @__kstrtabns_can_free_echo_skb }, section "___ksymtab_gpl+can_free_echo_skb", align 4
@__kstrtab_alloc_can_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_can_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_can_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_can_skb to i32), ptr @__kstrtab_alloc_can_skb, ptr @__kstrtabns_alloc_can_skb }, section "___ksymtab_gpl+alloc_can_skb", align 4
@__kstrtab_alloc_canfd_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_canfd_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_canfd_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_canfd_skb to i32), ptr @__kstrtab_alloc_canfd_skb, ptr @__kstrtabns_alloc_canfd_skb }, section "___ksymtab_gpl+alloc_canfd_skb", align 4
@__kstrtab_alloc_can_err_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_can_err_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_can_err_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_can_err_skb to i32), ptr @__kstrtab_alloc_can_err_skb, ptr @__kstrtabns_alloc_can_err_skb }, section "___ksymtab_gpl+alloc_can_err_skb", align 4
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 73, i32 19 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private constant [29 x i8] c"../drivers/net/can/dev/skb.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 89, i32 19 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_alloc_can_err_skb, ptr @__ksymtab_alloc_can_skb, ptr @__ksymtab_alloc_canfd_skb, ptr @__ksymtab_can_free_echo_skb, ptr @__ksymtab_can_get_echo_skb, ptr @__ksymtab_can_put_echo_skb, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_flush_echo_skb(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %0 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %echo_skb_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %echo_skb = getelementptr i8, ptr %dev, i32 2468
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.018
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %5, i32 noundef 0) #5
  %6 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %echo_skb, align 4
  %arrayidx5 = getelementptr ptr, ptr %7, i32 %i.018
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx5, align 4
  %9 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %tx_dropped, align 4
  %11 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_aborted_errors, align 4
  %inc6 = add i32 %12, 1
  store i32 %inc6, ptr %tx_aborted_errors, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc7 = add nuw i32 %i.018, 1
  %13 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %echo_skb_max, align 4
  %cmp = icmp ult i32 %inc7, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %dev, i32 noundef %idx, i32 noundef %frame_len) #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %0 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %echo_skb_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !31

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/can/dev/skb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 45, 0\0A.popsection", ""() #5, !srcloc !32
  unreachable

do.end7:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end7.if.then15_crit_edge, label %lor.lhs.false

do.end7.if.then15_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false:                                    ; preds = %do.end7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  %6 = and i16 %5, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %6)
  %switch = icmp eq i16 %6, 12
  br i1 %switch, label %if.end16, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %do.end7.if.then15_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  %echo_skb = getelementptr i8, ptr %dev, i32 2468
  %7 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %idx
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end16
  %call.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %can_create_echo_skb.exit.thread, label %if.end.i, !prof !33

can_create_echo_skb.exit.thread:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end.i:                                         ; preds = %if.then18
  %11 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %can_create_echo_skb.exit.thread49, label %land.lhs.true.i.i

can_create_echo_skb.exit.thread49:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef %skb) #5
  br label %if.end22

land.lhs.true.i.i:                                ; preds = %if.end.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #5
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #5
  %14 = ptrtoint ptr %skc_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %skc_refcnt.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %16 = phi i32 [ %15, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %16, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #5
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #5
  %18 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #5
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %20 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 %19, i32 %add.i.i.i.i.i, ptr elementtype(i32) %skc_refcnt.i.i) #5, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %19
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !31

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %21 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %22, 1
  %23 = or i32 %add5.i.i.i.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !31

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 0) #5
  %24 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %25 = phi i32 [ %22, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %25, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #5
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge, label %if.then.i.i

refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %can_create_echo_skb.exit

if.then.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sock_efree, ptr %destructor.i.i, align 4
  %27 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %13, ptr %27, align 4
  br label %can_create_echo_skb.exit

can_create_echo_skb.exit:                         ; preds = %if.then.i.i, %refcount_inc_not_zero.exit.i.i.can_create_echo_skb.exit_crit_edge
  call void @consume_skb(ptr noundef %skb) #5
  br label %if.end22

if.end22:                                         ; preds = %can_create_echo_skb.exit, %can_create_echo_skb.exit.thread49
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %30 = getelementptr inbounds %struct.anon.0, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %30, align 8
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i, align 8
  %frame_len24 = getelementptr inbounds %struct.can_skb_priv, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %frame_len24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %frame_len, ptr %frame_len24, align 8
  call void @skb_clone_tx_timestamp(ptr noundef nonnull %call.i) #5
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tx_flags.i, align 1
  %39 = and i8 %38, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i46 = icmp eq i8 %39, 0
  br i1 %tobool.not.i46, label %if.end22.skb_tx_timestamp.exit_crit_edge, label %if.then.i47

if.end22.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_tx_timestamp.exit

if.then.i47:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void @skb_tstamp_tx(ptr noundef nonnull %call.i, ptr noundef null) #5
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i47, %if.end22.skb_tx_timestamp.exit_crit_edge
  %40 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %echo_skb, align 4
  %arrayidx26 = getelementptr ptr, ptr %41, i32 %idx
  %42 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %arrayidx26, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.can_put_echo_skb, i32 noundef %idx) #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %skb_tx_timestamp.exit, %can_create_echo_skb.exit.thread, %if.then15
  %retval.0 = phi i32 [ 0, %if.then15 ], [ -16, %if.else ], [ 0, %skb_tx_timestamp.exit ], [ -12, %can_create_echo_skb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__can_get_echo_skb(ptr noundef %dev, i32 noundef %idx, ptr nocapture noundef writeonly %len_ptr, ptr noundef writeonly %frame_len_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %0 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %echo_skb_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__can_get_echo_skb, i32 noundef %idx, i32 noundef %1) #8
  br label %cleanup24

if.end:                                           ; preds = %entry
  %echo_skb = getelementptr i8, ptr %dev, i32 2468
  %2 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup24_crit_edge, label %if.then2

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.then2:                                         ; preds = %if.end
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.canfd_frame, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2.if.end8_crit_edge
  %storemerge = phi i8 [ %13, %if.else ], [ 0, %if.then2.if.end8_crit_edge ]
  %14 = ptrtoint ptr %len_ptr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %storemerge, ptr %len_ptr, align 1
  %tobool9.not = icmp eq ptr %frame_len_ptr, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %frame_len = getelementptr inbounds %struct.can_skb_priv, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_len, align 8
  %17 = ptrtoint ptr %frame_len_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %frame_len_ptr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  %18 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %echo_skb, align 4
  %arrayidx13 = getelementptr ptr, ptr %19, i32 %idx
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx13, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %21 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp14 = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp14, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, 8192
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %cleanup24

if.else19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %cleanup24

cleanup24:                                        ; preds = %if.else19, %if.then16, %if.end.cleanup24_crit_edge, %if.then
  %retval.1 = phi ptr [ null, %if.then ], [ %5, %if.then16 ], [ null, %if.else19 ], [ null, %if.end.cleanup24_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @can_get_echo_skb(ptr noundef %dev, i32 noundef %idx, ptr noundef writeonly %frame_len_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_skb_max.i = getelementptr i8, ptr %dev, i32 2464
  %0 = ptrtoint ptr %echo_skb_max.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %echo_skb_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not.i = icmp ugt i32 %1, %idx
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.__can_get_echo_skb, i32 noundef %idx, i32 noundef %1) #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %echo_skb.i = getelementptr i8, ptr %dev, i32 2468
  %2 = ptrtoint ptr %echo_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echo_skb.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %and.i = and i32 %11, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.else.i, label %if.then2.i.if.end8.i_crit_edge

if.then2.i.if.end8.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.else.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  %len.i = getelementptr inbounds %struct.canfd_frame, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len.i, align 4
  %phi.cast = zext i8 %13 to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then2.i.if.end8.i_crit_edge
  %storemerge.i = phi i32 [ %phi.cast, %if.else.i ], [ 0, %if.then2.i.if.end8.i_crit_edge ]
  %tobool9.not.i = icmp eq ptr %frame_len_ptr, null
  br i1 %tobool9.not.i, label %if.end8.i.if.end11.i_crit_edge, label %if.then10.i

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %frame_len.i = getelementptr inbounds %struct.can_skb_priv, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %frame_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frame_len.i, align 8
  %16 = ptrtoint ptr %frame_len_ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %frame_len_ptr, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  %17 = ptrtoint ptr %echo_skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %echo_skb.i, align 4
  %arrayidx13.i = getelementptr ptr, ptr %18, i32 %idx
  %19 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx13.i, align 4
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %20 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp14.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp14.i, label %if.end, label %if.else19.i

if.else19.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %if.end11.i
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, 8192
  %21 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #5
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #5, !srcloc !35
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !33

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %23 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %.not.i.i.i.i = icmp sgt i32 %23, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !31

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #5
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %call2 = tail call i32 @netif_rx(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 0) #5
  br label %cleanup

if.else:                                          ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %if.else19.i, %if.end.i.cleanup_crit_edge, %if.then.i
  %retval.0 = phi i32 [ 0, %if.then.i ], [ 0, %if.else19.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ %storemerge.i, %if.else ], [ %storemerge.i, %if.then3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @can_free_echo_skb(ptr noundef %dev, i32 noundef %idx, ptr noundef writeonly %frame_len_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %echo_skb_max = getelementptr i8, ptr %dev, i32 2464
  %0 = ptrtoint ptr %echo_skb_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %echo_skb_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %idx)
  %cmp.not = icmp ugt i32 %1, %idx
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.can_free_echo_skb, i32 noundef %idx, i32 noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %echo_skb = getelementptr i8, ptr %dev, i32 2468
  %2 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echo_skb, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %idx
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then2:                                         ; preds = %if.end
  %tobool6.not = icmp eq ptr %frame_len_ptr, null
  br i1 %tobool6.not, label %if.then2.if.end8_crit_edge, label %if.then7

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %frame_len = getelementptr inbounds %struct.can_skb_priv, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %frame_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_len, align 8
  %10 = ptrtoint ptr %frame_len_ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %frame_len_ptr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then2.if.end8_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %5, i32 noundef 1) #5
  %11 = ptrtoint ptr %echo_skb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %echo_skb, align 4
  %arrayidx10 = getelementptr ptr, ptr %12, i32 %idx
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_can_skb(ptr noundef %dev, ptr nocapture noundef writeonly %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 32, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 12, ptr %protocol, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set6 = or i16 %bf.clear, 8704
  store i16 %bf.set6, ptr %pkt_type, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %5, align 8
  %14 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %skbcnt, align 4
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 16) #5
  %16 = call ptr @memset(ptr %call.i38, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi ptr [ %call.i38, %if.end ], [ null, %entry.cleanup_crit_edge ]
  %17 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %storemerge, ptr %cf, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_canfd_skb(ptr noundef %dev, ptr nocapture noundef writeonly %cfd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 88, i32 noundef 2592) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !33

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 13, ptr %protocol, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 6655
  %bf.set6 = or i16 %bf.clear, 8704
  store i16 %bf.set6, ptr %pkt_type, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %mac_header.i, align 2
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %network_header.i, align 4
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %8 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 16
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 16
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %5, align 8
  %14 = load ptr, ptr %head.i, align 8
  %skbcnt = getelementptr inbounds %struct.can_skb_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %skbcnt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %skbcnt, align 4
  %call.i38 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 72) #5
  %16 = call ptr @memset(ptr %call.i38, i32 0, i32 72)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %storemerge = phi ptr [ %call.i38, %if.end ], [ null, %entry.cleanup_crit_edge ]
  %17 = ptrtoint ptr %cfd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %storemerge, ptr %cfd, align 4
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_can_err_skb(ptr noundef %dev, ptr nocapture noundef %cf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 32, i32 noundef 2592) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_can_skb.exit.thread, label %if.end, !prof !33

alloc_can_skb.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %cf, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %1 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 12, ptr %protocol.i, align 8
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %2 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 6655
  %bf.set6.i = or i16 %bf.clear.i, 8704
  store i16 %bf.set6.i, ptr %pkt_type.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %7 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 19
  %9 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i, ptr %transport_header.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 16
  store ptr %add.ptr.i.i.i, ptr %data.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 16
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %12 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifindex.i, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %6, align 8
  %15 = load ptr, ptr %head.i.i, align 8
  %skbcnt.i = getelementptr inbounds %struct.can_skb_priv, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %skbcnt.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %skbcnt.i, align 4
  %call.i38.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 16) #5
  %17 = getelementptr inbounds i8, ptr %call.i38.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 12)
  %19 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i38.i, ptr %cf, align 4
  %20 = ptrtoint ptr %call.i38.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 536870912, ptr %call.i38.i, align 8
  %21 = load ptr, ptr %cf, align 4
  %22 = getelementptr inbounds %struct.can_frame, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 8, ptr %22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %alloc_can_skb.exit.thread
  ret ptr %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_efree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/can/dev/skb.c", i32 73, i32 19}
!2 = !{ptr @__func__.can_put_echo_skb, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/can/dev/skb.c", i32 73, i32 58}
!4 = !{ptr @__ksymtab_can_put_echo_skb, !5, !"__ksymtab_can_put_echo_skb", i1 false, i1 false}
!5 = !{!"../drivers/net/can/dev/skb.c", i32 80, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/can/dev/skb.c", i32 89, i32 19}
!8 = !{ptr @__func__.__can_get_echo_skb, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/dev/skb.c", i32 90, i32 7}
!10 = !{ptr @__ksymtab_can_get_echo_skb, !11, !"__ksymtab_can_get_echo_skb", i1 false, i1 false}
!11 = !{!"../drivers/net/can/dev/skb.c", i32 150, i32 1}
!12 = !{ptr @__func__.can_free_echo_skb, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/dev/skb.c", i32 163, i32 7}
!14 = !{ptr @__ksymtab_can_free_echo_skb, !15, !"__ksymtab_can_free_echo_skb", i1 false, i1 false}
!15 = !{!"../drivers/net/can/dev/skb.c", i32 178, i32 1}
!16 = !{ptr @__ksymtab_alloc_can_skb, !17, !"__ksymtab_alloc_can_skb", i1 false, i1 false}
!17 = !{!"../drivers/net/can/dev/skb.c", i32 208, i32 1}
!18 = !{ptr @__ksymtab_alloc_canfd_skb, !19, !"__ksymtab_alloc_canfd_skb", i1 false, i1 false}
!19 = !{!"../drivers/net/can/dev/skb.c", i32 239, i32 1}
!20 = !{ptr @__ksymtab_alloc_can_err_skb, !21, !"__ksymtab_alloc_can_err_skb", i1 false, i1 false}
!21 = !{!"../drivers/net/can/dev/skb.c", i32 254, i32 1}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2156887898, i64 2156888387, i64 2156887935, i64 2156887991, i64 2156888025, i64 2156888049, i64 2156888090, i64 2156888111, i64 2156888139, i64 2156888173}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 748567, i64 748591, i64 748612, i64 748629, i64 748646}
!35 = !{i64 2148266361, i64 2148266393, i64 2148266422, i64 2148266456, i64 2148266487, i64 2148266510}
