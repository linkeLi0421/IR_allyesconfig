; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_fib.c_pt.bc'
source_filename = "../net/netfilter/nft_fib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nft_fib_policy\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib_policy\09\09\09\09"
module asm "\09.long\09__crc_nft_fib_policy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib_policy\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib_policy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib_validate\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib_validate\09\09\09\09"
module asm "\09.long\09__crc_nft_fib_validate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib_validate\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib_validate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib_init\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib_init\09\09\09\09"
module asm "\09.long\09__crc_nft_fib_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib_init:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib_init\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib_dump\09\09\09\09"
module asm "\09.long\09__crc_nft_fib_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib_dump\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib_store_result\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib_store_result\09\09\09\09"
module asm "\09.long\09__crc_nft_fib_store_result\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib_store_result:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib_store_result\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib_store_result:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_fib = type { i8, i8, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.16, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.112, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.16 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.112 = type { ptr }
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

@nft_fib_policy = dso_local constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_nft_fib_policy = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib_policy = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib_policy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib_policy to i32), ptr @__kstrtab_nft_fib_policy, ptr @__kstrtabns_nft_fib_policy }, section "___ksymtab+nft_fib_policy", align 4
@__kstrtab_nft_fib_validate = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib_validate = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib_validate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib_validate to i32), ptr @__kstrtab_nft_fib_validate, ptr @__kstrtabns_nft_fib_validate }, section "___ksymtab_gpl+nft_fib_validate", align 4
@__kstrtab_nft_fib_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib_init = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib_init to i32), ptr @__kstrtab_nft_fib_init, ptr @__kstrtabns_nft_fib_init }, section "___ksymtab_gpl+nft_fib_init", align 4
@__kstrtab_nft_fib_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib_dump to i32), ptr @__kstrtab_nft_fib_dump, ptr @__kstrtabns_nft_fib_dump }, section "___ksymtab_gpl+nft_fib_dump", align 4
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nft_fib_store_result.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/nft_fib.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_nft_fib_store_result = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib_store_result = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib_store_result = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib_store_result to i32), ptr @__kstrtab_nft_fib_store_result, ptr @__kstrtabns_nft_fib_store_result }, section "___ksymtab_gpl+nft_fib_store_result", align 4
@__UNIQUE_ID_file420 = internal constant [35 x i8] c"nft_fib.file=net/netfilter/nft_fib\00", section ".modinfo", align 1
@__UNIQUE_ID_license421 = internal constant [20 x i8] c"nft_fib.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author422 = internal constant [47 x i8] c"nft_fib.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"nft_fib_policy\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 149, i32 35 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [27 x i8] c"../net/netfilter/nft_fib.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 152, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author422, ptr @__UNIQUE_ID_file420, ptr @__UNIQUE_ID_license421, ptr @__ksymtab_nft_fib_dump, ptr @__ksymtab_nft_fib_init, ptr @__ksymtab_nft_fib_policy, ptr @__ksymtab_nft_fib_store_result, ptr @__ksymtab_nft_fib_validate, ptr @nft_fib_policy, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_fib_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %result = getelementptr inbounds %struct.nft_fib, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %result, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.epilog_crit_edge
    i8 2, label %entry.sw.epilog_crit_edge12
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %and3 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %. = select i1 %tobool4.not, i32 31, i32 28
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge12
  %hooks.0 = phi i32 [ 1, %entry.sw.epilog_crit_edge ], [ 1, %entry.sw.epilog_crit_edge12 ], [ 7, %sw.bb1.sw.epilog_crit_edge ], [ %., %if.else ]
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain, align 4
  %call8 = tail call i32 @nft_chain_validate_hooks(ptr noundef %6, i32 noundef %hooks.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_fib_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %flags, align 4
  %9 = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %10 = icmp ult i32 %9, 63
  br i1 %10, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %.fr = freeze i32 %7
  %and20 = and i32 %.fr, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 24
  br i1 %cmp21, label %if.end13.cleanup_crit_edge, label %switch.early.test

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.early.test:                                ; preds = %if.end13
  %and15 = and i32 %.fr, 3
  %11 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and15, label %if.end28 [
    i32 3, label %switch.early.test.cleanup_crit_edge
    i32 0, label %switch.early.test.cleanup_crit_edge72
  ]

switch.early.test.cleanup_crit_edge72:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28:                                         ; preds = %switch.early.test
  %12 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i71, align 4
  %conv = trunc i32 %15 to i8
  %result = getelementptr inbounds %struct.nft_fib, ptr %data.i, i32 0, i32 1
  %16 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %result, align 1
  %17 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %conv, label %if.end28.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb38
    i8 3, label %if.end28.sw.epilog_crit_edge
  ]

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end28
  %and34 = and i32 %.fr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end28
  %and40 = and i32 %.fr, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %sw.bb38.sw.epilog_crit_edge, label %sw.bb38.cleanup_crit_edge

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end28.sw.epilog_crit_edge
  %len.0 = phi i32 [ 4, %sw.bb.sw.epilog_crit_edge ], [ 16, %sw.bb38.sw.epilog_crit_edge ], [ 4, %if.end28.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call46 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %19, ptr noundef %data.i, ptr noundef null, i32 noundef 0, i32 noundef %len.0) #5
  %20 = tail call i32 @llvm.smin.i32(i32 %call46, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb38.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge72, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb38.cleanup_crit_edge ], [ -22, %if.end28.cleanup_crit_edge ], [ %20, %sw.epilog ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %switch.early.test.cleanup_crit_edge72 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_fib_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i15 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %result = getelementptr inbounds %struct.nft_fib, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result, align 1
  %conv2 = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv2, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i15) #5
  %7 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i15, align 4
  %call.i16 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i15) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool8.not = icmp ne i32 %call.i16, 0
  %. = sext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_fib_store_result(ptr noundef %reg, ptr nocapture noundef readonly %priv, ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.nft_fib, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %result, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %1, label %land.end [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %sw.bb.cond.end_crit_edge, label %cond.true

sw.bb.cond.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %ifindex = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ifindex, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %sw.bb.cond.end_crit_edge
  %cond = phi i32 [ %4, %cond.true ], [ 0, %sw.bb.cond.end_crit_edge ]
  %flags = getelementptr inbounds %struct.nft_fib, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool3 = icmp ne i32 %cond, 0
  %lnot.ext = zext i1 %tobool3 to i32
  %cond7 = select i1 %tobool1.not, i32 %cond, i32 %lnot.ext
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond7, ptr %reg, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %flags9 = getelementptr inbounds %struct.nft_fib, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags9, align 4
  %and10 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %tobool12 = icmp ne ptr %dev, null
  %lnot.ext16 = zext i1 %tobool12 to i32
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext16, ptr %reg, align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %tobool17.not = icmp eq ptr %dev, null
  %spec.select = select i1 %tobool17.not, ptr @.str, ptr %dev
  %call = tail call ptr @strncpy(ptr noundef %reg, ptr noundef nonnull %spec.select, i32 noundef 16)
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b74 = load i1, ptr @nft_fib_store_result.__already_done, align 1
  br i1 %.b74, label %land.end.if.end54_crit_edge, label %if.then32, !prof !31

land.end.if.end54_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then32:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nft_fib_store_result.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 9, ptr noundef null) #5
  br label %if.end54

if.end54:                                         ; preds = %if.then32, %land.end.if.end54_crit_edge
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end54, %if.else, %if.then, %cond.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @nft_fib_policy, !1, !"nft_fib_policy", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_fib.c", i32 17, i32 25}
!2 = !{ptr @__ksymtab_nft_fib_policy, !3, !"__ksymtab_nft_fib_policy", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_fib.c", i32 22, i32 1}
!4 = !{ptr @__ksymtab_nft_fib_validate, !5, !"__ksymtab_nft_fib_validate", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_fib.c", i32 62, i32 1}
!6 = !{ptr @__ksymtab_nft_fib_init, !7, !"__ksymtab_nft_fib_init", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_fib.c", i32 115, i32 1}
!8 = !{ptr @__ksymtab_nft_fib_dump, !9, !"__ksymtab_nft_fib_dump", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_fib.c", i32 132, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nft_fib.c", i32 149, i32 35}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../net/netfilter/nft_fib.c", i32 152, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_nft_fib_store_result, !16, !"__ksymtab_nft_fib_store_result", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_fib.c", i32 157, i32 1}
!17 = !{ptr @__UNIQUE_ID_file420, !18, !"__UNIQUE_ID_file420", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_fib.c", i32 159, i32 1}
!19 = !{ptr @__UNIQUE_ID_license421, !18, !"__UNIQUE_ID_license421", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_author422, !21, !"__UNIQUE_ID_author422", i1 false, i1 false}
!21 = !{!"../net/netfilter/nft_fib.c", i32 160, i32 1}
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
