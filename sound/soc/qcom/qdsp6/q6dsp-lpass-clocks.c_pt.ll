; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c_pt.bc'
source_filename = "../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+q6dsp_clock_dev_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_q6dsp_clock_dev_probe\09\09\09\09"
module asm "\09.long\09__crc_q6dsp_clock_dev_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_q6dsp_clock_dev_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22q6dsp_clock_dev_probe\22\09\09\09\09\09"
module asm "__kstrtabns_q6dsp_clock_dev_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.q6dsp_cc = type { ptr, [104 x ptr], ptr }
%struct.q6dsp_clk_desc = type { ptr, i32, ptr, ptr, ptr }
%struct.q6dsp_clk_init = type { i32, i32, ptr, i32 }
%struct.q6dsp_clk = type { ptr, i32, i32, i32, i32, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@clk_q6dsp_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_q6dsp_prepare, ptr @clk_q6dsp_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_q6dsp_recalc_rate, ptr @clk_q6dsp_round_rate, ptr null, ptr null, ptr null, ptr @clk_q6dsp_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_vote_q6dsp_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_vote_q6dsp_block, ptr @clk_unvote_q6dsp_block, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_q6dsp_clock_dev_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_q6dsp_clock_dev_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_q6dsp_clock_dev_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @q6dsp_clock_dev_probe to i32), ptr @__kstrtab_q6dsp_clock_dev_probe, ptr @__kstrtabns_q6dsp_clock_dev_probe }, section "___ksymtab_gpl+q6dsp_clock_dev_probe", align 4
@q6dsp_of_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid clk specifier (%d, %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"q6dsp_of_clk_hw_get\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@q6dsp_of_clk_hw_get._entry_ptr = internal global ptr @q6dsp_of_clk_hw_get._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"clk_q6dsp_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 79, i32 29 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"clk_vote_q6dsp_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 104, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [45 x i8] c"../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 118, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_q6dsp_clock_dev_probe, ptr @q6dsp_of_clk_hw_get._entry, ptr @q6dsp_of_clk_hw_get._entry_ptr, ptr @clk_q6dsp_ops, ptr @clk_vote_q6dsp_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_q6dsp_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_vote_q6dsp_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q6dsp_of_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @q6dsp_clock_dev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 424, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup39_crit_edge, label %if.end6

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end6:                                          ; preds = %if.end
  %desc7 = getelementptr inbounds %struct.q6dsp_cc, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %desc7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %desc7, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call3, align 4
  %num_clks = getelementptr inbounds %struct.q6dsp_clk_desc, ptr %call3, i32 0, i32 1
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp81.not = icmp eq i32 %5, 0
  br i1 %cmp81.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %6 = getelementptr inbounds i8, ptr %init, i32 4
  br label %for.body

for.cond:                                         ; preds = %if.end14
  %inc = add nuw i32 %i.082, 1
  %7 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_clks, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.q6dsp_clk_init, ptr %3, i32 %i.082
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %11 = call ptr @memset(ptr %6, i32 0, i32 24)
  %name10 = getelementptr %struct.q6dsp_clk_init, ptr %3, i32 %i.082, i32 2
  %12 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name10, align 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %init, align 4
  %call.i78 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i78, null
  br i1 %tobool12.not, label %cleanup.thread, label %if.end14

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  br label %cleanup39

if.end14:                                         ; preds = %for.body
  %15 = ptrtoint ptr %call.i78 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev1, ptr %call.i78, align 4
  %q6dsp_clk_id = getelementptr %struct.q6dsp_clk_init, ptr %3, i32 %i.082, i32 1
  %16 = ptrtoint ptr %q6dsp_clk_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %q6dsp_clk_id, align 4
  %q6dsp_clk_id17 = getelementptr inbounds %struct.q6dsp_clk, ptr %call.i78, i32 0, i32 1
  %18 = ptrtoint ptr %q6dsp_clk_id17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %q6dsp_clk_id17, align 4
  %rate = getelementptr %struct.q6dsp_clk_init, ptr %3, i32 %i.082, i32 3
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %rate19 = getelementptr inbounds %struct.q6dsp_clk, ptr %call.i78, i32 0, i32 3
  %21 = ptrtoint ptr %rate19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rate19, align 4
  %hw = getelementptr inbounds %struct.q6dsp_clk, ptr %call.i78, i32 0, i32 5
  %init20 = getelementptr inbounds %struct.q6dsp_clk, ptr %call.i78, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %init20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init, ptr %init20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool22.not = icmp eq i32 %20, 0
  %spec.select = select i1 %tobool22.not, ptr @clk_vote_q6dsp_ops, ptr @clk_q6dsp_ops
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %spec.select, ptr %ops, align 4
  %arrayidx27 = getelementptr %struct.q6dsp_cc, ptr %call.i, i32 0, i32 1, i32 %10
  %24 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i78, ptr %arrayidx27, align 4
  %call29 = call i32 @devm_clk_hw_register(ptr noundef %dev1, ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  br i1 %tobool30.not, label %for.cond, label %if.end14.cleanup39_crit_edge

if.end14.cleanup39_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end6.for.end_crit_edge
  %call35 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @q6dsp_of_clk_hw_get, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %for.end.cleanup39_crit_edge

for.end.cleanup39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup39

if.end38:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup39

cleanup39:                                        ; preds = %if.end38, %for.end.cleanup39_crit_edge, %if.end14.cleanup39_crit_edge, %cleanup.thread, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.2 = phi i32 [ 0, %if.end38 ], [ -12, %entry.cleanup39_crit_edge ], [ -22, %if.end.cleanup39_crit_edge ], [ %call35, %for.end.cleanup39_crit_edge ], [ -12, %cleanup.thread ], [ %call29, %if.end14.cleanup39_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @q6dsp_of_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %1)
  %cmp = icmp ugt i32 %1, 103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp3 = icmp ugt i32 %3, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %1, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.q6dsp_cc, ptr %data, i32 0, i32 1, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %attributes = getelementptr inbounds %struct.q6dsp_clk, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %attributes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %attributes, align 4
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4, align 4
  %hw = getelementptr inbounds %struct.q6dsp_clk, ptr %10, i32 0, i32 5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %if.then5 ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_q6dsp_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %desc = getelementptr inbounds %struct.q6dsp_cc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %lpass_set_clk = getelementptr inbounds %struct.q6dsp_clk_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %lpass_set_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpass_set_clk, align 4
  %q6dsp_clk_id = getelementptr i8, ptr %hw, i32 -16
  %8 = ptrtoint ptr %q6dsp_clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q6dsp_clk_id, align 4
  %attributes = getelementptr i8, ptr %hw, i32 -12
  %10 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attributes, align 4
  %rate = getelementptr i8, ptr %hw, i32 -8
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %call2 = tail call i32 %7(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef %13) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_q6dsp_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %desc = getelementptr inbounds %struct.q6dsp_cc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %lpass_set_clk = getelementptr inbounds %struct.q6dsp_clk_desc, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %lpass_set_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpass_set_clk, align 4
  %q6dsp_clk_id = getelementptr i8, ptr %hw, i32 -16
  %8 = ptrtoint ptr %q6dsp_clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q6dsp_clk_id, align 4
  %attributes = getelementptr i8, ptr %hw, i32 -12
  %10 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attributes, align 4
  %call2 = tail call i32 %7(ptr noundef %1, i32 noundef %9, i32 noundef %11, i32 noundef 0, i32 noundef 0) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_q6dsp_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_q6dsp_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %rate
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @clk_q6dsp_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rate1 = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %rate1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rate, ptr %rate1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_vote_q6dsp_block(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %desc = getelementptr inbounds %struct.q6dsp_cc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %lpass_vote_clk = getelementptr inbounds %struct.q6dsp_clk_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %lpass_vote_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpass_vote_clk, align 4
  %q6dsp_clk_id = getelementptr i8, ptr %hw, i32 -16
  %8 = ptrtoint ptr %q6dsp_clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q6dsp_clk_id, align 4
  %call3 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %handle = getelementptr i8, ptr %hw, i32 -4
  %call4 = tail call i32 %7(ptr noundef %1, i32 noundef %9, ptr noundef %call3, ptr noundef %handle) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_unvote_q6dsp_block(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %desc = getelementptr inbounds %struct.q6dsp_cc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %lpass_unvote_clk = getelementptr inbounds %struct.q6dsp_clk_desc, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %lpass_unvote_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lpass_unvote_clk, align 4
  %q6dsp_clk_id = getelementptr i8, ptr %hw, i32 -16
  %8 = ptrtoint ptr %q6dsp_clk_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q6dsp_clk_id, align 4
  %handle = getelementptr i8, ptr %hw, i32 -4
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 4
  %call2 = tail call i32 %7(ptr noundef %1, i32 noundef %9, i32 noundef %11) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__ksymtab_q6dsp_clock_dev_probe, !1, !"__ksymtab_q6dsp_clock_dev_probe", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c", i32 186, i32 1}
!2 = !{ptr @clk_q6dsp_ops, !3, !"clk_q6dsp_ops", i1 false, i1 false}
!3 = !{!"../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c", i32 79, i32 29}
!4 = !{ptr @clk_vote_q6dsp_ops, !5, !"clk_vote_q6dsp_ops", i1 false, i1 false}
!5 = !{!"../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c", i32 104, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/qcom/qdsp6/q6dsp-lpass-clocks.c", i32 118, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @q6dsp_of_clk_hw_get._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @q6dsp_of_clk_hw_get._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
