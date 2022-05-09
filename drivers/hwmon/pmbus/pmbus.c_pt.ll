; ModuleID = '/llk/IR_all_yes/drivers/hwmon/pmbus/pmbus.c_pt.bc'
source_filename = "../drivers/hwmon/pmbus/pmbus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pmbus_device_info = type { i32, i32 }
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
%struct.pmbus_driver_info = type { i32, [32 x i8], [8 x i32], [32 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], [10 x i32], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }

@__initcall__kmod_pmbus__288_259_pmbus_driver_init6 = internal global ptr @pmbus_driver_init, section ".initcall6.init", align 4
@pmbus_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pmbus_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pmbus_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pmbus_driver_exit = internal global ptr @pmbus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [27 x i8] c"pmbus.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [39 x i8] c"pmbus.description=Generic PMBus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"pmbus.file=drivers/hwmon/pmbus/pmbus\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [18 x i8] c"pmbus.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns293 = internal constant [22 x i8] c"pmbus.import_ns=PMBUS\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pmbus\00", [26 x i8] zeroinitializer }, align 32
@pmbus_id = internal constant { [30 x %struct.i2c_device_id], [176 x i8] } { [30 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp4000\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr310\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_status to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr453\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr454\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr456\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr457\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr458\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_status to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr480\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_status to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr490\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_status to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr491\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_status to i32) }, %struct.i2c_device_id { [20 x i8] c"bmr492\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"dps460\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_skip to i32) }, %struct.i2c_device_id { [20 x i8] c"dps650ab\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_skip to i32) }, %struct.i2c_device_id { [20 x i8] c"dps800\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_skip to i32) }, %struct.i2c_device_id { [20 x i8] c"max20796\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"mdt040\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"ncp4200\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"ncp4208\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"pdt003\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"pdt006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"pdt012\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"pmbus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_zero to i32) }, %struct.i2c_device_id { [20 x i8] c"sgd009\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one_skip to i32) }, %struct.i2c_device_id { [20 x i8] c"tps40400\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"tps544b20\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"tps544b25\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"tps544c20\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"tps544c25\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id { [20 x i8] c"udt020\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pmbus_info_one to i32) }, %struct.i2c_device_id zeroinitializer], [176 x i8] zeroinitializer }, align 32
@pmbus_info_one = internal constant { %struct.pmbus_device_info, [24 x i8] } { %struct.pmbus_device_info { i32 1, i32 0 }, [24 x i8] zeroinitializer }, align 32
@pmbus_info_one_status = internal constant { %struct.pmbus_device_info, [24 x i8] } { %struct.pmbus_device_info { i32 1, i32 8 }, [24 x i8] zeroinitializer }, align 32
@pmbus_info_one_skip = internal constant { %struct.pmbus_device_info, [24 x i8] } { %struct.pmbus_device_info { i32 1, i32 1 }, [24 x i8] zeroinitializer }, align 32
@pmbus_info_zero = internal constant { %struct.pmbus_device_info, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"pmbus_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 251, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 253, i32 14 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"pmbus_id\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 215, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"pmbus_info_one\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 192, i32 39 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"pmbus_info_one_status\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 207, i32 39 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"pmbus_info_one_skip\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 202, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"pmbus_info_zero\00", align 1
@___asan_gen_.20 = private constant [31 x i8] c"../drivers/hwmon/pmbus/pmbus.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 197, i32 39 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_import_ns293, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pmbus_driver_exit, ptr @__initcall__kmod_pmbus__288_259_pmbus_driver_init6, ptr @pmbus_driver_exit, ptr @pmbus_driver, ptr @.str, ptr @pmbus_id, ptr @pmbus_info_one, ptr @pmbus_info_one_status, ptr @pmbus_info_one_skip, ptr @pmbus_info_zero], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_id to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_info_one to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_info_one_status to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_info_one_skip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmbus_info_zero to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmbus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pmbus_driver) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmbus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @i2c_del_driver(ptr noundef nonnull @pmbus_driver) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmbus_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 492, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @i2c_match_id(ptr noundef nonnull @pmbus_id, ptr noundef %client) #3
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call2, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %flags = getelementptr inbounds %struct.pmbus_device_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call.i28 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #3
  %tobool6.not = icmp eq ptr %call.i28, null
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = ptrtoint ptr %call.i28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call.i28, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end.if.end11_crit_edge
  %pdata.0 = phi ptr [ %call.i28, %if.end8 ], [ null, %if.end.if.end11_crit_edge ]
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i, align 4
  %identify = getelementptr inbounds %struct.pmbus_driver_info, ptr %call.i, i32 0, i32 13
  %11 = ptrtoint ptr %identify to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @pmbus_identify, ptr %identify, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdata.0, ptr %platform_data, align 8
  %call13 = tail call i32 @pmbus_do_probe(ptr noundef %client, ptr noundef nonnull %call.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmbus_identify(ptr noundef %client, ptr nocapture noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 0) #3
  br i1 %call, label %if.then.for.body_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %page.061 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.then.for.body_crit_edge ]
  %call2 = tail call i32 @pmbus_set_page(ptr noundef %client, i32 noundef %page.061, i32 noundef 255) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %page.061, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %page.0.lcssa = phi i32 [ %page.061, %for.body.for.end_crit_edge ], [ 32, %for.inc.for.end_crit_edge ]
  %call5 = tail call i32 @pmbus_set_page(ptr noundef %client, i32 noundef 0, i32 noundef 255) #3
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.then.if.end8_crit_edge
  %storemerge = phi i32 [ %page.0.lcssa, %for.end ], [ 1, %if.then.if.end8_crit_edge ]
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %storemerge, ptr %info, align 4
  tail call void @pmbus_clear_faults(ptr noundef %client) #3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry.if.end9_crit_edge
  %call10 = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 32) #3
  br i1 %call10, label %if.then11, label %if.end9.if.end29_crit_edge

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then11:                                        ; preds = %if.end9
  %call12 = tail call i32 @pmbus_read_byte_data(ptr noundef %client, i32 noundef 0, i8 noundef zeroext 32) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call12)
  %cmp14.not = icmp eq i32 %call12, 255
  %or.cond = or i1 %cmp13, %cmp14.not
  br i1 %or.cond, label %if.then11.if.end29_crit_edge, label %if.then15

if.then11.if.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then15:                                        ; preds = %if.then11
  %shr60 = lshr i32 %call12, 5
  %3 = zext i32 %shr60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr60, label %if.then15.cleanup35_crit_edge [
    i32 0, label %if.then15.if.end29_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb24
  ]

if.then15.if.end29_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then15.cleanup35_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

sw.bb:                                            ; preds = %if.then15
  %arrayidx = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1862 = icmp sgt i32 %6, 0
  br i1 %cmp1862, label %sw.bb.for.body19_crit_edge, label %sw.bb.if.end29_crit_edge

sw.bb.if.end29_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

sw.bb.for.body19_crit_edge:                       ; preds = %sw.bb
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %sw.bb.for.body19_crit_edge
  %i.063 = phi i32 [ %inc22, %for.body19.for.body19_crit_edge ], [ 0, %sw.bb.for.body19_crit_edge ]
  %arrayidx20 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 3, i32 %i.063
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx20, align 4
  %inc22 = add nuw nsw i32 %i.063, 1
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %cmp18 = icmp slt i32 %inc22, %9
  br i1 %cmp18, label %for.body19.for.body19_crit_edge, label %for.body19.if.end29_crit_edge

for.body19.if.end29_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19

sw.bb24:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx26 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %arrayidx26, align 4
  br label %if.end29

if.end29:                                         ; preds = %sw.bb24, %for.body19.if.end29_crit_edge, %sw.bb.if.end29_crit_edge, %if.then15.if.end29_crit_edge, %if.then11.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %arrayidx31 = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp32 = icmp eq i32 %12, 1
  br i1 %cmp32, label %if.end29.cleanup35_crit_edge, label %if.end34

if.end29.cleanup35_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

if.end34:                                         ; preds = %if.end29
  %call.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 136) #3
  br i1 %call.i, label %if.then.i, label %if.end34.if.end.i_crit_edge

if.end34.if.end.i_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %func.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 7
  %13 = ptrtoint ptr %func.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %func.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %func.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end34.if.end.i_crit_edge
  %call1.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 138) #3
  br i1 %call1.i, label %if.then2.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %func3.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 7
  %15 = ptrtoint ptr %func3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %func3.i, align 4
  %or5.i = or i32 %16, 2
  store i32 %or5.i, ptr %func3.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %call7.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 137) #3
  br i1 %call7.i, label %if.then8.i, label %if.end6.i.if.end12.i_crit_edge

if.end6.i.if.end12.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  %func9.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 7
  %17 = ptrtoint ptr %func9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %func9.i, align 4
  %or11.i = or i32 %18, 8
  store i32 %or11.i, ptr %func9.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end6.i.if.end12.i_crit_edge
  %call13.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 151) #3
  br i1 %call13.i, label %if.then14.i, label %if.end12.i.if.end18.i_crit_edge

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  %func15.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 7
  %19 = ptrtoint ptr %func15.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %func15.i, align 4
  %or17.i = or i32 %20, 32
  store i32 %or17.i, ptr %func15.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end12.i.if.end18.i_crit_edge
  %func19.i = getelementptr inbounds %struct.pmbus_driver_info, ptr %info, i32 0, i32 7
  %21 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %func19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.end18.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.end18.i.if.end26.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end18.i
  %call21.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 124) #3
  br i1 %call21.i, label %if.then22.i, label %land.lhs.true.i.if.end26.i_crit_edge

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end26.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %func19.i, align 4
  %or25.i = or i32 %24, 16384
  store i32 %or25.i, ptr %func19.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then22.i, %land.lhs.true.i.if.end26.i_crit_edge, %if.end18.i.if.end26.i_crit_edge
  %call27.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 58) #3
  br i1 %call27.i, label %land.lhs.true28.i, label %if.end26.i.if.end40.i_crit_edge

if.end26.i.if.end40.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

land.lhs.true28.i:                                ; preds = %if.end26.i
  %call29.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 144) #3
  br i1 %call29.i, label %if.then30.i, label %land.lhs.true28.i.if.end40.i_crit_edge

land.lhs.true28.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  %25 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %func19.i, align 4
  %or33.i = or i32 %26, 128
  store i32 %or33.i, ptr %func19.i, align 4
  %call34.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 129) #3
  br i1 %call34.i, label %if.then35.i, label %if.then30.i.if.end40.i_crit_edge

if.then30.i.if.end40.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40.i

if.then35.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #5
  %27 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %func19.i, align 4
  %or38.i = or i32 %28, 65536
  store i32 %or38.i, ptr %func19.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then35.i, %if.then30.i.if.end40.i_crit_edge, %land.lhs.true28.i.if.end40.i_crit_edge, %if.end26.i.if.end40.i_crit_edge
  %call41.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 61) #3
  br i1 %call41.i, label %land.lhs.true42.i, label %if.end40.i.if.end54.i_crit_edge

if.end40.i.if.end54.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54.i

land.lhs.true42.i:                                ; preds = %if.end40.i
  %call43.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 146) #3
  br i1 %call43.i, label %if.then44.i, label %land.lhs.true42.i.if.end54.i_crit_edge

land.lhs.true42.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  %29 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %func19.i, align 4
  %or47.i = or i32 %30, 256
  store i32 %or47.i, ptr %func19.i, align 4
  %call48.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 130) #3
  br i1 %call48.i, label %if.then49.i, label %if.then44.i.if.end54.i_crit_edge

if.then44.i.if.end54.i_crit_edge:                 ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %func19.i, align 4
  %or52.i = or i32 %32, 131072
  store i32 %or52.i, ptr %func19.i, align 4
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %if.then44.i.if.end54.i_crit_edge, %land.lhs.true42.i.if.end54.i_crit_edge, %if.end40.i.if.end54.i_crit_edge
  %call55.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 141) #3
  br i1 %call55.i, label %if.then56.i, label %if.end54.i.if.end60.i_crit_edge

if.end54.i.if.end60.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end60.i

if.then56.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #5
  %33 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %func19.i, align 4
  %or59.i = or i32 %34, 512
  store i32 %or59.i, ptr %func19.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then56.i, %if.end54.i.if.end60.i_crit_edge
  %call61.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 142) #3
  br i1 %call61.i, label %if.then62.i, label %if.end60.i.if.end66.i_crit_edge

if.end60.i.if.end66.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66.i

if.then62.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #5
  %35 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %func19.i, align 4
  %or65.i = or i32 %36, 1024
  store i32 %or65.i, ptr %func19.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then62.i, %if.end60.i.if.end66.i_crit_edge
  %call67.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef 0, i32 noundef 143) #3
  br i1 %call67.i, label %if.then68.i, label %if.end66.i.if.end72.i_crit_edge

if.end66.i.if.end72.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end72.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %func19.i, align 4
  %or71.i = or i32 %38, 2048
  store i32 %or71.i, ptr %func19.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end72.i_crit_edge
  %39 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %func19.i, align 4
  %and.i = and i32 %40, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool75.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end82.i_crit_edge, label %land.lhs.true76.i

if.end72.i.if.end82.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82.i

land.lhs.true76.i:                                ; preds = %if.end72.i
  %call77.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 125) #3
  br i1 %call77.i, label %if.then78.i, label %land.lhs.true76.i.if.end82.i_crit_edge

land.lhs.true76.i.if.end82.i_crit_edge:           ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end82.i

if.then78.i:                                      ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #5
  %41 = ptrtoint ptr %func19.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %func19.i, align 4
  %or81.i = or i32 %42, 32768
  store i32 %or81.i, ptr %func19.i, align 4
  br label %if.end82.i

if.end82.i:                                       ; preds = %if.then78.i, %land.lhs.true76.i.if.end82.i_crit_edge, %if.end72.i.if.end82.i_crit_edge
  %43 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp162.i = icmp sgt i32 %44, 0
  br i1 %cmp162.i, label %if.end82.i.for.body.i_crit_edge, label %if.end82.i.cleanup35_crit_edge

if.end82.i.cleanup35_crit_edge:                   ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

if.end82.i.for.body.i_crit_edge:                  ; preds = %if.end82.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end82.i.for.body.i_crit_edge
  %page.0163.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end82.i.for.body.i_crit_edge ]
  %call83.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef %page.0163.i, i32 noundef 139) #3
  br i1 %call83.i, label %if.then84.i, label %for.body.i.if.end94.i_crit_edge

for.body.i.if.end94.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94.i

if.then84.i:                                      ; preds = %for.body.i
  %arrayidx86.i = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 7, i32 %page.0163.i
  %45 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx86.i, align 4
  %or87.i = or i32 %46, 4
  store i32 %or87.i, ptr %arrayidx86.i, align 4
  %call88.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef %page.0163.i, i32 noundef 122) #3
  br i1 %call88.i, label %if.then89.i, label %if.then84.i.if.end94.i_crit_edge

if.then84.i.if.end94.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end94.i

if.then89.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #5
  %47 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx86.i, align 4
  %or92.i = or i32 %48, 4096
  store i32 %or92.i, ptr %arrayidx86.i, align 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then89.i, %if.then84.i.if.end94.i_crit_edge, %for.body.i.if.end94.i_crit_edge
  %call95.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef %page.0163.i, i32 noundef 140) #3
  br i1 %call95.i, label %if.then96.i, label %if.end94.i.if.end106.i_crit_edge

if.end94.i.if.end106.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106.i

if.then96.i:                                      ; preds = %if.end94.i
  %arrayidx98.i = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 7, i32 %page.0163.i
  %49 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx98.i, align 4
  %or99.i = or i32 %50, 16
  store i32 %or99.i, ptr %arrayidx98.i, align 4
  %call100.i = tail call zeroext i1 @pmbus_check_byte_register(ptr noundef %client, i32 noundef 0, i32 noundef 123) #3
  br i1 %call100.i, label %if.then101.i, label %if.then96.i.if.end106.i_crit_edge

if.then96.i.if.end106.i_crit_edge:                ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106.i

if.then101.i:                                     ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx98.i, align 4
  %or104.i = or i32 %52, 8192
  store i32 %or104.i, ptr %arrayidx98.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then101.i, %if.then96.i.if.end106.i_crit_edge, %if.end94.i.if.end106.i_crit_edge
  %call107.i = tail call zeroext i1 @pmbus_check_word_register(ptr noundef %client, i32 noundef %page.0163.i, i32 noundef 150) #3
  br i1 %call107.i, label %if.then108.i, label %if.end106.i.for.inc.i_crit_edge

if.end106.i.for.inc.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then108.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx110.i = getelementptr %struct.pmbus_driver_info, ptr %info, i32 0, i32 7, i32 %page.0163.i
  %53 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx110.i, align 4
  %or111.i = or i32 %54, 64
  store i32 %or111.i, ptr %arrayidx110.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then108.i, %if.end106.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %page.0163.i, 1
  %55 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %info, align 4
  %cmp.i = icmp slt i32 %inc.i, %56
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup35_crit_edge

for.inc.i.cleanup35_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup35

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

cleanup35:                                        ; preds = %for.inc.i.cleanup35_crit_edge, %if.end82.i.cleanup35_crit_edge, %if.end29.cleanup35_crit_edge, %if.then15.cleanup35_crit_edge
  %retval.0 = phi i32 [ -19, %if.end29.cleanup35_crit_edge ], [ -19, %if.then15.cleanup35_crit_edge ], [ 0, %if.end82.i.cleanup35_crit_edge ], [ 0, %for.inc.i.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_do_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pmbus_check_byte_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_set_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmbus_clear_faults(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pmbus_read_byte_data(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pmbus_check_word_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_pmbus__288_259_pmbus_driver_init6, !1, !"__initcall__kmod_pmbus__288_259_pmbus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 259, i32 1}
!2 = !{ptr @__exitcall_pmbus_driver_exit, !1, !"__exitcall_pmbus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 261, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 262, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 263, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_import_ns293, !11, !"__UNIQUE_ID_import_ns293", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 264, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 253, i32 14}
!14 = !{ptr @pmbus_driver, !15, !"pmbus_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 251, i32 26}
!16 = !{ptr @pmbus_id, !17, !"pmbus_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 215, i32 35}
!18 = !{ptr @pmbus_info_one, !19, !"pmbus_info_one", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 192, i32 39}
!20 = !{ptr @pmbus_info_one_status, !21, !"pmbus_info_one_status", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 207, i32 39}
!22 = !{ptr @pmbus_info_one_skip, !23, !"pmbus_info_one_skip", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 202, i32 39}
!24 = !{ptr @pmbus_info_zero, !25, !"pmbus_info_zero", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/pmbus/pmbus.c", i32 197, i32 39}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
