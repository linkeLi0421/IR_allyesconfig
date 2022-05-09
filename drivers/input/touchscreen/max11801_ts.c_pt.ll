; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/max11801_ts.c_pt.bc'
source_filename = "../drivers/input/touchscreen/max11801_ts.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max11801_data = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_max11801_ts__288_237_max11801_ts_driver_init6 = internal global ptr @max11801_ts_driver_init, section ".initcall6.init", align 4
@max11801_ts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max11801_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max11801_ts_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max11801_ts_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max11801_ts_driver_exit = internal global ptr @max11801_ts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [63 x i8] c"max11801_ts.author=Zhang Jiejing <jiejing.zhang@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [72 x i8] c"max11801_ts.description=Touchscreen driver for MAXI MAX11801 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"max11801_ts.file=drivers/input/touchscreen/max11801_ts\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"max11801_ts.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max11801_ts\00", [20 x i8] zeroinitializer }, align 32
@max11801_ts_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max11801\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max11801_ts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max11801\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max11801_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 181, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to allocate memory\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max11801_ts_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/max11801_ts.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max11801_ts_probe._entry_ptr = internal global ptr @max11801_ts_probe._entry, section ".printk_index", align 4
@max11801_ts_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 205, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register interrupt\0A\00", [34 x i8] zeroinitializer }, align 32
@max11801_ts_probe._entry_ptr.8 = internal global ptr @max11801_ts_probe._entry.6, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"max11801_ts_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 228, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 230, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"max11801_ts_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 222, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"max11801_ts_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 216, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 181, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [43 x i8] c"../drivers/input/touchscreen/max11801_ts.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 205, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_max11801_ts_driver_exit, ptr @__initcall__kmod_max11801_ts__288_237_max11801_ts_driver_init6, ptr @max11801_ts_driver_exit, ptr @max11801_ts_probe._entry, ptr @max11801_ts_probe._entry.6, ptr @max11801_ts_probe._entry_ptr, ptr @max11801_ts_probe._entry_ptr.8, ptr @max11801_ts_driver, ptr @.str, ptr @max11801_ts_dt_ids, ptr @max11801_ts_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11801_ts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11801_ts_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11801_ts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11801_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max11801_ts_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max11801_ts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max11801_ts_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max11801_ts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @max11801_ts_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max11801_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #5
  %call2 = tail call ptr @devm_input_allocate_device(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call.i, null
  %tobool3.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %input_dev6 = getelementptr inbounds %struct.max11801_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %input_dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %input_dev6, align 4
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %call2, align 8
  %id7 = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %id7 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 24, ptr %id7, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call2, i32 0, i32 5
  %5 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %evbit, align 4
  %or.i53 = or i32 %6, 10
  store i32 %or.i53, ptr %evbit, align 4
  %add.ptr.i = getelementptr %struct.input_dev, ptr %call2, i32 0, i32 6, i32 10
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %or.i54 = or i32 %8, 1024
  store i32 %or.i54, ptr %add.ptr.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 0, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  tail call void @input_set_abs_params(ptr noundef nonnull %call2, i32 noundef 1, i32 noundef 0, i32 noundef 4095, i32 noundef 0, i32 noundef 0) #5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %call.i12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 10, i8 noundef zeroext 17) #5
  %call.i13.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 14, i8 noundef zeroext 16) #5
  %call.i14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 16, i8 noundef zeroext -86) #5
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 18, i8 noundef zeroext 51) #5
  %call.i16.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 22, i8 noundef zeroext 54) #5
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call14 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %12, ptr noundef null, ptr noundef nonnull @max11801_ts_interrupt, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end21:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %input_dev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev6, align 4
  %call23 = tail call i32 @input_register_device(ptr noundef %14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end19, %do.end
  %retval.0 = phi i32 [ %call14, %do.end19 ], [ -12, %do.end ], [ %call23, %if.end21 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max11801_ts_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #5
  %6 = and i32 %call.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then:                                          ; preds = %entry
  %7 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_id, align 4
  %call.i75 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 0) #5
  %call6 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext -96, i8 noundef zeroext 4, ptr noundef nonnull %buf) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call6)
  %cmp = icmp slt i32 %call6, 4
  br i1 %cmp, label %if.then.out_crit_edge, label %for.body.preheader

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.preheader:                               ; preds = %if.then
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 1
  %conv11 = zext i8 %10 to i32
  %and12 = and i32 %conv11, 12
  %11 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and12, label %for.body.preheader.for.inc_crit_edge [
    i32 0, label %if.then15
    i32 4, label %if.then28
  ]

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then15:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buf, align 4
  %conv17 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv17, 4
  %14 = lshr i32 %conv11, 4
  %add21 = or i32 %shl, %14
  br label %for.inc

if.then28:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 4
  %conv30 = zext i8 %16 to i32
  %shl31 = shl nuw nsw i32 %conv30, 4
  %17 = lshr i32 %conv11, 4
  %add36 = or i32 %shl31, %17
  br label %for.inc

for.inc:                                          ; preds = %if.then28, %if.then15, %for.body.preheader.for.inc_crit_edge
  %x.1 = phi i32 [ %add21, %if.then15 ], [ -1, %if.then28 ], [ -1, %for.body.preheader.for.inc_crit_edge ]
  %y.1 = phi i32 [ -1, %if.then15 ], [ %add36, %if.then28 ], [ -1, %for.body.preheader.for.inc_crit_edge ]
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %4, align 1
  %conv11.1 = zext i8 %19 to i32
  %and12.1 = and i32 %conv11.1, 12
  %20 = zext i32 %and12.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %and12.1, label %for.inc.for.inc.1_crit_edge [
    i32 0, label %if.then15.1
    i32 4, label %if.then28.1
  ]

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then28.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %3, align 2
  %conv30.1 = zext i8 %22 to i32
  %shl31.1 = shl nuw nsw i32 %conv30.1, 4
  %23 = lshr i32 %conv11.1, 4
  %add36.1 = or i32 %shl31.1, %23
  br label %for.inc.1

if.then15.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %3, align 2
  %conv17.1 = zext i8 %25 to i32
  %shl.1 = shl nuw nsw i32 %conv17.1, 4
  %26 = lshr i32 %conv11.1, 4
  %add21.1 = or i32 %shl.1, %26
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then15.1, %if.then28.1, %for.inc.for.inc.1_crit_edge
  %x.1.1 = phi i32 [ %add21.1, %if.then15.1 ], [ %x.1, %if.then28.1 ], [ %x.1, %for.inc.for.inc.1_crit_edge ]
  %y.1.1 = phi i32 [ %y.1, %if.then15.1 ], [ %add36.1, %if.then28.1 ], [ %y.1, %for.inc.for.inc.1_crit_edge ]
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %2, align 1
  %29 = and i8 %28, 3
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %32)
  %cmp46.not = icmp eq i8 %29, %32
  br i1 %cmp46.not, label %if.end49, label %for.inc.1.out_crit_edge

for.inc.1.out_crit_edge:                          ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end49:                                         ; preds = %for.inc.1
  %and42 = zext i8 %29 to i32
  %33 = zext i32 %and42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and42, label %if.end49.out_crit_edge [
    i32 0, label %if.end49.sw.bb_crit_edge
    i32 1, label %if.end49.sw.bb_crit_edge83
    i32 2, label %sw.bb56
  ]

if.end49.sw.bb_crit_edge83:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end49.sw.bb_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end49.sw.bb_crit_edge, %if.end49.sw.bb_crit_edge83
  %input_dev = getelementptr inbounds %struct.max11801_data, ptr %dev_id, i32 0, i32 1
  %34 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %35, i32 noundef 3, i32 noundef 0, i32 noundef %x.1.1) #5
  %36 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %37, i32 noundef 3, i32 noundef 1, i32 noundef %y.1.1) #5
  br label %out.sink.split

sw.bb56:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %input_dev57 = getelementptr inbounds %struct.max11801_data, ptr %dev_id, i32 0, i32 1
  br label %out.sink.split

out.sink.split:                                   ; preds = %sw.bb56, %sw.bb
  %input_dev57.sink82 = phi ptr [ %input_dev57, %sw.bb56 ], [ %input_dev, %sw.bb ]
  %.sink81 = phi i32 [ 0, %sw.bb56 ], [ 1, %sw.bb ]
  %38 = ptrtoint ptr %input_dev57.sink82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %input_dev57.sink82, align 4
  call void @input_event(ptr noundef %39, i32 noundef 1, i32 noundef 330, i32 noundef %.sink81) #5
  %40 = ptrtoint ptr %input_dev57.sink82 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input_dev57.sink82, align 4
  call void @input_event(ptr noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %out.sink.split, %if.end49.out_crit_edge, %for.inc.1.out_crit_edge, %if.then.out_crit_edge, %entry.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_max11801_ts__288_237_max11801_ts_driver_init6, !1, !"__initcall__kmod_max11801_ts__288_237_max11801_ts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 237, i32 1}
!2 = !{ptr @__exitcall_max11801_ts_driver_exit, !1, !"__exitcall_max11801_ts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 239, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 240, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 241, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 230, i32 11}
!12 = !{ptr @max11801_ts_driver, !13, !"max11801_ts_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 228, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 181, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max11801_ts_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max11801_ts_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 205, i32 3}
!24 = !{ptr @max11801_ts_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @max11801_ts_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @max11801_ts_dt_ids, !27, !"max11801_ts_dt_ids", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 222, i32 34}
!28 = !{ptr @max11801_ts_id, !29, !"max11801_ts_id", i1 false, i1 false}
!29 = !{!"../drivers/input/touchscreen/max11801_ts.c", i32 216, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
