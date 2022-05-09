; ModuleID = '/llk/IR_all_yes/drivers/thermal/gov_bang_bang.c_pt.bc'
source_filename = "../drivers/thermal/gov_bang_bang.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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

@thermal_gov_bang_bang = internal global { %struct.thermal_governor, [56 x i8] } { %struct.thermal_governor { [20 x i8] c"bang_bang\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @bang_bang_control, %struct.list_head zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__thermal_table_entry_thermal_gov_bang_bang = internal global ptr @thermal_gov_bang_bang, section "__governor_thermal_table", align 4
@thermal_zone_trip_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@thermal_zone_trip_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014Undefined get_trip_hyst for thermal zone %s - running with default hysteresis zero\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"thermal_zone_trip_update\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/thermal/gov_bang_bang.c\00", [32 x i8] zeroinitializer }, align 32
@thermal_zone_trip_update._entry_ptr = internal global ptr @thermal_zone_trip_update._entry, section ".printk_index", align 4
@thermal_zone_trip_update.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thermal_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Trip%d[temp=%d]:temp=%d:hyst=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@thermal_zone_trip_update._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014Thermal instance %s controlled by bang-bang has unexpected state: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@thermal_zone_trip_update._entry_ptr.7 = internal global ptr @thermal_zone_trip_update._entry.5, section ".printk_index", align 4
@thermal_zone_trip_update.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"target=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [22 x i8] c"thermal_gov_bang_bang\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 115, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 24, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 30, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 46, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [35 x i8] c"../drivers/thermal/gov_bang_bang.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 61, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__thermal_table_entry_thermal_gov_bang_bang, ptr @thermal_zone_trip_update._entry, ptr @thermal_zone_trip_update._entry.5, ptr @thermal_zone_trip_update._entry_ptr, ptr @thermal_zone_trip_update._entry_ptr.7, ptr @thermal_gov_bang_bang, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_gov_bang_bang to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_trip_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_zone_trip_update._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bang_bang_control(ptr noundef %tz, i32 noundef %trip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @thermal_zone_trip_update(ptr noundef %tz, i32 noundef %trip)
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %0 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn14 = load ptr, ptr %thermal_instances, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %thermal_instances
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn16 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn14, %entry.for.body_crit_edge ]
  %cdev = getelementptr i8, ptr %.pn16, i32 -120
  %1 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cdev, align 4
  tail call void @thermal_cdev_update(ptr noundef %2) #4
  %3 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @thermal_zone_trip_update(ptr noundef %tz, i32 noundef %trip) unnamed_addr #0 align 64 {
entry:
  %trip_temp = alloca i32, align 4
  %trip_hyst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_temp) #4
  %0 = ptrtoint ptr %trip_temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %trip_temp, align 4, !annotation !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trip_hyst) #4
  %1 = ptrtoint ptr %trip_hyst to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %trip_hyst, align 4, !annotation !31
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 20
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_trip_temp, align 4
  %call = call i32 %5(ptr noundef %tz, i32 noundef %trip, ptr noundef nonnull %trip_temp) #4
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_trip_hyst, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.end, label %if.else

land.end:                                         ; preds = %entry
  %.b142 = load i1, ptr @thermal_zone_trip_update.__already_done, align 1
  br i1 %.b142, label %land.end.if.end_crit_edge, label %if.then7, !prof !32

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @thermal_zone_trip_update.__already_done, align 1
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %type) #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.end.if.end_crit_edge
  %10 = ptrtoint ptr %trip_hyst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %trip_hyst, align 4
  br label %do.body20

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = call i32 %9(ptr noundef %tz, i32 noundef %trip, ptr noundef nonnull %trip_hyst) #4
  br label %do.body20

do.body20:                                        ; preds = %if.else, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_zone_trip_update, %if.then30)) #4
          to label %do.end33 [label %if.then30], !srcloc !33

if.then30:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 2
  %11 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %trip_temp, align 4
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  %13 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temperature, align 8
  %15 = ptrtoint ptr %trip_hyst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %trip_hyst, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_zone_trip_update.__UNIQUE_ID_ddebug170, ptr noundef %device, ptr noundef nonnull @.str.4, i32 noundef %trip, i32 noundef %12, i32 noundef %14, i32 noundef %16) #4
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %do.body20
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 26
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 24
  %17 = ptrtoint ptr %thermal_instances to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn155 = load ptr, ptr %thermal_instances, align 4
  %cmp.not156 = icmp eq ptr %.pn155, %thermal_instances
  br i1 %cmp.not156, label %do.end33.for.end_crit_edge, label %for.body.lr.ph

do.end33.for.end_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end33
  %temperature71 = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn157 = phi ptr [ %.pn155, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %trip38 = getelementptr i8, ptr %.pn157, i32 -116
  %18 = ptrtoint ptr %trip38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trip38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %trip)
  %cmp39.not = icmp eq i32 %19, %trip
  br i1 %cmp39.not, label %if.end41, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end41:                                         ; preds = %for.body
  %target = getelementptr i8, ptr %.pn157, i32 -100
  %20 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp42 = icmp eq i32 %21, -1
  br i1 %cmp42, label %if.end59.thread, label %if.end45

if.end59.thread:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %target, align 4
  br label %land.lhs.true62

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %switch = icmp ult i32 %21, 2
  br i1 %switch, label %if.end59, label %if.else67.thread

if.else67.thread:                                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr i8, ptr %.pn157, i32 -144
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %21) #7
  %23 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %target, align 4
  br label %land.lhs.true70

if.end59:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp61 = icmp eq i32 %21, 0
  br i1 %cmp61, label %if.end59.land.lhs.true62_crit_edge, label %if.end59.land.lhs.true70_crit_edge

if.end59.land.lhs.true70_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true70

if.end59.land.lhs.true62_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %if.end59.land.lhs.true62_crit_edge, %if.end59.thread
  %24 = ptrtoint ptr %temperature71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %temperature71, align 8
  %26 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trip_temp, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp64.not = icmp slt i32 %25, %27
  br i1 %cmp64.not, label %land.lhs.true62.do.body77_crit_edge, label %land.lhs.true62.do.body77.sink.split_crit_edge

land.lhs.true62.do.body77.sink.split_crit_edge:   ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77.sink.split

land.lhs.true62.do.body77_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77

land.lhs.true70:                                  ; preds = %if.end59.land.lhs.true70_crit_edge, %if.else67.thread
  %28 = ptrtoint ptr %temperature71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %temperature71, align 8
  %30 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %trip_temp, align 4
  %32 = ptrtoint ptr %trip_hyst to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %trip_hyst, align 4
  %sub = sub i32 %31, %33
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub)
  %cmp72.not = icmp sgt i32 %29, %sub
  br i1 %cmp72.not, label %land.lhs.true70.do.body77_crit_edge, label %land.lhs.true70.do.body77.sink.split_crit_edge

land.lhs.true70.do.body77.sink.split_crit_edge:   ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77.sink.split

land.lhs.true70.do.body77_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body77

do.body77.sink.split:                             ; preds = %land.lhs.true70.do.body77.sink.split_crit_edge, %land.lhs.true62.do.body77.sink.split_crit_edge
  %.sink = phi i32 [ 1, %land.lhs.true62.do.body77.sink.split_crit_edge ], [ 0, %land.lhs.true70.do.body77.sink.split_crit_edge ]
  %34 = ptrtoint ptr %target to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink, ptr %target, align 4
  br label %do.body77

do.body77:                                        ; preds = %do.body77.sink.split, %land.lhs.true70.do.body77_crit_edge, %land.lhs.true62.do.body77_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@thermal_zone_trip_update, %if.then89)) #4
          to label %do.end94 [label %if.then89], !srcloc !33

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #6
  %cdev = getelementptr i8, ptr %.pn157, i32 -120
  %35 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cdev, align 4
  %device90 = getelementptr inbounds %struct.thermal_cooling_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @thermal_zone_trip_update.__UNIQUE_ID_ddebug171, ptr noundef %device90, ptr noundef nonnull @.str.8, i32 noundef %38) #4
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %do.body77
  %cdev95 = getelementptr i8, ptr %.pn157, i32 -120
  %39 = ptrtoint ptr %cdev95 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cdev95, align 4
  %lock96 = getelementptr inbounds %struct.thermal_cooling_device, ptr %40, i32 0, i32 8
  call void @mutex_lock_nested(ptr noundef %lock96, i32 noundef 0) #4
  %41 = ptrtoint ptr %cdev95 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cdev95, align 4
  %updated = getelementptr inbounds %struct.thermal_cooling_device, ptr %42, i32 0, i32 7
  %43 = ptrtoint ptr %updated to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %updated, align 8
  %44 = load ptr, ptr %cdev95, align 4
  %lock99 = getelementptr inbounds %struct.thermal_cooling_device, ptr %44, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %lock99) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end94, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn157 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn157, align 4
  %cmp.not = icmp eq ptr %.pn, %thermal_instances
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end33.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_hyst) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trip_temp) #4
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__thermal_table_entry_thermal_gov_bang_bang, !1, !"__thermal_table_entry_thermal_gov_bang_bang", i1 false, i1 false}
!1 = !{!"../drivers/thermal/gov_bang_bang.c", i32 119, i32 1}
!2 = !{ptr @thermal_gov_bang_bang, !3, !"thermal_gov_bang_bang", i1 false, i1 false}
!3 = !{!"../drivers/thermal/gov_bang_bang.c", i32 115, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../drivers/thermal/gov_bang_bang.c", i32 24, i32 3}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @thermal_zone_trip_update._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @thermal_zone_trip_update._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/thermal/gov_bang_bang.c", i32 30, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug170, !12, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thermal/gov_bang_bang.c", i32 46, i32 4}
!17 = !{ptr @thermal_zone_trip_update._entry.5, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @thermal_zone_trip_update._entry_ptr.7, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/thermal/gov_bang_bang.c", i32 61, i32 3}
!21 = !{ptr @thermal_zone_trip_update.__UNIQUE_ID_ddebug171, !20, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2148875244, i64 2148875249, i64 2148875262, i64 2148875306, i64 2148875340, i64 2148875361}
