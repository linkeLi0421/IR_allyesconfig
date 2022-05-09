; ModuleID = '/llk/IR_all_yes/drivers/cpuidle/cpuidle-arm.c_pt.bc'
source_filename = "../drivers/cpuidle/cpuidle-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_cpuidle_arm__183_168_arm_idle_init6 = internal global ptr @arm_idle_init, section ".initcall6.init", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@arm_idle_state_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,idle-state\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @arm_enter_idle_state }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@arm_idle_init_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013CPUidle arm: CPU %d failed to init idle CPU ops\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arm_idle_init_cpu\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/cpuidle/cpuidle-arm.c\00", [34 x i8] zeroinitializer }, align 32
@arm_idle_init_cpu._entry_ptr = internal global ptr @arm_idle_init_cpu._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"arm_idle\00", [23 x i8] zeroinitializer }, align 32
@arm_idle_driver = internal global { ptr, ptr, i8, [7 x i8], <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }>, i32, i32, ptr, ptr } { ptr @.str.3, ptr null, i8 0, [7 x i8] undef, <{ %struct.cpuidle_state, [9 x %struct.cpuidle_state] }> <{ %struct.cpuidle_state { [16 x i8] c"WFI\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"ARM WFI\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 0, i64 0, i32 0, i32 1, i32 -1, i32 1, ptr @arm_enter_idle_state, ptr null, ptr null }, [9 x %struct.cpuidle_state] zeroinitializer }>, i32 0, i32 0, ptr null, ptr null }, section ".init.data", align 8
@cpu_vtable = external dso_local local_unnamed_addr global [0 x ptr], align 4
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 119, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [33 x i8] c"../drivers/cpuidle/cpuidle-arm.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 46, i32 10 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__initcall__kmod_cpuidle_arm__183_168_arm_idle_init6, ptr @arm_idle_init_cpu._entry, ptr @arm_idle_init_cpu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_idle_init_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_idle_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body.for.cond_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %call1 = tail call fastcc i32 @arm_idle_init_cpu(i32 noundef %call) #10
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %while.cond.preheader

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

while.cond.preheader:                             ; preds = %for.body
  %dec16 = add i32 %call, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec16)
  %cmp217 = icmp sgt i32 %dec16, -1
  br i1 %cmp217, label %while.cond.preheader.do.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader.do.body_crit_edge:           ; preds = %while.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %while.cond.preheader.do.body_crit_edge
  %dec18 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %dec16, %while.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %dec18
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @cpuidle_devices to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call4 = tail call ptr @cpuidle_get_cpu_driver(ptr noundef %5) #6
  tail call void @cpuidle_unregister(ptr noundef %call4) #6
  tail call void @kfree(ptr noundef %call4) #6
  %dec = add nsw i32 %dec18, -1
  %cmp2 = icmp sgt i32 %dec18, 0
  br i1 %cmp2, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %while.cond.preheader.cleanup_crit_edge ], [ %call1, %do.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arm_idle_init_cpu(i32 noundef %cpu) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef nonnull @arm_idle_driver, i32 noundef 992, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem.i = and i32 %cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr.i, ptr %cpumask, align 8
  %call2 = tail call i32 @dt_init_idle_driver(ptr noundef nonnull %call, ptr noundef nonnull @arm_idle_state_match, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp = icmp slt i32 %call2, 1
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool4.not, i32 -19, i32 %call2
  br label %out_kfree_drv

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @arm_cpuidle_init(i32 noundef %cpu) #6
  %1 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %do.end [
    i32 0, label %if.end18
    i32 -95, label %if.end5.cond.false15_crit_edge
  ]

if.end5.cond.false15_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false15

do.end:                                           ; preds = %if.end5
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %cpu) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call6)
  %cmp13 = icmp eq i32 %call6, -6
  br i1 %cmp13, label %do.end.out_kfree_drv_crit_edge, label %do.end.cond.false15_crit_edge

do.end.cond.false15_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false15

do.end.out_kfree_drv_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree_drv

cond.false15:                                     ; preds = %do.end.cond.false15_crit_edge, %if.end5.cond.false15_crit_edge
  br label %out_kfree_drv

if.end18:                                         ; preds = %if.end5
  %call19 = tail call i32 @cpuidle_register(ptr noundef nonnull %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_kfree_drv_crit_edge

if.end18.out_kfree_drv_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_kfree_drv

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cpuidle_cooling_register(ptr noundef nonnull %call) #6
  br label %cleanup

out_kfree_drv:                                    ; preds = %if.end18.out_kfree_drv_crit_edge, %cond.false15, %do.end.out_kfree_drv_crit_edge, %if.then3
  %ret.0 = phi i32 [ %., %if.then3 ], [ %call19, %if.end18.out_kfree_drv_crit_edge ], [ %call6, %cond.false15 ], [ 0, %do.end.out_kfree_drv_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %out_kfree_drv, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_kfree_drv ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dt_init_idle_driver(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpuidle_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpuidle_cooling_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_enter_idle_state(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %drv, i32 noundef %idx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx)
  %tobool.not = icmp eq i32 %idx, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @cpu_vtable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %_do_idle = getelementptr inbounds %struct.processor, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %_do_idle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_do_idle, align 4
  %call1 = tail call i32 %7() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @cpu_pm_enter() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @arm_cpuidle_suspend(i32 noundef %idx) #6
  %call6 = tail call i32 @cpu_pm_exit() #6
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %__ret.0 = phi i32 [ %call2, %if.end.if.end7_crit_edge ], [ %call5, %if.then4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool8.not = icmp eq i32 %__ret.0, 0
  %spec.select = select i1 %tobool8.not, i32 %idx, i32 -1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %spec.select13 = phi i32 [ %spec.select, %if.end7 ], [ 0, %if.then ]
  ret i32 %spec.select13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_cpuidle_suspend(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_exit() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { cold }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_cpuidle_arm__183_168_arm_idle_init6, !1, !"__initcall__kmod_cpuidle_arm__183_168_arm_idle_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpuidle/cpuidle-arm.c", i32 168, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cpuidle/cpuidle-arm.c", i32 119, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @arm_idle_init_cpu._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @arm_idle_init_cpu._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cpuidle/cpuidle-arm.c", i32 46, i32 10}
!10 = !{ptr @arm_idle_driver, !11, !"arm_idle_driver", i1 false, i1 false}
!11 = !{!"../drivers/cpuidle/cpuidle-arm.c", i32 45, i32 30}
!12 = !{ptr @arm_idle_state_match, !13, !"arm_idle_state_match", i1 false, i1 false}
!13 = !{!"../drivers/cpuidle/cpuidle-arm.c", i32 65, i32 34}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
