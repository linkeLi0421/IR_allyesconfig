; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-butterfly.c_pt.bc'
source_filename = "../drivers/spi/spi-butterfly.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parport_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, i8, %struct.list_head }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.flash_platform_data = type { ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
%struct.butterfly = type { %struct.spi_bitbang, ptr, ptr, i8, ptr, ptr, [2 x %struct.spi_board_info] }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.parport = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, %struct.device, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.timer_list, i32, ptr, [5 x %struct.parport_device_info], %struct.ieee1284_info, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.rwlock_t, i32, %struct.atomic_t, i32, ptr, %struct.list_head, [3 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.parport_device_info = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1284_info = type { i32, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pardev_cb = type { ptr, ptr, ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.parport_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_butterfly__233_320_butterfly_driver_init6 = internal global ptr @butterfly_driver_init, section ".initcall6.init", align 4
@butterfly_driver = internal global { %struct.parport_driver, [52 x i8] } { %struct.parport_driver { ptr @.str, ptr null, ptr @butterfly_detach, ptr @butterfly_attach, ptr null, %struct.device_driver zeroinitializer, i8 1, %struct.list_head zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_butterfly_driver_exit = internal global ptr @butterfly_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description234 = internal constant [67 x i8] c"spi_butterfly.description=Parport Adapter driver for AVR Butterfly\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [45 x i8] c"spi_butterfly.file=drivers/spi/spi-butterfly\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"spi_butterfly.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_butterfly\00", [18 x i8] zeroinitializer }, align 32
@butterfly = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@butterfly_attach.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 58, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"butterfly_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-butterfly.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: powerup/reset Butterfly\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtd_dataflash\00", [18 x i8] zeroinitializer }, align 32
@flash = internal global { %struct.flash_platform_data, [16 x i8] } { %struct.flash_platform_data { ptr @.str.8, ptr @partitions, i32 2, ptr null }, [16 x i8] zeroinitializer }, align 32
@butterfly_attach.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: dataflash at %s\0A\00", [43 x i8] zeroinitializer }, align 32
@butterfly_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: AVR Butterfly\0A\00", [43 x i8] zeroinitializer }, align 32
@butterfly_attach._entry_ptr = internal global ptr @butterfly_attach._entry, section ".printk_index", align 4
@butterfly_attach.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: butterfly probe, fail %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"butterflash\00", [20 x i8] zeroinitializer }, align 32
@partitions = internal global { [2 x %struct.mtd_partition], [48 x i8] } { [2 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.9, ptr null, i64 67584, i64 0, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.10, ptr null, i64 0, i64 -1, i32 0, i32 0, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bookkeeping\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"filesystem\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"butterfly_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 314, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 320, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"butterfly\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 174, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 232, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 262, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 167, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 268, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 271, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 285, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 168, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 146, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 154, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [31 x i8] c"../drivers/spi/spi-butterfly.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 162, i32 11 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_butterfly_driver_exit, ptr @__initcall__kmod_spi_butterfly__233_320_butterfly_driver_init6, ptr @butterfly_attach._entry, ptr @butterfly_attach._entry_ptr, ptr @butterfly_driver_exit, ptr @butterfly_driver, ptr @.str, ptr @butterfly, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @flash, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @partitions, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @butterfly_driver to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @butterfly to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @butterfly_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partitions to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @butterfly_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__parport_register_driver(ptr noundef nonnull @butterfly_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @butterfly_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @parport_unregister_driver(ptr noundef nonnull @butterfly_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__parport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @butterfly_detach(ptr noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @butterfly, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %port = getelementptr inbounds %struct.butterfly, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %cmp.not = icmp eq ptr %2, %p
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  store ptr null, ptr @butterfly, align 4
  tail call void @spi_bitbang_stop(ptr noundef nonnull %0) #5
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void %8(ptr noundef %4, i8 noundef zeroext 0) #5
  tail call void @msleep(i32 noundef 10) #5
  %pd = getelementptr inbounds %struct.butterfly, ptr %0, i32 0, i32 2
  %9 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pd, align 4
  tail call void @parport_release(ptr noundef %10) #5
  %11 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd, align 4
  tail call void @parport_unregister_device(ptr noundef %12) #5
  %master = getelementptr inbounds %struct.spi_bitbang, ptr %0, i32 0, i32 4
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @put_device(ptr noundef nonnull %14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @butterfly_attach(ptr noundef %p) #2 align 64 {
entry:
  %butterfly_cb = alloca %struct.pardev_cb, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %physport = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 11
  %0 = ptrtoint ptr %physport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %physport, align 8
  %dev1 = getelementptr inbounds %struct.parport, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %butterfly_cb) #5
  %4 = getelementptr inbounds %struct.pardev_cb, ptr %butterfly_cb, i32 0, i32 2
  %5 = call ptr @memset(ptr %butterfly_cb, i32 255, i32 20)
  %6 = load ptr, ptr @butterfly, align 4
  %tobool.not = icmp ne ptr %6, null
  %tobool2.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef nonnull %3, i32 noundef 272, i1 noundef zeroext false) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.do.body102_crit_edge, label %if.end5

if.end.do.body102_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 42, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %num_chipselect, align 2
  %master7 = getelementptr inbounds %struct.spi_bitbang, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %master7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %master7, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %8, i32 0, i32 6
  %12 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @butterfly_chipselect, ptr %chipselect, align 4
  %txrx_word = getelementptr inbounds %struct.spi_bitbang, ptr %8, i32 0, i32 8
  %13 = ptrtoint ptr %txrx_word to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @butterfly_txrx_word_mode0, ptr %txrx_word, align 4
  %port = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p, ptr %port, align 4
  %15 = call ptr @memset(ptr %butterfly_cb, i32 0, i32 20)
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %8, ptr %4, align 4
  %call10 = call ptr @parport_register_dev_model(ptr noundef %p, ptr noundef nonnull @.str, ptr noundef nonnull %butterfly_cb, i32 noundef 0) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end5.clean0_crit_edge, label %if.end13

if.end5.clean0_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %clean0

if.end13:                                         ; preds = %if.end5
  %pd14 = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 2
  %17 = ptrtoint ptr %pd14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call10, ptr %pd14, align 4
  %call15 = call i32 @parport_claim(ptr noundef nonnull %call10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end13.clean1_crit_edge, label %do.body

if.end13.clean1_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %clean1

do.body:                                          ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @butterfly_attach.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@butterfly_attach, %do.end)) #5
          to label %if.then23 [label %do.end], !srcloc !49

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @butterfly_attach.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.3, ptr noundef %19) #5
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %frob_control, align 4
  %call27 = call zeroext i8 %25(ptr noundef %21, i8 noundef zeroext 8, i8 noundef zeroext 0) #5
  %lastbyte = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 3
  %26 = ptrtoint ptr %lastbyte to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lastbyte, align 4
  %28 = or i8 %27, 96
  store i8 %28, ptr %lastbyte, align 4
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port, align 4
  %ops30 = getelementptr inbounds %struct.parport, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %ops30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops30, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  call void %34(ptr noundef %30, i8 noundef zeroext %28) #5
  call void @msleep(i32 noundef 5) #5
  %35 = ptrtoint ptr %lastbyte to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lastbyte, align 4
  %37 = or i8 %36, 2
  store i8 %37, ptr %lastbyte, align 4
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %ops38 = getelementptr inbounds %struct.parport, ptr %39, i32 0, i32 24
  %40 = ptrtoint ptr %ops38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops38, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  call void %43(ptr noundef %39, i8 noundef zeroext %37) #5
  call void @msleep(i32 noundef 100) #5
  %call43 = call i32 @spi_bitbang_start(ptr noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %clean2, label %if.end47

if.end47:                                         ; preds = %do.end
  %info = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 6
  %max_speed_hz = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 6, i32 0, i32 5
  %44 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 15000000, ptr %max_speed_hz, align 4
  %45 = call ptr @memcpy(ptr %info, ptr @.str.4, i32 14)
  %platform_data = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 6, i32 0, i32 1
  %46 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @flash, ptr %platform_data, align 4
  %chip_select = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 6, i32 0, i32 7
  %47 = ptrtoint ptr %chip_select to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %chip_select, align 2
  %controller_data = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 6, i32 0, i32 3
  %48 = ptrtoint ptr %controller_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %8, ptr %controller_data, align 4
  %49 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %master7, align 4
  %call62 = call ptr @spi_new_device(ptr noundef %50, ptr noundef %info) #5
  %dataflash = getelementptr inbounds %struct.butterfly, ptr %8, i32 0, i32 4
  %51 = ptrtoint ptr %dataflash to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call62, ptr %dataflash, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %if.end47.do.end91_crit_edge, label %do.body66

if.end47.do.end91_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end91

do.body66:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @butterfly_attach.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@butterfly_attach, %do.end91)) #5
          to label %if.then80 [label %do.end91], !srcloc !49

if.then80:                                        ; preds = %do.body66
  %name81 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %52 = ptrtoint ptr %name81 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name81, align 4
  %54 = ptrtoint ptr %dataflash to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dataflash, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then80.dev_name.exit_crit_edge

if.then80.dev_name.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then80.dev_name.exit_crit_edge
  %retval.0.i180 = phi ptr [ %59, %if.end.i ], [ %57, %if.then80.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @butterfly_attach.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.5, ptr noundef %53, ptr noundef %retval.0.i180) #5
  br label %do.end91

do.end91:                                         ; preds = %dev_name.exit, %do.body66, %if.end47.do.end91_crit_edge
  %name93 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %60 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %name93, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %61) #8
  store ptr %8, ptr @butterfly, align 4
  br label %cleanup

clean2:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %port, align 4
  %ops96 = getelementptr inbounds %struct.parport, ptr %63, i32 0, i32 24
  %64 = ptrtoint ptr %ops96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops96, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  call void %67(ptr noundef %63, i8 noundef zeroext 0) #5
  %68 = ptrtoint ptr %pd14 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pd14, align 4
  call void @parport_release(ptr noundef %69) #5
  br label %clean1

clean1:                                           ; preds = %clean2, %if.end13.clean1_crit_edge
  %status.0 = phi i32 [ %call15, %if.end13.clean1_crit_edge ], [ %call43, %clean2 ]
  call void @parport_unregister_device(ptr noundef nonnull %call10) #5
  br label %clean0

clean0:                                           ; preds = %clean1, %if.end5.clean0_crit_edge
  %status.1 = phi i32 [ %status.0, %clean1 ], [ -12, %if.end5.clean0_crit_edge ]
  %70 = ptrtoint ptr %master7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %master7, align 4
  %tobool.not.i181 = icmp eq ptr %71, null
  br i1 %tobool.not.i181, label %clean0.do.body102_crit_edge, label %if.then.i

clean0.do.body102_crit_edge:                      ; preds = %clean0
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

if.then.i:                                        ; preds = %clean0
  call void @__sanitizer_cov_trace_pc() #7
  call void @put_device(ptr noundef nonnull %71) #5
  br label %do.body102

do.body102:                                       ; preds = %if.then.i, %clean0.do.body102_crit_edge, %if.end.do.body102_crit_edge
  %status.2 = phi i32 [ -12, %if.end.do.body102_crit_edge ], [ %status.1, %clean0.do.body102_crit_edge ], [ %status.1, %if.then.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @butterfly_attach.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@butterfly_attach, %cleanup)) #5
          to label %if.then116 [label %cleanup], !srcloc !49

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %name117 = getelementptr inbounds %struct.parport, ptr %p, i32 0, i32 3
  %72 = ptrtoint ptr %name117 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name117, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @butterfly_attach.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.7, ptr noundef %73, i32 noundef %status.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %do.body102, %do.end91, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %butterfly_cb) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @parport_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @butterfly_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_data.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %0 = ptrtoint ptr %controller_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 8
  %lastbyte.i = getelementptr inbounds %struct.butterfly, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %lastbyte.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastbyte.i, align 4
  %6 = and i8 %5, -2
  %7 = trunc i32 %3 to i8
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 1
  %byte.0.i = or i8 %9, %6
  %port.i = getelementptr inbounds %struct.butterfly, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port.i, align 4
  %ops.i = getelementptr inbounds %struct.parport, ptr %11, i32 0, i32 24
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void %15(ptr noundef %11, i8 noundef zeroext %byte.0.i) #5
  %16 = ptrtoint ptr %lastbyte.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %byte.0.i, ptr %lastbyte.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cond = phi i8 [ 8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %port = getelementptr inbounds %struct.butterfly, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port, align 4
  %ops = getelementptr inbounds %struct.parport, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %frob_control = getelementptr inbounds %struct.parport_operations, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %frob_control to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %frob_control, align 4
  %call2 = tail call zeroext i8 %22(ptr noundef %18, i8 noundef zeroext 8, i8 noundef zeroext %cond) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @butterfly_txrx_word_mode0(ptr nocapture noundef readonly %spi, i32 noundef %nsecs, i32 noundef %word, i8 noundef zeroext %bits, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i8 %bits to i32
  %sub3.i = sub nsw i32 32, %conv.i
  %shl4.i = shl i32 %word, %sub3.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bits)
  %tobool5.not13.i = icmp eq i8 %bits, 0
  br i1 %tobool5.not13.i, label %entry.bitbang_txrx_be_cpha0.exit_crit_edge, label %for.body.lr.ph.i, !prof !50

entry.bitbang_txrx_be_cpha0.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitbang_txrx_be_cpha0.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %0 = xor i32 %word, -1
  %sub.i = add nsw i32 %conv.i, -1
  %1 = lshr i32 %0, %sub.i
  %shl1.i = shl i32 %1, 31
  %and11.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %cmp.i = icmp eq i32 %and11.i, 0
  %controller_data.i.i.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 10
  %and27.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.i = icmp eq i32 %and27.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end31.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %oldbit.016.i = phi i32 [ %shl1.i, %for.body.lr.ph.i ], [ %oldbit.1.i, %if.end31.i.for.body.i_crit_edge ]
  %bits.addr.015.i = phi i8 [ %bits, %for.body.lr.ph.i ], [ %dec.i, %if.end31.i.for.body.i_crit_edge ]
  %word.addr.014.i = phi i32 [ %shl4.i, %for.body.lr.ph.i ], [ %word.addr.1.i, %if.end31.i.for.body.i_crit_edge ]
  br i1 %cmp.i, label %if.then.i, label %for.body.i.do.end.i_crit_edge

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then.i:                                        ; preds = %for.body.i
  %and13.i = and i32 %word.addr.014.i, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and13.i, i32 %oldbit.016.i)
  %cmp14.not.i = icmp eq i32 %and13.i, %oldbit.016.i
  br i1 %cmp14.not.i, label %if.then.i.do.end.i_crit_edge, label %if.then16.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_data.i.i.i, align 4
  %lastbyte.i.i = getelementptr inbounds %struct.butterfly, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %lastbyte.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lastbyte.i.i, align 4
  %6 = and i8 %5, 127
  %7 = lshr exact i32 %and13.i, 24
  %8 = trunc i32 %7 to i8
  %byte.0.i.i = or i8 %6, %8
  %port.i.i = getelementptr inbounds %struct.butterfly, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.parport, ptr %10, i32 0, i32 24
  %11 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void %14(ptr noundef %10, i8 noundef zeroext %byte.0.i.i) #5
  %15 = ptrtoint ptr %lastbyte.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %byte.0.i.i, ptr %lastbyte.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then16.i, %if.then.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  %oldbit.1.i = phi i32 [ %and13.i, %if.then16.i ], [ %oldbit.016.i, %if.then.i.do.end.i_crit_edge ], [ %oldbit.016.i, %for.body.i.do.end.i_crit_edge ]
  %16 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controller_data.i.i.i, align 4
  %lastbyte.i2.i = getelementptr inbounds %struct.butterfly, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %lastbyte.i2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lastbyte.i2.i, align 4
  %byte.0.i3.i = or i8 %19, 1
  %port.i4.i = getelementptr inbounds %struct.butterfly, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %port.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i4.i, align 4
  %ops.i5.i = getelementptr inbounds %struct.parport, ptr %21, i32 0, i32 24
  %22 = ptrtoint ptr %ops.i5.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i5.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  tail call void %25(ptr noundef %21, i8 noundef zeroext %byte.0.i3.i) #5
  %26 = ptrtoint ptr %lastbyte.i2.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %byte.0.i3.i, ptr %lastbyte.i2.i, align 4
  %shl26.i = shl i32 %word.addr.014.i, 1
  br i1 %cmp28.i, label %if.then30.i, label %do.end.i.if.end31.i_crit_edge

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31.i

if.then30.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %controller_data.i.i.i, align 4
  %port.i7.i = getelementptr inbounds %struct.butterfly, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %port.i7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port.i7.i, align 4
  %ops.i8.i = getelementptr inbounds %struct.parport, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %ops.i8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i8.i, align 4
  %read_status.i.i = getelementptr inbounds %struct.parport_operations, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %read_status.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_status.i.i, align 4
  %call2.i.i = tail call zeroext i8 %34(ptr noundef %30) #5
  %35 = xor i8 %call2.i.i, -1
  %36 = lshr i8 %35, 7
  %.not.i.i = zext i8 %36 to i32
  %or.i = or i32 %shl26.i, %.not.i.i
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then30.i, %do.end.i.if.end31.i_crit_edge
  %word.addr.1.i = phi i32 [ %or.i, %if.then30.i ], [ %shl26.i, %do.end.i.if.end31.i_crit_edge ]
  %37 = ptrtoint ptr %controller_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %controller_data.i.i.i, align 4
  %lastbyte.i10.i = getelementptr inbounds %struct.butterfly, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %lastbyte.i10.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %lastbyte.i10.i, align 4
  %41 = and i8 %40, -2
  %port.i11.i = getelementptr inbounds %struct.butterfly, ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %port.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i11.i, align 4
  %ops.i12.i = getelementptr inbounds %struct.parport, ptr %43, i32 0, i32 24
  %44 = ptrtoint ptr %ops.i12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i12.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  tail call void %47(ptr noundef %43, i8 noundef zeroext %41) #5
  %48 = ptrtoint ptr %lastbyte.i10.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %41, ptr %lastbyte.i10.i, align 4
  %dec.i = add i8 %bits.addr.015.i, -1
  %tobool5.not.i = icmp eq i8 %dec.i, 0
  br i1 %tobool5.not.i, label %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, label %if.end31.i.for.body.i_crit_edge, !prof !50

if.end31.i.for.body.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge:  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bitbang_txrx_be_cpha0.exit

bitbang_txrx_be_cpha0.exit:                       ; preds = %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge, %entry.bitbang_txrx_be_cpha0.exit_crit_edge
  %word.addr.0.lcssa.i = phi i32 [ %shl4.i, %entry.bitbang_txrx_be_cpha0.exit_crit_edge ], [ %word.addr.1.i, %if.end31.i.bitbang_txrx_be_cpha0.exit_crit_edge ]
  ret i32 %word.addr.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parport_register_dev_model(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parport_claim(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !16, !17, !18, !20, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_spi_butterfly__233_320_butterfly_driver_init6, !1, !"__initcall__kmod_spi_butterfly__233_320_butterfly_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-butterfly.c", i32 320, i32 1}
!2 = !{ptr @__exitcall_butterfly_driver_exit, !1, !"__exitcall_butterfly_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description234, !4, !"__UNIQUE_ID_description234", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-butterfly.c", i32 322, i32 1}
!5 = !{ptr @__UNIQUE_ID_file235, !6, !"__UNIQUE_ID_file235", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-butterfly.c", i32 323, i32 1}
!7 = !{ptr @__UNIQUE_ID_license236, !6, !"__UNIQUE_ID_license236", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @butterfly_driver, !10, !"butterfly_driver", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-butterfly.c", i32 314, i32 30}
!11 = !{ptr @butterfly, !12, !"butterfly", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-butterfly.c", i32 174, i32 26}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-butterfly.c", i32 232, i32 2}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @butterfly_attach.__UNIQUE_ID_ddebug230, !14, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-butterfly.c", i32 262, i32 31}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-butterfly.c", i32 268, i32 3}
!22 = !{ptr @butterfly_attach.__UNIQUE_ID_ddebug231, !21, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-butterfly.c", i32 271, i32 2}
!25 = !{ptr @butterfly_attach._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @butterfly_attach._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-butterfly.c", i32 285, i32 2}
!29 = !{ptr @butterfly_attach.__UNIQUE_ID_ddebug232, !28, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-butterfly.c", i32 168, i32 11}
!32 = !{ptr @flash, !33, !"flash", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-butterfly.c", i32 167, i32 35}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-butterfly.c", i32 154, i32 11}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-butterfly.c", i32 162, i32 11}
!38 = !{ptr @partitions, !39, !"partitions", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-butterfly.c", i32 146, i32 29}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148697513, i64 2148697518, i64 2148697531, i64 2148697575, i64 2148697609, i64 2148697630}
!50 = !{!"branch_weights", i32 1, i32 2000}
