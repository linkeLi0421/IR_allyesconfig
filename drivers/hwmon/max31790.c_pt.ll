; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max31790.c_pt.bc'
source_filename = "../drivers/hwmon/max31790.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.max31790_data = type { ptr, %struct.mutex, i8, i32, [6 x i8], [6 x i8], i16, [12 x i16], [6 x i16], [6 x i16] }

@__initcall__kmod_max31790__296_530_max31790_driver_init6 = internal global ptr @max31790_driver_init, section ".initcall6.init", align 4
@max31790_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max31790_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max31790_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max31790_driver_exit = internal global ptr @max31790_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [49 x i8] c"max31790.author=Il Han <corone.il.han@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [44 x i8] c"max31790.description=MAX31790 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [37 x i8] c"max31790.file=drivers/hwmon/max31790\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [21 x i8] c"max31790.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max31790\00", [23 x i8] zeroinitializer }, align 32
@max31790_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max31790\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max31790_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max31790_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max31790_hwmon_ops, ptr @max31790_info }, [24 x i8] zeroinitializer }, align 32
@max31790_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max31790_is_visible, ptr @max31790_read, ptr null, ptr @max31790_write }, [16 x i8] zeroinitializer }, align 32
@max31790_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.2, ptr @.compoundliteral.4, ptr null], [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tach_period = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\02\04\08\10   ", [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 2178, i32 2178, i32 2178, i32 2178, i32 2178, i32 2178, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 2050, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.3 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 11]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 11]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"max31790_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 521, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 525, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"max31790_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 515, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 498, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"max31790_chip_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 454, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"max31790_hwmon_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 448, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"max31790_info\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 424, i32 41 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"tach_period\00", align 1
@___asan_gen_.37 = private constant [28 x i8] c"../drivers/hwmon/max31790.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 138, i32 17 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_max31790_driver_exit, ptr @__initcall__kmod_max31790__296_530_max31790_driver_init6, ptr @max31790_driver_exit, ptr @max31790_driver, ptr @.str, ptr @max31790_id, ptr @max31790_probe.__key, ptr @.str.1, ptr @max31790_chip_info, ptr @max31790_hwmon_ops, ptr @max31790_info, ptr @tach_period, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max31790_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tach_period to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max31790_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max31790_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max31790_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max31790_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31790_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 168, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.max31790_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max31790_probe.__key) #5
  %call.i28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %cmp1.i = icmp slt i32 %call.i28, 0
  br i1 %cmp1.i, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  %conv3.i = trunc i32 %call.i28 to i8
  %arrayidx.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %call6.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %conv11.i = trunc i32 %call6.i to i8
  %arrayidx12.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 0
  %8 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11.i, ptr %arrayidx12.i, align 1
  %call.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp1.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp1.1.i, label %if.end10.i.cleanup_crit_edge, label %if.end.1.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.1.i:                                       ; preds = %if.end10.i
  %conv3.1.i = trunc i32 %call.1.i to i8
  %arrayidx.1.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv3.1.i, ptr %arrayidx.1.i, align 1
  %call6.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %if.end.1.i.cleanup_crit_edge, label %if.end10.1.i

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.1.i:                                     ; preds = %if.end.1.i
  %conv11.1.i = trunc i32 %call6.1.i to i8
  %arrayidx12.1.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv11.1.i, ptr %arrayidx12.1.i, align 1
  %call.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %cmp1.2.i = icmp slt i32 %call.2.i, 0
  br i1 %cmp1.2.i, label %if.end10.1.i.cleanup_crit_edge, label %if.end.2.i

if.end10.1.i.cleanup_crit_edge:                   ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.2.i:                                       ; preds = %if.end10.1.i
  %conv3.2.i = trunc i32 %call.2.i to i8
  %arrayidx.2.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv3.2.i, ptr %arrayidx.2.i, align 1
  %call6.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.2.i)
  %cmp7.2.i = icmp slt i32 %call6.2.i, 0
  br i1 %cmp7.2.i, label %if.end.2.i.cleanup_crit_edge, label %if.end10.2.i

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.2.i:                                     ; preds = %if.end.2.i
  %conv11.2.i = trunc i32 %call6.2.i to i8
  %arrayidx12.2.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx12.2.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv11.2.i, ptr %arrayidx12.2.i, align 1
  %call.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %cmp1.3.i = icmp slt i32 %call.3.i, 0
  br i1 %cmp1.3.i, label %if.end10.2.i.cleanup_crit_edge, label %if.end.3.i

if.end10.2.i.cleanup_crit_edge:                   ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.3.i:                                       ; preds = %if.end10.2.i
  %conv3.3.i = trunc i32 %call.3.i to i8
  %arrayidx.3.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv3.3.i, ptr %arrayidx.3.i, align 1
  %call6.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.3.i)
  %cmp7.3.i = icmp slt i32 %call6.3.i, 0
  br i1 %cmp7.3.i, label %if.end.3.i.cleanup_crit_edge, label %if.end10.3.i

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.3.i:                                     ; preds = %if.end.3.i
  %conv11.3.i = trunc i32 %call6.3.i to i8
  %arrayidx12.3.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %arrayidx12.3.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11.3.i, ptr %arrayidx12.3.i, align 1
  %call.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %cmp1.4.i = icmp slt i32 %call.4.i, 0
  br i1 %cmp1.4.i, label %if.end10.3.i.cleanup_crit_edge, label %if.end.4.i

if.end10.3.i.cleanup_crit_edge:                   ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.4.i:                                       ; preds = %if.end10.3.i
  %conv3.4.i = trunc i32 %call.4.i to i8
  %arrayidx.4.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3.4.i, ptr %arrayidx.4.i, align 1
  %call6.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.4.i)
  %cmp7.4.i = icmp slt i32 %call6.4.i, 0
  br i1 %cmp7.4.i, label %if.end.4.i.cleanup_crit_edge, label %if.end10.4.i

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10.4.i:                                     ; preds = %if.end.4.i
  %conv11.4.i = trunc i32 %call6.4.i to i8
  %arrayidx12.4.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %arrayidx12.4.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.4.i, ptr %arrayidx12.4.i, align 1
  %call.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %cmp1.5.i = icmp slt i32 %call.5.i, 0
  br i1 %cmp1.5.i, label %if.end10.4.i.cleanup_crit_edge, label %if.end.5.i

if.end10.4.i.cleanup_crit_edge:                   ; preds = %if.end10.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.5.i:                                       ; preds = %if.end10.4.i
  %conv3.5.i = trunc i32 %call.5.i to i8
  %arrayidx.5.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 4, i32 5
  %17 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.5.i, ptr %arrayidx.5.i, align 1
  %call6.5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.5.i)
  %cmp7.5.i = icmp slt i32 %call6.5.i, 0
  br i1 %cmp7.5.i, label %if.end.5.i.cleanup_crit_edge, label %if.end11

if.end.5.i.cleanup_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv11.5.i = trunc i32 %call6.5.i to i8
  %arrayidx12.5.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 5
  %18 = ptrtoint ptr %arrayidx12.5.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv11.5.i, ptr %arrayidx12.5.i, align 1
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call12 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max31790_chip_info, ptr noundef null) #5
  %cmp.i.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call12 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.5.i.cleanup_crit_edge, %if.end10.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %if.end10.3.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %if.end10.2.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end10.1.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call6.5.i, %if.end.5.i.cleanup_crit_edge ], [ %call.5.i, %if.end10.4.i.cleanup_crit_edge ], [ %call6.4.i, %if.end.4.i.cleanup_crit_edge ], [ %call.4.i, %if.end10.3.i.cleanup_crit_edge ], [ %call6.3.i, %if.end.3.i.cleanup_crit_edge ], [ %call.3.i, %if.end10.2.i.cleanup_crit_edge ], [ %call6.2.i, %if.end.2.i.cleanup_crit_edge ], [ %call.2.i, %if.end10.1.i.cleanup_crit_edge ], [ %call6.1.i, %if.end.1.i.cleanup_crit_edge ], [ %call.1.i, %if.end10.i.cleanup_crit_edge ], [ %call6.i, %if.end.i.cleanup_crit_edge ], [ %call.i28, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max31790_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %rem.i = srem i32 %channel, 6
  %arrayidx.i = getelementptr %struct.max31790_data, ptr %data, i32 0, i32 4, i32 %rem.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %attr, label %sw.bb.return_crit_edge [
    i32 1, label %sw.bb.sw.bb.i_crit_edge
    i32 11, label %sw.bb.sw.bb.i_crit_edge10
    i32 7, label %sw.bb2.i
  ]

sw.bb.sw.bb.i_crit_edge10:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 5
  %4 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %or.cond.i = select i1 %cmp.i, i1 %tobool.not.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i16 0, i16 292
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %channel)
  %cmp3.i = icmp slt i32 %channel, 6
  %5 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not.i = icmp eq i8 %5, 0
  %or.cond14.i = select i1 %cmp3.i, i1 %tobool7.not.i, i1 false
  %spec.select15.i = select i1 %or.cond14.i, i16 420, i16 0
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %switch.i = icmp ult i32 %attr, 2
  br i1 %switch.i, label %sw.bb.i8, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i8:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i6 = getelementptr %struct.max31790_data, ptr %data, i32 0, i32 4, i32 %channel
  %6 = ptrtoint ptr %arrayidx.i6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i6, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i7 = icmp eq i8 %8, 0
  %..i = select i1 %tobool.not.i7, i16 420, i16 0
  br label %return

return:                                           ; preds = %sw.bb.i8, %sw.bb1.return_crit_edge, %sw.bb2.i, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ %spec.select.i, %sw.bb.i ], [ %spec.select15.i, %sw.bb2.i ], [ %..i, %sw.bb.i8 ], [ 0, %sw.bb1.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31790_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc ptr @max31790_update_device(ptr noundef %dev) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call.i to i32
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 7, label %sw.bb17.i
    i32 11, label %sw.bb37.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  %rem.i = srem i32 %channel, 6
  %arrayidx.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 %rem.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %5 = lshr i8 %4, 5
  %6 = zext i8 %5 to i32
  %arrayidx.i.i = getelementptr [8 x i8], ptr @tach_period, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %8 to i32
  %arrayidx4.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 7, i32 %channel
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32, i16 %10)
  %cmp.i = icmp eq i16 %10, -32
  br i1 %cmp.i, label %sw.bb.i.if.end16.i_crit_edge, label %if.else.i

sw.bb.i.if.end16.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %10)
  %tobool.not.i = icmp ult i16 %10, 16
  br i1 %tobool.not.i, label %if.else.i.if.end16.i_crit_edge, label %cond.true.i

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = lshr i16 %10, 4
  %12 = zext i16 %11 to i32
  %mul11.i = mul nuw nsw i32 %conv.i, 491520
  %div.i = udiv i32 %mul11.i, %12
  br label %if.end16.i

if.end16.i:                                       ; preds = %cond.true.i, %if.else.i.if.end16.i_crit_edge, %sw.bb.i.if.end16.i_crit_edge
  %rpm.0.i = phi i32 [ 0, %sw.bb.i.if.end16.i_crit_edge ], [ %div.i, %cond.true.i ], [ 7864320, %if.else.i.if.end16.i_crit_edge ]
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rpm.0.i, ptr %val, align 4
  br label %return

sw.bb17.i:                                        ; preds = %if.end.i
  %arrayidx22.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 9, i32 %channel
  %14 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx22.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %15)
  %tobool25.not.i = icmp ult i16 %15, 16
  br i1 %tobool25.not.i, label %sw.bb17.i.cond.end35.i_crit_edge, label %cond.true26.i

sw.bb17.i.cond.end35.i_crit_edge:                 ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end35.i

cond.true26.i:                                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx19.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 5, i32 %channel
  %16 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19.i, align 1
  %18 = lshr i8 %17, 5
  %19 = zext i8 %18 to i32
  %arrayidx.i91.i = getelementptr [8 x i8], ptr @tach_period, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i91.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i91.i, align 1
  %22 = lshr i16 %15, 4
  %23 = zext i16 %22 to i32
  %conv21.i = zext i8 %21 to i32
  %mul28.i = mul nuw nsw i32 %conv21.i, 491520
  %div33.i = udiv i32 %mul28.i, %23
  br label %cond.end35.i

cond.end35.i:                                     ; preds = %cond.true26.i, %sw.bb17.i.cond.end35.i_crit_edge
  %cond36.i = phi i32 [ %div33.i, %cond.true26.i ], [ 7864320, %sw.bb17.i.cond.end35.i_crit_edge ]
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond36.i, ptr %val, align 4
  br label %return

sw.bb37.i:                                        ; preds = %if.end.i
  %update_lock.i = getelementptr inbounds %struct.max31790_data, ptr %call.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %fault_status.i = getelementptr inbounds %struct.max31790_data, ptr %call.i, i32 0, i32 6
  %25 = ptrtoint ptr %fault_status.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fault_status.i, align 4
  %conv38.i = zext i16 %26 to i32
  %shl.i = shl nuw i32 1, %channel
  %27 = lshr i32 %conv38.i, %channel
  %28 = and i32 %27, 1
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val, align 4
  %30 = load i16, ptr %fault_status.i, align 4
  %31 = trunc i32 %shl.i to i16
  %32 = xor i16 %31, -1
  %conv45.i = and i16 %30, %32
  store i16 %conv45.i, ptr %fault_status.i, align 4
  %33 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not.i = icmp eq i32 %33, 0
  br i1 %tobool46.not.i, label %sw.bb37.i.if.end58.i_crit_edge, label %if.then47.i

sw.bb37.i.if.end58.i_crit_edge:                   ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58.i

if.then47.i:                                      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #7
  %rem48.i = srem i32 %channel, 6
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %rem48.tr.i = trunc i32 %rem48.i to i8
  %36 = shl nsw i8 %rem48.tr.i, 1
  %conv50.i = add i8 %36, 80
  %arrayidx53.i = getelementptr %struct.max31790_data, ptr %call.i, i32 0, i32 9, i32 %rem48.i
  %37 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx53.i, align 2
  %39 = lshr i16 %38, 8
  %conv56.i = trunc i16 %39 to i8
  %call57.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext %conv50.i, i8 noundef zeroext %conv56.i) #5
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then47.i, %sw.bb37.i.if.end58.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  br label %return

sw.bb1:                                           ; preds = %entry
  %call.i7 = tail call fastcc ptr @max31790_update_device(ptr noundef %dev) #5
  %cmp.i.i8 = icmp ugt ptr %call.i7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i8, label %if.then.i9, label %if.end.i10

if.then.i9:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call.i7 to i32
  br label %return

if.end.i10:                                       ; preds = %sw.bb1
  %41 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %attr, label %if.end.i10.return_crit_edge [
    i32 0, label %sw.bb.i12
    i32 1, label %sw.bb5.i
  ]

if.end.i10.return_crit_edge:                      ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb.i12:                                        ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i11 = getelementptr %struct.max31790_data, ptr %call.i7, i32 0, i32 8, i32 %channel
  %42 = ptrtoint ptr %arrayidx4.i11 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx4.i11, align 2
  %44 = lshr i16 %43, 8
  %45 = zext i16 %44 to i32
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %val, align 4
  br label %return

sw.bb5.i:                                         ; preds = %if.end.i10
  %arrayidx.i13 = getelementptr %struct.max31790_data, ptr %call.i7, i32 0, i32 4, i32 %channel
  %47 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i13, align 1
  %conv6.i = zext i8 %48 to i32
  %and.i = and i32 %conv6.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i14 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i14, label %if.else.i15, label %if.then7.i

if.then7.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %val, align 4
  br label %return

if.else.i15:                                      ; preds = %sw.bb5.i
  %and9.i = and i32 %conv6.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %val, align 4
  br label %return

if.else12.i:                                      ; preds = %if.else.i15
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %val, align 4
  br label %return

return:                                           ; preds = %if.else12.i, %if.then11.i, %if.then7.i, %sw.bb.i12, %if.end.i10.return_crit_edge, %if.then.i9, %if.end58.i, %cond.end35.i, %if.end16.i, %if.end.i.return_crit_edge, %if.then.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %1, %if.then.i ], [ 0, %if.end58.i ], [ 0, %cond.end35.i ], [ 0, %if.end16.i ], [ -95, %if.end.i.return_crit_edge ], [ %40, %if.then.i9 ], [ 0, %sw.bb.i12 ], [ 0, %if.then11.i ], [ 0, %if.else12.i ], [ 0, %if.then7.i ], [ -95, %if.end.i10.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max31790_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %type, label %entry.return_crit_edge [
    i32 7, label %sw.bb
    i32 8, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %update_lock.i = getelementptr inbounds %struct.max31790_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %attr)
  %cond50.i = icmp eq i32 %attr, 7
  br i1 %cond50.i, label %sw.bb.i, label %sw.bb.return.sink.split_crit_edge

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb.i:                                          ; preds = %sw.bb
  %5 = tail call i32 @llvm.smax.i32(i32 %val, i32 120) #5
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 7864320) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %6)
  %cmp.i.i = icmp ult i32 %6, 500
  br i1 %cmp.i.i, label %sw.bb.i.bits_for_tach_period.exit.i_crit_edge, label %if.else.i.i

sw.bb.i.bits_for_tach_period.exit.i_crit_edge:    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bits_for_tach_period.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %6)
  %cmp1.i.i = icmp ult i32 %6, 1000
  br i1 %cmp1.i.i, label %if.else.i.i.bits_for_tach_period.exit.i_crit_edge, label %if.else3.i.i

if.else.i.i.bits_for_tach_period.exit.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bits_for_tach_period.exit.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %6)
  %cmp4.i.i = icmp ult i32 %6, 2000
  br i1 %cmp4.i.i, label %if.else3.i.i.bits_for_tach_period.exit.i_crit_edge, label %if.else6.i.i

if.else3.i.i.bits_for_tach_period.exit.i_crit_edge: ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bits_for_tach_period.exit.i

if.else6.i.i:                                     ; preds = %if.else3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %6)
  %cmp7.i.i = icmp ult i32 %6, 4000
  br i1 %cmp7.i.i, label %if.else6.i.i.bits_for_tach_period.exit.i_crit_edge, label %if.else9.i.i

if.else6.i.i.bits_for_tach_period.exit.i_crit_edge: ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bits_for_tach_period.exit.i

if.else9.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %6)
  %cmp10.i.i = icmp ult i32 %6, 8000
  %..i.i = select i1 %cmp10.i.i, i8 -128, i8 -96
  br label %bits_for_tach_period.exit.i

bits_for_tach_period.exit.i:                      ; preds = %if.else9.i.i, %if.else6.i.i.bits_for_tach_period.exit.i_crit_edge, %if.else3.i.i.bits_for_tach_period.exit.i_crit_edge, %if.else.i.i.bits_for_tach_period.exit.i_crit_edge, %sw.bb.i.bits_for_tach_period.exit.i_crit_edge
  %bits.0.i.i = phi i8 [ 0, %sw.bb.i.bits_for_tach_period.exit.i_crit_edge ], [ 32, %if.else.i.i.bits_for_tach_period.exit.i_crit_edge ], [ 64, %if.else3.i.i.bits_for_tach_period.exit.i_crit_edge ], [ 96, %if.else6.i.i.bits_for_tach_period.exit.i_crit_edge ], [ %..i.i, %if.else9.i.i ]
  %arrayidx.i = getelementptr %struct.max31790_data, ptr %2, i32 0, i32 5, i32 %channel
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %9 = and i8 %8, 31
  %or.i = or i8 %9, %bits.0.i.i
  store i8 %or.i, ptr %arrayidx.i, align 1
  %10 = trunc i32 %channel to i8
  %conv13.i = add i8 %10, 8
  %call16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %conv13.i, i8 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %bits_for_tach_period.exit.i.return.sink.split_crit_edge, label %if.end.i

bits_for_tach_period.exit.i.return.sink.split_crit_edge: ; preds = %bits_for_tach_period.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.end.i:                                         ; preds = %bits_for_tach_period.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %13 = lshr i8 %12, 5
  %14 = zext i8 %13 to i32
  %arrayidx.i.i = getelementptr [8 x i8], ptr @tach_period, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv22.i = zext i8 %16 to i32
  %mul23.i = mul nuw nsw i32 %conv22.i, 491520
  %mul24.i = shl nuw nsw i32 %6, 1
  %div79.i = udiv i32 %mul23.i, %mul24.i
  %17 = tail call i32 @llvm.umax.i32(i32 %div79.i, i32 1) #5
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 2047) #5
  %cond38.tr.i = trunc i32 %18 to i16
  %conv40.i = shl nuw i16 %cond38.tr.i, 5
  %arrayidx42.i = getelementptr %struct.max31790_data, ptr %2, i32 0, i32 9, i32 %channel
  %19 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv40.i, ptr %arrayidx42.i, align 2
  %20 = shl i8 %10, 1
  %conv45.i = add i8 %20, 80
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv40.i) #5
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %4, i8 noundef zeroext %conv45.i, i16 noundef zeroext %21) #5
  br label %return.sink.split

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i7, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %update_lock.i8 = getelementptr inbounds %struct.max31790_data, ptr %23, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i8, i32 noundef 0) #5
  %26 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %attr, label %sw.bb1.return.sink.split_crit_edge [
    i32 0, label %sw.bb.i9
    i32 1, label %sw.bb5.i
  ]

sw.bb1.return.sink.split_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

sw.bb.i9:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %val)
  %27 = icmp ugt i32 %val, 255
  br i1 %27, label %sw.bb.i9.return.sink.split_crit_edge, label %if.end.i11

sw.bb.i9.return.sink.split_crit_edge:             ; preds = %sw.bb.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.end.i11:                                       ; preds = %sw.bb.i9
  call void @__sanitizer_cov_trace_pc() #7
  %valid.i = getelementptr inbounds %struct.max31790_data, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %valid.i, align 4
  %channel.tr.i = trunc i32 %channel to i8
  %29 = shl i8 %channel.tr.i, 1
  %conv.i = add i8 %29, 64
  %val.tr.i = trunc i32 %val to i16
  %call.i.i10 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %25, i8 noundef zeroext %conv.i, i16 noundef zeroext %val.tr.i) #5
  br label %return.sink.split

sw.bb5.i:                                         ; preds = %sw.bb1
  %arrayidx.i12 = getelementptr %struct.max31790_data, ptr %23, i32 0, i32 4, i32 %channel
  %30 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i12, align 1
  %32 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %val, label %sw.bb5.i.return.sink.split_crit_edge [
    i32 0, label %if.then9.i
    i32 1, label %if.then16.i
    i32 2, label %if.then23.i
  ]

sw.bb5.i.return.sink.split_crit_edge:             ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then9.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %33 = and i8 %31, 111
  %34 = or i8 %33, 16
  br label %if.end33.i

if.then16.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %35 = and i8 %31, 111
  br label %if.end33.i

if.then23.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = and i8 %31, 103
  %37 = or i8 %36, -120
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then23.i, %if.then16.i, %if.then9.i
  %fan_config.0.i = phi i8 [ %34, %if.then9.i ], [ %35, %if.then16.i ], [ %37, %if.then23.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %fan_config.0.i, i8 %31)
  %cmp38.not.i = icmp eq i8 %fan_config.0.i, %31
  br i1 %cmp38.not.i, label %if.end33.i.return.sink.split_crit_edge, label %if.then40.i

if.end33.i.return.sink.split_crit_edge:           ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then40.i:                                      ; preds = %if.end33.i
  %38 = trunc i32 %channel to i8
  %conv42.i = add i8 %38, 2
  %call43.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext %conv42.i, i8 noundef zeroext %fan_config.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool.not.i, label %if.then44.i, label %if.then40.i.return.sink.split_crit_edge

if.then40.i.return.sink.split_crit_edge:          ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return.sink.split

if.then44.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %fan_config.0.i, ptr %arrayidx.i12, align 1
  br label %return.sink.split

return.sink.split:                                ; preds = %if.then44.i, %if.then40.i.return.sink.split_crit_edge, %if.end33.i.return.sink.split_crit_edge, %sw.bb5.i.return.sink.split_crit_edge, %if.end.i11, %sw.bb.i9.return.sink.split_crit_edge, %sw.bb1.return.sink.split_crit_edge, %if.end.i, %bits_for_tach_period.exit.i.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %update_lock.i8.sink = phi ptr [ %update_lock.i, %sw.bb.return.sink.split_crit_edge ], [ %update_lock.i, %bits_for_tach_period.exit.i.return.sink.split_crit_edge ], [ %update_lock.i, %if.end.i ], [ %update_lock.i8, %sw.bb1.return.sink.split_crit_edge ], [ %update_lock.i8, %sw.bb.i9.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end.i11 ], [ %update_lock.i8, %sw.bb5.i.return.sink.split_crit_edge ], [ %update_lock.i8, %if.end33.i.return.sink.split_crit_edge ], [ %update_lock.i8, %if.then40.i.return.sink.split_crit_edge ], [ %update_lock.i8, %if.then44.i ]
  %retval.0.ph = phi i32 [ -95, %sw.bb.return.sink.split_crit_edge ], [ %call16.i, %bits_for_tach_period.exit.i.return.sink.split_crit_edge ], [ %call.i.i, %if.end.i ], [ -95, %sw.bb1.return.sink.split_crit_edge ], [ -22, %sw.bb.i9.return.sink.split_crit_edge ], [ %call.i.i10, %if.end.i11 ], [ -22, %sw.bb5.i.return.sink.split_crit_edge ], [ 0, %if.end33.i.return.sink.split_crit_edge ], [ %call43.i, %if.then40.i.return.sink.split_crit_edge ], [ 0, %if.then44.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i8.sink) #5
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max31790_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %last_updated = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.abort_crit_edge, label %if.end

if.then.abort_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end:                                           ; preds = %if.then
  %fault_status = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %fault_status to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fault_status, align 4
  %11 = trunc i32 %call2 to i16
  %12 = and i16 %11, 63
  %conv5 = or i16 %10, %12
  store i16 %conv5, ptr %fault_status, align 4
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.abort_crit_edge, label %if.end10

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %fault_status to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %fault_status, align 4
  %call6.tr = trunc i32 %call6 to i16
  %15 = shl i16 %call6.tr, 6
  %16 = and i16 %15, 4032
  %conv15 = or i16 %14, %16
  store i16 %conv15, ptr %fault_status, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10
  %i.0128 = phi i32 [ 0, %if.end10 ], [ %inc, %for.inc.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.0128 to i8
  %17 = shl i8 %i.0.tr, 1
  %conv19 = add i8 %17, 24
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.abort_crit_edge, label %if.end24

for.body.abort_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end24:                                         ; preds = %for.body
  %conv.i = trunc i32 %call.i to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #5
  %arrayidx = getelementptr %struct.max31790_data, ptr %1, i32 0, i32 7, i32 %i.0128
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %arrayidx, align 2
  %arrayidx26 = getelementptr %struct.max31790_data, ptr %1, i32 0, i32 4, i32 %i.0128
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx26, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end24
  %add31 = add nuw nsw i32 %i.0128, 6
  %add31.tr = trunc i32 %add31 to i8
  %23 = shl i8 %add31.tr, 1
  %conv34 = add i8 %23, 24
  %call.i113 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %cmp.i114 = icmp slt i32 %call.i113, 0
  br i1 %cmp.i114, label %if.then30.abort_crit_edge, label %if.end39

if.then30.abort_crit_edge:                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i115 = trunc i32 %call.i113 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i115) #5
  %arrayidx43 = getelementptr %struct.max31790_data, ptr %1, i32 0, i32 7, i32 %add31
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx43, align 2
  br label %for.inc

if.else:                                          ; preds = %if.end24
  %conv46 = add i8 %17, 48
  %call.i118 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp.i119, label %if.else.abort_crit_edge, label %if.end51

if.else.abort_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end51:                                         ; preds = %if.else
  %conv.i120 = trunc i32 %call.i118 to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv.i120) #5
  %arrayidx53 = getelementptr %struct.max31790_data, ptr %1, i32 0, i32 8, i32 %i.0128
  %27 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %arrayidx53, align 2
  %conv56 = add i8 %17, 80
  %call.i123 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv56) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.i124 = icmp slt i32 %call.i123, 0
  br i1 %cmp.i124, label %if.end51.abort_crit_edge, label %if.end61

if.end51.abort_crit_edge:                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i125 = trunc i32 %call.i123 to i16
  %28 = tail call i16 @llvm.bswap.i16(i16 %conv.i125) #5
  %arrayidx63 = getelementptr %struct.max31790_data, ptr %1, i32 0, i32 9, i32 %i.0128
  %29 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %arrayidx63, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end61, %if.end39
  %inc = add nuw nsw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_updated, align 4
  %valid66 = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %valid66 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %valid66, align 4
  br label %done

abort:                                            ; preds = %if.end51.abort_crit_edge, %if.else.abort_crit_edge, %if.then30.abort_crit_edge, %for.body.abort_crit_edge, %if.end.abort_crit_edge, %if.then.abort_crit_edge
  %rv.0 = phi i32 [ %call2, %if.then.abort_crit_edge ], [ %call6, %if.end.abort_crit_edge ], [ %call.i123, %if.end51.abort_crit_edge ], [ %call.i118, %if.else.abort_crit_edge ], [ %call.i113, %if.then30.abort_crit_edge ], [ %call.i, %for.body.abort_crit_edge ]
  %valid68 = getelementptr inbounds %struct.max31790_data, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %valid68 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %valid68, align 4
  %34 = inttoptr i32 %rv.0 to ptr
  br label %done

done:                                             ; preds = %abort, %for.end, %lor.lhs.false.done_crit_edge
  %ret.0 = phi ptr [ %34, %abort ], [ %1, %for.end ], [ %1, %lor.lhs.false.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #5
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__initcall__kmod_max31790__296_530_max31790_driver_init6, !1, !"__initcall__kmod_max31790__296_530_max31790_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max31790.c", i32 530, i32 1}
!2 = !{ptr @__exitcall_max31790_driver_exit, !1, !"__exitcall_max31790_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max31790.c", i32 532, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max31790.c", i32 533, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max31790.c", i32 534, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max31790.c", i32 525, i32 11}
!12 = !{ptr @max31790_driver, !13, !"max31790_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max31790.c", i32 521, i32 26}
!14 = !{ptr @max31790_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max31790.c", i32 498, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max31790_chip_info, !18, !"max31790_chip_info", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max31790.c", i32 454, i32 37}
!19 = !{ptr @max31790_hwmon_ops, !20, !"max31790_hwmon_ops", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max31790.c", i32 448, i32 31}
!21 = !{ptr @tach_period, !22, !"tach_period", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max31790.c", i32 138, i32 17}
!23 = !{ptr @max31790_info, !24, !"max31790_info", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/max31790.c", i32 424, i32 41}
!25 = !{ptr @max31790_id, !26, !"max31790_id", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max31790.c", i32 515, i32 35}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i8 0, i8 2}
