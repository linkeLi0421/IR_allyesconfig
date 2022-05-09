; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/mchp23k256.c_pt.bc'
source_filename = "../drivers/mtd/devices/mchp23k256.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mchp23_caps = type { i8, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.mchp23k256_flash = type { ptr, %struct.mutex, %struct.mtd_info, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }

@__initcall__kmod_mchp23k256__232_243_mchp23k256_driver_init6 = internal global ptr @mchp23k256_driver_init, section ".initcall6.init", align 4
@mchp23k256_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @mchp23k256_probe, ptr @mchp23k256_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mchp23k256_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mchp23k256_driver_exit = internal global ptr @mchp23k256_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [63 x i8] c"mchp23k256.description=MTD SPI driver for MCHP23K256 RAM chips\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [46 x i8] c"mchp23k256.author=Andrew Lunn <andre@lunn.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [47 x i8] c"mchp23k256.file=drivers/mtd/devices/mchp23k256\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"mchp23k256.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [32 x i8] c"mchp23k256.alias=spi:mchp23k256\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mchp23k256\00", [21 x i8] zeroinitializer }, align 32
@mchp23k256_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mchp23k256\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp23k256_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mchp23lcv1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mchp23lcv1024_caps }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mchp23k256_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&flash->lock\00", [19 x i8] zeroinitializer }, align 32
@mchp23k256_caps = internal constant { %struct.mchp23_caps, [24 x i8] } { %struct.mchp23_caps { i8 2, i32 32768 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/devices/mchp23k256.c\00", [63 x i8] zeroinitializer }, align 32
@mchp23lcv1024_caps = internal constant { %struct.mchp23_caps, [24 x i8] } { %struct.mchp23_caps { i8 3, i32 131072 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"mchp23k256_driver\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 234, i32 26 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 236, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"mchp23k256_of_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 221, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 182, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"mchp23k256_caps\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 161, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 464, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 216, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"mchp23lcv1024_caps\00", align 1
@___asan_gen_.29 = private constant [36 x i8] c"../drivers/mtd/devices/mchp23k256.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 166, i32 33 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_mchp23k256_driver_exit, ptr @__initcall__kmod_mchp23k256__232_243_mchp23k256_driver_init6, ptr @mchp23k256_driver_exit, ptr @mchp23k256_driver, ptr @.str, ptr @mchp23k256_of_table, ptr @mchp23k256_probe.__key, ptr @.str.1, ptr @mchp23k256_caps, ptr @.str.2, ptr @.str.3, ptr @mchp23lcv1024_caps], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp23k256_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp23k256_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp23k256_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp23k256_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mchp23lcv1024_caps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp23k256_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mchp23k256_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mchp23k256_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mchp23k256_driver, i32 0, i32 4)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp23k256_probe(ptr noundef %spi) #2 align 64 {
entry:
  %transfer.i = alloca %struct.spi_transfer, align 4
  %message.i = alloca %struct.spi_message, align 4
  %command.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 1512, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mchp23k256_probe.__key) #4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %transfer.i) #4
  %2 = getelementptr inbounds i8, ptr %transfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message.i) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %command.i) #4
  %4 = getelementptr inbounds [2 x i8], ptr %command.i, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %message.i, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %message.i, ptr %message.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %message.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %message.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %message.i, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %message.i, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %command.i, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %4, align 1
  %13 = ptrtoint ptr %transfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %command.i, ptr %transfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %message.i, ptr noundef nonnull %message.i) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.mchp23k256_set_mode.exit_crit_edge

if.end.mchp23k256_set_mode.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %mchp23k256_set_mode.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %message.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %message.i, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %message.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i, ptr %message.i, align 4
  br label %mchp23k256_set_mode.exit

mchp23k256_set_mode.exit:                         ; preds = %if.end.i.i.i.i, %if.end.mchp23k256_set_mode.exit_crit_edge
  %call.i69 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %message.i) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %command.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message.i) #4
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %transfer.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool3.not = icmp eq i32 %call.i69, 0
  br i1 %tobool3.not, label %if.end5, label %mchp23k256_set_mode.exit.cleanup_crit_edge

mchp23k256_set_mode.exit.cleanup_crit_edge:       ; preds = %mchp23k256_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %mchp23k256_set_mode.exit
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %platform_data.i, align 8
  %call9 = call ptr @of_device_get_match_data(ptr noundef %spi) #4
  %caps = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 3
  %tobool11.not = icmp eq ptr %call9, null
  %spec.select = select i1 %tobool11.not, ptr @mchp23k256_caps, ptr %call9
  %21 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %caps, align 8
  %mtd = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node.i = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 56, i32 27
  %24 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node.i, align 8
  %name.i = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 13
  %25 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end5.mtd_set_of_node.exit_crit_edge

if.end5.mtd_set_of_node.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call.i70 = call i32 @of_property_read_string(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef %name.i) #4
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %if.end5.mtd_set_of_node.exit_crit_edge
  %parent = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 56, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spi, ptr %parent, align 8
  %28 = ptrtoint ptr %mtd to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %mtd, align 8
  %flags = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 7168, ptr %flags, align 4
  %writesize = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %writesize, align 4
  %31 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %caps, align 8
  %size = getelementptr inbounds %struct.mchp23_caps, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size, align 4
  %conv = zext i32 %34 to i64
  %size24 = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %size24 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv, ptr %size24, align 8
  %_read = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 24
  %36 = ptrtoint ptr %_read to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mchp23k256_read, ptr %_read, align 4
  %_write = getelementptr inbounds %struct.mchp23k256_flash, ptr %call.i, i32 0, i32 2, i32 25
  %37 = ptrtoint ptr %_write to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @mchp23k256_write, ptr %_write, align 8
  %tobool28.not = icmp eq ptr %20, null
  br i1 %tobool28.not, label %mtd_set_of_node.exit.cond.end32_crit_edge, label %cond.true30

mtd_set_of_node.exit.cond.end32_crit_edge:        ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end32

cond.true30:                                      ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  %parts = getelementptr inbounds %struct.flash_platform_data, ptr %20, i32 0, i32 1
  %38 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parts, align 4
  %nr_parts = getelementptr inbounds %struct.flash_platform_data, ptr %20, i32 0, i32 2
  %40 = ptrtoint ptr %nr_parts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_parts, align 4
  br label %cond.end32

cond.end32:                                       ; preds = %cond.true30, %mtd_set_of_node.exit.cond.end32_crit_edge
  %cond72 = phi ptr [ %39, %cond.true30 ], [ null, %mtd_set_of_node.exit.cond.end32_crit_edge ]
  %cond33 = phi i32 [ %41, %cond.true30 ], [ 0, %mtd_set_of_node.exit.cond.end32_crit_edge ]
  %call34 = call i32 @mtd_device_parse_register(ptr noundef %mtd, ptr noundef null, ptr noundef null, ptr noundef %cond72, i32 noundef %cond33) #4
  br label %cleanup

cleanup:                                          ; preds = %cond.end32, %mchp23k256_set_mode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call.i69, %mchp23k256_set_mode.exit.cleanup_crit_edge ], [ %call34, %cond.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp23k256_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtd = getelementptr inbounds %struct.mchp23k256_flash, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !38

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 216, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp23k256_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  %message = alloca %struct.spi_message, align 4
  %command = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -96
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command) #4
  %0 = getelementptr inbounds i8, ptr %message, i32 8
  %1 = getelementptr inbounds i8, ptr %command, i32 1
  %2 = call ptr @memset(ptr %1, i32 255, i32 3)
  %3 = call ptr @memset(ptr %0, i32 0, i32 40)
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %caps.i = getelementptr i8, ptr %mtd, i32 1408
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %caps.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %12 = getelementptr inbounds i8, ptr %transfer, i32 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 188)
  %14 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %command, align 1
  %15 = load i8, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp6.not.i = icmp eq i8 %15, 0
  br i1 %cmp6.not.i, label %entry.mchp23k256_addr2cmd.exit_crit_edge, label %for.body.preheader.i

entry.mchp23k256_addr2cmd.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mchp23k256_addr2cmd.exit

for.body.preheader.i:                             ; preds = %entry
  %conv = trunc i64 %from to i32
  %conv.i31 = zext i8 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i31, %for.body.preheader.i ]
  %addr.addr.07.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %conv, %for.body.preheader.i ]
  %conv2.i = trunc i32 %addr.addr.07.i to i8
  %arrayidx.i = getelementptr i8, ptr %command, i32 %i.08.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %dec.i = add nsw i32 %i.08.i, -1
  %shr.i = lshr i32 %addr.addr.07.i, 8
  %cmp.i = icmp ugt i32 %i.08.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mchp23k256_addr2cmd.exit_crit_edge

for.body.i.mchp23k256_addr2cmd.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mchp23k256_addr2cmd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

mchp23k256_addr2cmd.exit:                         ; preds = %for.body.i.mchp23k256_addr2cmd.exit_crit_edge, %entry.mchp23k256_addr2cmd.exit_crit_edge
  %17 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %command, ptr %transfer, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %len4, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge

mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge: ; preds = %mchp23k256_addr2cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %mchp23k256_addr2cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %rx_buf, align 4
  %len8 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len8, align 4
  %transfer_list.i32 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i34 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i32, ptr noundef %26, ptr noundef nonnull %message) #4
  br i1 %call.i.i.i34, label %if.end.i.i.i36, label %spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit37

if.end.i.i.i36:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i32, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %message, ptr %transfer_list.i32, align 4
  %prev3.i.i.i35 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i35, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i32, ptr %26, align 4
  br label %spi_message_add_tail.exit37

spi_message_add_tail.exit37:                      ; preds = %if.end.i.i.i36, %spi_message_add_tail.exit.spi_message_add_tail.exit37_crit_edge
  %lock = getelementptr i8, ptr %mtd, i32 -92
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %call10 = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %message) #4
  call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp ne i32 %call10, 0
  %tobool12.not = icmp eq ptr %retlen, null
  %or.cond = or i1 %tobool12.not, %tobool.not
  br i1 %or.cond, label %spi_message_add_tail.exit37.cleanup_crit_edge, label %land.lhs.true

spi_message_add_tail.exit37.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %spi_message_add_tail.exit37
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 6
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i)
  %cmp = icmp ugt i32 %34, %add.i
  br i1 %cmp, label %if.then14, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.neg = xor i32 %conv.i, -1
  %sub = add i32 %34, %add.i.neg
  %35 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retlen, align 4
  %add = add i32 %sub, %36
  store i32 %add, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true.cleanup_crit_edge, %spi_message_add_tail.exit37.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #4
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mchp23k256_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  %transfer = alloca [2 x %struct.spi_transfer], align 4
  %message = alloca %struct.spi_message, align 4
  %command = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %mtd, i32 -96
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %transfer) #4
  %0 = getelementptr inbounds i8, ptr %transfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command) #4
  %2 = getelementptr inbounds i8, ptr %message, i32 8
  %3 = getelementptr inbounds i8, ptr %command, i32 1
  %4 = call ptr @memset(ptr %3, i32 255, i32 3)
  %5 = call ptr @memset(ptr %2, i32 0, i32 40)
  %6 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %caps.i = getelementptr i8, ptr %mtd, i32 1408
  %10 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %caps.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv.i = zext i8 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %14 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %command, align 1
  %15 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp6.not.i = icmp eq i8 %15, 0
  br i1 %cmp6.not.i, label %entry.mchp23k256_addr2cmd.exit_crit_edge, label %for.body.preheader.i

entry.mchp23k256_addr2cmd.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mchp23k256_addr2cmd.exit

for.body.preheader.i:                             ; preds = %entry
  %conv = trunc i64 %to to i32
  %conv.i32 = zext i8 %15 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %dec.i, %for.body.i.for.body.i_crit_edge ], [ %conv.i32, %for.body.preheader.i ]
  %addr.addr.07.i = phi i32 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %conv, %for.body.preheader.i ]
  %conv2.i = trunc i32 %addr.addr.07.i to i8
  %arrayidx.i = getelementptr i8, ptr %command, i32 %i.08.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv2.i, ptr %arrayidx.i, align 1
  %dec.i = add nsw i32 %i.08.i, -1
  %shr.i = lshr i32 %addr.addr.07.i, 8
  %cmp.i = icmp ugt i32 %i.08.i, 1
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.mchp23k256_addr2cmd.exit_crit_edge

for.body.i.mchp23k256_addr2cmd.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mchp23k256_addr2cmd.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

mchp23k256_addr2cmd.exit:                         ; preds = %for.body.i.mchp23k256_addr2cmd.exit_crit_edge, %entry.mchp23k256_addr2cmd.exit_crit_edge
  %17 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %command, ptr %transfer, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %len4, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge

mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge: ; preds = %mchp23k256_addr2cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %mchp23k256_addr2cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %mchp23k256_addr2cmd.exit.spi_message_add_tail.exit_crit_edge
  %arrayidx6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf, ptr %arrayidx6, align 4
  %len9 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %len9, align 4
  %transfer_list.i33 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i35 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i33, ptr noundef %26, ptr noundef nonnull %message) #4
  br i1 %call.i.i.i35, label %if.end.i.i.i37, label %spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %spi_message_add_tail.exit38

if.end.i.i.i37:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i33, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %message, ptr %transfer_list.i33, align 4
  %prev3.i.i.i36 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %transfer, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i36, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i33, ptr %26, align 4
  br label %spi_message_add_tail.exit38

spi_message_add_tail.exit38:                      ; preds = %if.end.i.i.i37, %spi_message_add_tail.exit.spi_message_add_tail.exit38_crit_edge
  %lock = getelementptr i8, ptr %mtd, i32 -92
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %call11 = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %message) #4
  call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp ne i32 %call11, 0
  %tobool13.not = icmp eq ptr %retlen, null
  %or.cond = or i1 %tobool13.not, %tobool.not
  br i1 %or.cond, label %spi_message_add_tail.exit38.cleanup_crit_edge, label %land.lhs.true

spi_message_add_tail.exit38.cleanup_crit_edge:    ; preds = %spi_message_add_tail.exit38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %spi_message_add_tail.exit38
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 6
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i)
  %cmp = icmp ugt i32 %34, %add.i
  br i1 %cmp, label %if.then15, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %add.i.neg = xor i32 %conv.i, -1
  %sub = add i32 %34, %add.i.neg
  %35 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %retlen, align 4
  %add = add i32 %sub, %36
  store i32 %add, ptr %retlen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %land.lhs.true.cleanup_crit_edge, %spi_message_add_tail.exit38.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %transfer) #4
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__initcall__kmod_mchp23k256__232_243_mchp23k256_driver_init6, !1, !"__initcall__kmod_mchp23k256__232_243_mchp23k256_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 243, i32 1}
!2 = !{ptr @__exitcall_mchp23k256_driver_exit, !1, !"__exitcall_mchp23k256_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 245, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 246, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 247, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias237, !11, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 248, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 236, i32 11}
!14 = !{ptr @mchp23k256_driver, !15, !"mchp23k256_driver", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 234, i32 26}
!16 = !{ptr @mchp23k256_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 182, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mchp23k256_caps, !20, !"mchp23k256_caps", i1 false, i1 false}
!20 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 161, i32 33}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 216, i32 2}
!25 = !{ptr @mchp23k256_of_table, !26, !"mchp23k256_of_table", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 221, i32 34}
!27 = !{ptr @mchp23lcv1024_caps, !28, !"mchp23lcv1024_caps", i1 false, i1 false}
!28 = !{!"../drivers/mtd/devices/mchp23k256.c", i32 166, i32 33}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 2000, i32 1}
