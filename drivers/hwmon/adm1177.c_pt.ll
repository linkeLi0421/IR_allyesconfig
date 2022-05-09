; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adm1177.c_pt.bc'
source_filename = "../drivers/hwmon/adm1177.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.adm1177_state = type { ptr, ptr, i32, i32, i8 }

@__initcall__kmod_adm1177__288_282_adm1177_driver_init6 = internal global ptr @adm1177_driver_init, section ".initcall6.init", align 4
@adm1177_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adm1177_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adm1177_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1177_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1177_driver_exit = internal global ptr @adm1177_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"adm1177.author=Beniamin Bia <beniamin.bia@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"adm1177.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [54 x i8] c"adm1177.description=Analog Devices ADM1177 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"adm1177.file=drivers/hwmon/adm1177\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [23 x i8] c"adm1177.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1177\00", [24 x i8] zeroinitializer }, align 32
@adm1177_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1177\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adm1177_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1177\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adi,shutdown-threshold-microamp\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,vrange-high-enable\00", [41 x i8] zeroinitializer }, align 32
@adm1177_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @adm1177_hwmon_ops, ptr @adm1177_info }, [24 x i8] zeroinitializer }, align 32
@adm1177_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @adm1177_is_visible, ptr @adm1177_read, ptr null, ptr @adm1177_write }, [16 x i8] zeroinitializer }, align 32
@adm1177_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.5, ptr @.compoundliteral.7, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 8194, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.6 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"adm1177_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 273, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 276, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"adm1177_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 267, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"adm1177_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 261, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 213, i32 54 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 229, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 232, i32 36 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 245, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"adm1177_chip_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 187, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"adm1177_hwmon_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 181, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"adm1177_info\00", align 1
@___asan_gen_.42 = private constant [27 x i8] c"../drivers/hwmon/adm1177.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 173, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_adm1177_driver_exit, ptr @__initcall__kmod_adm1177__288_282_adm1177_driver_init6, ptr @adm1177_driver_exit, ptr @adm1177_driver, ptr @.str, ptr @adm1177_dt_ids, ptr @adm1177_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @adm1177_chip_info, ptr @adm1177_hwmon_ops, ptr @adm1177_info, ptr @.compoundliteral, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1177_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1177_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1177_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1177_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1177_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1177_probe(ptr noundef %client) #2 align 64 {
entry:
  %alert_threshold_ua = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %alert_threshold_ua) #6
  %0 = ptrtoint ptr %alert_threshold_ua to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %alert_threshold_ua, align 4, !annotation !43
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %call4 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %reg = getelementptr inbounds %struct.adm1177_state, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call4, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %reg, align 4
  br label %if.end23

if.else:                                          ; preds = %if.end
  %call14 = tail call i32 @regulator_enable(ptr noundef %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %call.i92 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @adm1177_remove, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.end17.if.end23_crit_edge, label %devm_add_action_or_reset.exit

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

devm_add_action_or_reset.exit:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %call.i.i = tail call i32 @regulator_disable(ptr noundef %5) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end17.if.end23_crit_edge, %if.end11
  %r_sense_uohm = getelementptr inbounds %struct.adm1177_state, ptr %call.i, i32 0, i32 2
  %call.i93 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %r_sense_uohm, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool25.not = icmp eq i32 %call.i93, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %r_sense_uohm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r_sense_uohm, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %call.i94 = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %alert_threshold_ua, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool30.not = icmp eq i32 %call.i94, 0
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  %7 = ptrtoint ptr %r_sense_uohm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r_sense_uohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool33.not = icmp eq i32 %8, 0
  br i1 %tobool33.not, label %if.else37, label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %9 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 105840000000) #9, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %9, 1
  %extract.t103 = trunc i64 %asmresult1.i.i.i to i32
  %10 = ptrtoint ptr %alert_threshold_ua to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %extract.t103, ptr %alert_threshold_ua, align 4
  br label %if.end39

if.else37:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %alert_threshold_ua to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %alert_threshold_ua, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else37, %if.else162.i.i, %if.end28.if.end39_crit_edge
  %call.i95 = call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.4) #6
  %vrange_high = getelementptr inbounds %struct.adm1177_state, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %call.i95 to i8
  %12 = ptrtoint ptr %vrange_high to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %vrange_high, align 4
  %13 = ptrtoint ptr %alert_threshold_ua to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alert_threshold_ua, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool41.not = icmp eq i32 %14, 0
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %land.lhs.true

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end39
  %15 = ptrtoint ptr %r_sense_uohm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r_sense_uohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool43.not = icmp eq i32 %16, 0
  br i1 %tobool43.not, label %land.lhs.true.if.end46_crit_edge, label %if.then44

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true
  %conv.i = zext i32 %14 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 255
  %conv1.i = zext i32 %16 to i64
  %mul2.i = mul i64 %mul.i, %conv1.i
  %17 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6750409613341257257, i64 %mul2.i) #9, !srcloc !45
  %18 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6750409613341257257, i64 %mul2.i, i64 %17, i32 0) #9, !srcloc !46
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %18, 0
  %div158.i.i3.i = lshr i64 %asmresult10.i.i.i.i, 26
  %19 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i3.i, i32 0) #9, !srcloc !47
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %19, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %19, 1
  %20 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i3.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #9, !srcloc !46
  %asmresult10.i.i.i1.i = extractvalue { i64, i32 } %20, 0
  %div158.i.i24.i = lshr i64 %asmresult10.i.i.i1.i, 9
  %21 = call i64 @llvm.umin.i64(i64 %div158.i.i24.i, i64 255) #6
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %conv5.i = trunc i64 %21 to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 2, i8 noundef zeroext %conv5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i96 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i96, label %if.end8.i, label %if.then44.if.end46_crit_edge

if.then44.if.end46_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end8.i:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  %alert_threshold_ua9.i = getelementptr inbounds %struct.adm1177_state, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %alert_threshold_ua9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %14, ptr %alert_threshold_ua9.i, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end8.i, %if.then44.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %25 = ptrtoint ptr %vrange_high to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vrange_high, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool48.not = icmp eq i8 %26, 0
  %conv50 = select i1 %tobool48.not, i8 21, i8 5
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call.i97 = call i32 @i2c_smbus_write_byte(ptr noundef %28, i8 noundef zeroext %conv50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool52.not = icmp eq i32 %call.i97, 0
  br i1 %tobool52.not, label %if.end54, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call55 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adm1177_chip_info, ptr noundef null) #6
  %cmp.i.i98 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  %29 = ptrtoint ptr %call55 to i32
  %spec.select.i = select i1 %cmp.i.i98, i32 %29, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end46.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.else.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.then7.cleanup_crit_edge ], [ %call14, %if.else.cleanup_crit_edge ], [ %call.i92, %devm_add_action_or_reset.exit ], [ %call.i97, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %alert_threshold_ua) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm1177_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.adm1177_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @adm1177_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog10_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.sw.epilog10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  br i1 %cond, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog10_crit_edge

sw.bb.sw.epilog10_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %attr, label %sw.bb2.sw.epilog10_crit_edge [
    i32 1, label %sw.bb3
    i32 13, label %sw.bb4
  ]

sw.bb2.sw.epilog10_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog10

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %r_sense_uohm = getelementptr inbounds %struct.adm1177_state, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %r_sense_uohm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_sense_uohm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i16 0, i16 292
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %r_sense_uohm5 = getelementptr inbounds %struct.adm1177_state, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %r_sense_uohm5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r_sense_uohm5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %.13 = select i1 %tobool6.not, i16 0, i16 420
  br label %cleanup

sw.epilog10:                                      ; preds = %sw.bb2.sw.epilog10_crit_edge, %sw.bb.sw.epilog10_crit_edge, %entry.sw.epilog10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog10, %sw.bb4, %sw.bb3, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog10 ], [ 292, %sw.bb.cleanup_crit_edge ], [ %., %sw.bb3 ], [ %.13, %sw.bb4 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1177_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data, align 1, !annotation !43
  %3 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !43
  %5 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !43
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb10
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb1
    i32 13, label %sw.bb9
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %data, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %15 = and i8 %14, 15
  %and = zext i8 %15 to i32
  %or = or i32 %shl, %and
  %conv5 = zext i32 %or to i64
  %mul = mul nuw nsw i64 %conv5, 105840000
  %r_sense_uohm = getelementptr inbounds %struct.adm1177_state, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %r_sense_uohm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %r_sense_uohm, align 4
  %mul6 = shl i32 %17, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !49

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul6
  br label %cleanup.sink.split

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6, i64 %mul) #9, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %extract.t61 = trunc i64 %asmresult1.i.i.i to i32
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %alert_threshold_ua = getelementptr inbounds %struct.adm1177_state, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %alert_threshold_ua to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %alert_threshold_ua, align 4
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %entry
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i58 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %data, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp13 = icmp slt i32 %call.i.i58, 0
  br i1 %cmp13, label %sw.bb10.cleanup_crit_edge, label %if.end16

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %conv18 = zext i8 %24 to i32
  %shl19 = shl nuw nsw i32 %conv18, 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %5, align 1
  %27 = lshr i8 %26, 4
  %28 = zext i8 %27 to i32
  %or22 = or i32 %shl19, %28
  %vrange_high = getelementptr inbounds %struct.adm1177_state, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %vrange_high to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %vrange_high, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  %dummy.0.v = select i1 %tobool.not, i32 6650, i32 26350
  %dummy.0 = mul nuw nsw i32 %or22, %dummy.0.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dummy.0)
  %cmp27.not = icmp eq i32 %dummy.0, 0
  %add = add nuw nsw i32 %dummy.0, 2048
  %add.op59 = lshr i32 %add, 12
  %cond = select i1 %cmp27.not, i32 0, i32 %add.op59
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end16, %sw.bb9, %if.else174.i.i, %if.then168.i.i
  %cond.sink = phi i32 [ %cond, %if.end16 ], [ %20, %sw.bb9 ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t61, %if.else174.i.i ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb10.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.bb1.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call.i.i58, %sw.bb10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1177_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cond = icmp eq i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %attr)
  %cond4 = icmp eq i32 %attr, 13
  %or.cond = and i1 %cond, %cond4
  br i1 %or.cond, label %sw.bb1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %conv.i = zext i32 %val to i64
  %mul.i = mul nuw nsw i64 %conv.i, 255
  %r_sense_uohm.i = getelementptr inbounds %struct.adm1177_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %r_sense_uohm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_sense_uohm.i, align 4
  %conv1.i = zext i32 %3 to i64
  %mul2.i = mul i64 %mul.i, %conv1.i
  %4 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6750409613341257257, i64 %mul2.i) #9, !srcloc !45
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6750409613341257257, i64 %mul2.i, i64 %4, i32 0) #9, !srcloc !46
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div158.i.i3.i = lshr i64 %asmresult10.i.i.i.i, 26
  %6 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i3.i, i32 0) #9, !srcloc !47
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %6, 1
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %div158.i.i3.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #9, !srcloc !46
  %asmresult10.i.i.i1.i = extractvalue { i64, i32 } %7, 0
  %div158.i.i24.i = lshr i64 %asmresult10.i.i.i1.i, 9
  %8 = tail call i64 @llvm.umin.i64(i64 %div158.i.i24.i, i64 255) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv5.i = trunc i64 %8 to i8
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 2, i8 noundef zeroext %conv5.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %alert_threshold_ua9.i = getelementptr inbounds %struct.adm1177_state, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %alert_threshold_ua9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %val, ptr %alert_threshold_ua9.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end8.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_adm1177__288_282_adm1177_driver_init6, !1, !"__initcall__kmod_adm1177__288_282_adm1177_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adm1177.c", i32 282, i32 1}
!2 = !{ptr @__exitcall_adm1177_driver_exit, !1, !"__exitcall_adm1177_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adm1177.c", i32 284, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adm1177.c", i32 285, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adm1177.c", i32 286, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/adm1177.c", i32 287, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adm1177.c", i32 276, i32 11}
!14 = !{ptr @adm1177_driver, !15, !"adm1177_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adm1177.c", i32 273, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/adm1177.c", i32 213, i32 54}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/adm1177.c", i32 229, i32 36}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adm1177.c", i32 232, i32 36}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/adm1177.c", i32 245, i32 11}
!24 = !{ptr @adm1177_chip_info, !25, !"adm1177_chip_info", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/adm1177.c", i32 187, i32 37}
!26 = !{ptr @adm1177_hwmon_ops, !27, !"adm1177_hwmon_ops", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/adm1177.c", i32 181, i32 31}
!28 = !{ptr @adm1177_info, !29, !"adm1177_info", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adm1177.c", i32 173, i32 41}
!30 = !{ptr @adm1177_dt_ids, !31, !"adm1177_dt_ids", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adm1177.c", i32 267, i32 34}
!32 = !{ptr @adm1177_id, !33, !"adm1177_id", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/adm1177.c", i32 261, i32 35}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{i64 2148307162, i64 2148307442, i64 2148307776, i64 2148308110}
!45 = !{i64 821331, i64 821358}
!46 = !{i64 822026, i64 822053, i64 822086, i64 822107, i64 822134, i64 822160}
!47 = !{i64 821618, i64 821645, i64 821667, i64 821695}
!48 = !{i8 0, i8 2}
!49 = !{!"branch_weights", i32 2000, i32 1}
