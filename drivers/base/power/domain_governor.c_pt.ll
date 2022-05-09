; ModuleID = '/llk/IR_all_yes/drivers/base/power/domain_governor.c_pt.bc'
source_filename = "../drivers/base/power/domain_governor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_power_governor = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.atomic_t = type { i32 }
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head, %struct.cpumask, ptr }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.genpd_power_state = type { i64, i64, i64, i64, i64, ptr, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain_data = type { %struct.pm_domain_data, %struct.gpd_timing_data, %struct.notifier_block, ptr, i32, i32, i32, i32, i64, ptr }
%struct.pm_domain_data = type { %struct.list_head, ptr }
%struct.gpd_timing_data = type { i64, i64, i64, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.44 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.44 = type { %struct.mutex }

@pm_domain_cpu_gov = dso_local global { %struct.dev_power_governor, [24 x i8] } { %struct.dev_power_governor { ptr @cpu_power_down_ok, ptr @default_suspend_ok }, [24 x i8] zeroinitializer }, align 32
@simple_qos_governor = dso_local global { %struct.dev_power_governor, [24 x i8] } { %struct.dev_power_governor { ptr @default_power_down_ok, ptr @default_suspend_ok }, [24 x i8] zeroinitializer }, align 32
@pm_domain_always_on_gov = dso_local global { %struct.dev_power_governor, [24 x i8] } { %struct.dev_power_governor { ptr @always_on_power_down_ok, ptr @default_suspend_ok }, [24 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpuidle_devices = external dso_local global ptr, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@default_suspend_ok.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"domain_governor\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default_suspend_ok\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/base/power/domain_governor.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 2147483647000]
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"pm_domain_cpu_gov\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 389, i32 27 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"simple_qos_governor\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 395, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"pm_domain_always_on_gov\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 403, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [40 x i8] c"../drivers/base/power/domain_governor.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 56, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @pm_domain_cpu_gov, ptr @simple_qos_governor, ptr @pm_domain_always_on_gov, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_domain_cpu_gov to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_qos_governor to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_domain_always_on_gov to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cpu_power_down_ok(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i64 @ktime_get() #7
  %call2 = tail call fastcc zeroext i1 @_default_power_down_ok(ptr noundef %pd, i64 noundef %call1)
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr i8, ptr %pd, i32 292
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %cpus = getelementptr i8, ptr %pd, i32 228
  %2 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpus, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call659 = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call659, i32 %4)
  %cmp60 = icmp ult i32 %call659, %4
  br i1 %cmp60, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %if.end18.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call662 = phi i32 [ %call6, %if.end18.do.body_crit_edge ], [ %call659, %for.cond.preheader.do.body_crit_edge ]
  %domain_wakeup.061 = phi i64 [ %domain_wakeup.1, %if.end18.do.body_crit_edge ], [ 9223372036854775807, %for.cond.preheader.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call662
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, ptrtoint (ptr @cpuidle_devices to i32)
  %7 = inttoptr i32 %add to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.body.if.end18_crit_edge, label %do.end12

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

do.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %next_hrtimer14 = getelementptr inbounds %struct.cpuidle_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %next_hrtimer14 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load volatile i64, ptr %next_hrtimer14, align 8
  %12 = tail call i64 @llvm.smin.i64(i64 %11, i64 %domain_wakeup.061)
  br label %if.end18

if.end18:                                         ; preds = %do.end12, %do.body.if.end18_crit_edge
  %domain_wakeup.1 = phi i64 [ %domain_wakeup.061, %do.body.if.end18_crit_edge ], [ %12, %do.end12 ]
  %call6 = tail call i32 @cpumask_next_and(i32 noundef %call662, ptr noundef %3, ptr noundef nonnull @__cpu_online_mask) #10
  %cmp = icmp ult i32 %call6, %4
  br i1 %cmp, label %if.end18.do.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end18.do.body_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %domain_wakeup.0.lcssa = phi i64 [ 9223372036854775807, %for.cond.preheader.for.end_crit_edge ], [ %domain_wakeup.1, %if.end18.for.end_crit_edge ]
  %sub = sub i64 %domain_wakeup.0.lcssa, %call1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp20 = icmp slt i64 %sub, 1
  br i1 %cmp20, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %for.end
  %state_idx = getelementptr i8, ptr %pd, i32 308
  %13 = ptrtoint ptr %state_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state_idx, align 4
  %states = getelementptr i8, ptr %pd, i32 296
  %15 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %states, align 8
  br label %do.body23

do.body23:                                        ; preds = %do.cond32.do.body23_crit_edge, %if.end22
  %i.0 = phi i32 [ %14, %if.end22 ], [ %dec, %do.cond32.do.body23_crit_edge ]
  %arrayidx24 = getelementptr %struct.genpd_power_state, ptr %16, i32 %i.0
  %residency_ns = getelementptr %struct.genpd_power_state, ptr %16, i32 %i.0, i32 2
  %17 = ptrtoint ptr %residency_ns to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %residency_ns, align 8
  %19 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx24, align 8
  %add27 = add i64 %20, %18
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %add27)
  %cmp28.not = icmp slt i64 %sub, %add27
  br i1 %cmp28.not, label %do.cond32, label %if.then29

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %state_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %i.0, ptr %state_idx, align 4
  br label %cleanup

do.cond32:                                        ; preds = %do.body23
  %dec = add i32 %i.0, -1
  %cmp33 = icmp sgt i32 %dec, -1
  br i1 %cmp33, label %do.cond32.do.body23_crit_edge, label %do.cond32.cleanup_crit_edge

do.cond32.cleanup_crit_edge:                      ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond32.do.body23_crit_edge:                    ; preds = %do.cond32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

cleanup:                                          ; preds = %do.cond32.cleanup_crit_edge, %if.then29, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then29 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ false, %for.end.cleanup_crit_edge ], [ false, %do.cond32.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @default_suspend_ok(ptr noundef %dev) #0 align 64 {
entry:
  %constraint_ns = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data.i, align 8
  %domain_data.i = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %domain_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain_data.i, align 4
  %td1 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %constraint_ns) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @default_suspend_ok.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@default_suspend_ok, %do.body7)) #7
          to label %if.then [label %do.body7], !srcloc !21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @default_suspend_ok.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 3
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %constraint_changed = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %constraint_changed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %constraint_changed, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.then16, label %if.end22

if.then16:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %cached_suspend_ok = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %cached_suspend_ok to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cached_suspend_ok, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17 = icmp ne i8 %7, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  br label %cleanup

if.end22:                                         ; preds = %do.body7
  %8 = ptrtoint ptr %constraint_changed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %constraint_changed, align 8
  %cached_suspend_ok24 = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %cached_suspend_ok24 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cached_suspend_ok24, align 1
  %effective_constraint_ns = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %effective_constraint_ns to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %effective_constraint_ns, align 8
  %call25 = tail call i32 @__dev_pm_qos_resume_latency(ptr noundef %dev) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp29 = icmp eq i32 %call25, 0
  br i1 %cmp29, label %if.end22.cleanup_crit_edge, label %if.end32

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  %conv26 = sext i32 %call25 to i64
  %mul = mul nsw i64 %conv26, 1000
  %11 = ptrtoint ptr %constraint_ns to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %mul, ptr %constraint_ns, align 8
  %ignore_children = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %12 = ptrtoint ptr %ignore_children to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %ignore_children, align 4
  %13 = and i16 %bf.load, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast.not = icmp eq i16 %13, 0
  br i1 %bf.cast.not, label %if.then34, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 @device_for_each_child(ptr noundef %dev, ptr noundef nonnull %constraint_ns, ptr noundef nonnull @dev_update_qos_constraint) #7
  %14 = ptrtoint ptr %constraint_ns to i32
  call void @__asan_load8_noabort(i32 %14)
  %.pr = load i64, ptr %constraint_ns, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end32.if.end36_crit_edge
  %15 = phi i64 [ %.pr, %if.then34 ], [ %mul, %if.end32.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i64 %15, label %if.else45 [
    i64 2147483647000, label %if.end36.if.end53_crit_edge
    i64 0, label %if.end36.cleanup_crit_edge
  ]

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36.if.end53_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.else45:                                        ; preds = %if.end36
  %16 = ptrtoint ptr %td1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %td1, align 8
  %resume_latency_ns = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %resume_latency_ns to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %resume_latency_ns, align 8
  %20 = add i64 %17, %19
  %sub = sub i64 %15, %20
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub)
  %cmp46 = icmp slt i64 %sub, 1
  br i1 %cmp46, label %if.else45.cleanup_crit_edge, label %if.else45.if.end53_crit_edge

if.else45.if.end53_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.else45.cleanup_crit_edge:                      ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.else45.if.end53_crit_edge, %if.end36.if.end53_crit_edge
  %storemerge = phi i64 [ %15, %if.end36.if.end53_crit_edge ], [ %sub, %if.else45.if.end53_crit_edge ]
  %21 = ptrtoint ptr %effective_constraint_ns to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %storemerge, ptr %effective_constraint_ns, align 8
  %22 = ptrtoint ptr %cached_suspend_ok24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %cached_suspend_ok24, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.else45.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then16
  %retval.0 = phi i1 [ true, %if.end53 ], [ %tobool17, %if.then16 ], [ false, %if.end22.cleanup_crit_edge ], [ false, %if.end36.cleanup_crit_edge ], [ false, %if.else45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %constraint_ns) #7
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @default_power_down_ok(ptr noundef %pd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %call1 = tail call fastcc zeroext i1 @_default_power_down_ok(ptr noundef %pd, i64 noundef %call)
  ret i1 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @always_on_power_down_ok(ptr nocapture noundef readnone %domain) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @_default_power_down_ok(ptr noundef %pd, i64 noundef %now) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state_count = getelementptr i8, ptr %pd, i32 304
  %0 = ptrtoint ptr %state_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_count, align 8
  %sub = add i32 %1, -1
  %flags.i = getelementptr i8, ptr %pd, i32 292
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end7_crit_edge, label %if.end.i

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end.i:                                         ; preds = %entry
  %dev_list.i = getelementptr i8, ptr %pd, i32 136
  %4 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pdd.069.i = load ptr, ptr %dev_list.i, align 4
  %cmp.not70.i = icmp eq ptr %pdd.069.i, %dev_list.i
  br i1 %cmp.not70.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %pdd.072.i = phi ptr [ %pdd.0.i, %for.body.i.for.body.i_crit_edge ], [ %pdd.069.i, %if.end.i.for.body.i_crit_edge ]
  %domain_wakeup.071.i = phi i64 [ %domain_wakeup.1.i, %for.body.i.for.body.i_crit_edge ], [ 9223372036854775807, %if.end.i.for.body.i_crit_edge ]
  %next_wakeup2.i = getelementptr inbounds %struct.generic_pm_domain_data, ptr %pdd.072.i, i32 0, i32 8
  %5 = ptrtoint ptr %next_wakeup2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %next_wakeup2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %6)
  %cmp3.not.i = icmp eq i64 %6, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %now)
  %cmp.i.i.i = icmp slt i64 %6, %now
  %or.cond.i = or i1 %cmp3.not.i, %cmp.i.i.i
  %7 = tail call i64 @llvm.smin.i64(i64 %6, i64 %domain_wakeup.071.i) #7
  %domain_wakeup.1.i = select i1 %or.cond.i, i64 %domain_wakeup.071.i, i64 %7
  %8 = ptrtoint ptr %pdd.072.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pdd.0.i = load ptr, ptr %pdd.072.i, align 4
  %cmp.not.i = icmp eq ptr %pdd.0.i, %dev_list.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %domain_wakeup.0.lcssa.i = phi i64 [ 9223372036854775807, %if.end.i.for.end.i_crit_edge ], [ %domain_wakeup.1.i, %for.body.i.for.end.i_crit_edge ]
  %parent_links.i = getelementptr i8, ptr %pd, i32 120
  %9 = ptrtoint ptr %parent_links.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn73.i = load ptr, ptr %parent_links.i, align 4
  %cmp21.not74.i = icmp eq ptr %.pn73.i, %parent_links.i
  br i1 %cmp21.not74.i, label %for.end.i.land.lhs.true_crit_edge, label %for.end.i.for.body23.i_crit_edge

for.end.i.for.body23.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body23.i

for.end.i.land.lhs.true_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.body23.i:                                     ; preds = %for.body23.i.for.body23.i_crit_edge, %for.end.i.for.body23.i_crit_edge
  %.pn76.i = phi ptr [ %.pn.i, %for.body23.i.for.body23.i_crit_edge ], [ %.pn73.i, %for.end.i.for.body23.i_crit_edge ]
  %domain_wakeup.275.i = phi i64 [ %domain_wakeup.3.i, %for.body23.i.for.body23.i_crit_edge ], [ %domain_wakeup.0.lcssa.i, %for.end.i.for.body23.i_crit_edge ]
  %child.i = getelementptr i8, ptr %.pn76.i, i32 8
  %10 = ptrtoint ptr %child.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %child.i, align 4
  %next_wakeup24.i = getelementptr inbounds %struct.generic_pm_domain, ptr %11, i32 0, i32 26
  %12 = ptrtoint ptr %next_wakeup24.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %next_wakeup24.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %13)
  %cmp25.not.i = icmp eq i64 %13, 9223372036854775807
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %now)
  %cmp.i.i66.i = icmp slt i64 %13, %now
  %or.cond68.i = or i1 %cmp25.not.i, %cmp.i.i66.i
  %14 = tail call i64 @llvm.smin.i64(i64 %13, i64 %domain_wakeup.275.i) #7
  %domain_wakeup.3.i = select i1 %or.cond68.i, i64 %domain_wakeup.275.i, i64 %14
  %15 = ptrtoint ptr %.pn76.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn.i = load ptr, ptr %.pn76.i, align 4
  %cmp21.not.i = icmp eq ptr %.pn.i, %parent_links.i
  br i1 %cmp21.not.i, label %for.body23.i.land.lhs.true_crit_edge, label %for.body23.i.for.body23.i_crit_edge

for.body23.i.for.body23.i_crit_edge:              ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body23.i

for.body23.i.land.lhs.true_crit_edge:             ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body23.i.land.lhs.true_crit_edge, %for.end.i.land.lhs.true_crit_edge
  %domain_wakeup.2.lcssa.i = phi i64 [ %domain_wakeup.0.lcssa.i, %for.end.i.land.lhs.true_crit_edge ], [ %domain_wakeup.3.i, %for.body23.i.land.lhs.true_crit_edge ]
  %next_wakeup40.i = getelementptr i8, ptr %pd, i32 272
  %16 = ptrtoint ptr %next_wakeup40.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %domain_wakeup.2.lcssa.i, ptr %next_wakeup40.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372036854775807, i64 %domain_wakeup.2.lcssa.i)
  %cmp.not = icmp eq i64 %domain_wakeup.2.lcssa.i, 9223372036854775807
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %while.cond.preheader

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

while.cond.preheader:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp1102 = icmp sgt i32 %sub, -1
  br i1 %cmp1102, label %while.body.lr.ph, label %while.cond.preheader.if.then5_crit_edge

while.cond.preheader.if.then5_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %states.i = getelementptr i8, ptr %pd, i32 296
  %17 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %states.i, align 8
  %sub.i = sub i64 %domain_wakeup.2.lcssa.i, %now
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %state_idx.0103 = phi i32 [ %sub, %while.body.lr.ph ], [ %dec, %if.end.while.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.genpd_power_state, ptr %18, i32 %state_idx.0103
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i, align 8
  %residency_ns.i = getelementptr %struct.genpd_power_state, ptr %18, i32 %state_idx.0103, i32 2
  %21 = ptrtoint ptr %residency_ns.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %residency_ns.i, align 8
  %add.i = add i64 %22, %20
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %add.i)
  %cmp.i.not = icmp slt i64 %sub.i, %add.i
  br i1 %cmp.i.not, label %if.end, label %while.end

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %state_idx.0103, -1
  %cmp1 = icmp sgt i32 %state_idx.0103, 0
  br i1 %cmp1, label %if.end.while.body_crit_edge, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %max_off_time_changed = getelementptr i8, ptr %pd, i32 280
  %23 = ptrtoint ptr %max_off_time_changed to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %max_off_time_changed, align 8
  br label %if.end7

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %while.cond.preheader.if.then5_crit_edge
  %cached_power_down_ok = getelementptr i8, ptr %pd, i32 281
  %24 = ptrtoint ptr %cached_power_down_ok to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %cached_power_down_ok, align 1
  br label %done

if.end7:                                          ; preds = %while.end, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %state_idx.1 = phi i32 [ %state_idx.0103, %while.end ], [ %sub, %land.lhs.true.if.end7_crit_edge ], [ %sub, %entry.if.end7_crit_edge ]
  %max_off_time_changed8 = getelementptr i8, ptr %pd, i32 280
  %25 = ptrtoint ptr %max_off_time_changed8 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_off_time_changed8, align 8, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool9.not = icmp eq i8 %26, 0
  br i1 %tobool9.not, label %if.then10, label %if.end15

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %cached_power_down_state_idx = getelementptr i8, ptr %pd, i32 282
  %27 = ptrtoint ptr %cached_power_down_state_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cached_power_down_state_idx, align 2, !range !22
  %29 = zext i8 %28 to i32
  %state_idx12 = getelementptr i8, ptr %pd, i32 308
  %30 = ptrtoint ptr %state_idx12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %state_idx12, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %child_links = getelementptr i8, ptr %pd, i32 128
  %31 = ptrtoint ptr %child_links to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn104 = load ptr, ptr %child_links, align 4
  %cmp17.not105 = icmp eq ptr %.pn104, %child_links
  br i1 %cmp17.not105, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %.pn106 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn104, %if.end15.for.body_crit_edge ]
  %link.0 = getelementptr i8, ptr %.pn106, i32 -16
  %32 = ptrtoint ptr %link.0 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link.0, align 4
  %max_off_time_changed19 = getelementptr inbounds %struct.generic_pm_domain, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %max_off_time_changed19 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %max_off_time_changed19, align 8
  %35 = ptrtoint ptr %.pn106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn = load ptr, ptr %.pn106, align 4
  %cmp17.not = icmp eq ptr %.pn, %child_links
  br i1 %cmp17.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end15.for.end_crit_edge
  %max_off_time_ns = getelementptr i8, ptr %pd, i32 264
  %36 = ptrtoint ptr %max_off_time_ns to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %max_off_time_ns, align 8
  %37 = ptrtoint ptr %max_off_time_changed8 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %max_off_time_changed8, align 8
  %cached_power_down_ok26 = getelementptr i8, ptr %pd, i32 281
  %38 = ptrtoint ptr %cached_power_down_ok26 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cached_power_down_ok26, align 1
  %states.i77 = getelementptr i8, ptr %pd, i32 296
  %39 = ptrtoint ptr %states.i77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %states.i77, align 8
  %parent_links.i80 = getelementptr i8, ptr %pd, i32 120
  %41 = ptrtoint ptr %parent_links.i80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn100.i = load ptr, ptr %parent_links.i80, align 4
  %cmp.not101.i = icmp eq ptr %.pn100.i, %parent_links.i80
  %dev_list.i87 = getelementptr i8, ptr %pd, i32 136
  br label %while.cond27

while.cond27:                                     ; preds = %if.end35, %for.end
  %state_idx.2 = phi i32 [ %state_idx.1, %for.end ], [ %dec36, %if.end35 ]
  %arrayidx.i78 = getelementptr %struct.genpd_power_state, ptr %40, i32 %state_idx.2
  %42 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i78, align 8
  %power_on_latency_ns.i = getelementptr %struct.genpd_power_state, ptr %40, i32 %state_idx.2, i32 1
  %44 = ptrtoint ptr %power_on_latency_ns.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %power_on_latency_ns.i, align 8
  %add.i79 = add i64 %45, %43
  br i1 %cmp.not101.i, label %while.cond27.for.end.i88_crit_edge, label %while.cond27.for.body.i82_crit_edge

while.cond27.for.body.i82_crit_edge:              ; preds = %while.cond27
  br label %for.body.i82

while.cond27.for.end.i88_crit_edge:               ; preds = %while.cond27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i88

for.body.i82:                                     ; preds = %for.inc.i.for.body.i82_crit_edge, %while.cond27.for.body.i82_crit_edge
  %.pn103.i = phi ptr [ %.pn.i85, %for.inc.i.for.body.i82_crit_edge ], [ %.pn100.i, %while.cond27.for.body.i82_crit_edge ]
  %min_off_time_ns.0102.i = phi i64 [ %min_off_time_ns.2.ph.i, %for.inc.i.for.body.i82_crit_edge ], [ -1, %while.cond27.for.body.i82_crit_edge ]
  %child.i81 = getelementptr i8, ptr %.pn103.i, i32 8
  %46 = ptrtoint ptr %child.i81 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %child.i81, align 4
  %max_off_time_ns.i = getelementptr inbounds %struct.generic_pm_domain, ptr %47, i32 0, i32 25
  %48 = ptrtoint ptr %max_off_time_ns.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %max_off_time_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %49)
  %cmp4.i = icmp slt i64 %49, 0
  br i1 %cmp4.i, label %for.body.i82.for.inc.i_crit_edge, label %if.end.i83

for.body.i82.for.inc.i_crit_edge:                 ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i83:                                       ; preds = %for.body.i82
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %add.i79)
  %cmp5.not.i = icmp sgt i64 %49, %add.i79
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end.i83.while.body30_crit_edge

if.end.i83.while.body30_crit_edge:                ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body30

if.end7.i:                                        ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %min_off_time_ns.0102.i, i64 %49)
  %cmp8.i = icmp sgt i64 %min_off_time_ns.0102.i, %49
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %min_off_time_ns.0102.i)
  %cmp9.i = icmp slt i64 %min_off_time_ns.0102.i, 0
  %or.cond.i84 = or i1 %cmp9.i, %cmp8.i
  %min_off_time_ns.1.i = select i1 %or.cond.i84, i64 %49, i64 %min_off_time_ns.0102.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i82.for.inc.i_crit_edge
  %min_off_time_ns.2.ph.i = phi i64 [ %min_off_time_ns.0102.i, %for.body.i82.for.inc.i_crit_edge ], [ %min_off_time_ns.1.i, %if.end7.i ]
  %50 = ptrtoint ptr %.pn103.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i85 = load ptr, ptr %.pn103.i, align 4
  %cmp.not.i86 = icmp eq ptr %.pn.i85, %parent_links.i80
  br i1 %cmp.not.i86, label %for.inc.i.for.end.i88_crit_edge, label %for.inc.i.for.body.i82_crit_edge

for.inc.i.for.body.i82_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i82

for.inc.i.for.end.i88_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i88

for.end.i88:                                      ; preds = %for.inc.i.for.end.i88_crit_edge, %while.cond27.for.end.i88_crit_edge
  %min_off_time_ns.0.lcssa.i = phi i64 [ -1, %while.cond27.for.end.i88_crit_edge ], [ %min_off_time_ns.2.ph.i, %for.inc.i.for.end.i88_crit_edge ]
  %51 = ptrtoint ptr %dev_list.i87 to i32
  call void @__asan_load4_noabort(i32 %51)
  %pdd.0104.i = load ptr, ptr %dev_list.i87, align 4
  %cmp24.not105.i = icmp eq ptr %pdd.0104.i, %dev_list.i87
  br i1 %cmp24.not105.i, label %for.end.i88.for.end50.i_crit_edge, label %for.end.i88.for.body26.i_crit_edge

for.end.i88.for.body26.i_crit_edge:               ; preds = %for.end.i88
  br label %for.body26.i

for.end.i88.for.end50.i_crit_edge:                ; preds = %for.end.i88
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end50.i

for.body26.i:                                     ; preds = %for.inc44.i.for.body26.i_crit_edge, %for.end.i88.for.body26.i_crit_edge
  %pdd.0107.i = phi ptr [ %pdd.0.i89, %for.inc44.i.for.body26.i_crit_edge ], [ %pdd.0104.i, %for.end.i88.for.body26.i_crit_edge ]
  %min_off_time_ns.3106.i = phi i64 [ %min_off_time_ns.5.ph.i, %for.inc44.i.for.body26.i_crit_edge ], [ %min_off_time_ns.0.lcssa.i, %for.end.i88.for.body26.i_crit_edge ]
  %effective_constraint_ns.i = getelementptr inbounds %struct.generic_pm_domain_data, ptr %pdd.0107.i, i32 0, i32 1, i32 2
  %52 = ptrtoint ptr %effective_constraint_ns.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %effective_constraint_ns.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647000, i64 %53)
  %cmp29.i = icmp eq i64 %53, 2147483647000
  br i1 %cmp29.i, label %for.body26.i.for.inc44.i_crit_edge, label %if.end31.i

for.body26.i.for.inc44.i_crit_edge:               ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc44.i

if.end31.i:                                       ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_cmp8(i64 %53, i64 %add.i79)
  %cmp32.not.i = icmp sgt i64 %53, %add.i79
  br i1 %cmp32.not.i, label %if.end34.i, label %if.end31.i.while.body30_crit_edge

if.end31.i.while.body30_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body30

if.end34.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %min_off_time_ns.3106.i, i64 %53)
  %cmp35.i = icmp sgt i64 %min_off_time_ns.3106.i, %53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %min_off_time_ns.3106.i)
  %cmp37.i = icmp slt i64 %min_off_time_ns.3106.i, 0
  %or.cond90.i = or i1 %cmp37.i, %cmp35.i
  %min_off_time_ns.4.i = select i1 %or.cond90.i, i64 %53, i64 %min_off_time_ns.3106.i
  br label %for.inc44.i

for.inc44.i:                                      ; preds = %if.end34.i, %for.body26.i.for.inc44.i_crit_edge
  %min_off_time_ns.5.ph.i = phi i64 [ %min_off_time_ns.3106.i, %for.body26.i.for.inc44.i_crit_edge ], [ %min_off_time_ns.4.i, %if.end34.i ]
  %54 = ptrtoint ptr %pdd.0107.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %pdd.0.i89 = load ptr, ptr %pdd.0107.i, align 4
  %cmp24.not.i = icmp eq ptr %pdd.0.i89, %dev_list.i87
  br i1 %cmp24.not.i, label %for.inc44.i.for.end50.i_crit_edge, label %for.inc44.i.for.body26.i_crit_edge

for.inc44.i.for.body26.i_crit_edge:               ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i

for.inc44.i.for.end50.i_crit_edge:                ; preds = %for.inc44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end50.i

for.end50.i:                                      ; preds = %for.inc44.i.for.end50.i_crit_edge, %for.end.i88.for.end50.i_crit_edge
  %min_off_time_ns.3.lcssa.i = phi i64 [ %min_off_time_ns.5.ph.i, %for.inc44.i.for.end50.i_crit_edge ], [ %min_off_time_ns.0.lcssa.i, %for.end.i88.for.end50.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %min_off_time_ns.3.lcssa.i)
  %cmp51.i = icmp slt i64 %min_off_time_ns.3.lcssa.i, 0
  br i1 %cmp51.i, label %for.end50.i.done_crit_edge, label %if.end53.i

for.end50.i.done_crit_edge:                       ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end53.i:                                       ; preds = %for.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i90 = sub i64 %min_off_time_ns.3.lcssa.i, %45
  %55 = ptrtoint ptr %max_off_time_ns to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %sub.i90, ptr %max_off_time_ns, align 8
  br label %done

while.body30:                                     ; preds = %if.end31.i.while.body30_crit_edge, %if.end.i83.while.body30_crit_edge
  %cmp31 = icmp eq i32 %state_idx.2, 0
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %cached_power_down_ok26 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %cached_power_down_ok26, align 1
  br label %done

if.end35:                                         ; preds = %while.body30
  call void @__sanitizer_cov_trace_pc() #9
  %dec36 = add i32 %state_idx.2, -1
  br label %while.cond27

done:                                             ; preds = %if.then33, %if.end53.i, %for.end50.i.done_crit_edge, %if.then5
  %state_idx.3 = phi i32 [ 0, %if.then5 ], [ 0, %if.then33 ], [ %state_idx.2, %if.end53.i ], [ %state_idx.2, %for.end50.i.done_crit_edge ]
  %state_idx38 = getelementptr i8, ptr %pd, i32 308
  %57 = ptrtoint ptr %state_idx38 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %state_idx.3, ptr %state_idx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state_idx.3)
  %tobool40 = icmp ne i32 %state_idx.3, 0
  %cached_power_down_state_idx41 = getelementptr i8, ptr %pd, i32 282
  %frombool = zext i1 %tobool40 to i8
  %58 = ptrtoint ptr %cached_power_down_state_idx41 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %frombool, ptr %cached_power_down_state_idx41, align 2
  br label %cleanup

cleanup:                                          ; preds = %done, %if.then10
  %retval.0.in.in = getelementptr i8, ptr %pd, i32 281
  %59 = ptrtoint ptr %retval.0.in.in to i32
  call void @__asan_load1_noabort(i32 %59)
  %retval.0.in = load i8, ptr %retval.0.in.in, align 1, !range !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in)
  %retval.0 = icmp ne i8 %retval.0.in, 0
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__dev_pm_qos_resume_latency(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_update_qos_constraint(ptr noundef %dev, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subsys_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %domain_data = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %domain_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain_data, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %effective_constraint_ns = getelementptr inbounds %struct.generic_pm_domain_data, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %effective_constraint_ns to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %effective_constraint_ns, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call4 = tail call i32 @dev_pm_qos_read_value(ptr noundef %dev, i32 noundef 1) #7
  %conv = sext i32 %call4 to i64
  %mul = mul nsw i64 %conv, 1000
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %constraint_ns.0 = phi i64 [ %5, %if.then ], [ %mul, %if.else ]
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %constraint_ns.0, i64 %7)
  %cmp = icmp slt i64 %constraint_ns.0, %7
  br i1 %cmp, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %constraint_ns.0, ptr %data, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_read_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @pm_domain_cpu_gov, !1, !"pm_domain_cpu_gov", i1 false, i1 false}
!1 = !{!"../drivers/base/power/domain_governor.c", i32 389, i32 27}
!2 = !{ptr @simple_qos_governor, !3, !"simple_qos_governor", i1 false, i1 false}
!3 = !{!"../drivers/base/power/domain_governor.c", i32 395, i32 27}
!4 = !{ptr @pm_domain_always_on_gov, !5, !"pm_domain_always_on_gov", i1 false, i1 false}
!5 = !{!"../drivers/base/power/domain_governor.c", i32 403, i32 27}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/power/domain_governor.c", i32 56, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @default_suspend_ok.__UNIQUE_ID_ddebug170, !7, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148701410, i64 2148701415, i64 2148701428, i64 2148701472, i64 2148701506, i64 2148701527}
!22 = !{i8 0, i8 2}
