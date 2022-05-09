; ModuleID = '/llk/IR_all_yes/drivers/thermal/gov_fair_share.c_pt.bc'
source_filename = "../drivers/thermal/gov_fair_share.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%struct.atomic_t = type { i32 }
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

@thermal_gov_fair_share = internal global { %struct.thermal_governor, [56 x i8] } { %struct.thermal_governor { [20 x i8] c"fair_share\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @fair_share_throttle, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__thermal_table_entry_thermal_gov_fair_share = internal global ptr @thermal_gov_fair_share, section "__governor_thermal_table", align 4
@__tracepoint_thermal_zone_trip = external dso_local global %struct.tracepoint, align 4
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/thermal.h\00", [33 x i8] zeroinitializer }, align 32
@trace_thermal_zone_trip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [23 x i8] c"thermal_gov_fair_share\00", align 1
@___asan_gen_.4 = private constant [36 x i8] c"../drivers/thermal/gov_fair_share.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 119, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [34 x i8] c"../include/trace/events/thermal.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 68, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 108, i32 2 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__thermal_table_entry_thermal_gov_fair_share, ptr @thermal_gov_fair_share, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_gov_fair_share to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fair_share_throttle(ptr noundef %tz, i32 noundef %trip) #0 align 64 {
entry:
  %max_state.i = alloca i32, align 4
  %trip_temp.i = alloca i32, align 4
  %trip_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp.i) #5
  %0 = ptrtoint ptr %trip_temp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip_temp.i, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_type.i) #5
  %1 = ptrtoint ptr %trip_type.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trip_type.i, align 4, !annotation !22
  %trips.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 9
  %2 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trips.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.get_trip_level.exit_crit_edge, label %lor.lhs.false.i

entry.get_trip_level.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_trip_level.exit

lor.lhs.false.i:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %get_trip_temp.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %get_trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_trip_temp.i, align 4
  %tobool.not.i = icmp ne ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp230.i = icmp sgt i32 %3, 0
  %or.cond = select i1 %tobool.not.i, i1 %cmp230.i, i1 false
  br i1 %or.cond, label %for.body.lr.ph.i, label %lor.lhs.false.i.get_trip_level.exit_crit_edge

lor.lhs.false.i.get_trip_level.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_trip_level.exit

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false.i
  %temperature.i = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %get_trip_temp4.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %get_trip_temp4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_trip_temp4.i, align 4
  %call.i = call i32 %11(ptr noundef %tz, i32 noundef %count.031.i, ptr noundef nonnull %trip_temp.i) #5
  %12 = ptrtoint ptr %temperature.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temperature.i, align 8
  %14 = ptrtoint ptr %trip_temp.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %trip_temp.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp5.i = icmp slt i32 %13, %15
  br i1 %cmp5.i, label %for.end.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %count.031.i, 1
  %16 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %trips.i, align 8
  %cmp2.i = icmp slt i32 %inc.i, %17
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then9.i_crit_edge

for.inc.i.if.then9.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.031.i)
  %cmp8.not.i = icmp eq i32 %count.031.i, 0
  br i1 %cmp8.not.i, label %for.end.i.get_trip_level.exit_crit_edge, label %for.end.i.if.then9.i_crit_edge

for.end.i.if.then9.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9.i

for.end.i.get_trip_level.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_trip_level.exit

if.then9.i:                                       ; preds = %for.end.i.if.then9.i_crit_edge, %for.inc.i.if.then9.i_crit_edge
  %count.0.lcssa35.i = phi i32 [ %count.031.i, %for.end.i.if.then9.i_crit_edge ], [ %inc.i, %for.inc.i.if.then9.i_crit_edge ]
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %get_trip_type.i = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %get_trip_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_trip_type.i, align 4
  %sub.i = add nsw i32 %count.0.lcssa35.i, -1
  %call11.i = call i32 %21(ptr noundef %tz, i32 noundef %sub.i, ptr noundef nonnull %trip_type.i) #5
  %22 = ptrtoint ptr %trip_type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trip_type.i, align 4
  call fastcc void @trace_thermal_zone_trip(ptr noundef %tz, i32 noundef %sub.i, i32 noundef %23) #5
  br label %get_trip_level.exit

get_trip_level.exit:                              ; preds = %if.then9.i, %for.end.i.get_trip_level.exit_crit_edge, %lor.lhs.false.i.get_trip_level.exit_crit_edge, %entry.get_trip_level.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.get_trip_level.exit_crit_edge ], [ 0, %entry.get_trip_level.exit_crit_edge ], [ %count.0.lcssa35.i, %if.then9.i ], [ 0, %for.end.i.get_trip_level.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_type.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp.i) #5
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %24 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn73 = load ptr, ptr %thermal_instances, align 4
  %cmp.not74 = icmp eq ptr %.pn73, %thermal_instances
  br i1 %cmp.not74, label %get_trip_level.exit.for.cond14.preheader_crit_edge, label %get_trip_level.exit.for.body_crit_edge

get_trip_level.exit.for.body_crit_edge:           ; preds = %get_trip_level.exit
  br label %for.body

get_trip_level.exit.for.cond14.preheader_crit_edge: ; preds = %get_trip_level.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc.for.cond14.preheader_crit_edge, %get_trip_level.exit.for.cond14.preheader_crit_edge
  %total_instance.0.lcssa = phi i32 [ 0, %get_trip_level.exit.for.cond14.preheader_crit_edge ], [ %total_instance.1, %for.inc.for.cond14.preheader_crit_edge ]
  %total_weight.0.lcssa = phi i32 [ 0, %get_trip_level.exit.for.cond14.preheader_crit_edge ], [ %total_weight.1, %for.inc.for.cond14.preheader_crit_edge ]
  %25 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn6879 = load ptr, ptr %thermal_instances, align 4
  %cmp17.not80 = icmp eq ptr %.pn6879, %thermal_instances
  br i1 %cmp17.not80, label %for.cond14.preheader.for.end39_crit_edge, label %for.body19.lr.ph

for.cond14.preheader.for.end39_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.body19.lr.ph:                                 ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_weight.0.lcssa)
  %tobool.not = icmp eq i32 %total_weight.0.lcssa, 0
  br label %for.body19

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %get_trip_level.exit.for.body_crit_edge
  %.pn77 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn73, %get_trip_level.exit.for.body_crit_edge ]
  %total_weight.076 = phi i32 [ %total_weight.1, %for.inc.for.body_crit_edge ], [ 0, %get_trip_level.exit.for.body_crit_edge ]
  %total_instance.075 = phi i32 [ %total_instance.1, %for.inc.for.body_crit_edge ], [ 0, %get_trip_level.exit.for.body_crit_edge ]
  %trip2 = getelementptr i8, ptr %.pn77, i32 -116
  %26 = ptrtoint ptr %trip2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trip2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %trip)
  %cmp3.not = icmp eq i32 %27, %trip
  br i1 %cmp3.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %weight = getelementptr i8, ptr %.pn77, i32 16
  %28 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %weight, align 4
  %add = add i32 %29, %total_weight.076
  %inc = add i32 %total_instance.075, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %total_instance.1 = phi i32 [ %total_instance.075, %for.body.for.inc_crit_edge ], [ %inc, %if.end ]
  %total_weight.1 = phi i32 [ %total_weight.076, %for.body.for.inc_crit_edge ], [ %add, %if.end ]
  %30 = ptrtoint ptr %.pn77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn77, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %for.inc.for.cond14.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.cond14.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.body19:                                       ; preds = %cleanup.for.body19_crit_edge, %for.body19.lr.ph
  %.pn6881 = phi ptr [ %.pn6879, %for.body19.lr.ph ], [ %.pn68, %cleanup.for.body19_crit_edge ]
  %cdev20 = getelementptr i8, ptr %.pn6881, i32 -120
  %31 = ptrtoint ptr %cdev20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cdev20, align 4
  %trip21 = getelementptr i8, ptr %.pn6881, i32 -116
  %33 = ptrtoint ptr %trip21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %trip21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %trip)
  %cmp22.not = icmp eq i32 %34, %trip
  br i1 %cmp22.not, label %if.end24, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %for.body19
  br i1 %tobool.not, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %div = sdiv i32 100, %total_instance.0.lcssa
  br label %if.end28

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %weight26 = getelementptr i8, ptr %.pn6881, i32 16
  %35 = ptrtoint ptr %weight26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %weight26, align 4
  %mul = mul i32 %36, 100
  %div27 = udiv i32 %mul, %total_weight.0.lcssa
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  %percentage.0 = phi i32 [ %div27, %if.else ], [ %div, %if.then25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_state.i) #5
  %37 = ptrtoint ptr %max_state.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %max_state.i, align 4, !annotation !22
  %ops.i69 = getelementptr inbounds %struct.thermal_cooling_device, ptr %32, i32 0, i32 6
  %38 = ptrtoint ptr %ops.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i69, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i70 = call i32 %41(ptr noundef %32, ptr noundef nonnull %max_state.i) #5
  %mul.i = mul i32 %percentage.0, %retval.0.i
  %42 = ptrtoint ptr %max_state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_state.i, align 4
  %mul1.i = mul i32 %mul.i, %43
  %44 = ptrtoint ptr %trips.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %trips.i, align 8
  %mul2.i = mul i32 %45, 100
  %div.i = sdiv i32 %mul1.i, %mul2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_state.i) #5
  %target = getelementptr i8, ptr %.pn6881, i32 -100
  %46 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div.i, ptr %target, align 4
  %lock30 = getelementptr inbounds %struct.thermal_cooling_device, ptr %32, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock30, i32 noundef 0) #5
  call void @__thermal_cdev_update(ptr noundef %32) #5
  call void @mutex_unlock(ptr noundef %lock30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.body19.cleanup_crit_edge
  %47 = ptrtoint ptr %.pn6881 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn68 = load ptr, ptr %.pn6881, align 4
  %cmp17.not = icmp eq ptr %.pn68, %thermal_instances
  br i1 %cmp17.not, label %cleanup.for.end39_crit_edge, label %cleanup.for.body19_crit_edge

cleanup.for.body19_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

cleanup.for.end39_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.end39:                                        ; preds = %cleanup.for.end39_crit_edge, %for.cond14.preheader.for.end39_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__thermal_cdev_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_thermal_zone_trip(ptr noundef %tz, i32 noundef %trip, i32 noundef %trip_type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 1), ptr blockaddress(@trace_thermal_zone_trip, %do.body)) #5
          to label %if.end48 [label %do.body], !srcloc !23

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !12) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !24

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #7
  %9 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !25
  %call42 = tail call i32 @__traceiter_thermal_zone_trip(ptr noundef null, ptr noundef %tz, i32 noundef %trip, i32 noundef %trip_type) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !26
  %13 = tail call i32 @llvm.read_register.i32(metadata !12) #5
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !12) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !24

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 108, i32 noundef 9, ptr noundef null) #5
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !12) #5
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_thermal_zone_trip.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @trace_thermal_zone_trip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @.str.1) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !28
  %31 = tail call i32 @llvm.read_register.i32(metadata !12) #5
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11}
!llvm.named.register.sp = !{!12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__thermal_table_entry_thermal_gov_fair_share, !1, !"__thermal_table_entry_thermal_gov_fair_share", i1 false, i1 false}
!1 = !{!"../drivers/thermal/gov_fair_share.c", i32 123, i32 1}
!2 = !{ptr @thermal_gov_fair_share, !3, !"thermal_gov_fair_share", i1 false, i1 false}
!3 = !{!"../drivers/thermal/gov_fair_share.c", i32 119, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/trace/events/thermal.h", i32 68, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!8 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{!"sp"}
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
!23 = !{i64 2148875201, i64 2148875206, i64 2148875219, i64 2148875263, i64 2148875297, i64 2148875318}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2152536548}
!26 = !{i64 2152536783}
!27 = !{i64 2150034879}
!28 = !{i64 2150035915}
