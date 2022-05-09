; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-lp8841-rtc.c_pt.bc'
source_filename = "../drivers/spi/spi-lp8841-rtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_lp8841_rtc = type { ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_alias230 = internal constant [45 x i8] c"spi_lp8841_rtc.alias=platform:spi_lp8841_rtc\00", section ".modinfo", align 1
@__initcall__kmod_spi_lp8841_rtc__231_241_spi_lp8841_rtc_driver_init6 = internal global ptr @spi_lp8841_rtc_driver_init, section ".initcall6.init", align 4
@spi_lp8841_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spi_lp8841_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spi_lp8841_rtc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spi_lp8841_rtc_driver_exit = internal global ptr @spi_lp8841_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [69 x i8] c"spi_lp8841_rtc.description=SPI master driver for ICP DAS LP-8841 RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [38 x i8] c"spi_lp8841_rtc.author=Sergei Ianovich\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [47 x i8] c"spi_lp8841_rtc.file=drivers/spi/spi-lp8841-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [27 x i8] c"spi_lp8841_rtc.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_lp8841_rtc\00", [17 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"icpdas,lp8841-spi-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get IO address\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_lp8841_rtc_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-lp8841-rtc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_probe._entry_ptr = internal global ptr @spi_lp8841_rtc_probe._entry, section ".printk_index", align 4
@spi_lp8841_rtc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 219, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot register spi master\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_probe._entry_ptr.8 = internal global ptr @spi_lp8841_rtc_probe._entry.6, section ".printk_index", align 4
@spi_lp8841_rtc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported active low chip select\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi_lp8841_rtc_setup\00", [43 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_setup._entry_ptr = internal global ptr @spi_lp8841_rtc_setup._entry, section ".printk_index", align 4
@spi_lp8841_rtc_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported MSB first mode\0A\00", [36 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_setup._entry_ptr.13 = internal global ptr @spi_lp8841_rtc_setup._entry.11, section ".printk_index", align 4
@spi_lp8841_rtc_setup._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 166, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported wiring. 3 wires required\0A\00", [58 x i8] zeroinitializer }, align 32
@spi_lp8841_rtc_setup._entry_ptr.16 = internal global ptr @spi_lp8841_rtc_setup._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"spi_lp8841_rtc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 234, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 236, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"spi_lp8841_rtc_dt_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 174, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 212, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 219, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 156, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 161, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [32 x i8] c"../drivers/spi/spi-lp8841-rtc.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 166, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_spi_lp8841_rtc_driver_exit, ptr @__initcall__kmod_spi_lp8841_rtc__231_241_spi_lp8841_rtc_driver_init6, ptr @spi_lp8841_rtc_driver_exit, ptr @spi_lp8841_rtc_probe._entry, ptr @spi_lp8841_rtc_probe._entry.6, ptr @spi_lp8841_rtc_probe._entry_ptr, ptr @spi_lp8841_rtc_probe._entry_ptr.8, ptr @spi_lp8841_rtc_setup._entry, ptr @spi_lp8841_rtc_setup._entry.11, ptr @spi_lp8841_rtc_setup._entry.14, ptr @spi_lp8841_rtc_setup._entry_ptr, ptr @spi_lp8841_rtc_setup._entry_ptr.13, ptr @spi_lp8841_rtc_setup._entry_ptr.16, ptr @spi_lp8841_rtc_driver, ptr @.str, ptr @spi_lp8841_rtc_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_lp8841_rtc_setup._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_lp8841_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spi_lp8841_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spi_lp8841_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @spi_lp8841_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_lp8841_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 8, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %flags, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 28, ptr %mode_bits, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  %conv = trunc i32 %4 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @spi_lp8841_rtc_setup, ptr %setup, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %8 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @spi_lp8841_rtc_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @spi_lp8841_rtc_transfer_one, ptr %transfer_one, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %13 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node3, align 8
  %driver_data.i.i47 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i47, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5, ptr %15, align 4
  %cmp.i.i.not = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call5 to i32
  br label %spi_controller_put.exit

if.end11:                                         ; preds = %if.end
  %call13 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end11.spi_controller_put.exit_crit_edge

if.end11.spi_controller_put.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end11.spi_controller_put.exit_crit_edge, %do.end
  %.str.7.sink = phi ptr [ @.str.1, %do.end ], [ @.str.7, %if.end11.spi_controller_put.exit_crit_edge ]
  %ret.0 = phi i32 [ %17, %do.end ], [ %call13, %if.end11.spi_controller_put.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.7.sink) #9
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_lp8841_rtc_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp3 = icmp eq i32 %and2, 0
  br i1 %cmp3, label %if.end.return.sink.split_crit_edge, label %if.end8

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

if.end8:                                          ; preds = %if.end
  %and10 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.end8.return.sink.split_crit_edge, label %if.end8.return_crit_edge

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8.return.sink.split_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end8.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.15.sink = phi ptr [ @.str.9, %entry.return.sink.split_crit_edge ], [ @.str.12, %if.end.return.sink.split_crit_edge ], [ @.str.15, %if.end8.return.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull %.str.15.sink) #9
  br label %return

return:                                           ; preds = %return.sink.split, %if.end8.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spi_lp8841_rtc_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %state = getelementptr inbounds %struct.spi_lp8841_rtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 %conv) #6, !srcloc !53
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 4, i32 noundef 5, i32 noundef 2) #6
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %conv7 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %conv7) #6, !srcloc !53
  tail call void @usleep_range_state(i32 noundef 4, i32 noundef 5, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spi_lp8841_rtc_transfer_one(ptr noundef %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.spi_lp8841_rtc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, -5
  store i32 %and, ptr %state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %conv = trunc i32 %11 to i8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 %conv) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not53 = icmp eq i32 %3, 0
  br i1 %cmp.not53, label %if.then.if.end33_crit_edge, label %if.then.while.body_crit_edge, !prof !56

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.if.end33_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then.while.body_crit_edge
  %tx.055 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %5, %if.then.while.body_crit_edge ]
  %count.054 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %3, %if.then.while.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %tx.055, i32 1
  %14 = ptrtoint ptr %tx.055 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx.055, align 1
  %conv5 = zext i8 %15 to i32
  %16 = tail call fastcc i32 @bitbang_txrx_be_cpha0_lsb(ptr noundef %1, i32 noundef 2, i32 noundef %conv5)
  %dec = add i32 %count.054, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %while.body.if.end33_crit_edge, label %while.body.while.body_crit_edge, !prof !56

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.if.end33_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else:                                          ; preds = %entry
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.else.if.end33_crit_edge, label %if.then8

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then8:                                         ; preds = %if.else
  %state9 = getelementptr inbounds %struct.spi_lp8841_rtc, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state9, align 4
  %or = or i32 %18, 4
  store i32 %or, ptr %state9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state9, align 4
  %conv14 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %conv14) #6, !srcloc !53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not56 = icmp eq i32 %3, 0
  br i1 %cmp17.not56, label %if.then8.if.end33_crit_edge, label %if.then8.for.body.i.preheader_crit_edge, !prof !56

if.then8.for.body.i.preheader_crit_edge:          ; preds = %if.then8
  br label %for.body.i.preheader

if.then8.if.end33_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

for.body.i.preheader:                             ; preds = %bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge, %if.then8.for.body.i.preheader_crit_edge
  %word.059 = phi i32 [ %shr14.i, %bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge ], [ 0, %if.then8.for.body.i.preheader_crit_edge ]
  %rx.058 = phi ptr [ %incdec.ptr29, %bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge ], [ %7, %if.then8.for.body.i.preheader_crit_edge ]
  %count.157 = phi i32 [ %dec30, %bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge ], [ %3, %if.then8.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %bits.addr.013.i = phi i8 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ 8, %for.body.i.preheader ]
  %word.addr.011.i = phi i32 [ %or.i, %for.body.i.for.body.i_crit_edge ], [ %word.059, %for.body.i.preheader ]
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %and.i1.i = zext i8 %25 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %and.i1.i, i32 %word.addr.011.i, i32 31)
  %26 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state9, align 4
  %or.sink.i4.i = or i32 %27, 2
  store i32 %or.sink.i4.i, ptr %state9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %state9, align 4
  %conv.i6.i = trunc i32 %29 to i8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %conv.i6.i) #6, !srcloc !53
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %32 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state9, align 4
  %and.i8.i = and i32 %33, -3
  store i32 %and.i8.i, ptr %state9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state9, align 4
  %conv.i10.i = trunc i32 %35 to i8
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %conv.i10.i) #6, !srcloc !53
  %dec.i = add nsw i8 %bits.addr.013.i, -1
  %tobool.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool.not.i, label %bitbang_txrx_be_cpha0_lsb.exit, label %for.body.i.for.body.i_crit_edge, !prof !56

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

bitbang_txrx_be_cpha0_lsb.exit:                   ; preds = %for.body.i
  %shr14.i = lshr i32 %or.i, 24
  %conv28 = trunc i32 %shr14.i to i8
  %incdec.ptr29 = getelementptr i8, ptr %rx.058, i32 1
  %38 = ptrtoint ptr %rx.058 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv28, ptr %rx.058, align 1
  %dec30 = add i32 %count.157, -1
  %cmp17.not = icmp eq i32 %dec30, 0
  br i1 %cmp17.not, label %bitbang_txrx_be_cpha0_lsb.exit.if.end33_crit_edge, label %bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge, !prof !56

bitbang_txrx_be_cpha0_lsb.exit.for.body.i.preheader_crit_edge: ; preds = %bitbang_txrx_be_cpha0_lsb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

bitbang_txrx_be_cpha0_lsb.exit.if.end33_crit_edge: ; preds = %bitbang_txrx_be_cpha0_lsb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %bitbang_txrx_be_cpha0_lsb.exit.if.end33_crit_edge, %if.then8.if.end33_crit_edge, %if.else.if.end33_crit_edge, %while.body.if.end33_crit_edge, %if.then.if.end33_crit_edge
  %ret.0 = phi i32 [ -22, %if.else.if.end33_crit_edge ], [ 0, %if.then8.if.end33_crit_edge ], [ 0, %if.then.if.end33_crit_edge ], [ 0, %bitbang_txrx_be_cpha0_lsb.exit.if.end33_crit_edge ], [ 0, %while.body.if.end33_crit_edge ]
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bitbang_txrx_be_cpha0_lsb(ptr nocapture noundef %data, i32 noundef %flags, i32 noundef %word) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %state1.i = getelementptr inbounds %struct.spi_lp8841_rtc, ptr %data, i32 0, i32 1
  %and5 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %bits.addr.013 = phi i8 [ 8, %entry ], [ %dec, %if.end9.for.body_crit_edge ]
  %word.addr.011 = phi i32 [ %word, %entry ], [ %word.addr.1, %if.end9.for.body_crit_edge ]
  br i1 %cmp, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state1.i, align 4
  %and.i = and i32 %1, -9
  %and4 = shl i32 %word.addr.011, 3
  %2 = and i32 %and4, 8
  %or.sink.i = or i32 %and.i, %2
  store i32 %or.sink.i, ptr %state1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state1.i, align 4
  %conv.i = trunc i32 %4 to i8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv.i) #6, !srcloc !53
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %shr = lshr i32 %word.addr.011, 1
  br i1 %cmp6, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %8) #6, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %10 = and i8 %9, 1
  %and.i1 = zext i8 %10 to i32
  %shl = shl nuw i32 %and.i1, 31
  %or = or i32 %shl, %shr
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %word.addr.1 = phi i32 [ %or, %if.then8 ], [ %shr, %if.end.if.end9_crit_edge ]
  %11 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state1.i, align 4
  %or.sink.i4 = or i32 %12, 2
  store i32 %or.sink.i4, ptr %state1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state1.i, align 4
  %conv.i6 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 %conv.i6) #6, !srcloc !53
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %17 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state1.i, align 4
  %and.i8 = and i32 %18, -3
  store i32 %and.i8, ptr %state1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state1.i, align 4
  %conv.i10 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %conv.i10) #6, !srcloc !53
  %dec = add nsw i8 %bits.addr.013, -1
  %tobool.not = icmp eq i8 %dec, 0
  br i1 %tobool.not, label %for.end, label %if.end9.for.body_crit_edge, !prof !56

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %shr14 = lshr i32 %word.addr.1, 24
  ret i32 %shr14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_alias230, !1, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 232, i32 1}
!2 = !{ptr @__initcall__kmod_spi_lp8841_rtc__231_241_spi_lp8841_rtc_driver_init6, !3, !"__initcall__kmod_spi_lp8841_rtc__231_241_spi_lp8841_rtc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 241, i32 1}
!4 = !{ptr @__exitcall_spi_lp8841_rtc_driver_exit, !3, !"__exitcall_spi_lp8841_rtc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_author233, !8, !"__UNIQUE_ID_author233", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 245, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 236, i32 11}
!14 = !{ptr @spi_lp8841_rtc_driver, !15, !"spi_lp8841_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 234, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 212, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @spi_lp8841_rtc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @spi_lp8841_rtc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 219, i32 3}
!26 = !{ptr @spi_lp8841_rtc_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @spi_lp8841_rtc_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 156, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @spi_lp8841_rtc_setup._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @spi_lp8841_rtc_setup._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 161, i32 3}
!35 = !{ptr @spi_lp8841_rtc_setup._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @spi_lp8841_rtc_setup._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 166, i32 3}
!39 = !{ptr @spi_lp8841_rtc_setup._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @spi_lp8841_rtc_setup._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @spi_lp8841_rtc_dt_ids, !42, !"spi_lp8841_rtc_dt_ids", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-lp8841-rtc.c", i32 174, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2154089445}
!53 = !{i64 6481362}
!54 = !{i64 2154089721}
!55 = !{i64 2154088569}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2154088985}
!58 = !{i64 6481757}
!59 = !{i64 2154013612}
!60 = !{i64 2154087198}
!61 = !{i64 2154087648}
