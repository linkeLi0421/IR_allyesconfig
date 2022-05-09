; ModuleID = '/llk/IR_all_yes/drivers/soc/samsung/exynos-regulator-coupler.c_pt.bc'
source_filename = "../drivers/soc/samsung/exynos-regulator-coupler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.regulator_coupler = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_exynos_regulator_coupler__300_221_exynos_coupler_init3 = internal global ptr @exynos_coupler_init, section ".initcall3.init", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"samsung,exynos5800\00", [45 x i8] zeroinitializer }, align 32
@exynos_coupler = internal global { %struct.regulator_coupler, [44 x i8] } { %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @exynos_coupler_attach, ptr null, ptr @exynos_coupler_balance_voltage }, [44 x i8] zeroinitializer }, align 32
@regulator_get_optimal_voltage.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/soc/samsung/exynos-regulator-coupler.c\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 216, i32 32 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"exynos_coupler\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 209, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/soc/samsung/exynos-regulator-coupler.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 40, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_exynos_regulator_coupler__300_221_exynos_coupler_init3, ptr @.str, ptr @exynos_coupler, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_coupler to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_coupler_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @regulator_coupler_register(ptr noundef nonnull @exynos_coupler) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_coupler_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @exynos_coupler_attach(ptr nocapture noundef readnone %coupler, ptr nocapture noundef readnone %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos_coupler_balance_voltage(ptr nocapture noundef readnone %coupler, ptr nocapture noundef readonly %rdev, i32 noundef %state) #3 align 64 {
entry:
  %tmp_min.i = alloca i32, align 4
  %tmp_max.i = alloca i32, align 4
  %c_rdev_done = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %coupling_desc = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c_rdev_done) #6
  %0 = ptrtoint ptr %c_rdev_done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %c_rdev_done, align 4
  %1 = ptrtoint ptr %coupling_desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %coupling_desc, align 4
  %n_coupled1 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 7, i32 3
  %3 = ptrtoint ptr %n_coupled1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %n_coupled1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp107 = icmp sgt i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp26 = icmp slt i32 %4, 2
  br i1 %cmp107, label %for.body.preheader, label %entry.cleanup27_crit_edge

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

for.body.preheader:                               ; preds = %entry
  %cmp107.not = xor i1 %cmp107, true
  %brmerge = or i1 %cmp26, %cmp107.not
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.body.preheader
  %best_c_rdev_done.0.off0115 = phi i1 [ false, %for.body.preheader ], [ %best_c_rdev_done.0.off0115.be, %for.body.backedge ]
  %best_delta.0114 = phi i32 [ 0, %for.body.preheader ], [ %best_delta.0114.be, %for.body.backedge ]
  %best_c_rdev.0113 = phi i32 [ 0, %for.body.preheader ], [ %best_c_rdev.0113.be, %for.body.backedge ]
  %best_max_uV.0112 = phi i32 [ 0, %for.body.preheader ], [ %best_max_uV.0112.be, %for.body.backedge ]
  %best_min_uV.0111 = phi i32 [ 0, %for.body.preheader ], [ %best_min_uV.0111.be, %for.body.backedge ]
  %i.0109 = phi i32 [ 0, %for.body.preheader ], [ %i.0109.be, %for.body.backedge ]
  %best_rdev.0108 = phi ptr [ null, %for.body.preheader ], [ %best_rdev.0108.be, %for.body.backedge ]
  %5 = ptrtoint ptr %c_rdev_done to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %c_rdev_done, align 4
  %and.i = and i32 %i.0109, 31
  %7 = shl nuw i32 1, %and.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.0109
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %coupling_desc.i = getelementptr inbounds %struct.regulator_dev, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %coupling_desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %coupling_desc.i, align 4
  %constraints1.i = getelementptr inbounds %struct.regulator_dev, ptr %10, i32 0, i32 14
  %13 = ptrtoint ptr %constraints1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %constraints1.i, align 8
  %n_coupled2.i = getelementptr inbounds %struct.regulator_dev, ptr %10, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %n_coupled2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_coupled2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp216.i = icmp sgt i32 %16, 0
  br i1 %cmp216.i, label %if.end.for.body.i_crit_edge, label %for.end.thread.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.end.thread.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max_spread69237.i = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %max_spread69237.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %max_spread69237.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %sub238.i = sub i32 0, %20
  %21 = call i32 @llvm.smax.i32(i32 %sub238.i, i32 0) #6
  br label %for.end102.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %desired_min_uV.0221.i = phi i32 [ %desired_min_uV.2.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %desired_max_uV.0220.i = phi i32 [ %desired_max_uV.2.i, %for.inc.i.for.body.i_crit_edge ], [ 2147483647, %if.end.for.body.i_crit_edge ]
  %highest_min_uV.0219.i = phi i32 [ %38, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %i.0217.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_min.i) #6
  %22 = ptrtoint ptr %tmp_min.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %tmp_min.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_max.i) #6
  %23 = ptrtoint ptr %tmp_max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2147483647, ptr %tmp_max.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %for.body.i.if.end35.i_crit_edge, label %land.rhs.i

for.body.i.if.end35.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

land.rhs.i:                                       ; preds = %for.body.i
  %arrayidx.i63 = getelementptr ptr, ptr %12, i32 %i.0217.i
  %25 = ptrtoint ptr %arrayidx.i63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i63, align 4
  %dep_map.i = getelementptr inbounds %struct.regulator_dev, ptr %26, i32 0, i32 9, i32 0, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp3.not.i, label %land.rhs7.i, label %land.rhs.i.if.end35.i_crit_edge

land.rhs.i.if.end35.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

land.rhs7.i:                                      ; preds = %land.rhs.i
  %.b204.i = load i1, ptr @regulator_get_optimal_voltage.__already_done, align 1
  br i1 %.b204.i, label %land.rhs7.i.if.end35.i_crit_edge, label %if.then.i, !prof !18

land.rhs7.i.if.end35.i_crit_edge:                 ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.i

if.then.i:                                        ; preds = %land.rhs7.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @regulator_get_optimal_voltage.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 40, i32 noundef 9, ptr noundef null) #6
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then.i, %land.rhs7.i.if.end35.i_crit_edge, %land.rhs.i.if.end35.i_crit_edge, %for.body.i.if.end35.i_crit_edge
  %arrayidx45.i = getelementptr ptr, ptr %12, i32 %i.0217.i
  %27 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx45.i, align 4
  %call46.i = call i32 @regulator_check_consumers(ptr noundef %28, ptr noundef nonnull %tmp_min.i, ptr noundef nonnull %tmp_max.i, i32 noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.end35.i.cleanup.thread.i_crit_edge, label %if.end49.i

if.end35.i.cleanup.thread.i_crit_edge:            ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end49.i:                                       ; preds = %if.end35.i
  %29 = ptrtoint ptr %tmp_min.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp50.i = icmp eq i32 %30, 0
  br i1 %cmp50.i, label %if.then51.i, label %if.end49.i.if.end57.i_crit_edge

if.end49.i.if.end57.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then51.i:                                      ; preds = %if.end49.i
  %31 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx45.i, align 4
  %call53.i = call i32 @regulator_get_voltage_rdev(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %cmp54.i = icmp slt i32 %call53.i, 0
  br i1 %cmp54.i, label %if.then51.i.cleanup.thread.i_crit_edge, label %if.end56.i

if.then51.i.cleanup.thread.i_crit_edge:           ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end56.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %tmp_min.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call53.i, ptr %tmp_min.i, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end56.i, %if.end49.i.if.end57.i_crit_edge
  %34 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx45.i, align 4
  %call59.i = call i32 @regulator_check_voltage(ptr noundef %35, ptr noundef nonnull %tmp_min.i, ptr noundef nonnull %tmp_max.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end57.i.cleanup.thread.i_crit_edge, label %if.end62.i

if.end57.i.cleanup.thread.i_crit_edge:            ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end62.i:                                       ; preds = %if.end57.i
  %36 = ptrtoint ptr %tmp_min.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp_min.i, align 4
  %38 = call i32 @llvm.smax.i32(i32 %highest_min_uV.0219.i, i32 %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0217.i)
  %cmp65.i = icmp eq i32 %i.0217.i, 0
  br i1 %cmp65.i, label %if.then66.i, label %if.end62.i.for.inc.i_crit_edge

if.end62.i.for.inc.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then66.i:                                      ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %tmp_max.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tmp_max.i, align 4
  br label %for.inc.i

cleanup.thread.i:                                 ; preds = %if.end57.i.cleanup.thread.i_crit_edge, %if.then51.i.cleanup.thread.i_crit_edge, %if.end35.i.cleanup.thread.i_crit_edge
  %retval.1.ph.i = phi i32 [ %call59.i, %if.end57.i.cleanup.thread.i_crit_edge ], [ %call53.i, %if.then51.i.cleanup.thread.i_crit_edge ], [ %call46.i, %if.end35.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_max.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_min.i) #6
  br label %cleanup27

for.inc.i:                                        ; preds = %if.then66.i, %if.end62.i.for.inc.i_crit_edge
  %desired_max_uV.2.i = phi i32 [ %40, %if.then66.i ], [ %desired_max_uV.0220.i, %if.end62.i.for.inc.i_crit_edge ]
  %desired_min_uV.2.i = phi i32 [ %37, %if.then66.i ], [ %desired_min_uV.0221.i, %if.end62.i.for.inc.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_max.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_min.i) #6
  %inc.i = add nuw nsw i32 %i.0217.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %max_spread69.i = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 8
  %41 = ptrtoint ptr %max_spread69.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %max_spread69.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %sub.i = sub i32 %38, %44
  %45 = call i32 @llvm.smax.i32(i32 %desired_min_uV.2.i, i32 %sub.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp78224.i = icmp sgt i32 %16, 1
  br i1 %cmp78224.i, label %for.end.i.for.body79.i_crit_edge, label %for.end.i.for.end102.i_crit_edge

for.end.i.for.end102.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102.i

for.end.i.for.body79.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body79.i

for.body79.i:                                     ; preds = %for.inc100.i.for.body79.i_crit_edge, %for.end.i.for.body79.i_crit_edge
  %max_current_uV.0227.i = phi i32 [ %48, %for.inc100.i.for.body79.i_crit_edge ], [ 0, %for.end.i.for.body79.i_crit_edge ]
  %min_current_uV.0226.i = phi i32 [ %49, %for.inc100.i.for.body79.i_crit_edge ], [ 2147483647, %for.end.i.for.body79.i_crit_edge ]
  %i.1225.i = phi i32 [ %inc101.i, %for.inc100.i.for.body79.i_crit_edge ], [ 1, %for.end.i.for.body79.i_crit_edge ]
  %arrayidx80.i = getelementptr ptr, ptr %12, i32 %i.1225.i
  %46 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx80.i, align 4
  %call81.i = call i32 @regulator_get_voltage_rdev(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %cmp82.i = icmp slt i32 %call81.i, 0
  br i1 %cmp82.i, label %for.body79.i.cleanup27_crit_edge, label %for.inc100.i

for.body79.i.cleanup27_crit_edge:                 ; preds = %for.body79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

for.inc100.i:                                     ; preds = %for.body79.i
  %48 = call i32 @llvm.smax.i32(i32 %call81.i, i32 %max_current_uV.0227.i) #6
  %49 = call i32 @llvm.smin.i32(i32 %call81.i, i32 %min_current_uV.0226.i) #6
  %inc101.i = add nuw nsw i32 %i.1225.i, 1
  %exitcond233.not.i = icmp eq i32 %inc101.i, %16
  br i1 %exitcond233.not.i, label %for.inc100.i.for.end102.i_crit_edge, label %for.inc100.i.for.body79.i_crit_edge

for.inc100.i.for.body79.i_crit_edge:              ; preds = %for.inc100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body79.i

for.inc100.i.for.end102.i_crit_edge:              ; preds = %for.inc100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end102.i

for.end102.i:                                     ; preds = %for.inc100.i.for.end102.i_crit_edge, %for.end.i.for.end102.i_crit_edge, %for.end.thread.i
  %50 = phi i32 [ %45, %for.end.i.for.end102.i_crit_edge ], [ %21, %for.end.thread.i ], [ %45, %for.inc100.i.for.end102.i_crit_edge ]
  %51 = phi i32 [ %44, %for.end.i.for.end102.i_crit_edge ], [ %20, %for.end.thread.i ], [ %44, %for.inc100.i.for.end102.i_crit_edge ]
  %desired_max_uV.0.lcssa240.i = phi i32 [ %desired_max_uV.2.i, %for.end.i.for.end102.i_crit_edge ], [ 2147483647, %for.end.thread.i ], [ %desired_max_uV.2.i, %for.inc100.i.for.end102.i_crit_edge ]
  %min_current_uV.0.lcssa.i = phi i32 [ 2147483647, %for.end.i.for.end102.i_crit_edge ], [ 2147483647, %for.end.thread.i ], [ %49, %for.inc100.i.for.end102.i_crit_edge ]
  %max_current_uV.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end102.i_crit_edge ], [ 0, %for.end.thread.i ], [ %48, %for.inc100.i.for.end102.i_crit_edge ]
  %sub103.i = sub i32 %max_current_uV.0.lcssa.i, %51
  %52 = call i32 @llvm.smax.i32(i32 %50, i32 %sub103.i) #6
  %add.i = add i32 %min_current_uV.0.lcssa.i, %51
  %53 = call i32 @llvm.smin.i32(i32 %52, i32 %add.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %desired_max_uV.0.lcssa240.i)
  %cmp116.i = icmp sgt i32 %53, %desired_max_uV.0.lcssa240.i
  br i1 %cmp116.i, label %for.end102.i.cleanup27_crit_edge, label %if.then122.i

for.end102.i.cleanup27_crit_edge:                 ; preds = %for.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.then122.i:                                     ; preds = %for.end102.i
  %call123.i = call i32 @regulator_get_voltage_rdev(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123.i)
  %cmp124.i = icmp slt i32 %call123.i, 0
  br i1 %cmp124.i, label %if.then122.i.cleanup27_crit_edge, label %regulator_get_optimal_voltage.exit

if.then122.i.cleanup27_crit_edge:                 ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

regulator_get_optimal_voltage.exit:               ; preds = %if.then122.i
  %sub = sub i32 %53, %call123.i
  %54 = call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %call123.i)
  %tobool8.not = icmp eq i32 %53, %call123.i
  call void @__sanitizer_cov_trace_cmp4(i32 %best_delta.0114, i32 %54)
  %cmp9.not = icmp ugt i32 %best_delta.0114, %54
  %or.cond = select i1 %tobool8.not, i1 true, i1 %cmp9.not
  br i1 %or.cond, label %regulator_get_optimal_voltage.exit.for.inc_crit_edge, label %if.then10

regulator_get_optimal_voltage.exit.for.inc_crit_edge: ; preds = %regulator_get_optimal_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %regulator_get_optimal_voltage.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %50)
  %cmp119.i = icmp eq i32 %53, %50
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %regulator_get_optimal_voltage.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_rdev.2.ph = phi ptr [ %best_rdev.0108, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %56, %if.then10 ], [ %best_rdev.0108, %for.body.for.inc_crit_edge ]
  %best_min_uV.2.ph = phi i32 [ %best_min_uV.0111, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %53, %if.then10 ], [ %best_min_uV.0111, %for.body.for.inc_crit_edge ]
  %best_max_uV.2.ph = phi i32 [ %best_max_uV.0112, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %desired_max_uV.0.lcssa240.i, %if.then10 ], [ %best_max_uV.0112, %for.body.for.inc_crit_edge ]
  %best_c_rdev.2.ph = phi i32 [ %best_c_rdev.0113, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %i.0109, %if.then10 ], [ %best_c_rdev.0113, %for.body.for.inc_crit_edge ]
  %best_delta.2.ph = phi i32 [ %best_delta.0114, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %54, %if.then10 ], [ %best_delta.0114, %for.body.for.inc_crit_edge ]
  %best_c_rdev_done.2.off0.ph = phi i1 [ %best_c_rdev_done.0.off0115, %regulator_get_optimal_voltage.exit.for.inc_crit_edge ], [ %cmp119.i, %if.then10 ], [ %best_c_rdev_done.0.off0115, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0109, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge

for.body.backedge:                                ; preds = %do.cond.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %best_c_rdev_done.0.off0115.be = phi i1 [ %best_c_rdev_done.2.off0.ph, %for.inc.for.body.backedge_crit_edge ], [ false, %do.cond.for.body.backedge_crit_edge ]
  %best_delta.0114.be = phi i32 [ %best_delta.2.ph, %for.inc.for.body.backedge_crit_edge ], [ 0, %do.cond.for.body.backedge_crit_edge ]
  %best_c_rdev.0113.be = phi i32 [ %best_c_rdev.2.ph, %for.inc.for.body.backedge_crit_edge ], [ 0, %do.cond.for.body.backedge_crit_edge ]
  %best_max_uV.0112.be = phi i32 [ %best_max_uV.2.ph, %for.inc.for.body.backedge_crit_edge ], [ 0, %do.cond.for.body.backedge_crit_edge ]
  %best_min_uV.0111.be = phi i32 [ %best_min_uV.2.ph, %for.inc.for.body.backedge_crit_edge ], [ 0, %do.cond.for.body.backedge_crit_edge ]
  %i.0109.be = phi i32 [ %inc, %for.inc.for.body.backedge_crit_edge ], [ 0, %do.cond.for.body.backedge_crit_edge ]
  %best_rdev.0108.be = phi ptr [ %best_rdev.2.ph, %for.inc.for.body.backedge_crit_edge ], [ null, %do.cond.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool16.not = icmp eq ptr %best_rdev.2.ph, null
  br i1 %tobool16.not, label %for.end.cleanup27_crit_edge, label %if.end18

for.end.cleanup27_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.end18:                                         ; preds = %for.end
  %call19 = call i32 @regulator_set_voltage_rdev(ptr noundef nonnull %best_rdev.2.ph, i32 noundef %best_min_uV.2.ph, i32 noundef %best_max_uV.2.ph, i32 noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end18.cleanup27_crit_edge, label %if.end22

if.end18.cleanup27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup27

if.end22:                                         ; preds = %if.end18
  br i1 %best_c_rdev_done.2.off0.ph, label %if.then24, label %if.end22.do.cond_crit_edge

if.end22.do.cond_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %best_c_rdev.2.ph, ptr noundef nonnull %c_rdev_done) #6
  br label %do.cond

do.cond:                                          ; preds = %if.then24, %if.end22.do.cond_crit_edge
  br i1 %brmerge, label %cleanup27.loopexit144.split.loop.exit153, label %do.cond.for.body.backedge_crit_edge

do.cond.for.body.backedge_crit_edge:              ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge

cleanup27.loopexit144.split.loop.exit153:         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call19.mux.le = select i1 %cmp26, i32 %call19, i32 0
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup27.loopexit144.split.loop.exit153, %if.end18.cleanup27_crit_edge, %for.end.cleanup27_crit_edge, %if.then122.i.cleanup27_crit_edge, %for.end102.i.cleanup27_crit_edge, %for.body79.i.cleanup27_crit_edge, %cleanup.thread.i, %entry.cleanup27_crit_edge
  %retval.0 = phi i32 [ %retval.1.ph.i, %cleanup.thread.i ], [ 0, %entry.cleanup27_crit_edge ], [ %call81.i, %for.body79.i.cleanup27_crit_edge ], [ %call19.mux.le, %cleanup27.loopexit144.split.loop.exit153 ], [ -22, %for.end102.i.cleanup27_crit_edge ], [ %call123.i, %if.then122.i.cleanup27_crit_edge ], [ 0, %for.end.cleanup27_crit_edge ], [ %call19, %if.end18.cleanup27_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c_rdev_done) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_rdev(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_consumers(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_rdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_check_voltage(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__initcall__kmod_exynos_regulator_coupler__300_221_exynos_coupler_init3, !1, !"__initcall__kmod_exynos_regulator_coupler__300_221_exynos_coupler_init3", i1 false, i1 false}
!1 = !{!"../drivers/soc/samsung/exynos-regulator-coupler.c", i32 221, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/samsung/exynos-regulator-coupler.c", i32 216, i32 32}
!4 = !{ptr @exynos_coupler, !5, !"exynos_coupler", i1 false, i1 false}
!5 = !{!"../drivers/soc/samsung/exynos-regulator-coupler.c", i32 209, i32 33}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../drivers/soc/samsung/exynos-regulator-coupler.c", i32 40, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
