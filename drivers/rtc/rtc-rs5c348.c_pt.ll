; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-rs5c348.c_pt.bc'
source_filename = "../drivers/rtc/rtc-rs5c348.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rs5c348_plat_data = type { ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_rs5c348__234_210_rs5c348_driver_init6 = internal global ptr @rs5c348_driver_init, section ".initcall6.init", align 4
@rs5c348_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @rs5c348_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rs5c348_driver_exit = internal global ptr @rs5c348_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [56 x i8] c"rtc_rs5c348.author=Atsushi Nemoto <anemo@mba.ocn.ne.jp>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [49 x i8] c"rtc_rs5c348.description=Ricoh RS5C348 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"rtc_rs5c348.file=drivers/rtc/rtc-rs5c348\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [24 x i8] c"rtc_rs5c348.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [34 x i8] c"rtc_rs5c348.alias=spi:rtc-rs5c348\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtc-rs5c348\00", [20 x i8] zeroinitializer }, align 32
@rs5c348_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not found.\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rs5c348_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/rtc/rtc-rs5c348.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rs5c348_probe._entry_ptr = internal global ptr @rs5c348_probe._entry, section ".printk_index", align 4
@rs5c348_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 184, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spiclk %u KHz.\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rs5c348_probe._entry_ptr.9 = internal global ptr @rs5c348_probe._entry.6, section ".printk_index", align 4
@rs5c348_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @rs5c348_rtc_read_time, ptr @rs5c348_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@rs5c348_rtc_read_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 117, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"voltage-low detected.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rs5c348_rtc_read_time\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rs5c348_rtc_read_time._entry_ptr = internal global ptr @rs5c348_rtc_read_time._entry, section ".printk_index", align 4
@rs5c348_rtc_read_time._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 119, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"oscillator-stop detected.\0A\00", [37 x i8] zeroinitializer }, align 32
@rs5c348_rtc_read_time._entry_ptr.15 = internal global ptr @rs5c348_rtc_read_time._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"rs5c348_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 203, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 205, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 179, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 183, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"rs5c348_rtc_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 159, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 117, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [29 x i8] c"../drivers/rtc/rtc-rs5c348.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 119, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_rs5c348_driver_exit, ptr @__initcall__kmod_rtc_rs5c348__234_210_rs5c348_driver_init6, ptr @rs5c348_driver_exit, ptr @rs5c348_probe._entry, ptr @rs5c348_probe._entry.6, ptr @rs5c348_probe._entry_ptr, ptr @rs5c348_probe._entry_ptr.9, ptr @rs5c348_rtc_read_time._entry, ptr @rs5c348_rtc_read_time._entry.13, ptr @rs5c348_rtc_read_time._entry_ptr, ptr @rs5c348_rtc_read_time._entry_ptr.15, ptr @rs5c348_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @rs5c348_rtc_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_rtc_read_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rs5c348_rtc_read_time._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c348_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @rs5c348_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rs5c348_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @rs5c348_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c348_probe(ptr noundef %spi) #2 align 64 {
entry:
  %cmd.addr.i49 = alloca i8, align 1
  %result.i50 = alloca i8, align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %1 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 12, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %result.i, align 1, !annotation !50
  %call.i48 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i = icmp slt i32 %call.i48, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %do.end

spi_w8r8.exit:                                    ; preds = %if.end
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %and = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end9, label %spi_w8r8.exit.do.end_crit_edge

spi_w8r8.exit.do.end_crit_edge:                   ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %spi_w8r8.exit.do.end_crit_edge, %spi_w8r8.exit.thread
  %cond.i63 = phi i32 [ %call.i48, %spi_w8r8.exit.thread ], [ %conv.i, %spi_w8r8.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

do.end9:                                          ; preds = %spi_w8r8.exit
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %5 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_speed_hz, align 8
  %add = add i32 %6, 500
  %div = udiv i32 %add, 1000
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %div) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i49)
  %7 = ptrtoint ptr %cmd.addr.i49 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -20, ptr %cmd.addr.i49, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i50) #6
  %8 = ptrtoint ptr %result.i50 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %result.i50, align 1, !annotation !50
  %call.i51 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i49, i32 noundef 1, ptr noundef nonnull %result.i50, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %spi_w8r8.exit56.thread, label %spi_w8r8.exit56

spi_w8r8.exit56.thread:                           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i49)
  br label %cleanup

spi_w8r8.exit56:                                  ; preds = %do.end9
  %9 = ptrtoint ptr %result.i50 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %result.i50, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i50) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i49)
  %11 = and i8 %10, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool16.not = icmp eq i8 %11, 0
  br i1 %tobool16.not, label %spi_w8r8.exit56.if.end18_crit_edge, label %if.then17

spi_w8r8.exit56.if.end18_crit_edge:               ; preds = %spi_w8r8.exit56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %spi_w8r8.exit56
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_24h = getelementptr inbounds %struct.rs5c348_plat_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %rtc_24h to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %rtc_24h, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %spi_w8r8.exit56.if.end18_crit_edge
  %call20 = call ptr @devm_rtc_allocate_device(ptr noundef %spi) #6
  %cmp.i57 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i57, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call20, i32 0, i32 3
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @rs5c348_rtc_ops, ptr %ops, align 8
  %call26 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call20) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then22, %spi_w8r8.exit56.thread, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i63, %do.end ], [ %13, %if.then22 ], [ %call26, %if.end24 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i51, %spi_w8r8.exit56.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c348_rtc_read_time(ptr noundef %dev, ptr nocapture noundef writeonly %tm) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %txbuf = alloca [5 x i8], align 1
  %rxbuf = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %txbuf) #6
  %2 = getelementptr inbounds [5 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %txbuf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %txbuf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %txbuf, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %rxbuf) #6
  %6 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 1
  %7 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 2
  %8 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 3
  %9 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 4
  %10 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 5
  %11 = getelementptr inbounds [7 x i8], ptr %rxbuf, i32 0, i32 6
  %12 = call ptr @memset(ptr %rxbuf, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %13 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -4, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %14 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %result.i, align 1, !annotation !50
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %entry
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %16 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %and = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %spi_w8r8.exit.if.end6_crit_edge, label %do.end

spi_w8r8.exit.if.end6_crit_edge:                  ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %spi_w8r8.exit.if.end6_crit_edge
  %and7 = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -4, ptr %txbuf, align 1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %2, align 1
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -4, ptr %3, align 1
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %4, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %5, align 1
  %call20 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf, i32 noundef 5, ptr noundef nonnull %rxbuf, i32 noundef 7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 13314376) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end14.cleanup_crit_edge, label %cond.end

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end:                                         ; preds = %if.end14
  %23 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rxbuf, align 1
  %25 = and i8 %24, 127
  %call38 = call i32 @_bcd2bin(i8 noundef zeroext %25) #10
  %26 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call38, ptr %tm, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %6, align 1
  %29 = and i8 %28, 127
  %call59 = call i32 @_bcd2bin(i8 noundef zeroext %29) #10
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %30 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call59, ptr %tm_min, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %7, align 1
  %33 = and i8 %32, 63
  %call82 = call i32 @_bcd2bin(i8 noundef zeroext %33) #10
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %34 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call82, ptr %tm_hour, align 4
  %rtc_24h = getelementptr inbounds %struct.rs5c348_plat_data, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %rtc_24h to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rtc_24h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool85.not = icmp eq i32 %36, 0
  br i1 %tobool85.not, label %if.then86, label %cond.end.cond.end121_crit_edge

cond.end.cond.end121_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end121

if.then86:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = and i8 %32, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool90.not = icmp eq i8 %37, 0
  %sub = add i32 %call82, -20
  %rem = srem i32 %sub, 12
  %add95 = add nsw i32 %rem, 12
  %rem97 = srem i32 %call82, 12
  %add95.sink = select i1 %tobool90.not, i32 %rem97, i32 %add95
  %38 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add95.sink, ptr %tm_hour, align 4
  br label %cond.end121

cond.end121:                                      ; preds = %if.then86, %cond.end.cond.end121_crit_edge
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %8, align 1
  %41 = and i8 %40, 3
  %call120 = call i32 @_bcd2bin(i8 noundef zeroext %41) #10
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %42 = ptrtoint ptr %tm_wday to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call120, ptr %tm_wday, align 4
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %9, align 1
  %45 = and i8 %44, 63
  %call143 = call i32 @_bcd2bin(i8 noundef zeroext %45) #10
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %46 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call143, ptr %tm_mday, align 4
  %47 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %10, align 1
  %49 = and i8 %48, 31
  %call166 = call i32 @_bcd2bin(i8 noundef zeroext %49) #10
  %sub169 = add i32 %call166, -1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %50 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub169, ptr %tm_mon, align 4
  %51 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %11, align 1
  %call182 = call i32 @_bcd2bin(i8 noundef zeroext %52) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %48)
  %tobool188.not = icmp sgt i8 %48, -1
  %cond189 = select i1 %tobool188.not, i32 0, i32 100
  %add190 = add i32 %call182, %cond189
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %53 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add190, ptr %tm_year, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end121, %if.end14.cleanup_crit_edge, %do.end12, %spi_w8r8.exit.thread
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %cond.end121 ], [ %call20, %if.end14.cleanup_crit_edge ], [ %call.i, %spi_w8r8.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %rxbuf) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %txbuf) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rs5c348_rtc_set_time(ptr noundef %dev, ptr nocapture noundef readonly %tm) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %txbuf = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %txbuf) #6
  %2 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 1
  %3 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 2
  %4 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 3
  %5 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 4
  %6 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 5
  %7 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 6
  %8 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 7
  %9 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 8
  %10 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 9
  %11 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 10
  %12 = getelementptr inbounds [12 x i8], ptr %txbuf, i32 0, i32 11
  %13 = call ptr @memset(ptr %txbuf, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %14 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -4, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #6
  %15 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %result.i, align 1, !annotation !50
  %call.i = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %cleanup

spi_w8r8.exit:                                    ; preds = %entry
  %16 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %result.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %18 = and i8 %17, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %spi_w8r8.exit.if.end10_crit_edge, label %if.then4

spi_w8r8.exit.if.end10_crit_edge:                 ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4:                                         ; preds = %spi_w8r8.exit
  %19 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -8, ptr %txbuf, align 1
  %20 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %2, align 1
  %call6 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf, i32 noundef 2, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then4.cleanup_crit_edge, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %spi_w8r8.exit.if.end10_crit_edge
  %21 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -4, ptr %txbuf, align 1
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %2, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -4, ptr %3, align 1
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %4, align 1
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %5, align 1
  %26 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tm, align 4
  %call21 = call zeroext i8 @_bin2bcd(i32 noundef %27) #10
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call21, ptr %6, align 1
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %29 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tm_min, align 4
  %call35 = call zeroext i8 @_bin2bcd(i32 noundef %30) #10
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call35, ptr %7, align 1
  %rtc_24h = getelementptr inbounds %struct.rs5c348_plat_data, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %rtc_24h to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rtc_24h, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool41.not = icmp eq i32 %33, 0
  %tm_hour59 = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %34 = ptrtoint ptr %tm_hour59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_hour59, align 4
  br i1 %tobool41.not, label %cond.end84, label %cond.false51

cond.false51:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call53 = call zeroext i8 @_bin2bcd(i32 noundef %35) #10
  br label %if.end92

cond.end84:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %add60 = add i32 %35, 11
  %rem61 = srem i32 %add60, 12
  %add62 = add nsw i32 %rem61, 1
  %call82 = call zeroext i8 @_bin2bcd(i32 noundef %add62) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %35)
  %cmp87 = icmp sgt i32 %35, 11
  %cond89 = select i1 %cmp87, i8 32, i8 0
  %or = or i8 %call82, %cond89
  br label %if.end92

if.end92:                                         ; preds = %cond.end84, %cond.false51
  %storemerge.in = phi i8 [ %or, %cond.end84 ], [ %call53, %cond.false51 ]
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %storemerge.in, ptr %8, align 1
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 6
  %37 = ptrtoint ptr %tm_wday to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm_wday, align 4
  %call103 = call zeroext i8 @_bin2bcd(i32 noundef %38) #10
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %call103, ptr %9, align 1
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %40 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_mday, align 4
  %call119 = call zeroext i8 @_bin2bcd(i32 noundef %41) #10
  %42 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %call119, ptr %10, align 1
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %43 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_mon, align 4
  %add125 = add i32 %44, 1
  %call139 = call zeroext i8 @_bin2bcd(i32 noundef %add125) #10
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %45 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tm_year, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %46)
  %cmp143 = icmp sgt i32 %46, 99
  %cond145 = select i1 %cmp143, i8 -128, i8 0
  %or146 = or i8 %cond145, %call139
  %47 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or146, ptr %11, align 1
  %rem150 = srem i32 %46, 100
  %call164 = call zeroext i8 @_bin2bcd(i32 noundef %rem150) #10
  %48 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %call164, ptr %12, align 1
  %call171 = call i32 @spi_write_then_read(ptr noundef %dev, ptr noundef nonnull %txbuf, i32 noundef 12, ptr noundef null, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 13314376) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.then4.cleanup_crit_edge, %spi_w8r8.exit.thread
  %retval.0 = phi i32 [ %call171, %if.end92 ], [ %call6, %if.then4.cleanup_crit_edge ], [ %call.i, %spi_w8r8.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %txbuf) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_rtc_rs5c348__234_210_rs5c348_driver_init6, !1, !"__initcall__kmod_rtc_rs5c348__234_210_rs5c348_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 210, i32 1}
!2 = !{ptr @__exitcall_rs5c348_driver_exit, !1, !"__exitcall_rs5c348_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 212, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 213, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 214, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 215, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 205, i32 11}
!14 = !{ptr @rs5c348_driver, !15, !"rs5c348_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 203, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 179, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rs5c348_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rs5c348_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 183, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rs5c348_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @rs5c348_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @rs5c348_rtc_ops, !30, !"rs5c348_rtc_ops", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 159, i32 35}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 117, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rs5c348_rtc_read_time._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @rs5c348_rtc_read_time._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-rs5c348.c", i32 119, i32 3}
!39 = !{ptr @rs5c348_rtc_read_time._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rs5c348_rtc_read_time._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"auto-init"}
