; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-ds1347.c_pt.bc'
source_filename = "../drivers/rtc/rtc-ds1347.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.list_head = type { ptr, ptr }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_ds1347__234_179_ds1347_driver_init6 = internal global ptr @ds1347_driver_init, section ".initcall6.init", align 4
@ds1347_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @ds1347_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ds1347_driver_exit = internal global ptr @ds1347_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [45 x i8] c"rtc_ds1347.description=DS1347 SPI RTC DRIVER\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [64 x i8] c"rtc_ds1347.author=Raghavendra C Ganiga <ravi23ganiga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [39 x i8] c"rtc_ds1347.file=drivers/rtc/rtc-ds1347\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [26 x i8] c"rtc_ds1347.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1347\00", [25 x i8] zeroinitializer }, align 32
@ds1347_access_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @ds1347_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ds1347_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtc_ds1347:147:(&config)->lock\00", [33 x i8] zeroinitializer }, align 32
@ds1347_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ds1347 regmap init spi failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ds1347_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rtc/rtc-ds1347.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ds1347_probe._entry_ptr = internal global ptr @ds1347_probe._entry, section ".printk_index", align 4
@ds1347_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @ds1347_read_time, ptr @ds1347_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@ds1347_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 1, i32 23 }], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ds1347_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 172, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 174, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"ds1347_access_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 45, i32 41 }
@___asan_gen_.16 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 147, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 150, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"ds1347_rtc_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 123, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"ds1347_ranges\00", align 1
@___asan_gen_.44 = private constant [28 x i8] c"../drivers/rtc/rtc-ds1347.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 38, i32 34 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_ds1347_driver_exit, ptr @__initcall__kmod_rtc_ds1347__234_179_ds1347_driver_init6, ptr @ds1347_driver_exit, ptr @ds1347_probe._entry, ptr @ds1347_probe._entry_ptr, ptr @ds1347_driver, ptr @.str, ptr @ds1347_access_table, ptr @ds1347_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ds1347_rtc_ops, ptr @ds1347_ranges], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_access_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1347_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1347_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ds1347_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1347_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ds1347_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1347_probe(ptr noundef %spi) #2 align 64 {
entry:
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #6
  %0 = call ptr @memset(ptr %config, i32 0, i32 172)
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %1 = ptrtoint ptr %reg_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %reg_bits, align 4
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %2 = ptrtoint ptr %val_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %val_bits, align 4
  %read_flag_mask = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 31
  %3 = ptrtoint ptr %read_flag_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 128, ptr %read_flag_mask, align 4
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 19
  %4 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 63, ptr %max_register, align 4
  %wr_table = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 20
  %5 = ptrtoint ptr %wr_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @ds1347_access_table, ptr %wr_table, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %bits_per_word, align 1
  %call = tail call i32 @spi_setup(ptr noundef %spi) #6
  %call1 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull %config, ptr noundef nonnull @ds1347_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #9
  %8 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call1, ptr %driver_data.i.i, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %call1, i32 noundef 15, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = call ptr @devm_rtc_allocate_device(ptr noundef %spi) #6
  %cmp.i32 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call8, i32 0, i32 3
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ds1347_rtc_ops, ptr %ops, align 8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call8, i32 0, i32 22
  %12 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -62167219200, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call8, i32 0, i32 23
  %13 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 253402300799, ptr %range_max, align 8
  %call13 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %do.end ], [ %10, %if.then10 ], [ %call13, %if.end12 ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1347_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %dt) #2 align 64 {
entry:
  %status = alloca i32, align 4
  %century = alloca i32, align 4
  %secs = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %century) #6
  %3 = ptrtoint ptr %century to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %century, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secs) #6
  %4 = ptrtoint ptr %secs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %secs, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %10 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %buf, align 8
  %call1 = call i32 @regmap_read(ptr noundef %1, i32 noundef 23, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end.do.body_crit_edge
  %call5 = call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef 63, ptr noundef nonnull %buf, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.body
  %call9 = call i32 @regmap_read(ptr noundef %1, i32 noundef 19, ptr noundef nonnull %century) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @regmap_read(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %secs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.cond, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.cond:                                          ; preds = %if.end12
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 8
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %secs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %secs, align 4
  %cmp.not = icmp eq i32 %17, %conv
  br i1 %cmp.not, label %cond.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cond.end:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 @_bcd2bin(i8 noundef zeroext %15) #10
  %18 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call25, ptr %dt, align 4
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %21 = and i8 %20, 127
  %call46 = call i32 @_bcd2bin(i8 noundef zeroext %21) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %22 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call46, ptr %tm_min, align 4
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %6, align 2
  %25 = and i8 %24, 63
  %call69 = call i32 @_bcd2bin(i8 noundef zeroext %25) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %26 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call69, ptr %tm_hour, align 4
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %7, align 1
  %call84 = call i32 @_bcd2bin(i8 noundef zeroext %28) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %29 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call84, ptr %tm_mday, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %8, align 4
  %call99 = call i32 @_bcd2bin(i8 noundef zeroext %31) #10
  %sub = add i32 %call99, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %32 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %tm_mon, align 4
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %9, align 1
  %call114 = call i32 @_bcd2bin(i8 noundef zeroext %34) #10
  %sub117 = add i32 %call114, -1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %35 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub117, ptr %tm_wday, align 4
  %36 = ptrtoint ptr %century to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %century, align 4
  %conv118 = trunc i32 %37 to i8
  %call126 = call i32 @_bcd2bin(i8 noundef zeroext %conv118) #10
  %mul129 = mul i32 %call126, 100
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %10, align 2
  %call142 = call i32 @_bcd2bin(i8 noundef zeroext %39) #10
  %add145 = add i32 %mul129, -1900
  %sub146 = add i32 %add145, %call142
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %40 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub146, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call5, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secs) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %century) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1347_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dt) #2 align 64 {
entry:
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #6
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 23, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %cond.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %entry
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %6 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %7 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %dt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dt, align 4
  %call5 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #10
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call5, ptr %buf, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 1
  %12 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tm_min, align 4
  %call18 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #10
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call18, ptr %8, align 1
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 2
  %15 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tm_hour, align 4
  %call34 = tail call zeroext i8 @_bin2bcd(i32 noundef %16) #10
  %conv38 = and i8 %call34, 63
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv38, ptr %7, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 3
  %18 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tm_mday, align 4
  %call50 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #10
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %call50, ptr %6, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 4
  %21 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tm_mon, align 4
  %add56 = add i32 %22, 1
  %call70 = tail call zeroext i8 @_bin2bcd(i32 noundef %add56) #10
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call70, ptr %5, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 6
  %24 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tm_wday, align 4
  %add76 = add i32 %25, 1
  %call90 = tail call zeroext i8 @_bin2bcd(i32 noundef %add76) #10
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %call90, ptr %4, align 1
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %dt, i32 0, i32 5
  %27 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tm_year, align 4
  %rem96 = srem i32 %28, 100
  %call110 = tail call zeroext i8 @_bin2bcd(i32 noundef %rem96) #10
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call110, ptr %3, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %2, align 1
  %call117 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef 63, ptr noundef nonnull %buf, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end120, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end120:                                        ; preds = %cond.end
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tm_year, align 4
  %div122 = sdiv i32 %32, 100
  %add123 = add nsw i32 %div122, 19
  %call124 = call i32 @regmap_write(ptr noundef %1, i32 noundef 19, i32 noundef %add123) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end127:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #8
  %call.i168 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 23, i32 noundef 132, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %if.end120.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i168, %if.end127 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call117, %cond.end.cleanup_crit_edge ], [ %call124, %if.end120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_rtc_ds1347__234_179_ds1347_driver_init6, !1, !"__initcall__kmod_rtc_ds1347__234_179_ds1347_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-ds1347.c", i32 179, i32 1}
!2 = !{ptr @__exitcall_ds1347_driver_exit, !1, !"__exitcall_ds1347_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-ds1347.c", i32 181, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-ds1347.c", i32 182, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-ds1347.c", i32 183, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-ds1347.c", i32 174, i32 11}
!12 = !{ptr @ds1347_driver, !13, !"ds1347_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-ds1347.c", i32 172, i32 26}
!14 = !{ptr @ds1347_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-ds1347.c", i32 147, i32 8}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-ds1347.c", i32 150, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ds1347_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ds1347_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ds1347_access_table, !26, !"ds1347_access_table", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-ds1347.c", i32 45, i32 41}
!27 = !{ptr @ds1347_ranges, !28, !"ds1347_ranges", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-ds1347.c", i32 38, i32 34}
!29 = !{ptr @ds1347_rtc_ops, !30, !"ds1347_rtc_ops", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-ds1347.c", i32 123, i32 35}
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
