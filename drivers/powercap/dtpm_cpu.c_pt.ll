; ModuleID = '/llk/IR_all_yes/drivers/powercap/dtpm_cpu.c_pt.bc'
source_filename = "../drivers/powercap/dtpm_cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dtpm_descr = type { ptr }
%struct.dtpm_ops = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.dtpm_cpu = type { %struct.dtpm, %struct.freq_qos_request, i32 }
%struct.dtpm = type { %struct.powercap_zone, ptr, %struct.list_head, %struct.list_head, ptr, i32, i64, i64, i64, i32 }
%struct.powercap_zone = type { i32, ptr, ptr, ptr, %struct.device, i32, %struct.idr, ptr, ptr, ptr, i32, %struct.attribute_group, [2 x ptr], i8, ptr }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.cpufreq_policy = type { ptr, ptr, ptr, i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.em_perf_domain = type { ptr, i32, i32, [0 x i32] }
%struct.em_perf_state = type { i32, i32, i32, i32 }

@__dtpm_table_entry_dtpm_cpu = internal global %struct.dtpm_descr { ptr @dtpm_cpu_init }, section "__dtpm_table", align 4
@__pcpu_unique_dtpm_per_cpu = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dtpm_per_cpu = weak dso_local global ptr null, section ".data..percpu", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dtpm_cpu:offline\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dtpm_cpu:online\00", [16 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dtpm_ops = internal global { %struct.dtpm_ops, [16 x i8] } { %struct.dtpm_ops { ptr @set_pd_power_limit, ptr @get_pd_power_uw, ptr @update_pd_power_uw, ptr @pd_release }, [16 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpu%d-cpufreq\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_scale = external dso_local global i32, section ".data..percpu", align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 259, i32 50 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 264, i32 47 }
@___asan_gen_.9 = private unnamed_addr constant [9 x i8] c"dtpm_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 160, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [31 x i8] c"../drivers/powercap/dtpm_cpu.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 208, i32 31 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__dtpm_table_entry_dtpm_cpu, ptr @.str, ptr @.str.1, ptr @dtpm_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dtpm_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dtpm_cpu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 40, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull @cpuhp_dtpm_cpu_offline, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i8 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.1, i1 noundef zeroext true, ptr noundef nonnull @cpuhp_dtpm_cpu_online, ptr noundef null, i1 noundef zeroext false) #8
  %0 = tail call i32 @llvm.smin.i32(i32 %call.i8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuhp_dtpm_cpu_offline(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @dtpm_per_cpu to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @dtpm_update_power(ptr noundef nonnull %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuhp_dtpm_cpu_online(i32 noundef %cpu) #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %call = tail call ptr @cpufreq_cpu_get(i32 noundef %cpu) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @em_cpu_get(i32 noundef %cpu) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @dtpm_per_cpu to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @dtpm_update_power(ptr noundef nonnull %5) #8
  br label %cleanup

if.end9:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1160) #11
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  tail call void @dtpm_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @dtpm_ops) #8
  %cpu15 = getelementptr inbounds %struct.dtpm_cpu, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %cpu15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cpu, ptr %cpu15, align 4
  %related_cpus = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %related_cpus, align 4
  %call1685 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %9) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1685, i32 %10)
  %cmp86 = icmp ult i32 %call1685, %10
  br i1 %cmp86, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end13.for.body_crit_edge
  %call1687 = phi i32 [ %call16, %for.body.for.body_crit_edge ], [ %call1685, %if.end13.for.body_crit_edge ]
  %arrayidx24 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1687
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24, align 4
  %add25 = add i32 %12, ptrtoint (ptr @dtpm_per_cpu to i32)
  %13 = inttoptr i32 %add25 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %13, align 4
  %15 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %related_cpus, align 4
  %call16 = tail call i32 @cpumask_next(i32 noundef %call1687, ptr noundef %16) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call16, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end13.for.end_crit_edge
  %18 = ptrtoint ptr %cpu15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu15, align 4
  %call27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %19)
  %call30 = call i32 @dtpm_register(ptr noundef nonnull %name, ptr noundef nonnull %call7.i.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.end.out_kfree_dtpm_cpu_crit_edge

for.end.out_kfree_dtpm_cpu_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_kfree_dtpm_cpu

if.end33:                                         ; preds = %for.end
  %constraints = getelementptr inbounds %struct.cpufreq_policy, ptr %call, i32 0, i32 17
  %qos_req = getelementptr inbounds %struct.dtpm_cpu, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call1, align 4
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 1
  %22 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_perf_states, align 4
  %sub = add i32 %23, -1
  %arrayidx34 = getelementptr %struct.em_perf_state, ptr %21, i32 %sub
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 4
  %call35 = call i32 @freq_qos_add_request(ptr noundef %constraints, ptr noundef %qos_req, i32 noundef 2, i32 noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %out_dtpm_unregister

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_dtpm_unregister:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void @dtpm_unregister(ptr noundef nonnull %call7.i.i) #8
  br label %out_kfree_dtpm_cpu

out_kfree_dtpm_cpu:                               ; preds = %out_dtpm_unregister, %for.end.out_kfree_dtpm_cpu_crit_edge
  %ret.0 = phi i32 [ %call30, %for.end.out_kfree_dtpm_cpu_crit_edge ], [ %call35, %out_dtpm_unregister ]
  %dtpm_cpu.0 = phi ptr [ %call7.i.i, %for.end.out_kfree_dtpm_cpu_crit_edge ], [ null, %out_dtpm_unregister ]
  %26 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %related_cpus, align 4
  %call4288 = call i32 @cpumask_next(i32 noundef -1, ptr noundef %27) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4288, i32 %28)
  %cmp4389 = icmp ult i32 %call4288, %28
  br i1 %cmp4389, label %out_kfree_dtpm_cpu.do.body45_crit_edge, label %out_kfree_dtpm_cpu.for.end54_crit_edge

out_kfree_dtpm_cpu.for.end54_crit_edge:           ; preds = %out_kfree_dtpm_cpu
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

out_kfree_dtpm_cpu.do.body45_crit_edge:           ; preds = %out_kfree_dtpm_cpu
  br label %do.body45

do.body45:                                        ; preds = %do.body45.do.body45_crit_edge, %out_kfree_dtpm_cpu.do.body45_crit_edge
  %call4290 = phi i32 [ %call42, %do.body45.do.body45_crit_edge ], [ %call4288, %out_kfree_dtpm_cpu.do.body45_crit_edge ]
  %arrayidx52 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4290
  %29 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx52, align 4
  %add53 = add i32 %30, ptrtoint (ptr @dtpm_per_cpu to i32)
  %31 = inttoptr i32 %add53 to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %31, align 4
  %33 = ptrtoint ptr %related_cpus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %related_cpus, align 4
  %call42 = call i32 @cpumask_next(i32 noundef %call4290, ptr noundef %34) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %cmp43 = icmp ult i32 %call42, %35
  br i1 %cmp43, label %do.body45.do.body45_crit_edge, label %do.body45.for.end54_crit_edge

do.body45.for.end54_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end54

do.body45.do.body45_crit_edge:                    ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

for.end54:                                        ; preds = %do.body45.for.end54_crit_edge, %out_kfree_dtpm_cpu.for.end54_crit_edge
  call void @kfree(ptr noundef %dtpm_cpu.0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end54, %if.end33.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7 ], [ %ret.0, %for.end54 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtpm_update_power(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @em_cpu_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dtpm_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dtpm_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dtpm_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @set_pd_power_limit(ptr noundef %dtpm, i64 noundef %power_limit) #2 align 64 {
entry:
  %cpus = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 2
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call1 = tail call ptr @em_cpu_get(i32 noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus) #8
  %2 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cpus, align 4, !annotation !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cpus2 = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 3
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %cpus, ptr noundef nonnull @__cpu_online_mask, ptr noundef %cpus2, i32 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %cpus, i32 noundef %4) #8
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_perf_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp36 = icmp sgt i32 %6, 0
  br i1 %cmp36, label %for.body.lr.ph, label %cpumask_weight.exit.for.end_crit_edge

cpumask_weight.exit.for.end_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = mul i32 %call4.i.i, 1000
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  %mul = mul i32 %call4.i.i, 1000
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %power5 = getelementptr %struct.em_perf_state, ptr %8, i32 %i.037, i32 1
  %9 = ptrtoint ptr %power5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %power5, align 4
  %mul6 = mul i32 %mul, %10
  %conv = zext i32 %mul6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %power_limit)
  %cmp7 = icmp ugt i64 %conv, %power_limit
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %cpumask_weight.exit.for.end_crit_edge
  %mul16.pre-phi = phi i32 [ %.pre, %cpumask_weight.exit.for.end_crit_edge ], [ %mul, %for.body.for.end_crit_edge ], [ %mul, %for.inc.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %cpumask_weight.exit.for.end_crit_edge ], [ %6, %for.inc.for.end_crit_edge ], [ %i.037, %for.body.for.end_crit_edge ]
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call1, align 4
  %sub = add nsw i32 %i.0.lcssa, -1
  %arrayidx10 = getelementptr %struct.em_perf_state, ptr %12, i32 %sub
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  %qos_req = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 1
  %call11 = call i32 @freq_qos_update_request(ptr noundef %qos_req, i32 noundef %14) #8
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %power15 = getelementptr %struct.em_perf_state, ptr %16, i32 %sub, i32 1
  %17 = ptrtoint ptr %power15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %power15, align 4
  %mul17 = mul i32 %mul16.pre-phi, %18
  %conv18 = zext i32 %mul17 to i64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus) #8
  ret i64 %conv18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @get_pd_power_uw(ptr nocapture noundef readonly %dtpm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 2
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call1 = tail call ptr @em_cpu_get(i32 noundef %1) #8
  %cpus = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %call3 = tail call i32 @cpufreq_quick_get(i32 noundef %3) #8
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_perf_states, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.em_perf_state, ptr %7, i32 %i.022
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call3)
  %cmp4 = icmp ult i32 %9, %call3
  br i1 %cmp4, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %power = getelementptr %struct.em_perf_state, ptr %7, i32 %i.022, i32 1
  %10 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power, align 4
  %mul = mul i32 %11, 1000
  %conv = zext i32 %mul to i64
  %call9.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %cpus, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9.i, i32 %12)
  %cmp10.i = icmp ult i32 %call9.i, %12
  br i1 %cmp10.i, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %call12.i = phi i32 [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %call9.i, %if.end.for.body.i_crit_edge ]
  %sum_util.011.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, ptrtoint (ptr @cpu_scale to i32)
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %call2.i = tail call i32 @sched_cpu_util(i32 noundef %call12.i, i32 noundef %17) #8
  %add.i = add i32 %call2.i, %sum_util.011.i
  %call.i = tail call i32 @cpumask_next_and(i32 noundef %call12.i, ptr noundef %cpus, ptr noundef nonnull @__cpu_online_mask) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %18
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %cond.true.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %add.i, 10
  %div.i = udiv i32 %phi.bo.i, %17
  %conv.i = zext i32 %div.i to i64
  %mul.i = mul nuw i64 %conv.i, %conv
  %shr.i = lshr i64 %mul.i, 10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.true.i, %for.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %shr.i, %cond.true.i ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_pd_power_uw(ptr nocapture noundef %dtpm) #2 align 64 {
entry:
  %cpus = alloca %struct.cpumask, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 2
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpu, align 4
  %call1 = tail call ptr @em_cpu_get(i32 noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpus) #8
  %2 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cpus, align 4, !annotation !22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %cpus2 = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 3
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %cpus, ptr noundef nonnull @__cpu_online_mask, ptr noundef %cpus2, i32 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = call i32 @__bitmap_weight(ptr noundef nonnull %cpus, i32 noundef %4) #8
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call1, align 4
  %power = getelementptr inbounds %struct.em_perf_state, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power, align 4
  %conv = zext i32 %8 to i64
  %power_min = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 8
  %conv6 = sext i32 %call4.i.i to i64
  %mul = mul nsw i64 %conv6, 1000
  %mul8 = mul i64 %mul, %conv
  %9 = ptrtoint ptr %power_min to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %mul8, ptr %power_min, align 8
  %10 = load ptr, ptr %call1, align 4
  %nr_perf_states = getelementptr inbounds %struct.em_perf_domain, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %nr_perf_states to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_perf_states, align 4
  %sub = add i32 %12, -1
  %power11 = getelementptr %struct.em_perf_state, ptr %10, i32 %sub, i32 1
  %13 = ptrtoint ptr %power11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %power11, align 4
  %conv12 = zext i32 %14 to i64
  %power_max = getelementptr inbounds %struct.dtpm, ptr %dtpm, i32 0, i32 7
  %mul17 = mul i64 %mul, %conv12
  %15 = ptrtoint ptr %power_max to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %mul17, ptr %power_max, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpus) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pd_release(ptr noundef %dtpm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qos.i = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %qos.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qos.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %tobool.not = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %qos_req = getelementptr inbounds %struct.dtpm_cpu, ptr %dtpm, i32 0, i32 1
  %call3 = tail call i32 @freq_qos_remove_request(ptr noundef %qos_req) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %dtpm) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_quick_get(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_cpu_util(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @freq_qos_remove_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__dtpm_table_entry_dtpm_cpu, !1, !"__dtpm_table_entry_dtpm_cpu", i1 false, i1 false}
!1 = !{!"../drivers/powercap/dtpm_cpu.c", i32 272, i32 1}
!2 = !{ptr @__pcpu_unique_dtpm_per_cpu, !3, !"__pcpu_unique_dtpm_per_cpu", i1 false, i1 false}
!3 = !{!"../drivers/powercap/dtpm_cpu.c", i32 34, i32 8}
!4 = !{ptr @dtpm_per_cpu, !3, !"dtpm_per_cpu", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/powercap/dtpm_cpu.c", i32 259, i32 50}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/powercap/dtpm_cpu.c", i32 264, i32 47}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/powercap/dtpm_cpu.c", i32 208, i32 31}
!11 = !{ptr @dtpm_ops, !12, !"dtpm_ops", i1 false, i1 false}
!12 = !{!"../drivers/powercap/dtpm_cpu.c", i32 160, i32 24}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
