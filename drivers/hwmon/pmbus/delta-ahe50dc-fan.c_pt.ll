; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/delta-ahe50dc-fan.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/delta-ahe50dc-fan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pmbus_platform_data = type { i32, i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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

@__initcall__kmod_delta_ahe50dc_fan__288_109_ahe50dc_fan_driver_init6 = internal global ptr @ahe50dc_fan_driver_init, section ".initcall6.init", align 4
@ahe50dc_fan_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ahe50dc_fan_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahe50dc_fan_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ahe50dc_fan_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ahe50dc_fan_driver_exit = internal global ptr @ahe50dc_fan_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"delta_ahe50dc_fan.author=Zev Weiss <zev@bewilderbeest.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [87 x i8] c"delta_ahe50dc_fan.description=Driver for Delta AHE-50DC power shelf fan control module\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [61 x i8] c"delta_ahe50dc_fan.file=drivers/hwmon/pmbus/delta-ahe50dc-fan\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [30 x i8] c"delta_ahe50dc_fan.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [34 x i8] c"delta_ahe50dc_fan.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ahe50dc_fan\00", [20 x i8] zeroinitializer }, align 32
@ahe50dc_fan_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"delta,ahe50dc-fan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahe50dc_fan_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ahe50dc_fan\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ahe50dc_fan_data = internal global { %struct.pmbus_platform_data, [20 x i8] } { %struct.pmbus_platform_data { i32 4, i32 0, ptr null }, [20 x i8] zeroinitializer }, align 32
@ahe50dc_fan_info = internal global { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }, [116 x i8] } { { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], <{ i32, i32, [30 x i32] }>, [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr } { i32 2, [32 x i8] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0], [32 x i32] zeroinitializer, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0], [8 x i32] zeroinitializer, [8 x i32] [i32 3, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0], <{ i32, i32, [30 x i32] }> <{ i32 -2147283071, i32 -2147483136, [30 x i32] zeroinitializer }>, [10 x i32] zeroinitializer, ptr null, ptr @ahe50dc_fan_read_word_data, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null }, [116 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 59, i64 60, i64 62, i64 63, i64 121, i64 129, i64 130, i64 136, i64 141, i64 142, i64 143, i64 144, i64 145, i64 146, i64 147]
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"ahe50dc_fan_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 101, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 103, i32 14 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"ahe50dc_fan_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 95, i32 49 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"ahe50dc_fan_id\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 89, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"ahe50dc_fan_data\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 79, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"ahe50dc_fan_info\00", align 1
@___asan_gen_.18 = private constant [43 x i8] c"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 53, i32 33 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ahe50dc_fan_driver_exit, ptr @__initcall__kmod_delta_ahe50dc_fan__288_109_ahe50dc_fan_driver_init6, ptr @ahe50dc_fan_driver_exit, ptr @ahe50dc_fan_driver, ptr @.str, ptr @ahe50dc_fan_of_match, ptr @ahe50dc_fan_id, ptr @ahe50dc_fan_data, ptr @ahe50dc_fan_info], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahe50dc_fan_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahe50dc_fan_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahe50dc_fan_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahe50dc_fan_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahe50dc_fan_info to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahe50dc_fan_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ahe50dc_fan_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahe50dc_fan_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @ahe50dc_fan_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahe50dc_fan_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ahe50dc_fan_data, ptr %platform_data, align 8
  %call = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull @ahe50dc_fan_info) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahe50dc_fan_read_word_data(ptr noundef %client, i32 noundef %page, i32 noundef %phase, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %page)
  %cmp = icmp eq i32 %page, 1
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %reg)
  %cmp1 = icmp eq i32 %reg, 141
  br i1 %cmp1, label %if.then2, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext -48) #3
  br label %return

if.end3:                                          ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 121, label %if.end3.return_crit_edge
    i32 59, label %if.end3.return_crit_edge5
    i32 60, label %if.end3.return_crit_edge6
    i32 62, label %if.end3.return_crit_edge7
    i32 63, label %if.end3.return_crit_edge8
    i32 129, label %if.end3.return_crit_edge9
    i32 130, label %if.end3.return_crit_edge10
    i32 136, label %if.end3.return_crit_edge11
    i32 141, label %if.end3.return_crit_edge12
    i32 142, label %if.end3.return_crit_edge13
    i32 143, label %if.end3.return_crit_edge14
    i32 144, label %if.end3.return_crit_edge15
    i32 145, label %if.end3.return_crit_edge16
    i32 146, label %if.end3.return_crit_edge17
    i32 147, label %if.end3.return_crit_edge18
  ]

if.end3.return_crit_edge18:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge17:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge16:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge15:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge14:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge13:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge12:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge11:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge10:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge9:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge8:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge7:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge6:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge5:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.default:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

return:                                           ; preds = %sw.default, %if.end3.return_crit_edge, %if.end3.return_crit_edge5, %if.end3.return_crit_edge6, %if.end3.return_crit_edge7, %if.end3.return_crit_edge8, %if.end3.return_crit_edge9, %if.end3.return_crit_edge10, %if.end3.return_crit_edge11, %if.end3.return_crit_edge12, %if.end3.return_crit_edge13, %if.end3.return_crit_edge14, %if.end3.return_crit_edge15, %if.end3.return_crit_edge16, %if.end3.return_crit_edge17, %if.end3.return_crit_edge18, %if.then2, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then2 ], [ -95, %sw.default ], [ -95, %if.then.return_crit_edge ], [ -61, %if.end3.return_crit_edge ], [ -61, %if.end3.return_crit_edge5 ], [ -61, %if.end3.return_crit_edge6 ], [ -61, %if.end3.return_crit_edge7 ], [ -61, %if.end3.return_crit_edge8 ], [ -61, %if.end3.return_crit_edge9 ], [ -61, %if.end3.return_crit_edge10 ], [ -61, %if.end3.return_crit_edge11 ], [ -61, %if.end3.return_crit_edge12 ], [ -61, %if.end3.return_crit_edge13 ], [ -61, %if.end3.return_crit_edge14 ], [ -61, %if.end3.return_crit_edge15 ], [ -61, %if.end3.return_crit_edge16 ], [ -61, %if.end3.return_crit_edge17 ], [ -61, %if.end3.return_crit_edge18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_delta_ahe50dc_fan__288_109_ahe50dc_fan_driver_init6, !1, !"__initcall__kmod_delta_ahe50dc_fan__288_109_ahe50dc_fan_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 109, i32 1}
!2 = !{ptr @__exitcall_ahe50dc_fan_driver_exit, !1, !"__exitcall_ahe50dc_fan_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 111, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 112, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 113, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 114, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 103, i32 14}
!14 = !{ptr @ahe50dc_fan_driver, !15, !"ahe50dc_fan_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 101, i32 26}
!16 = !{ptr @ahe50dc_fan_data, !17, !"ahe50dc_fan_data", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 79, i32 35}
!18 = !{ptr @ahe50dc_fan_info, !19, !"ahe50dc_fan_info", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 53, i32 33}
!20 = !{ptr @ahe50dc_fan_of_match, !21, !"ahe50dc_fan_of_match", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 95, i32 49}
!22 = !{ptr @ahe50dc_fan_id, !23, !"ahe50dc_fan_id", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/pmbus/delta-ahe50dc-fan.c", i32 89, i32 35}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
