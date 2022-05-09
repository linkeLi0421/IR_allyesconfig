; ModuleID = '/llk/IR_all_yes/drivers/iio/pressure/zpa2326_spi.c_pt.bc'
source_filename = "../drivers/iio/pressure/zpa2326_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__initcall__kmod_zpa2326_spi__232_89_zpa2326_spi_driver_init6 = internal global ptr @zpa2326_spi_driver_init, section ".initcall6.init", align 4
@zpa2326_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @zpa2326_spi_ids, ptr @zpa2326_probe_spi, ptr @zpa2326_remove_spi, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zpa2326_spi_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zpa2326_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_zpa2326_spi_driver_exit = internal global ptr @zpa2326_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [60 x i8] c"zpa2326_spi.author=Gregor Boirie <gregor.boirie@parrot.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [70 x i8] c"zpa2326_spi.description=SPI driver for Murata ZPA2326 pressure sensor\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [50 x i8] c"zpa2326_spi.file=drivers/iio/pressure/zpa2326_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [27 x i8] c"zpa2326_spi.license=GPL v2\00", section ".modinfo", align 1
@zpa2326_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"zpa2326\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zpa2326-spi\00", [20 x i8] zeroinitializer }, align 32
@zpa2326_spi_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"murata,zpa2326\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zpa2326_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@zpa2326_probe_spi._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@zpa2326_regmap_spi_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @zpa2326_isreg_writeable, ptr @zpa2326_isreg_readable, ptr null, ptr @zpa2326_isreg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 44, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 192, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"zpa2326_spi:37:(&zpa2326_regmap_spi_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@zpa2326_probe_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 39, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to init registers map\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zpa2326_probe_spi\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iio/pressure/zpa2326_spi.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zpa2326_probe_spi._entry_ptr = internal global ptr @zpa2326_probe_spi._entry, section ".printk_index", align 4
@___asan_gen_.7 = private unnamed_addr constant [19 x i8] c"zpa2326_spi_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 79, i32 26 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"zpa2326_spi_ids\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 67, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 81, i32 21 }
@___asan_gen_.16 = private unnamed_addr constant [20 x i8] c"zpa2326_spi_matches\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 73, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"zpa2326_regmap_spi_config\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 21, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 37, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [38 x i8] c"../drivers/iio/pressure/zpa2326_spi.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 39, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_zpa2326_spi_driver_exit, ptr @__initcall__kmod_zpa2326_spi__232_89_zpa2326_spi_driver_init6, ptr @zpa2326_probe_spi._entry, ptr @zpa2326_probe_spi._entry_ptr, ptr @zpa2326_spi_driver_exit, ptr @zpa2326_spi_driver, ptr @zpa2326_spi_ids, ptr @.str, ptr @zpa2326_spi_matches, ptr @zpa2326_probe_spi._key, ptr @zpa2326_regmap_spi_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_spi_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_probe_spi._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_regmap_spi_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zpa2326_probe_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @zpa2326_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zpa2326_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @zpa2326_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_probe_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @zpa2326_regmap_spi_config, ptr noundef nonnull @zpa2326_probe_spi._key, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %mode, align 8
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %2 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed_hz, align 8
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 1000000)
  %5 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %max_speed_hz, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %6 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %bits_per_word, align 1
  %call5 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call11 = tail call i32 @zpa2326_probe(ptr noundef %spi, ptr noundef %call10, i32 noundef %8, i32 noundef 185, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call11, %if.end8 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zpa2326_remove_spi(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @zpa2326_remove(ptr noundef %spi) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zpa2326_probe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpa2326_isreg_writeable(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpa2326_isreg_readable(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @zpa2326_isreg_precious(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @zpa2326_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_zpa2326_spi__232_89_zpa2326_spi_driver_init6, !1, !"__initcall__kmod_zpa2326_spi__232_89_zpa2326_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 89, i32 1}
!2 = !{ptr @__exitcall_zpa2326_spi_driver_exit, !1, !"__exitcall_zpa2326_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 91, i32 1}
!5 = !{ptr @__UNIQUE_ID_description234, !6, !"__UNIQUE_ID_description234", i1 false, i1 false}
!6 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 92, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 93, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 81, i32 21}
!12 = !{ptr @zpa2326_spi_driver, !13, !"zpa2326_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 79, i32 26}
!14 = !{ptr @zpa2326_spi_ids, !15, !"zpa2326_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 67, i32 35}
!16 = !{ptr @zpa2326_probe_spi._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 37, i32 11}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 39, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @zpa2326_probe_spi._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @zpa2326_probe_spi._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @zpa2326_regmap_spi_config, !28, !"zpa2326_regmap_spi_config", i1 false, i1 false}
!28 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 21, i32 35}
!29 = !{ptr @zpa2326_spi_matches, !30, !"zpa2326_spi_matches", i1 false, i1 false}
!30 = !{!"../drivers/iio/pressure/zpa2326_spi.c", i32 73, i32 34}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
