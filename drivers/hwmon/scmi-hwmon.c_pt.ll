; ModuleID = '/llk/IR_all_yes/drivers/hwmon/scmi-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/scmi-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.scmi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_device_id = type { i8, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
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
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_proto_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scmi_sensor_info = type { i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, %struct.scmi_sensor_intervals_info, i32, [16 x i8], i8, i32, i32, i32, %struct.scmi_range_attrs }
%struct.scmi_sensor_intervals_info = type { i8, i32, ptr, [16 x i32] }
%struct.scmi_range_attrs = type { i64, i64 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.scmi_sensors = type { ptr, [10 x ptr] }

@__initcall__kmod_scmi_hwmon__183_280_scmi_hwmon_drv_init6 = internal global ptr @scmi_hwmon_drv_init, section ".initcall6.init", align 4
@scmi_hwmon_drv = internal global { %struct.scmi_driver, [36 x i8] } { %struct.scmi_driver { ptr @.str.1, ptr @scmi_hwmon_probe, ptr null, ptr @scmi_id_table, %struct.device_driver zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_scmi_hwmon_drv_exit = internal global ptr @scmi_hwmon_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [54 x i8] c"scmi_hwmon.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [55 x i8] c"scmi_hwmon.description=ARM SCMI HWMON interface driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [41 x i8] c"scmi_hwmon.file=drivers/hwmon/scmi-hwmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"scmi_hwmon.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scmi_hwmon\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scmi-hwmon\00", [21 x i8] zeroinitializer }, align 32
@scmi_id_table = internal constant { [2 x %struct.scmi_device_id], [16 x i8] } { [2 x %struct.scmi_device_id] [%struct.scmi_device_id { i8 21, ptr @.str.3 }, %struct.scmi_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@sensor_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@scmi_types = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 1, i32 0, i32 0, i32 2, i32 3, i32 4, i32 5], [60 x i8] zeroinitializer }, align 32
@scmi_chip_info = internal global { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @scmi_hwmon_ops, ptr null }, [24 x i8] zeroinitializer }, align 32
@hwmon_attributes = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 16, i32 2097154, i32 1026, i32 1026, i32 4194816, i32 6, i32 0, i32 0, i32 0, i32 0], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scmi_sensors\00", [19 x i8] zeroinitializer }, align 32
@scmi_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @scmi_hwmon_is_visible, ptr @scmi_hwmon_read, ptr @scmi_hwmon_read_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hwmon\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.4 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"scmi_hwmon_drv\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 275, i32 27 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 280, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 276, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"scmi_id_table\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 269, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"sensor_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 16, i32 44 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"scmi_types\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 143, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"scmi_chip_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 120, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"hwmon_attributes\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 151, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 262, i32 52 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"scmi_hwmon_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 114, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [30 x i8] c"../drivers/hwmon/scmi-hwmon.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 270, i32 26 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_scmi_hwmon_drv_exit, ptr @__initcall__kmod_scmi_hwmon__183_280_scmi_hwmon_drv_init6, ptr @scmi_hwmon_drv_exit, ptr @scmi_hwmon_drv, ptr @.str, ptr @.str.1, ptr @scmi_id_table, ptr @sensor_ops, ptr @scmi_types, ptr @scmi_chip_info, ptr @hwmon_attributes, ptr @.str.2, ptr @scmi_hwmon_ops, ptr @.str.3], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_hwmon_drv to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_types to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwmon_attributes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scmi_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scmi_driver_register(ptr noundef nonnull @scmi_hwmon_drv, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scmi_hwmon_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @scmi_driver_unregister(ptr noundef nonnull @scmi_hwmon_drv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_probe(ptr noundef %sdev) #2 align 64 {
entry:
  %nr_count = alloca [10 x i32], align 4
  %ph = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nr_count) #7
  %0 = call ptr @memset(ptr %nr_count, i32 0, i32 40)
  %dev1 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 3
  %handle2 = getelementptr inbounds %struct.scmi_device, ptr %sdev, i32 0, i32 4
  %1 = ptrtoint ptr %handle2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %handle2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ph) #7
  %3 = ptrtoint ptr %ph to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %ph, align 4, !annotation !40
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %devm_protocol_get = getelementptr inbounds %struct.scmi_handle, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %devm_protocol_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devm_protocol_get, align 4
  %call = call ptr %5(ptr noundef %sdev, i8 noundef zeroext 21, ptr noundef nonnull %ph) #7
  store ptr %call, ptr @sensor_ops, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ph, align 4
  %call7 = call i32 %8(ptr noundef %10) #7
  %conv = trunc i32 %call7 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool8.not = icmp eq i16 %conv, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ph, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %call.i, align 4
  %conv16 = and i32 %call7, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv16)
  %cmp172.not = icmp eq i32 %conv16, 0
  br i1 %cmp172.not, label %if.end14.for.end_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  br label %for.body

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end14.for.body_crit_edge
  %nr_types.0174 = phi i32 [ %nr_types.2, %for.inc.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %i.0173 = phi i32 [ %inc30, %for.inc.for.body_crit_edge ], [ 0, %if.end14.for.body_crit_edge ]
  %14 = load ptr, ptr @sensor_ops, align 4
  %info_get = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %info_get to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info_get, align 4
  %17 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ph, align 4
  %call18 = call ptr %16(ptr noundef %18, i32 noundef %i.0173) #7
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %for.body.cleanup_crit_edge, label %if.end21

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %for.body
  %type22 = getelementptr inbounds %struct.scmi_sensor_info, ptr %call18, i32 0, i32 1
  %19 = ptrtoint ptr %type22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type22, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %if.end21.for.inc_crit_edge [
    i32 2, label %if.end21.sw.bb_crit_edge
    i32 5, label %if.end21.sw.bb_crit_edge199
    i32 6, label %if.end21.sw.bb_crit_edge200
    i32 7, label %if.end21.sw.bb_crit_edge201
    i32 8, label %if.end21.sw.bb_crit_edge202
  ]

if.end21.sw.bb_crit_edge202:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end21.sw.bb_crit_edge201:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end21.sw.bb_crit_edge200:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end21.sw.bb_crit_edge199:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end21.sw.bb_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb:                                            ; preds = %if.end21.sw.bb_crit_edge, %if.end21.sw.bb_crit_edge199, %if.end21.sw.bb_crit_edge200, %if.end21.sw.bb_crit_edge201, %if.end21.sw.bb_crit_edge202
  %arrayidx = getelementptr [9 x i32], ptr @scmi_types, i32 0, i32 %20
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %arrayidx24 = getelementptr [10 x i32], ptr %nr_count, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  %inc = zext i1 %tobool25.not to i32
  %spec.select = add i32 %nr_types.0174, %inc
  %inc29 = add i32 %25, 1
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %inc29, ptr %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb, %if.end21.for.inc_crit_edge
  %nr_types.2 = phi i32 [ %nr_types.0174, %if.end21.for.inc_crit_edge ], [ %spec.select, %sw.bb ]
  %inc30 = add nuw nsw i32 %i.0173, 1
  %exitcond.not = icmp eq i32 %inc30, %conv16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end14.for.end_crit_edge
  %nr_types.0.lcssa = phi i32 [ 0, %if.end14.for.end_crit_edge ], [ %nr_types.2, %for.inc.for.end_crit_edge ]
  %arrayidx31 = getelementptr inbounds [10 x i32], ptr %nr_count, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool32.not = icmp eq i32 %28, 0
  br i1 %tobool32.not, label %for.end.if.end37_crit_edge, label %if.then33

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %nr_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_count, align 4
  %inc35 = add i32 %30, 1
  store i32 %inc35, ptr %nr_count, align 4
  %inc36 = add i32 %nr_types.0.lcssa, 1
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %for.end.if.end37_crit_edge
  %nr_types.3 = phi i32 [ %inc36, %if.then33 ], [ %nr_types.0.lcssa, %for.end.if.end37_crit_edge ]
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_types.3, i32 8) #7
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end37.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !41

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end37
  %33 = extractvalue { i32, i1 } %31, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %33, i32 noundef 3520) #7
  %tobool39.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool39.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit155

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit155:                             ; preds = %devm_kcalloc.exit
  %add = shl nuw nsw i32 %nr_types.3, 2
  %34 = add nuw i32 %add, 4
  %call5.i.i152 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %34, i32 noundef 3520) #7
  %tobool43.not = icmp eq ptr %call5.i.i152, null
  br i1 %tobool43.not, label %devm_kcalloc.exit155.cleanup_crit_edge, label %if.end45

devm_kcalloc.exit155.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit155
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %devm_kcalloc.exit155
  store ptr %call5.i.i152, ptr getelementptr inbounds (%struct.hwmon_chip_info, ptr @scmi_chip_info, i32 0, i32 1), align 4
  br label %for.body49

for.cond70.preheader:                             ; preds = %for.inc66
  br i1 %cmp172.not, label %for.cond70.preheader.for.end89_crit_edge, label %for.cond70.preheader.for.body73_crit_edge

for.cond70.preheader.for.body73_crit_edge:        ; preds = %for.cond70.preheader
  br label %for.body73

for.cond70.preheader.for.end89_crit_edge:         ; preds = %for.cond70.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.body49:                                       ; preds = %for.inc66.for.body49_crit_edge, %if.end45
  %ptr_scmi_ci.0180 = phi ptr [ %call5.i.i152, %if.end45 ], [ %ptr_scmi_ci.1, %for.inc66.for.body49_crit_edge ]
  %scmi_hwmon_chan.0178 = phi ptr [ %call5.i.i, %if.end45 ], [ %scmi_hwmon_chan.1, %for.inc66.for.body49_crit_edge ]
  %type.0176 = phi i32 [ 0, %if.end45 ], [ %inc67, %for.inc66.for.body49_crit_edge ]
  %arrayidx50 = getelementptr [10 x i32], ptr %nr_count, i32 0, i32 %type.0176
  %35 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %for.body49.for.inc66_crit_edge, label %if.end53

for.body49.for.inc66_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc66

if.end53:                                         ; preds = %for.body49
  %arrayidx55 = getelementptr [10 x i32], ptr @hwmon_attributes, i32 0, i32 %type.0176
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx55, align 4
  %add.i = add i32 %36, 1
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end53.scmi_hwmon_add_chan_info.exit_crit_edge, label %devm_kcalloc.exit.i, !prof !41

if.end53.scmi_hwmon_add_chan_info.exit_crit_edge: ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_hwmon_add_chan_info.exit

devm_kcalloc.exit.i:                              ; preds = %if.end53
  %41 = extractvalue { i32, i1 } %39, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %41, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.scmi_hwmon_add_chan_info.exit_crit_edge, label %if.end.i

devm_kcalloc.exit.i.scmi_hwmon_add_chan_info.exit_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_hwmon_add_chan_info.exit

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %42 = ptrtoint ptr %scmi_hwmon_chan.0178 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %type.0176, ptr %scmi_hwmon_chan.0178, align 4
  %config2.i = getelementptr inbounds %struct.hwmon_channel_info, ptr %scmi_hwmon_chan.0178, i32 0, i32 1
  %43 = ptrtoint ptr %config2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i.i, ptr %config2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp3.i = icmp sgt i32 %36, 0
  br i1 %cmp3.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.scmi_hwmon_add_chan_info.exit_crit_edge

if.end.i.scmi_hwmon_add_chan_info.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_hwmon_add_chan_info.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cfg.05.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i.i.i, %if.end.i.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %cfg.05.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %cfg.05.i, align 4
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %cfg.05.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %36
  br i1 %exitcond.not.i, label %for.body.i.scmi_hwmon_add_chan_info.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.scmi_hwmon_add_chan_info.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %scmi_hwmon_add_chan_info.exit

scmi_hwmon_add_chan_info.exit:                    ; preds = %for.body.i.scmi_hwmon_add_chan_info.exit_crit_edge, %if.end.i.scmi_hwmon_add_chan_info.exit_crit_edge, %devm_kcalloc.exit.i.scmi_hwmon_add_chan_info.exit_crit_edge, %if.end53.scmi_hwmon_add_chan_info.exit_crit_edge
  %45 = ptrtoint ptr %ptr_scmi_ci.0180 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %scmi_hwmon_chan.0178, ptr %ptr_scmi_ci.0180, align 4
  %46 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx50, align 4
  %48 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %47, i32 4) #7
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %devm_kcalloc.exit159.thread, label %devm_kcalloc.exit159, !prof !41

devm_kcalloc.exit159.thread:                      ; preds = %scmi_hwmon_add_chan_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx60165 = getelementptr %struct.scmi_sensors, ptr %call.i, i32 0, i32 1, i32 %type.0176
  %50 = ptrtoint ptr %arrayidx60165 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %arrayidx60165, align 4
  br label %cleanup

devm_kcalloc.exit159:                             ; preds = %scmi_hwmon_add_chan_info.exit
  %incdec.ptr57 = getelementptr ptr, ptr %ptr_scmi_ci.0180, i32 1
  %incdec.ptr = getelementptr %struct.hwmon_channel_info, ptr %scmi_hwmon_chan.0178, i32 1
  %51 = extractvalue { i32, i1 } %48, 0
  %call5.i.i156 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %51, i32 noundef 3520) #7
  %arrayidx60 = getelementptr %struct.scmi_sensors, ptr %call.i, i32 0, i32 1, i32 %type.0176
  %52 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5.i.i156, ptr %arrayidx60, align 4
  %tobool63.not = icmp eq ptr %call5.i.i156, null
  br i1 %tobool63.not, label %devm_kcalloc.exit159.cleanup_crit_edge, label %devm_kcalloc.exit159.for.inc66_crit_edge

devm_kcalloc.exit159.for.inc66_crit_edge:         ; preds = %devm_kcalloc.exit159
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc66

devm_kcalloc.exit159.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit159
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc66:                                        ; preds = %devm_kcalloc.exit159.for.inc66_crit_edge, %for.body49.for.inc66_crit_edge
  %scmi_hwmon_chan.1 = phi ptr [ %incdec.ptr, %devm_kcalloc.exit159.for.inc66_crit_edge ], [ %scmi_hwmon_chan.0178, %for.body49.for.inc66_crit_edge ]
  %ptr_scmi_ci.1 = phi ptr [ %incdec.ptr57, %devm_kcalloc.exit159.for.inc66_crit_edge ], [ %ptr_scmi_ci.0180, %for.body49.for.inc66_crit_edge ]
  %inc67 = add nuw nsw i32 %type.0176, 1
  %exitcond187.not = icmp eq i32 %inc67, 10
  br i1 %exitcond187.not, label %for.cond70.preheader, label %for.inc66.for.body49_crit_edge

for.inc66.for.body49_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body49

for.body73:                                       ; preds = %for.inc87.for.body73_crit_edge, %for.cond70.preheader.for.body73_crit_edge
  %i.1183.in = phi i32 [ %i.1183, %for.inc87.for.body73_crit_edge ], [ %conv16, %for.cond70.preheader.for.body73_crit_edge ]
  %i.1183 = add nsw i32 %i.1183.in, -1
  %53 = load ptr, ptr @sensor_ops, align 4
  %info_get74 = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %info_get74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info_get74, align 4
  %56 = ptrtoint ptr %ph to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ph, align 4
  %call75 = call ptr %55(ptr noundef %57, i32 noundef %i.1183) #7
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %for.body73.for.inc87_crit_edge, label %if.end78

for.body73.for.inc87_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

if.end78:                                         ; preds = %for.body73
  %type79 = getelementptr inbounds %struct.scmi_sensor_info, ptr %call75, i32 0, i32 1
  %58 = ptrtoint ptr %type79 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type79, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %59, label %if.end78.for.inc87_crit_edge [
    i32 2, label %if.end78.sw.bb80_crit_edge
    i32 5, label %if.end78.sw.bb80_crit_edge203
    i32 6, label %if.end78.sw.bb80_crit_edge204
    i32 7, label %if.end78.sw.bb80_crit_edge205
    i32 8, label %if.end78.sw.bb80_crit_edge206
  ]

if.end78.sw.bb80_crit_edge206:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb80

if.end78.sw.bb80_crit_edge205:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb80

if.end78.sw.bb80_crit_edge204:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb80

if.end78.sw.bb80_crit_edge203:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb80

if.end78.sw.bb80_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb80

if.end78.for.inc87_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc87

sw.bb80:                                          ; preds = %if.end78.sw.bb80_crit_edge, %if.end78.sw.bb80_crit_edge203, %if.end78.sw.bb80_crit_edge204, %if.end78.sw.bb80_crit_edge205, %if.end78.sw.bb80_crit_edge206
  %arrayidx82 = getelementptr [9 x i32], ptr @scmi_types, i32 0, i32 %59
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx82, align 4
  %arrayidx83 = getelementptr [10 x i32], ptr %nr_count, i32 0, i32 %62
  %63 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx83, align 4
  %dec = add i32 %64, -1
  store i32 %dec, ptr %arrayidx83, align 4
  %arrayidx85 = getelementptr %struct.scmi_sensors, ptr %call.i, i32 0, i32 1, i32 %62
  %65 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx85, align 4
  %add.ptr = getelementptr ptr, ptr %66, i32 %dec
  %67 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call75, ptr %add.ptr, align 4
  br label %for.inc87

for.inc87:                                        ; preds = %sw.bb80, %if.end78.for.inc87_crit_edge, %for.body73.for.inc87_crit_edge
  %cmp71 = icmp sgt i32 %i.1183.in, 1
  br i1 %cmp71, label %for.inc87.for.body73_crit_edge, label %for.inc87.for.end89_crit_edge

for.inc87.for.end89_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end89

for.inc87.for.body73_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body73

for.end89:                                        ; preds = %for.inc87.for.end89_crit_edge, %for.cond70.preheader.for.end89_crit_edge
  %call90 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull %call.i, ptr noundef nonnull @scmi_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  %68 = ptrtoint ptr %call90 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %68, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end89, %devm_kcalloc.exit159.cleanup_crit_edge, %devm_kcalloc.exit159.thread, %devm_kcalloc.exit155.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then4 ], [ %spec.select.i, %for.end89 ], [ -19, %entry.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit155.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit159.thread ], [ -12, %if.end37.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit159.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ph) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nr_count) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @scmi_hwmon_is_visible(ptr nocapture noundef readonly %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.scmi_sensors, ptr %drvdata, i32 0, i32 1, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr ptr, ptr %1, i32 %channel
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  %. = select i1 %tobool.not, i16 0, i16 292
  ret i16 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scmi_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !40
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.scmi_sensors, ptr %2, i32 0, i32 1, i32 %type
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr ptr, ptr %4, i32 %channel
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %7 = load ptr, ptr @sensor_ops, align 4
  %reading_get = getelementptr inbounds %struct.scmi_sensor_proto_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %reading_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reading_get, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 8
  %call1 = call i32 %9(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %scale1.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %6, i32 0, i32 2
  %14 = ptrtoint ptr %scale1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scale1.i, align 8
  %type.i = getelementptr inbounds %struct.scmi_sensor_info, ptr %6, i32 0, i32 1
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %17, label %if.end.sw.epilog.i_crit_edge [
    i32 2, label %if.end.sw.bb.i_crit_edge
    i32 5, label %if.end.sw.bb.i_crit_edge17
    i32 6, label %if.end.sw.bb.i_crit_edge18
    i32 7, label %if.end.sw.bb2.i_crit_edge
    i32 8, label %if.end.sw.bb2.i_crit_edge19
  ]

if.end.sw.bb2.i_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.end.sw.bb.i_crit_edge18:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge17:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge17, %if.end.sw.bb.i_crit_edge18
  %add.i = add i32 %15, 3
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.sw.bb2.i_crit_edge, %if.end.sw.bb2.i_crit_edge19
  %add3.i = add i32 %15, 6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i, %if.end.sw.epilog.i_crit_edge
  %scale.0.i = phi i32 [ %15, %if.end.sw.epilog.i_crit_edge ], [ %add3.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scale.0.i)
  %cmp.i = icmp eq i32 %scale.0.i, 0
  br i1 %cmp.i, label %sw.epilog.i.if.then4_crit_edge, label %if.end.i

sw.epilog.i.if.then4_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i:                                         ; preds = %sw.epilog.i
  %19 = call i32 @llvm.abs.i32(i32 %scale.0.i, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %19)
  %cmp5.i = icmp sgt i32 %19, 19
  br i1 %cmp5.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %conv.i = trunc i32 %19 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool.not2.i.i = icmp eq i8 %conv.i, 0
  br i1 %tobool.not2.i.i, label %if.end7.i.__pow10.exit.i_crit_edge, label %if.end7.i.while.body.i.i_crit_edge

if.end7.i.while.body.i.i_crit_edge:               ; preds = %if.end7.i
  br label %while.body.i.i

if.end7.i.__pow10.exit.i_crit_edge:               ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pow10.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end7.i.while.body.i.i_crit_edge
  %r.04.i.i = phi i64 [ %mul.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 1, %if.end7.i.while.body.i.i_crit_edge ]
  %x.addr.03.i.i = phi i8 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %conv.i, %if.end7.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i8 %x.addr.03.i.i, -1
  %mul.i.i = mul i64 %r.04.i.i, 10
  %tobool.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.__pow10.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.__pow10.exit.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__pow10.exit.i

__pow10.exit.i:                                   ; preds = %while.body.i.i.__pow10.exit.i_crit_edge, %if.end7.i.__pow10.exit.i_crit_edge
  %r.0.lcssa.i.i = phi i64 [ 1, %if.end7.i.__pow10.exit.i_crit_edge ], [ %mul.i.i, %while.body.i.i.__pow10.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scale.0.i)
  %cmp16.i = icmp sgt i32 %scale.0.i, 0
  %20 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %value, align 8
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %__pow10.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul i64 %21, %r.0.lcssa.i.i
  br label %if.end20.i

if.else.i:                                        ; preds = %__pow10.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i64 @div64_u64(i64 noundef %21, i64 noundef %r.0.lcssa.i.i) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then18.i
  %storemerge.i = phi i64 [ %call19.i, %if.else.i ], [ %mul.i, %if.then18.i ]
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %storemerge.i, ptr %value, align 8
  br label %if.then4

if.then4:                                         ; preds = %if.end20.i, %sw.epilog.i.if.then4_crit_edge
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %value, align 8
  %conv = trunc i64 %24 to i32
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ -7, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @scmi_hwmon_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx = getelementptr %struct.scmi_sensors, ptr %1, i32 0, i32 1, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr ptr, ptr %3, i32 %channel
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %name = getelementptr inbounds %struct.scmi_sensor_info, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %str, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_scmi_hwmon__183_280_scmi_hwmon_drv_init6, !1, !"__initcall__kmod_scmi_hwmon__183_280_scmi_hwmon_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 280, i32 1}
!2 = !{ptr @__exitcall_scmi_hwmon_drv_exit, !1, !"__exitcall_scmi_hwmon_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 282, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 283, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 284, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 276, i32 11}
!13 = !{ptr @scmi_hwmon_drv, !14, !"scmi_hwmon_drv", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 275, i32 27}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 262, i32 52}
!17 = !{ptr @sensor_ops, !18, !"sensor_ops", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 16, i32 44}
!19 = !{ptr @scmi_types, !20, !"scmi_types", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 143, i32 32}
!21 = !{ptr @scmi_chip_info, !22, !"scmi_chip_info", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 120, i32 31}
!23 = !{ptr @scmi_hwmon_ops, !24, !"scmi_hwmon_ops", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 114, i32 31}
!25 = !{ptr @hwmon_attributes, !26, !"hwmon_attributes", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 151, i32 12}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 270, i32 26}
!29 = !{ptr @scmi_id_table, !30, !"scmi_id_table", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/scmi-hwmon.c", i32 269, i32 36}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 1, i32 2000}
