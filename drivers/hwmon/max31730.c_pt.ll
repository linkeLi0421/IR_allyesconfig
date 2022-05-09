; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max31730.c_pt.bc'
source_filename = "../drivers/hwmon/max31730.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max31730_data = type { ptr, i8, i8, i8, i8 }

@__initcall__kmod_max31730__296_436_max31730_driver_init6 = internal global ptr @max31730_driver_init, section ".initcall6.init", align 4
@max31730_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max31730_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max31730_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max31730_pm_ops, ptr null, ptr null }, ptr @max31730_ids, ptr @max31730_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max31730_driver_exit = internal global ptr @max31730_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [51 x i8] c"max31730.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [37 x i8] c"max31730.description=MAX31730 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"max31730.file=drivers/hwmon/max31730\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"max31730.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max31730\00", [23 x i8] zeroinitializer }, align 32
@max31730_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max31730\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max31730_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max31730_suspend, ptr @max31730_resume, ptr @max31730_suspend, ptr @max31730_resume, ptr @max31730_suspend, ptr @max31730_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max31730_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max31730\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 28, i16 29, i16 30, i16 31, i16 76, i16 77, i16 78, i16 79, i16 -2], [46 x i8] zeroinitializer }, align 32
@max31730_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max31730_hwmon_ops, ptr @max31730_info }, [24 x i8] zeroinitializer }, align 32
@max31730_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max31730_is_visible, ptr @max31730_read, ptr null, ptr @max31730_write }, [16 x i8] zeroinitializer }, align 32
@max31730_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.1, ptr @.compoundliteral.3, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 16, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 98467, i32 1671331, i32 1671331, i32 1671331, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.2 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 5, i64 7, i64 15, i64 16, i64 19, i64 20]
@__sancov_gen_cov_switch_values.4 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 5, i64 7, i64 15, i64 16, i64 19, i64 20]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 7, i64 20]
@___asan_gen_.6 = private unnamed_addr constant [16 x i8] c"max31730_driver\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 423, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 426, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"max31730_of_match\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 354, i32 49 }
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"max31730_pm_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 421, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"max31730_ids\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 348, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 19, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"max31730_chip_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 280, i32 37 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"max31730_hwmon_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 274, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"max31730_info\00", align 1
@___asan_gen_.31 = private constant [28 x i8] c"../drivers/hwmon/max31730.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 251, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_max31730_driver_exit, ptr @__initcall__kmod_max31730__296_436_max31730_driver_init6, ptr @max31730_driver_exit, ptr @max31730_driver, ptr @.str, ptr @max31730_of_match, ptr @max31730_pm_ops, ptr @max31730_ids, ptr @normal_i2c, ptr @max31730_chip_info, ptr @max31730_hwmon_ops, ptr @max31730_info, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31730_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max31730_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max31730_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max31730_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 53) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %conv = trunc i32 %call7 to i8
  %channel_enable = getelementptr inbounds %struct.max31730_data, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %channel_enable to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %channel_enable, align 1
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %conv15 = trunc i32 %call10 to i8
  %offset_enable = getelementptr inbounds %struct.max31730_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %offset_enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %offset_enable, align 2
  %call16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %conv21 = trunc i32 %call16 to i8
  %orig_conf = getelementptr inbounds %struct.max31730_data, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %orig_conf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv21, ptr %orig_conf, align 4
  %current_conf = getelementptr inbounds %struct.max31730_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %current_conf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv21, ptr %current_conf, align 1
  %11 = ptrtoint ptr %channel_enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %channel_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool25.not = icmp eq i8 %12, 0
  %conv26 = select i1 %tobool25.not, i8 -128, i8 0
  %neg.i = select i1 %tobool25.not, i8 -3, i8 125
  %and.i78 = and i8 %neg.i, %conv21
  %or725.i = or i8 %and.i78, %conv26
  call void @__sanitizer_cov_trace_cmp1(i8 %or725.i, i8 %conv21)
  %cmp.not.i = icmp eq i8 %or725.i, %conv21
  br i1 %cmp.not.i, label %if.end20.if.end35_crit_edge, label %if.then.i

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then.i:                                        ; preds = %if.end20
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call.i79 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 19, i8 noundef zeroext %or725.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %current_conf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or725.i, ptr %current_conf, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end.i, %if.end20.if.end35_crit_edge
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call.i80 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @max31730_remove, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i81 = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i81, label %if.end39, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %19 = ptrtoint ptr %orig_conf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %orig_conf, align 4
  %call.i.i82 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 19, i8 noundef zeroext %20) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call40 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max31730_chip_info, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call40 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %21, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %devm_add_action_or_reset.exit, %if.then.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end39 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call.i80, %devm_add_action_or_reset.exit ], [ %call.i79, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 77
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 1
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 49) #6
  %6 = and i32 %call.i, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %for.body.preheader, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end8
  %call.i34 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #6
  %7 = and i32 %call.i34, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %.not37 = icmp eq i32 %7, 0
  br i1 %.not37, label %if.end15, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %if.end15
  %call.i34.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #6
  %8 = and i32 %call.i34.1, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %.not37.1 = icmp eq i32 %8, 0
  br i1 %.not37.1, label %if.end15.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.1:                                       ; preds = %for.cond
  %call.i36.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 35) #6
  %9 = and i32 %call.i36.1, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %.not38.1 = icmp eq i32 %9, 0
  br i1 %.not38.1, label %for.cond.1, label %if.end15.1.cleanup_crit_edge

if.end15.1.cleanup_crit_edge:                     ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %if.end15.1
  %call.i34.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 5) #6
  %10 = and i32 %call.i34.2, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not37.2 = icmp eq i32 %10, 0
  br i1 %.not37.2, label %if.end15.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.2:                                       ; preds = %for.cond.1
  %call.i36.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 37) #6
  %11 = and i32 %call.i36.2, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %.not38.2 = icmp eq i32 %11, 0
  br i1 %.not38.2, label %for.cond.2, label %if.end15.2.cleanup_crit_edge

if.end15.2.cleanup_crit_edge:                     ; preds = %if.end15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %if.end15.2
  %call.i34.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #6
  %12 = and i32 %call.i34.3, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %.not37.3 = icmp eq i32 %12, 0
  br i1 %.not37.3, label %if.end15.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15.3:                                       ; preds = %for.cond.2
  %call.i36.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 39) #6
  %13 = and i32 %call.i36.3, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %.not38.3 = icmp eq i32 %13, 0
  br i1 %.not38.3, label %for.cond.3, label %if.end15.3.cleanup_crit_edge

if.end15.3.cleanup_crit_edge:                     ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %if.end15.3
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #6
  br label %cleanup

if.end15:                                         ; preds = %for.body.preheader
  %call.i36 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 33) #6
  %14 = and i32 %call.i36, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %.not38 = icmp eq i32 %14, 0
  br i1 %.not38, label %for.cond, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15.cleanup_crit_edge, %for.cond.3, %if.end15.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %if.end15.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %if.end15.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.3 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end15.3.cleanup_crit_edge ], [ -19, %for.cond.2.cleanup_crit_edge ], [ -19, %if.end15.2.cleanup_crit_edge ], [ -19, %for.cond.1.cleanup_crit_edge ], [ -19, %if.end15.1.cleanup_crit_edge ], [ -19, %for.cond.cleanup_crit_edge ], [ -19, %for.body.preheader.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max31730_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %orig_conf = getelementptr inbounds %struct.max31730_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %orig_conf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %orig_conf, align 4
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 19, i8 noundef zeroext %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max31730_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond5 = icmp eq i32 %type, 1
  br i1 %cond5, label %sw.bb, label %entry.sw.epilog4_crit_edge

entry.sw.epilog4_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog4

sw.bb:                                            ; preds = %entry
  %0 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %sw.bb.sw.epilog4_crit_edge [
    i32 1, label %sw.bb.return_crit_edge
    i32 15, label %sw.bb.return_crit_edge6
    i32 16, label %sw.bb.return_crit_edge7
    i32 19, label %sw.bb.return_crit_edge8
    i32 5, label %sw.bb2
    i32 20, label %sw.bb.sw.bb3_crit_edge
    i32 0, label %sw.bb.sw.bb3_crit_edge9
    i32 7, label %sw.bb.sw.bb3_crit_edge10
  ]

sw.bb.sw.bb3_crit_edge10:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge9:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb.return_crit_edge8:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.return_crit_edge7:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.return_crit_edge6:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb.sw.epilog4_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog4

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not = icmp eq i32 %channel, 0
  %conv = select i1 %tobool.not, i16 420, i16 292
  br label %return

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge9, %sw.bb.sw.bb3_crit_edge10
  br label %return

sw.epilog4:                                       ; preds = %sw.bb.sw.epilog4_crit_edge, %entry.sw.epilog4_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog4, %sw.bb3, %sw.bb2, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge6, %sw.bb.return_crit_edge7, %sw.bb.return_crit_edge8
  %retval.0 = phi i16 [ 0, %sw.epilog4 ], [ 420, %sw.bb3 ], [ %conv, %sw.bb2 ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge6 ], [ 292, %sw.bb.return_crit_edge7 ], [ 292, %sw.bb.return_crit_edge8 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 7, label %sw.bb3
    i32 5, label %if.end.sw.epilog_crit_edge
    i32 0, label %sw.bb7
    i32 20, label %sw.bb14
    i32 19, label %sw.bb30
    i32 15, label %sw.bb44
    i32 16, label %sw.bb58
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %channel_enable = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %channel_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %channel_enable, align 1
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %channel
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end2

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %channel, 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul4 = shl i32 %channel, 1
  %add5 = add i32 %mul4, 32
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %channel_enable8 = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %channel_enable8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %channel_enable8, align 1
  %conv9 = zext i8 %6 to i32
  %7 = lshr i32 %conv9, %channel
  %8 = and i32 %7, 1
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool15.not = icmp eq i32 %channel, 0
  br i1 %tobool15.not, label %sw.bb14.cleanup_crit_edge, label %if.end17

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %sw.bb14
  %offset_enable = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %offset_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %offset_enable, align 2
  %conv18 = zext i8 %10 to i32
  %shl19 = shl nuw i32 1, %channel
  %and20 = and i32 %shl19, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end17.cleanup.sink.split_crit_edge, label %if.end23

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end23:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %13 = mul i32 %call24, 125
  %mul29 = add i32 %13, -14875
  br label %cleanup.sink.split

sw.bb30:                                          ; preds = %if.end
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %sw.bb30.cleanup_crit_edge, label %if.end36

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %16 = lshr i32 %call32, %channel
  %17 = and i32 %16, 1
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %if.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext 51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %sw.bb44.cleanup_crit_edge, label %if.end50

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  %20 = lshr i32 %call46, %channel
  %21 = and i32 %20, 1
  br label %cleanup.sink.split

sw.bb58:                                          ; preds = %if.end
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %call60 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %sw.bb58.cleanup_crit_edge, label %if.end64

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #8
  %24 = lshr i32 %call60, %channel
  %25 = and i32 %24, 1
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %sw.bb3, %if.end2, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i32 [ %add5, %sw.bb3 ], [ %mul, %if.end2 ], [ 48, %if.end.sw.epilog_crit_edge ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %conv73 = trunc i32 %reg.0 to i8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %27, i8 noundef zeroext %conv73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end78

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = trunc i32 %call.i to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %29 = ashr i16 %28, 4
  %shr.i = sext i16 %29 to i32
  %mul.i = mul nsw i32 %shr.i, 1000
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %28)
  %cmp.i118 = icmp sgt i16 %28, 15
  %cond.in.v.i = select i1 %cmp.i118, i32 8, i32 -8
  %cond.in.i = add nsw i32 %mul.i, %cond.in.v.i
  %cond.i119 = sdiv i32 %cond.in.i, 16
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end78, %if.end64, %if.end50, %if.end36, %if.end28, %if.end17.cleanup.sink.split_crit_edge, %sw.bb7
  %cond.i119.sink = phi i32 [ %cond.i119, %if.end78 ], [ %25, %if.end64 ], [ %21, %if.end50 ], [ %17, %if.end36 ], [ %mul29, %if.end28 ], [ %8, %sw.bb7 ], [ 0, %if.end17.cleanup.sink.split_crit_edge ]
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i119.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -61, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %call32, %sw.bb30.cleanup_crit_edge ], [ %call46, %sw.bb44.cleanup_crit_edge ], [ %call60, %sw.bb58.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i, %sw.epilog.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %attr, label %if.end.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 5, label %if.end.sw.epilog_crit_edge
    i32 0, label %sw.bb2
    i32 20, label %sw.bb8
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = trunc i32 %channel to i8
  %4 = shl i8 %3, 1
  %phi.cast = add i8 %4, 32
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %5 = icmp ult i32 %val, 2
  br i1 %5, label %if.end6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp3.not129 = icmp eq i32 %val, 0
  %channel_enable.i = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %channel_enable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %channel_enable.i, align 1
  %shl.i.i = shl nuw i32 1, %channel
  %8 = trunc i32 %shl.i.i to i8
  %conv1.i.i = or i8 %7, %8
  %9 = xor i8 %8, -1
  %conv4.i.i = and i8 %7, %9
  %regval.0.i.i = select i1 %cmp3.not129, i8 %conv4.i.i, i8 %conv1.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %regval.0.i.i, i8 %7)
  %cmp.not.i.i = icmp eq i8 %regval.0.i.i, %7
  br i1 %cmp.not.i.i, label %if.end6.cleanup_crit_edge, label %if.then8.i.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8.i.i:                                     ; preds = %if.end6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 53, i8 noundef zeroext %regval.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.then8.i.i.cleanup_crit_edge

if.then8.i.i.cleanup_crit_edge:                   ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i.i:                                     ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %channel_enable.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %regval.0.i.i, ptr %channel_enable.i, align 1
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %13 = tail call i32 @llvm.smax.i32(i32 %val, i32 -14875)
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 17000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14875, i32 %14)
  %cmp18.not = icmp eq i32 %14, -14875
  %15 = trunc i32 %14 to i16
  %div25127.lhs.trunc = add nsw i16 %15, 14937
  %div25127128 = udiv i16 %div25127.lhs.trunc, 125
  %div25127.zext = zext i16 %div25127128 to i32
  %cond30 = select i1 %cmp18.not, i32 0, i32 %div25127.zext
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %cond30)
  %cmp31.not = icmp eq i32 %cond30, 119
  %offset_enable.i = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %offset_enable.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset_enable.i, align 1
  %shl.i.i115 = shl nuw i32 1, %channel
  %18 = trunc i32 %shl.i.i115 to i8
  %conv1.i.i116 = or i8 %17, %18
  %19 = xor i8 %18, -1
  %conv4.i.i117 = and i8 %17, %19
  %regval.0.i.i118 = select i1 %cmp31.not, i8 %conv4.i.i117, i8 %conv1.i.i116
  call void @__sanitizer_cov_trace_cmp1(i8 %regval.0.i.i118, i8 %17)
  %cmp.not.i.i119 = icmp eq i8 %regval.0.i.i118, %17
  br i1 %cmp.not.i.i119, label %sw.bb8.if.end36_crit_edge, label %if.then8.i.i122

sw.bb8.if.end36_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then8.i.i122:                                  ; preds = %sw.bb8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i.i120 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 23, i8 noundef zeroext %regval.0.i.i118) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i120)
  %tobool10.not.i.i121 = icmp eq i32 %call.i.i120, 0
  br i1 %tobool10.not.i.i121, label %if.end12.i.i123, label %if.then8.i.i122.cleanup_crit_edge

if.then8.i.i122.cleanup_crit_edge:                ; preds = %if.then8.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.i.i123:                                  ; preds = %if.then8.i.i122
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %offset_enable.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %regval.0.i.i118, ptr %offset_enable.i, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.end12.i.i123, %sw.bb8.if.end36_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %conv37 = trunc i32 %cond30 to i8
  %call38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %24, i8 noundef zeroext 22, i8 noundef zeroext %conv37) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ %phi.cast, %sw.bb ], [ 48, %if.end.sw.epilog_crit_edge ]
  %25 = tail call i32 @llvm.smax.i32(i32 %val, i32 -128000)
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 127937)
  %shl = shl nsw i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp56 = icmp sgt i32 %25, 0
  %cond71.in.v = select i1 %cmp56, i32 500, i32 -500
  %cond71.in = add nsw i32 %shl, %cond71.in.v
  %cond71 = sdiv i32 %cond71.in, 1000
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %cond71.tr = trunc i32 %cond71 to i16
  %conv75 = shl i16 %cond71.tr, 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv75) #6
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %28, i8 noundef zeroext %reg.0, i16 noundef zeroext %29) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end36, %if.then8.i.i122.cleanup_crit_edge, %if.end12.i.i, %if.then8.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end36 ], [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.then8.i.i.cleanup_crit_edge ], [ 0, %if.end12.i.i ], [ 0, %if.end6.cleanup_crit_edge ], [ %call.i.i120, %if.then8.i.i122.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_conf.i = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %current_conf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_conf.i, align 1
  %and.i = and i8 %3, 125
  %or725.i = or i8 %and.i, -128
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %or725.i)
  %cmp.not.i = icmp eq i8 %3, %or725.i
  br i1 %cmp.not.i, label %entry.max31730_write_config.exit_crit_edge, label %if.then.i

entry.max31730_write_config.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max31730_write_config.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 19, i8 noundef zeroext %or725.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.max31730_write_config.exit_crit_edge

if.then.i.max31730_write_config.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max31730_write_config.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %current_conf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %or725.i, ptr %current_conf.i, align 1
  br label %max31730_write_config.exit

max31730_write_config.exit:                       ; preds = %if.end.i, %if.then.i.max31730_write_config.exit_crit_edge, %entry.max31730_write_config.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end.i ], [ 0, %entry.max31730_write_config.exit_crit_edge ], [ %call.i, %if.then.i.max31730_write_config.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31730_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %current_conf.i = getelementptr inbounds %struct.max31730_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %current_conf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_conf.i, align 1
  %and.i = and i8 %3, 125
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %and.i)
  %cmp.not.i = icmp eq i8 %3, %and.i
  br i1 %cmp.not.i, label %entry.max31730_write_config.exit_crit_edge, label %if.then.i

entry.max31730_write_config.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %max31730_write_config.exit

if.then.i:                                        ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 19, i8 noundef zeroext %and.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i.max31730_write_config.exit_crit_edge

if.then.i.max31730_write_config.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %max31730_write_config.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %current_conf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %and.i, ptr %current_conf.i, align 1
  br label %max31730_write_config.exit

max31730_write_config.exit:                       ; preds = %if.end.i, %if.then.i.max31730_write_config.exit_crit_edge, %entry.max31730_write_config.exit_crit_edge
  %retval.1.i = phi i32 [ 0, %if.end.i ], [ 0, %entry.max31730_write_config.exit_crit_edge ], [ %call.i, %if.then.i.max31730_write_config.exit_crit_edge ]
  ret i32 %retval.1.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__initcall__kmod_max31730__296_436_max31730_driver_init6, !1, !"__initcall__kmod_max31730__296_436_max31730_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max31730.c", i32 436, i32 1}
!2 = !{ptr @__exitcall_max31730_driver_exit, !1, !"__exitcall_max31730_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max31730.c", i32 438, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max31730.c", i32 439, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max31730.c", i32 440, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max31730.c", i32 426, i32 11}
!12 = !{ptr @max31730_driver, !13, !"max31730_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max31730.c", i32 423, i32 26}
!14 = !{ptr @max31730_chip_info, !15, !"max31730_chip_info", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max31730.c", i32 280, i32 37}
!16 = !{ptr @max31730_hwmon_ops, !17, !"max31730_hwmon_ops", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/max31730.c", i32 274, i32 31}
!18 = !{ptr @max31730_info, !19, !"max31730_info", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/max31730.c", i32 251, i32 41}
!20 = !{ptr @max31730_of_match, !21, !"max31730_of_match", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/max31730.c", i32 354, i32 49}
!22 = !{ptr @max31730_pm_ops, !23, !"max31730_pm_ops", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/max31730.c", i32 421, i32 8}
!24 = !{ptr @max31730_ids, !25, !"max31730_ids", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/max31730.c", i32 348, i32 35}
!26 = !{ptr @normal_i2c, !27, !"normal_i2c", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/max31730.c", i32 19, i32 29}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
