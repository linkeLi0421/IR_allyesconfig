; ModuleID = '/llk/IR_all_yes/drivers/thermal/gov_step_wise.c_pt.bc'
source_filename = "../drivers/thermal/gov_step_wise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.thermal_instance = type { i32, [20 x i8], ptr, ptr, i32, i8, i32, i32, i32, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_gov_step_wise = internal global { %struct.thermal_governor, [56 x i8] } { %struct.thermal_governor { [20 x i8] c"step_wise\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @step_wise_throttle, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__thermal_table_entry_thermal_gov_step_wise = internal global ptr @thermal_gov_step_wise, section "__governor_thermal_table", align 4
@thermal_zone_trip_update.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"thermal_zone_trip_update\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/gov_step_wise.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trip%d[type=%d,temp=%d]:trend=%d,throttle=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@thermal_zone_trip_update.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"old_target=%d, target=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@__tracepoint_thermal_zone_trip = external dso_local global %struct.tracepoint, align 4
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/thermal.h\00", [33 x i8] zeroinitializer }, align 32
@trace_thermal_zone_trip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@get_target_state.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_target_state\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cur_state=%ld\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.10 = private unnamed_addr constant [22 x i8] c"thermal_gov_step_wise\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 197, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 135, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 146, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [34 x i8] c"../include/trace/events/thermal.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 68, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 108, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/thermal/gov_step_wise.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 51, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__thermal_table_entry_thermal_gov_step_wise, ptr @thermal_gov_step_wise, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_gov_step_wise to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @step_wise_throttle(ptr noundef %tz, i32 noundef %trip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @thermal_zone_trip_update(ptr noundef %tz, i32 noundef %trip)
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %0 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn14 = load ptr, ptr %thermal_instances, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %thermal_instances
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %cdev = getelementptr i8, ptr %.pn16, i32 -120
  %1 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdev, align 4
  tail call void @thermal_cdev_update(ptr noundef %2) #6
  %3 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @thermal_zone_trip_update(ptr noundef %tz, i32 noundef %trip) unnamed_addr #0 align 64 {
entry:
  %trip_temp = alloca i32, align 4
  %trip_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp) #6
  %0 = ptrtoint ptr %trip_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip_temp, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_type) #6
  %1 = ptrtoint ptr %trip_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trip_type, align 4, !annotation !35
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trip_temp, align 4
  %call = call i32 %5(ptr noundef %tz, i32 noundef %trip, ptr noundef nonnull %trip_temp) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_trip_type, align 4
  %call2 = call i32 %9(ptr noundef %tz, i32 noundef %trip, ptr noundef nonnull %trip_type) #6
  %call3 = call i32 @get_tz_trend(ptr noundef %tz, i32 noundef %trip) #6
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  %10 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temperature, align 8
  %12 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp slt i32 %11, %13
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %trip_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trip_type, align 4
  call fastcc void @trace_thermal_zone_trip(ptr noundef %tz, i32 noundef %trip, i32 noundef %15)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %16 = xor i1 %cmp.not, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_zone_trip_update, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !36

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %17 = ptrtoint ptr %trip_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trip_type, align 4
  %19 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trip_temp, align 4
  %conv = zext i1 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_zone_trip_update.__UNIQUE_ID_ddebug186, ptr noundef %device, ptr noundef nonnull @.str.3, i32 noundef %trip, i32 noundef %18, i32 noundef %20, i32 noundef %call3, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %21 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn125 = load ptr, ptr %thermal_instances, align 4
  %cmp12.not127 = icmp eq ptr %.pn125, %thermal_instances
  br i1 %cmp12.not127, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %passive.i119 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn128 = phi ptr [ %.pn125, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %trip16 = getelementptr i8, ptr %.pn128, i32 -116
  %22 = ptrtoint ptr %trip16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trip16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %trip)
  %cmp17.not = icmp eq i32 %23, %trip
  br i1 %cmp17.not, label %if.end20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %instance.0129 = getelementptr i8, ptr %.pn128, i32 -148
  %target = getelementptr i8, ptr %.pn128, i32 -100
  %24 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %target, align 4
  %call22 = call fastcc i32 @get_target_state(ptr noundef %instance.0129, i32 noundef %call3, i1 noundef zeroext %16)
  %26 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call22, ptr %target, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_zone_trip_update, %if.then36)) #6
          to label %do.end41 [label %if.then36], !srcloc !36

if.then36:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %cdev = getelementptr i8, ptr %.pn128, i32 -120
  %27 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdev, align 4
  %device37 = getelementptr inbounds %struct.thermal_cooling_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %target, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_zone_trip_update.__UNIQUE_ID_ddebug187, ptr noundef %device37, ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %30) #6
  br label %do.end41

do.end41:                                         ; preds = %if.then36, %if.end20
  %initialized = getelementptr i8, ptr %.pn128, i32 -112
  %31 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %initialized, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %do.end41.if.end48_crit_edge, label %land.lhs.true

do.end41.if.end48_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true:                                    ; preds = %do.end41
  %33 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %34)
  %cmp45 = icmp eq i32 %25, %34
  br i1 %cmp45, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end48:                                         ; preds = %land.lhs.true.if.end48_crit_edge, %do.end41.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cond = icmp eq i32 %25, -1
  %35 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp53.not = icmp eq i32 %36, -1
  br i1 %cond, label %land.lhs.true51, label %land.lhs.true58

land.lhs.true51:                                  ; preds = %if.end48
  br i1 %cmp53.not, label %land.lhs.true51.if.end64_crit_edge, label %if.then55

land.lhs.true51.if.end64_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then55:                                        ; preds = %land.lhs.true51
  %37 = ptrtoint ptr %trip_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %trip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i = icmp eq i32 %38, 1
  br i1 %cmp.i, label %if.then55.if.end64.sink.split_crit_edge, label %if.then55.if.end64_crit_edge

if.then55.if.end64_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then55.if.end64.sink.split_crit_edge:          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.sink.split

land.lhs.true58:                                  ; preds = %if.end48
  br i1 %cmp53.not, label %if.then62, label %land.lhs.true58.if.end64_crit_edge

land.lhs.true58.if.end64_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %land.lhs.true58
  %39 = ptrtoint ptr %trip_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %trip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i118 = icmp eq i32 %40, 1
  br i1 %cmp.i118, label %if.then62.if.end64.sink.split_crit_edge, label %if.then62.if.end64_crit_edge

if.then62.if.end64_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62.if.end64.sink.split_crit_edge:          ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.sink.split

if.end64.sink.split:                              ; preds = %if.then62.if.end64.sink.split_crit_edge, %if.then55.if.end64.sink.split_crit_edge
  %.sink130 = phi i32 [ 1, %if.then55.if.end64.sink.split_crit_edge ], [ -1, %if.then62.if.end64.sink.split_crit_edge ]
  %41 = ptrtoint ptr %passive.i119 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %passive.i119, align 4
  %add.i120 = add i32 %42, %.sink130
  store i32 %add.i120, ptr %passive.i119, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.end64.sink.split, %if.then62.if.end64_crit_edge, %land.lhs.true58.if.end64_crit_edge, %if.then55.if.end64_crit_edge, %land.lhs.true51.if.end64_crit_edge
  %43 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %initialized, align 4
  %cdev66 = getelementptr i8, ptr %.pn128, i32 -120
  %44 = ptrtoint ptr %cdev66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cdev66, align 4
  %lock67 = getelementptr inbounds %struct.thermal_cooling_device, ptr %45, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock67, i32 noundef 0) #6
  %46 = ptrtoint ptr %cdev66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cdev66, align 4
  %updated = getelementptr inbounds %struct.thermal_cooling_device, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %updated, align 8
  %49 = load ptr, ptr %cdev66, align 4
  %lock70 = getelementptr inbounds %struct.thermal_cooling_device, ptr %49, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %lock70) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end64, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %50 = ptrtoint ptr %.pn128 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn = load ptr, ptr %.pn128, align 4
  %cmp12.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp12.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_type) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cdev_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_tz_trend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_zone_trip(ptr noundef %tz, i32 noundef %trip, i32 noundef %trip_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 1), ptr blockaddress(@trace_thermal_zone_trip, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !36

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !38

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !39
  %call42 = tail call i32 @__traceiter_thermal_zone_trip(ptr noundef null, ptr noundef %tz, i32 noundef %trip, i32 noundef %trip_type) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !40
  %13 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !38

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_zone_trip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_thermal_zone_trip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 92, ptr noundef nonnull @.str.6) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !42
  %31 = tail call i32 @llvm.read_register.i32(metadata !25) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_target_state(ptr nocapture noundef readonly %instance, i32 noundef %trend, i1 noundef zeroext %throttle) unnamed_addr #0 align 64 {
entry:
  %cur_state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev1 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 3
  %0 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur_state) #6
  %2 = ptrtoint ptr %cur_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cur_state, align 4, !annotation !35
  %ops = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %get_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get_cur_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_cur_state, align 4
  %call = call i32 %6(ptr noundef %1, ptr noundef nonnull %cur_state) #6
  %target = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 8
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @get_target_state.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@get_target_state, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !36

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_state, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @get_target_state.__UNIQUE_ID_ddebug185, ptr noundef %device, ptr noundef nonnull @.str.9, i32 noundef %10) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %initialized = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 5
  %11 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %initialized, align 4, !range !37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.then7, label %if.end20

if.then7:                                         ; preds = %do.end
  br i1 %throttle, label %if.then9, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  %13 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_state, align 4
  %add = add i32 %14, 1
  %upper = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 6
  %15 = ptrtoint ptr %upper to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %upper, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp.not = icmp ult i32 %add, %16
  br i1 %cmp.not, label %cond.false, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %lower = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 7
  %17 = ptrtoint ptr %lower to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lower, align 4
  %19 = call i32 @llvm.umax.i32(i32 %add, i32 %18)
  br label %cleanup

if.end20:                                         ; preds = %do.end
  %20 = zext i32 %trend to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %trend, label %if.end20.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb37
    i32 2, label %sw.bb42
    i32 4, label %sw.bb59
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end20
  br i1 %throttle, label %if.then22, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_state, align 4
  %upper23 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 6
  %23 = ptrtoint ptr %upper23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %upper23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp24 = icmp ult i32 %22, %24
  %add26 = add i32 %22, 1
  %cond30 = select i1 %cmp24, i32 %add26, i32 %24
  %lower31 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 7
  %25 = ptrtoint ptr %lower31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %lower31, align 4
  %27 = call i32 @llvm.umax.i32(i32 %cond30, i32 %26)
  br label %cleanup

sw.bb37:                                          ; preds = %if.end20
  br i1 %throttle, label %if.then39, label %sw.bb37.cleanup_crit_edge

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #8
  %upper40 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 6
  %28 = ptrtoint ptr %upper40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %upper40, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end20
  %30 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_state, align 4
  %lower43 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 7
  %32 = ptrtoint ptr %lower43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lower43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp44.not = icmp ugt i32 %31, %33
  br i1 %cmp44.not, label %if.else49, label %if.then45

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %throttle, i32 %8, i32 -1
  br label %cleanup

if.else49:                                        ; preds = %sw.bb42
  br i1 %throttle, label %if.else49.cleanup_crit_edge, label %if.then51

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %31, -1
  %upper52 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 6
  %34 = ptrtoint ptr %upper52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %upper52, align 4
  %36 = call i32 @llvm.umin.i32(i32 %sub, i32 %35)
  br label %cleanup

sw.bb59:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %cur_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_state, align 4
  %lower60 = getelementptr inbounds %struct.thermal_instance, ptr %instance, i32 0, i32 7
  %39 = ptrtoint ptr %lower60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lower60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp61 = icmp eq i32 %38, %40
  %spec.select105 = select i1 %throttle, i32 %8, i32 -1
  %spec.select107 = select i1 %cmp61, i32 %spec.select105, i32 %40
  br label %cleanup

cleanup:                                          ; preds = %sw.bb59, %if.then51, %if.else49.cleanup_crit_edge, %if.then45, %if.then39, %sw.bb37.cleanup_crit_edge, %if.then22, %sw.bb.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %cond.false, %if.then9.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then9.cleanup_crit_edge ], [ %19, %cond.false ], [ -1, %if.then7.cleanup_crit_edge ], [ %8, %if.end20.cleanup_crit_edge ], [ %8, %if.else49.cleanup_crit_edge ], [ %29, %if.then39 ], [ %8, %sw.bb37.cleanup_crit_edge ], [ %8, %sw.bb.cleanup_crit_edge ], [ %spec.select, %if.then45 ], [ %36, %if.then51 ], [ %27, %if.then22 ], [ %spec.select107, %sw.bb59 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur_state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_thermal_zone_trip(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__thermal_table_entry_thermal_gov_step_wise, !1, !"__thermal_table_entry_thermal_gov_step_wise", i1 false, i1 false}
!1 = !{!"../drivers/thermal/gov_step_wise.c", i32 201, i32 1}
!2 = !{ptr @thermal_gov_step_wise, !3, !"thermal_gov_step_wise", i1 false, i1 false}
!3 = !{!"../drivers/thermal/gov_step_wise.c", i32 197, i32 32}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/thermal/gov_step_wise.c", i32 135, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug186, !5, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/thermal/gov_step_wise.c", i32 146, i32 3}
!12 = !{ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug187, !11, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/trace/events/thermal.h", i32 68, i32 1}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/thermal/gov_step_wise.c", i32 51, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @get_target_state.__UNIQUE_ID_ddebug185, !22, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"auto-init"}
!36 = !{i64 2148877670, i64 2148877675, i64 2148877688, i64 2148877732, i64 2148877766, i64 2148877787}
!37 = !{i8 0, i8 2}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2152539017}
!40 = !{i64 2152539252}
!41 = !{i64 2150037348}
!42 = !{i64 2150038384}
