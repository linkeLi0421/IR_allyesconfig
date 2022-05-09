; ModuleID = '/llk/IR_all_yes/drivers/thermal/cpuidle_cooling.c_pt.bc'
source_filename = "../drivers/thermal/cpuidle_cooling.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.cpuidle_cooling_device = type { ptr, i32 }

@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"thermal-idle\00", [19 x i8] zeroinitializer }, align 32
@cpuidle_cooling_register.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpuidle_cooling_register\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/thermal/cpuidle_cooling.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"'thermal-idle' node not found for cpu%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"cpuidle cooling: 'thermal-idle' node not found for cpu%d\0A\00", [38 x i8] zeroinitializer }, align 32
@cpuidle_cooling_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013cpuidle cooling: Failed to register the cpuidle cooling devicefor cpu%d: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@cpuidle_cooling_register._entry_ptr = internal global ptr @cpuidle_cooling_register._entry, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"duration-us\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"exit-latency-us\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"idle-%s\00", [24 x i8] zeroinitializer }, align 32
@cpuidle_cooling_ops = internal global { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @cpuidle_cooling_get_max_state, ptr @cpuidle_cooling_get_cur_state, ptr @cpuidle_cooling_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__cpuidle_cooling_register.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"__cpuidle_cooling_register\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Idle injection set with idle duration=%u, latency=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"cpuidle cooling: %s: Idle injection set with idle duration=%u, latency=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 253, i32 49 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 258, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 267, i32 4 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 193, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 194, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 203, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"cpuidle_cooling_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 151, i32 42 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [37 x i8] c"../drivers/thermal/cpuidle_cooling.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 216, i32 2 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @cpuidle_cooling_register._entry, ptr @cpuidle_cooling_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cpuidle_cooling_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_cooling_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpuidle_cooling_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpuidle_cooling_register(ptr nocapture noundef readonly %drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpumask, align 8
  %call30 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %2)
  %cmp31 = icmp ult i32 %call30, %2
  br i1 %cmp31, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry.for.body_crit_edge
  %call32 = phi i32 [ %call, %for.cond.backedge.for.body_crit_edge ], [ %call30, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @get_cpu_device(i32 noundef %call32) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call ptr @of_get_cpu_node(i32 noundef %call32, ptr noundef null) #8
  br label %of_cpu_device_node_get.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call2.i = tail call ptr @of_node_get(ptr noundef %4) #8
  br label %of_cpu_device_node_get.exit

of_cpu_device_node_get.exit:                      ; preds = %if.end.i, %if.then.i
  %retval.0.i27 = phi ptr [ %call2.i, %if.end.i ], [ %call1.i, %if.then.i ]
  %call2 = tail call ptr @of_get_child_by_name(ptr noundef %retval.0.i27, ptr noundef nonnull @.str) #8
  tail call void @of_node_put(ptr noundef %retval.0.i27) #8
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %of_cpu_device_node_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpuidle_cooling_register.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpuidle_cooling_register, %if.then7)) #8
          to label %for.cond.backedge [label %if.then7], !srcloc !35

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpuidle_cooling_register.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.5, i32 noundef %call32) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.end8.for.cond.backedge_crit_edge, %if.then7, %do.body
  %5 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpumask, align 8
  %call = tail call i32 @cpumask_next(i32 noundef %call32, ptr noundef %6) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %7
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.cond.backedge.for.end_crit_edge

for.cond.backedge.for.end_crit_edge:              ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end8:                                          ; preds = %of_cpu_device_node_get.exit
  %call9 = tail call fastcc i32 @__cpuidle_cooling_register(ptr noundef nonnull %call2, ptr noundef %drv)
  tail call void @of_node_put(ptr noundef nonnull %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.for.cond.backedge_crit_edge, label %do.end14

if.end8.for.cond.backedge_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call32, i32 noundef %call9) #12
  br label %for.end

for.end:                                          ; preds = %do.end14, %for.cond.backedge.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__cpuidle_cooling_register(ptr noundef %np, ptr nocapture noundef readonly %drv) unnamed_addr #0 align 64 {
entry:
  %idle_duration_us = alloca i32, align 4
  %latency_us = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idle_duration_us) #8
  %0 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10000, ptr %idle_duration_us, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %latency_us) #8
  %1 = ptrtoint ptr %latency_us to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %latency_us, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpumask = getelementptr inbounds %struct.cpuidle_driver, ptr %drv, i32 0, i32 6
  %3 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpumask, align 8
  %call1 = tail call ptr @idle_inject_register(ptr noundef %4) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.7, ptr noundef nonnull %idle_duration_us, i32 noundef 1, i32 noundef 0) #8
  %call.i.i49 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.8, ptr noundef nonnull %latency_us, i32 noundef 1, i32 noundef 0) #8
  %5 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idle_duration_us, align 4
  call void @idle_inject_set_duration(ptr noundef nonnull %call1, i32 noundef 10000, i32 noundef %6) #8
  %7 = ptrtoint ptr %latency_us to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %latency_us, align 4
  call void @idle_inject_set_latency(ptr noundef nonnull %call1, i32 noundef %8) #8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %cpumask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpumask, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = call i32 @_find_first_bit_be(ptr noundef %11, i32 noundef %12) #8
  %call10 = call ptr @get_cpu_device(i32 noundef %call.i) #8
  %init_name.i = getelementptr inbounds %struct.device, ptr %call10, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.dev_name.exit_crit_edge

if.end4.dev_name.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end4.dev_name.exit_crit_edge
  %retval.0.i50 = phi ptr [ %16, %if.end.i ], [ %14, %if.end4.dev_name.exit_crit_edge ]
  %call12 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %retval.0.i50) #8
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %dev_name.exit.out_unregister_crit_edge, label %if.end15

dev_name.exit.out_unregister_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unregister

if.end15:                                         ; preds = %dev_name.exit
  %call16 = call ptr @thermal_of_cooling_device_register(ptr noundef %np, ptr noundef nonnull %call12, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cpuidle_cooling_ops) #8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %do.body

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call16 to i32
  call void @kfree(ptr noundef nonnull %call12) #8
  br label %out_unregister

do.body:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__cpuidle_cooling_register.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__cpuidle_cooling_register, %if.then25)) #8
          to label %cleanup.sink.split [label %if.then25], !srcloc !35

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %idle_duration_us, align 4
  %20 = ptrtoint ptr %latency_us to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %latency_us, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__cpuidle_cooling_register.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.12, ptr noundef nonnull %call12, i32 noundef %19, i32 noundef %21) #8
  br label %cleanup.sink.split

out_unregister:                                   ; preds = %if.then18, %dev_name.exit.out_unregister_crit_edge
  %ret.0 = phi i32 [ %17, %if.then18 ], [ -12, %dev_name.exit.out_unregister_crit_edge ]
  call void @idle_inject_unregister(ptr noundef nonnull %call1) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %out_unregister, %if.then25, %do.body, %if.end.cleanup.sink.split_crit_edge
  %call7.i.i.sink = phi ptr [ %call12, %do.body ], [ %call12, %if.then25 ], [ %call7.i.i, %if.end.cleanup.sink.split_crit_edge ], [ %call7.i.i, %out_unregister ]
  %retval.0.ph = phi i32 [ 0, %do.body ], [ 0, %if.then25 ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %ret.0, %out_unregister ]
  call void @kfree(ptr noundef nonnull %call7.i.i.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %latency_us) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idle_duration_us) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idle_inject_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_inject_set_duration(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_inject_set_latency(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_inject_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cpuidle_cooling_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpuidle_cooling_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %state1 = getelementptr inbounds %struct.cpuidle_cooling_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state1, align 4
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpuidle_cooling_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  %runtime_us = alloca i32, align 4
  %idle_duration_us = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %state2 = getelementptr inbounds %struct.cpuidle_cooling_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %runtime_us) #8
  %6 = ptrtoint ptr %runtime_us to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %runtime_us, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idle_duration_us) #8
  %7 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %idle_duration_us, align 4, !annotation !36
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %state, ptr %state2, align 4
  call void @idle_inject_get_duration(ptr noundef %3, ptr noundef nonnull %runtime_us, ptr noundef nonnull %idle_duration_us) #8
  %9 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idle_duration_us, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i = icmp eq i32 %state, 0
  br i1 %tobool.not.i, label %entry.cpuidle_cooling_runtime.exit_crit_edge, label %if.end.i

entry.cpuidle_cooling_runtime.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpuidle_cooling_runtime.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %10, 100
  %div.i = udiv i32 %mul.i, %state
  %sub.i = sub i32 %div.i, %10
  br label %cpuidle_cooling_runtime.exit

cpuidle_cooling_runtime.exit:                     ; preds = %if.end.i, %entry.cpuidle_cooling_runtime.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end.i ], [ 0, %entry.cpuidle_cooling_runtime.exit_crit_edge ]
  %11 = ptrtoint ptr %runtime_us to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %retval.0.i, ptr %runtime_us, align 4
  call void @idle_inject_set_duration(ptr noundef %3, i32 noundef %retval.0.i, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %or.cond = or i1 %tobool.not.i, %cmp
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %cpuidle_cooling_runtime.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call i32 @idle_inject_start(ptr noundef %3) #8
  br label %if.end9

if.else:                                          ; preds = %cpuidle_cooling_runtime.exit
  %or.cond19 = and i1 %tobool.not.i, %cmp
  br i1 %or.cond19, label %if.then8, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @idle_inject_stop(ptr noundef %3) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else.if.end9_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idle_duration_us) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %runtime_us) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_inject_get_duration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idle_inject_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idle_inject_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 253, i32 49}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 258, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cpuidle_cooling_register.__UNIQUE_ID_ddebug184, !3, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 267, i32 4}
!11 = !{ptr @cpuidle_cooling_register._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @cpuidle_cooling_register._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 193, i32 27}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 194, i32 27}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 203, i32 31}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 216, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__cpuidle_cooling_register.__UNIQUE_ID_ddebug183, !20, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!23 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpuidle_cooling_ops, !25, !"cpuidle_cooling_ops", i1 false, i1 false}
!25 = !{!"../drivers/thermal/cpuidle_cooling.c", i32 151, i32 42}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148865511, i64 2148865516, i64 2148865529, i64 2148865573, i64 2148865607, i64 2148865628}
!36 = !{!"auto-init"}
