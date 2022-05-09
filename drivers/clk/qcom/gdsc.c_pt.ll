; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/gdsc.c_pt.bc'
source_filename = "../drivers/clk/qcom/gdsc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gdsc_gx_do_nothing_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_gdsc_gx_do_nothing_enable\09\09\09\09"
module asm "\09.long\09__crc_gdsc_gx_do_nothing_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gdsc_gx_do_nothing_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22gdsc_gx_do_nothing_enable\22\09\09\09\09\09"
module asm "__kstrtabns_gdsc_gx_do_nothing_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.gdsc_desc = type { ptr, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.gdsc = type { %struct.generic_pm_domain, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i8, i16, ptr, ptr, i32, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.78 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.78 = type { %struct.mutex }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }

@__kstrtab_gdsc_gx_do_nothing_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_gdsc_gx_do_nothing_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_gdsc_gx_do_nothing_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gdsc_gx_do_nothing_enable to i32), ptr @__kstrtab_gdsc_gx_do_nothing_enable, ptr @__kstrtabns_gdsc_gx_do_nothing_enable }, section "___ksymtab_gpl+gdsc_gx_do_nothing_enable", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/qcom/gdsc.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s status stuck at 'o%s'\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ff\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"n\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [27 x i8] c"../drivers/clk/qcom/gdsc.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 176, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_gdsc_gx_do_nothing_enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gdsc_register(ptr nocapture noundef readonly %desc, ptr noundef %rcdev, ptr noundef %regmap) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %scs2 = getelementptr inbounds %struct.gdsc_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %scs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scs2, align 4
  %num3 = getelementptr inbounds %struct.gdsc_desc, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %num3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #6
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !16

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %call.i, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %9, i32 noundef 3520) #6
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %call.i, align 4
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp157.not = icmp eq i32 %5, 0
  br i1 %cmp157.not, label %for.end.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %num_domains167 = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_domains167 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %num_domains167, align 4
  br label %for.end79

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0158 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.0158
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %supply = getelementptr inbounds %struct.gdsc, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supply, align 8
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end13

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end13:                                         ; preds = %lor.lhs.false
  %call16 = tail call ptr @devm_regulator_get(ptr noundef %1, ptr noundef nonnull %15) #6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %rsupply = getelementptr inbounds %struct.gdsc, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %rsupply to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call16, ptr %rsupply, align 4
  %19 = load ptr, ptr %arrayidx, align 4
  %rsupply19 = getelementptr inbounds %struct.gdsc, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %rsupply19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rsupply19, align 4
  %cmp.i = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %num_domains = getelementptr inbounds %struct.genpd_onecell_data, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %num_domains to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %5, ptr %num_domains, align 4
  br i1 %cmp157.not, label %for.end.for.end79_crit_edge, label %for.body28.lr.ph

for.end.for.end79_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79

for.body28.lr.ph:                                 ; preds = %for.end
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  br label %for.body28

for.cond53.preheader:                             ; preds = %for.inc50
  br i1 %cmp157.not, label %for.cond53.preheader.for.end79_crit_edge, label %for.body55.lr.ph

for.cond53.preheader.for.end79_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79

for.body55.lr.ph:                                 ; preds = %for.cond53.preheader
  %pm_domain = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13
  br label %for.body55

for.body28:                                       ; preds = %for.inc50.for.body28_crit_edge, %for.body28.lr.ph
  %i.1160 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc51, %for.inc50.for.body28_crit_edge ]
  %arrayidx29 = getelementptr ptr, ptr %3, i32 %i.1160
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29, align 4
  %tobool30.not = icmp eq ptr %25, null
  br i1 %tobool30.not, label %for.body28.for.inc50_crit_edge, label %if.end32

for.body28.for.inc50_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc50

if.end32:                                         ; preds = %for.body28
  %26 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %if.then34, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.gdsc, ptr %25, i32 0, i32 18
  %27 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %dev36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx29, align 4
  %regmap39 = getelementptr inbounds %struct.gdsc, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %regmap39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %regmap, ptr %regmap39, align 4
  %31 = load ptr, ptr %arrayidx29, align 4
  %rcdev41 = getelementptr inbounds %struct.gdsc, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %rcdev41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rcdev, ptr %rcdev41, align 4
  %33 = load ptr, ptr %arrayidx29, align 4
  %en_rest_wait_val.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %en_rest_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %en_rest_wait_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i148 = icmp eq i32 %35, 0
  br i1 %tobool.not.i148, label %if.then.i, label %if.end37.if.end.i_crit_edge

if.end37.if.end.i_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %en_rest_wait_val.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %en_rest_wait_val.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end37.if.end.i_crit_edge
  %en_few_wait_val.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 9
  %37 = ptrtoint ptr %en_few_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %en_few_wait_val.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool2.not.i = icmp eq i32 %38, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %en_few_wait_val.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %en_few_wait_val.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %clk_dis_wait_val.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 10
  %40 = ptrtoint ptr %clk_dis_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %clk_dis_wait_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool6.not.i = icmp eq i32 %41, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end5.i.if.end9.i_crit_edge

if.end5.i.if.end9.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %clk_dis_wait_val.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %clk_dis_wait_val.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end9.i_crit_edge
  %43 = ptrtoint ptr %en_rest_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %en_rest_wait_val.i, align 4
  %shl.i = shl i32 %44, 20
  %45 = ptrtoint ptr %en_few_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %en_few_wait_val.i, align 8
  %shl12.i = shl i32 %46, 16
  %or.i = or i32 %shl12.i, %shl.i
  %47 = ptrtoint ptr %clk_dis_wait_val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %clk_dis_wait_val.i, align 4
  %shl14.i = shl i32 %48, 12
  %or15.i = or i32 %or.i, %shl14.i
  %regmap.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 2
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %gdscr.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 3
  %51 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gdscr.i, align 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef %52, i32 noundef 16773126, i32 noundef %or15.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool16.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end9.i.cleanup_crit_edge

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18.i:                                       ; preds = %if.end9.i
  %pwrsts.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 11
  %53 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pwrsts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %54)
  %cmp.i149 = icmp eq i8 %54, 4
  br i1 %cmp.i149, label %if.then20.i, label %if.end18.i.if.end25.i_crit_edge

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end18.i
  %call21.i = call fastcc i32 @gdsc_toggle_logic(ptr noundef %33, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then20.i.if.end25.i_crit_edge, label %if.then20.i.cleanup_crit_edge

if.then20.i.cleanup_crit_edge:                    ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20.i.if.end25.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i.if.end25.i_crit_edge, %if.end18.i.if.end25.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %55 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %val.i.i, align 4, !annotation !17
  %flags.i.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 12
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags.i.i, align 2
  %58 = and i16 %57, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.i = icmp eq i16 %58, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gdscr.i, align 8
  %add.i.i = add i32 %60, 4
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %if.end25.i
  %gds_hw_ctrl.i.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 4
  %61 = ptrtoint ptr %gds_hw_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %gds_hw_ctrl.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool1.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool1.not.i.i, label %if.else4.i.i, label %if.else.i.i.if.end6.i.i_crit_edge

if.else.i.i.if.end6.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %gdscr.i, align 8
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else4.i.i, %if.else.i.i.if.end6.i.i_crit_edge, %if.then.i.i
  %reg.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %64, %if.else4.i.i ], [ %62, %if.else.i.i.if.end6.i.i_crit_edge ]
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call.i160.i = call i32 @regmap_read(ptr noundef %66, i32 noundef %reg.0.i.i, ptr noundef nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool7.not.i.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %gdsc_check_status.exit.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %flags.i.i, align 2
  %69 = and i16 %68, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool13.not.i.i = icmp eq i16 %69, 0
  %70 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i.i, align 4
  %and15.i.i = lshr i32 %71, 16
  %and15.lobit.i.i = and i32 %and15.i.i, 1
  %.lobit.i.i = lshr i32 %71, 31
  %retval.0.i.ph.i = select i1 %tobool13.not.i.i, i32 %.lobit.i.i, i32 %and15.lobit.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.ph.i)
  %tobool31.not.i = icmp eq i32 %retval.0.i.ph.i, 0
  br i1 %tobool31.not.i, label %if.else.i, label %if.end9.i.i.if.then32.i_crit_edge

if.end9.i.i.if.then32.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

gdsc_check_status.exit.i:                         ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %cmp27.i = icmp slt i32 %call.i160.i, 0
  br i1 %cmp27.i, label %gdsc_check_status.exit.i.cleanup_crit_edge, label %gdsc_check_status.exit.i.if.then32.i_crit_edge

gdsc_check_status.exit.i.if.then32.i_crit_edge:   ; preds = %gdsc_check_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32.i

gdsc_check_status.exit.i.cleanup_crit_edge:       ; preds = %gdsc_check_status.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32.i:                                      ; preds = %gdsc_check_status.exit.i.if.then32.i_crit_edge, %if.end9.i.i.if.then32.i_crit_edge
  %rsupply.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 17
  %72 = ptrtoint ptr %rsupply.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rsupply.i, align 4
  %tobool33.not.i = icmp eq ptr %73, null
  br i1 %tobool33.not.i, label %if.then32.i.if.end41.i_crit_edge, label %if.then34.i

if.then32.i.if.end41.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then34.i:                                      ; preds = %if.then32.i
  %call36.i = call i32 @regulator_enable(ptr noundef nonnull %73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 0
  br i1 %cmp37.i, label %if.then34.i.cleanup_crit_edge, label %if.then34.i.if.end41.i_crit_edge

if.then34.i.if.end41.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i

if.then34.i.cleanup_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.i:                                       ; preds = %if.then34.i.if.end41.i_crit_edge, %if.then32.i.if.end41.i_crit_edge
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %flags.i.i, align 2
  %76 = and i16 %75, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool43.not.i = icmp eq i16 %76, 0
  br i1 %tobool43.not.i, label %if.end41.i.if.end51.i_crit_edge, label %if.then44.i

if.end41.i.if.end51.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then44.i:                                      ; preds = %if.end41.i
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %79 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gdscr.i, align 8
  %call.i161.i = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef %80, i32 noundef 1, i32 noundef %or15.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool48.not.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool48.not.i, label %if.then44.i.if.end51.i_crit_edge, label %if.then44.i.cleanup_crit_edge

if.then44.i.cleanup_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44.i.if.end51.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then44.i.if.end51.i_crit_edge, %if.end41.i.if.end51.i_crit_edge
  %81 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %flags.i.i, align 2
  %83 = and i16 %82, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool55.not.i = icmp eq i16 %83, 0
  br i1 %tobool55.not.i, label %if.end51.i.if.end62.i_crit_edge, label %if.then56.i

if.end51.i.if.end62.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then56.i:                                      ; preds = %if.end51.i
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %86 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gdscr.i, align 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef %87, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp58.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp58.i, label %if.then56.i.cleanup_crit_edge, label %if.then56.i.if.end62.i_crit_edge

if.then56.i.if.end62.i_crit_edge:                 ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.i

if.then56.i.cleanup_crit_edge:                    ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62.i:                                       ; preds = %if.then56.i.if.end62.i_crit_edge, %if.end51.i.if.end62.i_crit_edge
  %88 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags.i.i, align 2
  %90 = and i16 %89, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool66.not.i = icmp eq i16 %90, 0
  br i1 %tobool66.not.i, label %if.end62.i.if.then82.i_crit_edge, label %if.then67.i

if.end62.i.if.then82.i_crit_edge:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82.i

if.then67.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i, align 4
  %93 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gdscr.i, align 8
  %call.i.i166.i = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef %94, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.then82.i

if.else.i:                                        ; preds = %if.end9.i.i
  %95 = and i16 %68, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool72.not.i = icmp eq i16 %95, 0
  br i1 %tobool72.not.i, label %lor.lhs.false.i, label %if.then73.i

if.then73.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call74.i = call i32 @gdsc_enable(ptr noundef %33) #6
  br label %if.then82.i

lor.lhs.false.i:                                  ; preds = %if.else.i
  %96 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pwrsts.i, align 8
  %98 = and i8 %97, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool81.not.i = icmp eq i8 %98, 0
  br i1 %tobool81.not.i, label %if.else83.i, label %lor.lhs.false.i.if.then82.i_crit_edge

lor.lhs.false.i.if.then82.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then82.i

if.then82.i:                                      ; preds = %lor.lhs.false.i.if.then82.i_crit_edge, %if.then73.i, %if.then67.i, %if.end62.i.if.then82.i_crit_edge
  %tobool77.not190.i = phi i1 [ true, %lor.lhs.false.i.if.then82.i_crit_edge ], [ false, %if.then73.i ], [ false, %if.end62.i.if.then82.i_crit_edge ], [ false, %if.then67.i ]
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %flags.i.i, align 2
  %101 = and i16 %100, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool.not.i168.i = icmp eq i16 %101, 0
  %spec.select.i.i = select i1 %tobool.not.i168.i, i32 24576, i32 16384
  %cxc_count.i.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 7
  %102 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cxc_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp9.not.i.i = icmp eq i32 %103, 0
  br i1 %cmp9.not.i.i, label %if.then82.i.if.end84.i_crit_edge, label %for.body.lr.ph.i.i

if.then82.i.if.end84.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

for.body.lr.ph.i.i:                               ; preds = %if.then82.i
  %cxcs.i.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %104 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i, align 4
  %106 = ptrtoint ptr %cxcs.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cxcs.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %107, i32 %i.010.i.i
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i170.i = call i32 @regmap_update_bits_base(ptr noundef %105, i32 noundef %109, i32 noundef %spec.select.i.i, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %110 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cxc_count.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %111
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.if.end84.i_crit_edge

for.body.i.i.if.end84.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.else83.i:                                      ; preds = %lor.lhs.false.i
  %112 = and i16 %68, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool.not.i172.i = icmp eq i16 %112, 0
  %spec.select.i173.i = select i1 %tobool.not.i172.i, i32 24576, i32 16384
  %cxc_count.i174.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 7
  %113 = ptrtoint ptr %cxc_count.i174.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cxc_count.i174.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %cmp8.not.i.i = icmp eq i32 %114, 0
  br i1 %cmp8.not.i.i, label %if.else83.i.if.end84.i_crit_edge, label %for.body.lr.ph.i177.i

if.else83.i.if.end84.i_crit_edge:                 ; preds = %if.else83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

for.body.lr.ph.i177.i:                            ; preds = %if.else83.i
  %cxcs.i176.i = getelementptr inbounds %struct.gdsc, ptr %33, i32 0, i32 6
  br label %for.body.i182.i

for.body.i182.i:                                  ; preds = %for.body.i182.i.for.body.i182.i_crit_edge, %for.body.lr.ph.i177.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i177.i ], [ %inc.i180.i, %for.body.i182.i.for.body.i182.i_crit_edge ]
  %115 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i, align 4
  %117 = ptrtoint ptr %cxcs.i176.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cxcs.i176.i, align 4
  %arrayidx.i178.i = getelementptr i32, ptr %118, i32 %i.09.i.i
  %119 = ptrtoint ptr %arrayidx.i178.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %arrayidx.i178.i, align 4
  %call.i.i179.i = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef %120, i32 noundef %spec.select.i173.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc.i180.i = add nuw i32 %i.09.i.i, 1
  %121 = ptrtoint ptr %cxc_count.i174.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %cxc_count.i174.i, align 8
  %cmp.i181.i = icmp ult i32 %inc.i180.i, %122
  br i1 %cmp.i181.i, label %for.body.i182.i.for.body.i182.i_crit_edge, label %for.body.i182.i.if.end84.i_crit_edge

for.body.i182.i.if.end84.i_crit_edge:             ; preds = %for.body.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

for.body.i182.i.for.body.i182.i_crit_edge:        ; preds = %for.body.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i182.i

if.end84.i:                                       ; preds = %for.body.i182.i.if.end84.i_crit_edge, %if.else83.i.if.end84.i_crit_edge, %for.body.i.i.if.end84.i_crit_edge, %if.then82.i.if.end84.i_crit_edge
  %tobool77.not189.i = phi i1 [ %tobool77.not190.i, %if.then82.i.if.end84.i_crit_edge ], [ true, %if.else83.i.if.end84.i_crit_edge ], [ true, %for.body.i182.i.if.end84.i_crit_edge ], [ %tobool77.not190.i, %for.body.i.i.if.end84.i_crit_edge ]
  %123 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %flags.i.i, align 2
  %125 = and i16 %124, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool88.not.i = icmp eq i16 %125, 0
  br i1 %tobool88.not.i, label %if.end84.i.if.end93.i_crit_edge, label %if.then89.i

if.end84.i.if.end93.i_crit_edge:                  ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93.i

if.then89.i:                                      ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags91.i = getelementptr inbounds %struct.generic_pm_domain, ptr %33, i32 0, i32 32
  %126 = ptrtoint ptr %flags91.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %flags91.i, align 4
  %or92.i = or i32 %127, 4
  store i32 %or92.i, ptr %flags91.i, align 4
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then89.i, %if.end84.i.if.end93.i_crit_edge
  %power_off.i = getelementptr inbounds %struct.generic_pm_domain, ptr %33, i32 0, i32 18
  %128 = ptrtoint ptr %power_off.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %power_off.i, align 8
  %tobool95.not.i = icmp eq ptr %129, null
  br i1 %tobool95.not.i, label %if.then96.i, label %if.end93.i.if.end99.i_crit_edge

if.end93.i.if.end99.i_crit_edge:                  ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99.i

if.then96.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %power_off.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @gdsc_disable, ptr %power_off.i, align 8
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %if.end93.i.if.end99.i_crit_edge
  %power_on.i = getelementptr inbounds %struct.generic_pm_domain, ptr %33, i32 0, i32 19
  %131 = ptrtoint ptr %power_on.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %power_on.i, align 4
  %tobool101.not.i = icmp eq ptr %132, null
  br i1 %tobool101.not.i, label %if.then102.i, label %if.end99.i.if.end46_crit_edge

if.end99.i.if.end46_crit_edge:                    ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then102.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %power_on.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @gdsc_enable, ptr %power_on.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then102.i, %if.end99.i.if.end46_crit_edge
  %call108.i = call i32 @pm_genpd_init(ptr noundef %33, ptr noundef null, i1 noundef zeroext %tobool77.not189.i) #6
  %134 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx29, align 4
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  %arrayidx49 = getelementptr ptr, ptr %137, i32 %i.1160
  %138 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %arrayidx49, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %if.end46, %for.body28.for.inc50_crit_edge
  %inc51 = add nuw i32 %i.1160, 1
  %exitcond165.not = icmp eq i32 %inc51, %5
  br i1 %exitcond165.not, label %for.cond53.preheader, label %for.inc50.for.body28_crit_edge

for.inc50.for.body28_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28

for.body55:                                       ; preds = %for.inc77.for.body55_crit_edge, %for.body55.lr.ph
  %i.2163 = phi i32 [ 0, %for.body55.lr.ph ], [ %inc78, %for.inc77.for.body55_crit_edge ]
  %arrayidx56 = getelementptr ptr, ptr %3, i32 %i.2163
  %139 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx56, align 4
  %tobool57.not = icmp eq ptr %140, null
  br i1 %tobool57.not, label %for.body55.for.inc77_crit_edge, label %if.end59

for.body55.for.inc77_crit_edge:                   ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

if.end59:                                         ; preds = %for.body55
  %parent = getelementptr inbounds %struct.gdsc, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %parent, align 8
  %tobool61.not = icmp eq ptr %142, null
  br i1 %tobool61.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 @pm_genpd_add_subdomain(ptr noundef nonnull %142, ptr noundef nonnull %140) #6
  br label %for.inc77

if.else:                                          ; preds = %if.end59
  %143 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pm_domain, align 8
  %tobool.not.i150 = icmp eq ptr %144, null
  %cmp.i151 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i150, %cmp.i151
  br i1 %spec.select.i, label %if.else.for.inc77_crit_edge, label %if.then69

if.else.for.inc77_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc77

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %144, i32 -928
  %call74 = call i32 @pm_genpd_add_subdomain(ptr noundef %add.ptr.i, ptr noundef nonnull %140) #6
  br label %for.inc77

for.inc77:                                        ; preds = %if.then69, %if.else.for.inc77_crit_edge, %if.then62, %for.body55.for.inc77_crit_edge
  %inc78 = add nuw i32 %i.2163, 1
  %exitcond166.not = icmp eq i32 %inc78, %5
  br i1 %exitcond166.not, label %for.inc77.for.end79_crit_edge, label %for.inc77.for.body55_crit_edge

for.inc77.for.body55_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body55

for.inc77.for.end79_crit_edge:                    ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end79

for.end79:                                        ; preds = %for.inc77.for.end79_crit_edge, %for.cond53.preheader.for.end79_crit_edge, %for.end.for.end79_crit_edge, %for.end.thread
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %145 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %of_node, align 8
  %call80 = call i32 @of_genpd_add_provider_onecell(ptr noundef %146, ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end79, %if.then56.i.cleanup_crit_edge, %if.then44.i.cleanup_crit_edge, %if.then34.i.cleanup_crit_edge, %gdsc_check_status.exit.i.cleanup_crit_edge, %if.then20.i.cleanup_crit_edge, %if.end9.i.cleanup_crit_edge, %if.then21, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then21 ], [ %call80, %for.end79 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i.i, %if.end9.i.cleanup_crit_edge ], [ %call21.i, %if.then20.i.cleanup_crit_edge ], [ %call.i160.i, %gdsc_check_status.exit.i.cleanup_crit_edge ], [ %call36.i, %if.then34.i.cleanup_crit_edge ], [ %call.i161.i, %if.then44.i.cleanup_crit_edge ], [ %call.i.i.i, %if.then56.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_add_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gdsc_unregister(ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %scs2 = getelementptr inbounds %struct.gdsc_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %scs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scs2, align 4
  %num3 = getelementptr inbounds %struct.gdsc_desc, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %num3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not = icmp eq i32 %5, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pm_domain = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.035
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %parent = getelementptr inbounds %struct.gdsc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pm_genpd_remove_subdomain(ptr noundef nonnull %9, ptr noundef nonnull %7) #6
  br label %for.inc

if.else:                                          ; preds = %if.end
  %10 = ptrtoint ptr %pm_domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pm_domain, align 8
  %tobool.not.i = icmp eq ptr %11, null
  %cmp.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.else.for.inc_crit_edge, label %if.then11

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %11, i32 -928
  %call16 = tail call i32 @pm_genpd_remove_subdomain(ptr noundef %add.ptr.i, ptr noundef nonnull %7) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else.for.inc_crit_edge, %if.then6, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove_subdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gdsc_gx_do_nothing_enable(ptr nocapture readnone %domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gdsc_toggle_logic(ptr nocapture noundef readonly %sc, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  %not.cmp = xor i1 %cmp, true
  %cond = zext i1 %not.cmp to i32
  br i1 %cmp, label %land.lhs.true, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %rsupply = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 17
  %0 = ptrtoint ptr %rsupply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsupply, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @regulator_enable(ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %regmap = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %gdscr = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 3
  %4 = ptrtoint ptr %gdscr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gdscr, align 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %flags = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 12
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool10.not = icmp ne i16 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp12 = icmp eq i32 %status, 0
  %or.cond = and i1 %cmp12, %tobool10.not
  br i1 %or.cond, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 107374000) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %gds_hw_ctrl = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 4
  %10 = ptrtoint ptr %gds_hw_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gds_hw_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %call19 = tail call fastcc i32 @gdsc_poll_status(ptr noundef %sc, i32 noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true45.critedge, label %do.end, !prof !18

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.generic_pm_domain, ptr %sc, i32 0, i32 10
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  %cond31 = select i1 %cmp12, ptr @.str.3, ptr @.str.2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %14, ptr noundef nonnull %cond31) #6
  br label %cleanup

land.lhs.true45.critedge:                         ; preds = %if.end18
  br i1 %cmp12, label %land.lhs.true48, label %land.lhs.true45.critedge.cleanup_crit_edge

land.lhs.true45.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true45.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true48:                                  ; preds = %land.lhs.true45.critedge
  %rsupply49 = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 17
  %15 = ptrtoint ptr %rsupply49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rsupply49, align 4
  %tobool50.not = icmp eq ptr %16, null
  br i1 %tobool50.not, label %land.lhs.true48.cleanup_crit_edge, label %if.then51

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = tail call i32 @regulator_disable(ptr noundef nonnull %16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %land.lhs.true48.cleanup_crit_edge, %land.lhs.true45.critedge.cleanup_crit_edge, %do.end, %if.then14, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ %call, %if.then.cleanup_crit_edge ], [ %call.i, %if.end5.cleanup_crit_edge ], [ %call53, %if.then51 ], [ 0, %land.lhs.true48.cleanup_crit_edge ], [ 0, %land.lhs.true45.critedge.cleanup_crit_edge ], [ %call19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdsc_enable(ptr noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 18
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i.i:                                      ; preds = %if.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !19
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #6, !srcloc !20
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !21
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %pwrsts.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 11
  %3 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwrsts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %4)
  %cmp.i = icmp eq i8 %4, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i8

if.then.i:                                        ; preds = %if.end
  %reset_count.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 15
  %5 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reset_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.not.i.i = icmp eq i32 %6, 0
  br i1 %cmp1.not.i.i, label %if.then.i.cleanup_crit_edge, label %for.body.lr.ph.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %rcdev.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 13
  %resets.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %rcdev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rcdev.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %deassert.i.i = getelementptr inbounds %struct.reset_control_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %deassert.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %deassert.i.i, align 4
  %13 = ptrtoint ptr %resets.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resets.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %14, i32 %i.02.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i5 = tail call i32 %12(ptr noundef %8, i32 noundef %16) #6
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %17 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reset_count.i.i, align 4
  %cmp.i.i6 = icmp ult i32 %inc.i.i, %18
  br i1 %cmp.i.i6, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i8:                                        ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 12
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 2
  %21 = and i16 %20, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i7 = icmp eq i16 %21, 0
  br i1 %tobool.not.i7, label %if.end.i8.if.end6.i_crit_edge, label %if.then3.i

if.end.i8.if.end6.i_crit_edge:                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i8
  %reset_count.i63.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 15
  %22 = ptrtoint ptr %reset_count.i63.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset_count.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp1.not.i64.i = icmp eq i32 %23, 0
  br i1 %cmp1.not.i64.i, label %if.then3.i.gdsc_assert_reset.exit.i_crit_edge, label %for.body.lr.ph.i67.i

if.then3.i.gdsc_assert_reset.exit.i_crit_edge:    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_assert_reset.exit.i

for.body.lr.ph.i67.i:                             ; preds = %if.then3.i
  %rcdev.i65.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 13
  %resets.i66.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 14
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %for.body.lr.ph.i67.i
  %i.02.i68.i = phi i32 [ 0, %for.body.lr.ph.i67.i ], [ %inc.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ]
  %24 = ptrtoint ptr %rcdev.i65.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rcdev.i65.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %assert.i.i = getelementptr inbounds %struct.reset_control_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %assert.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %assert.i.i, align 4
  %30 = ptrtoint ptr %resets.i66.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %resets.i66.i, align 8
  %arrayidx.i69.i = getelementptr i32, ptr %31, i32 %i.02.i68.i
  %32 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i69.i, align 4
  %call.i70.i = tail call i32 %29(ptr noundef %25, i32 noundef %33) #6
  %inc.i71.i = add nuw i32 %i.02.i68.i, 1
  %34 = ptrtoint ptr %reset_count.i63.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_count.i63.i, align 4
  %cmp.i72.i = icmp ult i32 %inc.i71.i, %35
  br i1 %cmp.i72.i, label %for.body.i73.i.for.body.i73.i_crit_edge, label %for.body.i73.i.gdsc_assert_reset.exit.i_crit_edge

for.body.i73.i.gdsc_assert_reset.exit.i_crit_edge: ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_assert_reset.exit.i

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i73.i

gdsc_assert_reset.exit.i:                         ; preds = %for.body.i73.i.gdsc_assert_reset.exit.i_crit_edge, %if.then3.i.gdsc_assert_reset.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = ptrtoint ptr %reset_count.i63.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %reset_count.i63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp1.not.i75.i = icmp eq i32 %38, 0
  br i1 %cmp1.not.i75.i, label %gdsc_assert_reset.exit.i.if.end6.i_crit_edge, label %for.body.lr.ph.i78.i

gdsc_assert_reset.exit.i.if.end6.i_crit_edge:     ; preds = %gdsc_assert_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.body.lr.ph.i78.i:                             ; preds = %gdsc_assert_reset.exit.i
  %rcdev.i76.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 13
  %resets.i77.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 14
  br label %for.body.i85.i

for.body.i85.i:                                   ; preds = %for.body.i85.i.for.body.i85.i_crit_edge, %for.body.lr.ph.i78.i
  %i.02.i79.i = phi i32 [ 0, %for.body.lr.ph.i78.i ], [ %inc.i83.i, %for.body.i85.i.for.body.i85.i_crit_edge ]
  %39 = ptrtoint ptr %rcdev.i76.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rcdev.i76.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %deassert.i80.i = getelementptr inbounds %struct.reset_control_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %deassert.i80.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %deassert.i80.i, align 4
  %45 = ptrtoint ptr %resets.i77.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %resets.i77.i, align 8
  %arrayidx.i81.i = getelementptr i32, ptr %46, i32 %i.02.i79.i
  %47 = ptrtoint ptr %arrayidx.i81.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i81.i, align 4
  %call.i82.i = tail call i32 %44(ptr noundef %40, i32 noundef %48) #6
  %inc.i83.i = add nuw i32 %i.02.i79.i, 1
  %49 = ptrtoint ptr %reset_count.i63.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reset_count.i63.i, align 4
  %cmp.i84.i = icmp ult i32 %inc.i83.i, %50
  br i1 %cmp.i84.i, label %for.body.i85.i.for.body.i85.i_crit_edge, label %for.body.i85.i.if.end6.i_crit_edge

for.body.i85.i.if.end6.i_crit_edge:               ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

for.body.i85.i.for.body.i85.i_crit_edge:          ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85.i

if.end6.i:                                        ; preds = %for.body.i85.i.if.end6.i_crit_edge, %gdsc_assert_reset.exit.i.if.end6.i_crit_edge, %if.end.i8.if.end6.i_crit_edge
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags.i, align 2
  %conv8.i = zext i16 %52 to i32
  %and9.i = and i32 %conv8.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end6.i.if.end18.i_crit_edge, label %if.then11.i

if.end6.i.if.end18.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then11.i:                                      ; preds = %if.end6.i
  %and14.i = and i32 %conv8.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.then11.i.if.end17.i_crit_edge, label %if.then16.i

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %53 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i.i, align 4
  %clamp_io_ctrl.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 5
  %55 = ptrtoint ptr %clamp_io_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clamp_io_ctrl.i.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %56, i32 noundef 16, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #6
  %58 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i.i, align 4
  %60 = ptrtoint ptr %clamp_io_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %clamp_io_ctrl.i.i, align 8
  %call.i7.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %61, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.then11.i.if.end17.i_crit_edge
  %regmap.i87.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %62 = ptrtoint ptr %regmap.i87.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i87.i, align 4
  %clamp_io_ctrl.i88.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 5
  %64 = ptrtoint ptr %clamp_io_ctrl.i88.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %clamp_io_ctrl.i88.i, align 8
  %call.i.i89.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef %65, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end17.i, %if.end6.i.if.end18.i_crit_edge
  %call19.i = tail call fastcc i32 @gdsc_toggle_logic(ptr noundef %domain, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.cleanup_crit_edge

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.i:                                       ; preds = %if.end18.i
  %66 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pwrsts.i, align 8
  %68 = and i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool26.not.i = icmp eq i8 %68, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then27.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end22.i
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %flags.i, align 2
  %71 = and i16 %70, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i.i = icmp eq i16 %71, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 24576, i32 16384
  %cxc_count.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 7
  %72 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cxc_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp9.not.i.i = icmp eq i32 %73, 0
  br i1 %cmp9.not.i.i, label %if.then27.i.if.end28.i_crit_edge, label %for.body.lr.ph.i91.i

if.then27.i.if.end28.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

for.body.lr.ph.i91.i:                             ; preds = %if.then27.i
  %regmap.i90.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %cxcs.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 6
  br label %for.body.i96.i

for.body.i96.i:                                   ; preds = %for.body.i96.i.for.body.i96.i_crit_edge, %for.body.lr.ph.i91.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i91.i ], [ %inc.i94.i, %for.body.i96.i.for.body.i96.i_crit_edge ]
  %74 = ptrtoint ptr %regmap.i90.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i90.i, align 4
  %76 = ptrtoint ptr %cxcs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cxcs.i.i, align 4
  %arrayidx.i92.i = getelementptr i32, ptr %77, i32 %i.010.i.i
  %78 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i92.i, align 4
  %call.i.i93.i = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef %79, i32 noundef %spec.select.i.i, i32 noundef %spec.select.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc.i94.i = add nuw i32 %i.010.i.i, 1
  %80 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cxc_count.i.i, align 8
  %cmp.i95.i = icmp ult i32 %inc.i94.i, %81
  br i1 %cmp.i95.i, label %for.body.i96.i.for.body.i96.i_crit_edge, label %for.body.i96.i.if.end28.i_crit_edge

for.body.i96.i.if.end28.i_crit_edge:              ; preds = %for.body.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

for.body.i96.i.for.body.i96.i_crit_edge:          ; preds = %for.body.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i96.i

if.end28.i:                                       ; preds = %for.body.i96.i.if.end28.i_crit_edge, %if.then27.i.if.end28.i_crit_edge, %if.end22.i.if.end28.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748) #6
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %flags.i, align 2
  %85 = and i16 %84, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool32.not.i = icmp eq i16 %85, 0
  br i1 %tobool32.not.i, label %if.end28.i.if.end38.i_crit_edge, label %if.then33.i

if.end28.i.if.end38.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then33.i:                                      ; preds = %if.end28.i
  %regmap.i97.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %86 = ptrtoint ptr %regmap.i97.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i97.i, align 4
  %gdscr.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 3
  %88 = ptrtoint ptr %gdscr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %gdscr.i.i, align 8
  %call.i.i98.i = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef %89, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %tobool35.not.i = icmp eq i32 %call.i.i98.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.then33.i.cleanup_crit_edge

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #6
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.end37.i, %if.end28.i.if.end38.i_crit_edge
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %flags.i, align 2
  %93 = and i16 %92, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool42.not.i = icmp eq i16 %93, 0
  br i1 %tobool42.not.i, label %if.end38.i.cleanup_crit_edge, label %if.then43.i

if.end38.i.cleanup_crit_edge:                     ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then43.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i99.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %94 = ptrtoint ptr %regmap.i99.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i99.i, align 4
  %gdscr.i100.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 3
  %96 = ptrtoint ptr %gdscr.i100.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gdscr.i100.i, align 8
  %call.i.i101.i = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef %97, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then43.i, %if.end38.i.cleanup_crit_edge, %if.then33.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %for.body.i.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end11.i.i.i.i.i.i, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then.i.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i.i.i ], [ %call19.i, %if.end18.i.cleanup_crit_edge ], [ %call.i.i98.i, %if.then33.i.cleanup_crit_edge ], [ 0, %if.then43.i ], [ 0, %if.end38.i.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdsc_disable(ptr nocapture noundef readonly %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrsts.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 11
  %0 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.i = icmp eq i8 %1, 4
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %reset_count.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 15
  %2 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reset_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i.i, label %if.then.i._gdsc_disable.exit_crit_edge, label %for.body.lr.ph.i.i

if.then.i._gdsc_disable.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %rcdev.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 13
  %resets.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 14
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %rcdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rcdev.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %assert.i.i = getelementptr inbounds %struct.reset_control_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %assert.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %assert.i.i, align 4
  %10 = ptrtoint ptr %resets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resets.i.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %i.02.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5, i32 noundef %13) #6
  %inc.i.i = add nuw i32 %i.02.i.i, 1
  %14 = ptrtoint ptr %reset_count.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %15
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i._gdsc_disable.exit_crit_edge

for.body.i.i._gdsc_disable.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 12
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 2
  %18 = and i16 %17, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.not.i = icmp eq i16 %18, 0
  br i1 %tobool.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then3.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.end.i
  %regmap.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %gdscr.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 3
  %21 = ptrtoint ptr %gdscr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gdscr.i.i, align 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp5.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp5.i, label %if.then3.i._gdsc_disable.exit_crit_edge, label %if.end8.i

if.then3.i._gdsc_disable.exit_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

if.end8.i:                                        ; preds = %if.then3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #6
  %call9.i = tail call fastcc i32 @gdsc_poll_status(ptr noundef %domain, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end13.i_crit_edge, label %if.end8.i._gdsc_disable.exit_crit_edge

if.end8.i._gdsc_disable.exit_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end8.i.if.end13.i_crit_edge, %if.end.i.if.end13.i_crit_edge
  %24 = ptrtoint ptr %pwrsts.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pwrsts.i, align 8
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool17.not.i = icmp eq i8 %26, 0
  br i1 %tobool17.not.i, label %if.end13.i.if.end19.i_crit_edge, label %if.then18.i

if.end13.i.if.end19.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then18.i:                                      ; preds = %if.end13.i
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags.i, align 2
  %29 = and i16 %28, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i.i = icmp eq i16 %29, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 24576, i32 16384
  %cxc_count.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 7
  %30 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cxc_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp8.not.i.i = icmp eq i32 %31, 0
  br i1 %cmp8.not.i.i, label %if.then18.i.if.end19.i_crit_edge, label %for.body.lr.ph.i45.i

if.then18.i.if.end19.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

for.body.lr.ph.i45.i:                             ; preds = %if.then18.i
  %regmap.i44.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %cxcs.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 6
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %for.body.i50.i.for.body.i50.i_crit_edge, %for.body.lr.ph.i45.i
  %i.09.i.i = phi i32 [ 0, %for.body.lr.ph.i45.i ], [ %inc.i48.i, %for.body.i50.i.for.body.i50.i_crit_edge ]
  %32 = ptrtoint ptr %regmap.i44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i44.i, align 4
  %34 = ptrtoint ptr %cxcs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cxcs.i.i, align 4
  %arrayidx.i46.i = getelementptr i32, ptr %35, i32 %i.09.i.i
  %36 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i46.i, align 4
  %call.i.i47.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef %37, i32 noundef %spec.select.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %inc.i48.i = add nuw i32 %i.09.i.i, 1
  %38 = ptrtoint ptr %cxc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cxc_count.i.i, align 8
  %cmp.i49.i = icmp ult i32 %inc.i48.i, %39
  br i1 %cmp.i49.i, label %for.body.i50.i.for.body.i50.i_crit_edge, label %for.body.i50.i.if.end19.i_crit_edge

for.body.i50.i.if.end19.i_crit_edge:              ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

for.body.i50.i.for.body.i50.i_crit_edge:          ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i50.i

if.end19.i:                                       ; preds = %for.body.i50.i.if.end19.i_crit_edge, %if.then18.i.if.end19.i_crit_edge, %if.end13.i.if.end19.i_crit_edge
  %call20.i = tail call fastcc i32 @gdsc_toggle_logic(ptr noundef %domain, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end19.i._gdsc_disable.exit_crit_edge

if.end19.i._gdsc_disable.exit_crit_edge:          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

if.end23.i:                                       ; preds = %if.end19.i
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i, align 2
  %42 = and i16 %41, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool27.not.i = icmp eq i16 %42, 0
  br i1 %tobool27.not.i, label %if.end23.i._gdsc_disable.exit_crit_edge, label %if.then28.i

if.end23.i._gdsc_disable.exit_crit_edge:          ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_gdsc_disable.exit

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i51.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 2
  %43 = ptrtoint ptr %regmap.i51.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i51.i, align 4
  %clamp_io_ctrl.i.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 5
  %45 = ptrtoint ptr %clamp_io_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %clamp_io_ctrl.i.i, align 8
  %call.i.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef %46, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %_gdsc_disable.exit

_gdsc_disable.exit:                               ; preds = %if.then28.i, %if.end23.i._gdsc_disable.exit_crit_edge, %if.end19.i._gdsc_disable.exit_crit_edge, %if.end8.i._gdsc_disable.exit_crit_edge, %if.then3.i._gdsc_disable.exit_crit_edge, %for.body.i.i._gdsc_disable.exit_crit_edge, %if.then.i._gdsc_disable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.then3.i._gdsc_disable.exit_crit_edge ], [ %call9.i, %if.end8.i._gdsc_disable.exit_crit_edge ], [ %call20.i, %if.end19.i._gdsc_disable.exit_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.end23.i._gdsc_disable.exit_crit_edge ], [ 0, %if.then.i._gdsc_disable.exit_crit_edge ], [ 0, %for.body.i.i._gdsc_disable.exit_crit_edge ]
  %dev.i = getelementptr inbounds %struct.gdsc, ptr %domain, i32 0, i32 18
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  %tobool.not.i3 = icmp eq ptr %48, null
  br i1 %tobool.not.i3, label %_gdsc_disable.exit.gdsc_pm_runtime_put.exit_crit_edge, label %if.end.i5

_gdsc_disable.exit.gdsc_pm_runtime_put.exit_crit_edge: ; preds = %_gdsc_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_pm_runtime_put.exit

if.end.i5:                                        ; preds = %_gdsc_disable.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i4 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %48, i32 noundef 4) #6
  br label %gdsc_pm_runtime_put.exit

gdsc_pm_runtime_put.exit:                         ; preds = %if.end.i5, %_gdsc_disable.exit.gdsc_pm_runtime_put.exit_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gdsc_poll_status(ptr nocapture noundef readonly %sc, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  %val.i10 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %flags.i = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 12
  %regmap.i = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 2
  %gdscr.i = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 3
  %gds_hw_ctrl.i = getelementptr inbounds %struct.gdsc, ptr %sc, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !17
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %flags.i, align 2
  %3 = and i16 %2, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gdscr.i, align 8
  %add.i = add i32 %5, 4
  br label %if.end6.i

if.else.i:                                        ; preds = %do.body
  %6 = ptrtoint ptr %gds_hw_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gds_hw_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.else4.i, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.else4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gdscr.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else4.i, %if.else.i.if.end6.i_crit_edge, %if.then.i
  %reg.0.i = phi i32 [ %add.i, %if.then.i ], [ %9, %if.else4.i ], [ %7, %if.else.i.if.end6.i_crit_edge ]
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %reg.0.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end6.i.gdsc_check_status.exit.thread_crit_edge

if.end6.i.gdsc_check_status.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit.thread

if.end9.i:                                        ; preds = %if.end6.i
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i, align 2
  %14 = and i16 %13, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool13.not.i = icmp eq i16 %14, 0
  br i1 %tobool13.not.i, label %if.end25.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end9.i
  %15 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %status, label %if.then14.i.gdsc_check_status.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb18.i
  ]

if.then14.i.gdsc_check_status.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit.thread

sw.bb.i:                                          ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %and15.i = lshr i32 %17, 16
  %and15.lobit.i = and i32 %and15.i, 1
  br label %gdsc_check_status.exit

sw.bb18.i:                                        ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  %and19.i = lshr i32 %19, 15
  %and19.lobit.i = and i32 %and19.i, 1
  br label %gdsc_check_status.exit

if.end25.i:                                       ; preds = %if.end9.i
  %20 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %status, label %if.end25.i.gdsc_check_status.exit.thread_crit_edge [
    i32 1, label %sw.bb26.i
    i32 0, label %sw.bb33.i
  ]

if.end25.i.gdsc_check_status.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit.thread

sw.bb26.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %.lobit.i = lshr i32 %22, 31
  br label %gdsc_check_status.exit

sw.bb33.i:                                        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %25 = xor i32 %24, -1
  %.lobit.not.i = lshr i32 %25, 31
  br label %gdsc_check_status.exit

gdsc_check_status.exit.thread:                    ; preds = %if.end25.i.gdsc_check_status.exit.thread_crit_edge, %if.then14.i.gdsc_check_status.exit.thread_crit_edge, %if.end6.i.gdsc_check_status.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

gdsc_check_status.exit:                           ; preds = %sw.bb33.i, %sw.bb26.i, %sw.bb18.i, %sw.bb.i
  %retval.0.i = phi i32 [ %.lobit.not.i, %sw.bb33.i ], [ %.lobit.i, %sw.bb26.i ], [ %and19.lobit.i, %sw.bb18.i ], [ %and15.lobit.i, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %do.cond, label %gdsc_check_status.exit.cleanup_crit_edge

gdsc_check_status.exit.cleanup_crit_edge:         ; preds = %gdsc_check_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond:                                          ; preds = %gdsc_check_status.exit
  %call2 = call i64 @ktime_get() #6
  %sub.i = sub i64 %call2, %call
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %26 = call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #6
  %27 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %26, i32 0) #9, !srcloc !22
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %27, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %27, 1
  %28 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %26, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #9, !srcloc !23
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %28, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %cmp = icmp slt i64 %cond213.i.i.i, 500
  br i1 %cmp, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i10) #6
  %29 = ptrtoint ptr %val.i10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %val.i10, align 4, !annotation !17
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags.i, align 2
  %32 = and i16 %31, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool.not.i12 = icmp eq i16 %32, 0
  br i1 %tobool.not.i12, label %if.else.i18, label %if.then.i15

if.then.i15:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gdscr.i, align 8
  %add.i14 = add i32 %34, 4
  br label %if.end6.i25

if.else.i18:                                      ; preds = %do.end
  %35 = ptrtoint ptr %gds_hw_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gds_hw_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool1.not.i17 = icmp eq i32 %36, 0
  br i1 %tobool1.not.i17, label %if.else4.i20, label %if.else.i18.if.end6.i25_crit_edge

if.else.i18.if.end6.i25_crit_edge:                ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i25

if.else4.i20:                                     ; preds = %if.else.i18
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %gdscr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gdscr.i, align 8
  br label %if.end6.i25

if.end6.i25:                                      ; preds = %if.else4.i20, %if.else.i18.if.end6.i25_crit_edge, %if.then.i15
  %reg.0.i21 = phi i32 [ %add.i14, %if.then.i15 ], [ %38, %if.else4.i20 ], [ %36, %if.else.i18.if.end6.i25_crit_edge ]
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i23 = call i32 @regmap_read(ptr noundef %40, i32 noundef %reg.0.i21, ptr noundef nonnull %val.i10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool7.not.i24 = icmp eq i32 %call.i23, 0
  br i1 %tobool7.not.i24, label %if.end9.i27, label %if.end6.i25.gdsc_check_status.exit41.thread_crit_edge

if.end6.i25.gdsc_check_status.exit41.thread_crit_edge: ; preds = %if.end6.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit41.thread

if.end9.i27:                                      ; preds = %if.end6.i25
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %flags.i, align 2
  %43 = and i16 %42, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool13.not.i26 = icmp eq i16 %43, 0
  br i1 %tobool13.not.i26, label %if.end25.i35, label %if.then14.i28

if.then14.i28:                                    ; preds = %if.end9.i27
  %44 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %status, label %if.then14.i28.gdsc_check_status.exit41.thread_crit_edge [
    i32 1, label %sw.bb.i31
    i32 0, label %sw.bb18.i34
  ]

if.then14.i28.gdsc_check_status.exit41.thread_crit_edge: ; preds = %if.then14.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit41.thread

sw.bb.i31:                                        ; preds = %if.then14.i28
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i10, align 4
  %and15.i29 = lshr i32 %46, 16
  %and15.lobit.i30 = and i32 %and15.i29, 1
  br label %gdsc_check_status.exit41

sw.bb18.i34:                                      ; preds = %if.then14.i28
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i10, align 4
  %and19.i32 = lshr i32 %48, 15
  %and19.lobit.i33 = and i32 %and19.i32, 1
  br label %gdsc_check_status.exit41

if.end25.i35:                                     ; preds = %if.end9.i27
  %49 = zext i32 %status to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %status, label %if.end25.i35.gdsc_check_status.exit41.thread_crit_edge [
    i32 1, label %sw.bb26.i37
    i32 0, label %sw.bb33.i39
  ]

if.end25.i35.gdsc_check_status.exit41.thread_crit_edge: ; preds = %if.end25.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %gdsc_check_status.exit41.thread

sw.bb26.i37:                                      ; preds = %if.end25.i35
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i10, align 4
  %.lobit.i36 = lshr i32 %51, 31
  br label %gdsc_check_status.exit41

sw.bb33.i39:                                      ; preds = %if.end25.i35
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %val.i10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val.i10, align 4
  %54 = xor i32 %53, -1
  %.lobit.not.i38 = lshr i32 %54, 31
  br label %gdsc_check_status.exit41

gdsc_check_status.exit41.thread:                  ; preds = %if.end25.i35.gdsc_check_status.exit41.thread_crit_edge, %if.then14.i28.gdsc_check_status.exit41.thread_crit_edge, %if.end6.i25.gdsc_check_status.exit41.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10) #6
  br label %cleanup

gdsc_check_status.exit41:                         ; preds = %sw.bb33.i39, %sw.bb26.i37, %sw.bb18.i34, %sw.bb.i31
  %retval.0.i40 = phi i32 [ %.lobit.not.i38, %sw.bb33.i39 ], [ %.lobit.i36, %sw.bb26.i37 ], [ %and19.lobit.i33, %sw.bb18.i34 ], [ %and15.lobit.i30, %sw.bb.i31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i40)
  %tobool5.not = icmp eq i32 %retval.0.i40, 0
  %spec.select = select i1 %tobool5.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %gdsc_check_status.exit41, %gdsc_check_status.exit41.thread, %gdsc_check_status.exit.cleanup_crit_edge, %gdsc_check_status.exit.thread
  %retval.0 = phi i32 [ 0, %gdsc_check_status.exit.thread ], [ 0, %gdsc_check_status.exit41.thread ], [ %spec.select, %gdsc_check_status.exit41 ], [ 0, %gdsc_check_status.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @__ksymtab_gdsc_gx_do_nothing_enable, !1, !"__ksymtab_gdsc_gx_do_nothing_enable", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/gdsc.c", i32 567, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/gdsc.c", i32 176, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{!"branch_weights", i32 1, i32 2000}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148173592}
!20 = !{i64 658415, i64 658440, i64 658462, i64 658478, i64 658490, i64 658510, i64 658534, i64 658550, i64 658562}
!21 = !{i64 2148173780}
!22 = !{i64 1063293, i64 1063320, i64 1063342, i64 1063370}
!23 = !{i64 1063701, i64 1063728, i64 1063761, i64 1063782, i64 1063809, i64 1063835}
