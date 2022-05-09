; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-jcore.c_pt.bc'
source_filename = "../drivers/spi/spi-jcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.jcore_spi = type { ptr, ptr, i32, i32, i32, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }

@__initcall__kmod_spi_jcore__236_230_jcore_spi_driver_init6 = internal global ptr @jcore_spi_driver_init, section ".initcall6.init", align 4
@jcore_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jcore_spi_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jcore_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jcore_spi_driver_exit = internal global ptr @jcore_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [40 x i8] c"spi_jcore.description=J-Core SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [47 x i8] c"spi_jcore.author=Rich Felker <dalias@libc.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [37 x i8] c"spi_jcore.file=drivers/spi/spi-jcore\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"spi_jcore.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [35 x i8] c"spi_jcore.alias=platform:jcore_spi\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jcore_spi\00", [22 x i8] zeroinitializer }, align 32
@jcore_spi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jcore,spi2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@jcore_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not enable ref_clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"jcore_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-jcore.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jcore_spi_probe._entry_ptr = internal global ptr @jcore_spi_probe._entry, section ".printk_index", align 4
@jcore_spi_chipsel.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_jcore\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jcore_spi_chipsel\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chipselect %d\0A\00", [17 x i8] zeroinitializer }, align 32
@jcore_spi_program._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 63, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"timeout waiting to program ctrl reg.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jcore_spi_program\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@jcore_spi_program._entry_ptr = internal global ptr @jcore_spi_program._entry, section ".printk_index", align 4
@jcore_spi_baudrate.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.13, ptr @.str.4, ptr @.str.14, i8 0, i8 23, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jcore_spi_baudrate\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"speed=%d reg=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"jcore_spi_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 222, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 225, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"jcore_spi_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 216, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 188, i32 33 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 194, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 73, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 62, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [27 x i8] c"../drivers/spi/spi-jcore.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 93, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_jcore_spi_driver_exit, ptr @__initcall__kmod_spi_jcore__236_230_jcore_spi_driver_init6, ptr @jcore_spi_driver_exit, ptr @jcore_spi_probe._entry, ptr @jcore_spi_probe._entry_ptr, ptr @jcore_spi_program._entry, ptr @jcore_spi_program._entry_ptr, ptr @jcore_spi_driver, ptr @.str, ptr @jcore_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_spi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_spi_program._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jcore_spi_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jcore_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @jcore_spi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 24, i1 noundef zeroext false) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 3, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %mode_bits, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %4 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @jcore_spi_txrx, ptr %transfer_one, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %5 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @jcore_spi_chipsel, ptr %set_cs, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %of_node3, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %bus_num, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %11, align 4
  %driver_data.i.i82 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i82 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %driver_data.i.i82, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.spi_controller_put.exit_crit_edge, label %if.end9

if.end.spi_controller_put.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %14 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %call12 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i, ptr noundef %19) #5
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end9.spi_controller_put.exit_crit_edge, label %if.end15

if.end9.spi_controller_put.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end15:                                         ; preds = %if.end9
  %20 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call6, align 4
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i, align 4
  %sub.i84 = sub i32 1, %21
  %add.i85 = add i32 %sub.i84, %23
  %call19 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %21, i32 noundef %add.i85) #5
  %base = getelementptr inbounds %struct.jcore_spi, ptr %11, i32 0, i32 1
  %24 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call19, ptr %base, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end15.spi_controller_put.exit_crit_edge, label %if.end23

if.end15.spi_controller_put.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end23:                                         ; preds = %if.end15
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end23.if.end34_crit_edge, label %if.then27

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then27:                                        ; preds = %if.end23
  %call.i86 = tail call i32 @clk_prepare(ptr noundef %call25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then27.do.end_crit_edge

if.then27.do.end_crit_edge:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call25) #5
  br label %do.end

if.then30:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call31 = tail call i32 @clk_get_rate(ptr noundef %call25) #5
  tail call void @clk_disable(ptr noundef %call25) #5
  tail call void @clk_unprepare(ptr noundef %call25) #5
  br label %if.end34

do.end:                                           ; preds = %if.then3.i, %if.then27.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.then30, %if.end23.if.end34_crit_edge
  %clock_freq.0 = phi i32 [ 50000000, %if.end23.if.end34_crit_edge ], [ %call31, %if.then30 ], [ 50000000, %do.end ]
  %clock_freq35 = getelementptr inbounds %struct.jcore_spi, ptr %11, i32 0, i32 5
  %25 = ptrtoint ptr %clock_freq35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %clock_freq.0, ptr %clock_freq35, align 4
  %cs_reg = getelementptr inbounds %struct.jcore_spi, ptr %11, i32 0, i32 2
  %26 = ptrtoint ptr %cs_reg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 21, ptr %cs_reg, align 4
  tail call fastcc void @jcore_spi_baudrate(ptr noundef %11, i32 noundef 400000)
  %call37 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end34.cleanup_crit_edge, label %if.end34.spi_controller_put.exit_crit_edge

if.end34.spi_controller_put.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_controller_put.exit

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end34.spi_controller_put.exit_crit_edge, %if.end15.spi_controller_put.exit_crit_edge, %if.end9.spi_controller_put.exit_crit_edge, %if.end.spi_controller_put.exit_crit_edge
  %err.0 = phi i32 [ %call37, %if.end34.spi_controller_put.exit_crit_edge ], [ -16, %if.end15.spi_controller_put.exit_crit_edge ], [ -16, %if.end9.spi_controller_put.exit_crit_edge ], [ -16, %if.end.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %spi_controller_put.exit ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_spi_txrx(ptr noundef %master, ptr nocapture noundef readnone %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.jcore_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed_hz, align 4
  tail call fastcc void @jcore_spi_baudrate(ptr noundef %1, i32 noundef %5)
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp62.not = icmp eq i32 %7, 0
  br i1 %cmp62.not, label %entry.for.end_crit_edge, label %do.body.i.preheader.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.i.preheader.lr.ph:                        ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  %10 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t, align 4
  %speed_reg = getelementptr inbounds %struct.jcore_spi, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %speed_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed_reg, align 4
  %cs_reg = getelementptr inbounds %struct.jcore_spi, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %cs_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cs_reg, align 4
  %or = or i32 %15, %13
  %or3 = or i32 %or, 2
  %16 = tail call i32 @llvm.bswap.i32(i32 %or3)
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %for.inc.do.body.i.preheader_crit_edge, %do.body.i.preheader.lr.ph
  %count.065 = phi i32 [ 0, %do.body.i.preheader.lr.ph ], [ %inc, %for.inc.do.body.i.preheader_crit_edge ]
  %rx.064 = phi ptr [ %9, %do.body.i.preheader.lr.ph ], [ %rx.1, %for.inc.do.body.i.preheader_crit_edge ]
  %tx.063 = phi ptr [ %11, %do.body.i.preheader.lr.ph ], [ %tx.1, %for.inc.do.body.i.preheader_crit_edge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %do.body.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %do.end.i.do.body.i_crit_edge ], [ 2000000, %do.body.i.preheader ]
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %18 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body, label %do.end.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !55
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool10.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool10.not.i, label %do.end.i.for.end_crit_edge, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i.for.end_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body:                                          ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %tobool6.not = icmp eq ptr %tx.063, null
  br i1 %tobool6.not, label %do.body.cond.end_crit_edge, label %cond.true

do.body.cond.end_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %tx.063, i32 1
  %19 = ptrtoint ptr %tx.063 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tx.063, align 1
  %conv = zext i8 %20 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.body.cond.end_crit_edge
  %tx.1 = phi ptr [ %incdec.ptr, %cond.true ], [ null, %do.body.cond.end_crit_edge ]
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %do.body.cond.end_crit_edge ]
  %21 = shl nuw i32 %cond, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %21) #5, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %16) #5, !srcloc !57
  br label %do.body.i50

do.body.i50:                                      ; preds = %do.end.i53.do.body.i50_crit_edge, %cond.end
  %timeout.0.i48 = phi i32 [ 2000000, %cond.end ], [ %dec.i51, %do.end.i53.do.body.i50_crit_edge ]
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i49 = icmp eq i32 %23, 0
  br i1 %tobool.not.i49, label %if.end13, label %do.end.i53

do.end.i53:                                       ; preds = %do.body.i50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !55
  %dec.i51 = add nsw i32 %timeout.0.i48, -1
  %tobool10.not.i52 = icmp eq i32 %dec.i51, 0
  br i1 %tobool10.not.i52, label %do.end.i53.for.end_crit_edge, label %do.end.i53.do.body.i50_crit_edge

do.end.i53.do.body.i50_crit_edge:                 ; preds = %do.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i50

do.end.i53.for.end_crit_edge:                     ; preds = %do.end.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end13:                                         ; preds = %do.body.i50
  %tobool14.not = icmp eq ptr %rx.064, null
  br i1 %tobool14.not, label %if.end13.for.inc_crit_edge, label %if.then15

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !52
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %conv18 = trunc i32 %25 to i8
  %incdec.ptr19 = getelementptr i8, ptr %rx.064, i32 1
  %26 = ptrtoint ptr %rx.064 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv18, ptr %rx.064, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %if.end13.for.inc_crit_edge
  %rx.1 = phi ptr [ %incdec.ptr19, %if.then15 ], [ null, %if.end13.for.inc_crit_edge ]
  %inc = add nuw i32 %count.065, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body.i.preheader_crit_edge

for.inc.do.body.i.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.preheader

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.i53.for.end_crit_edge, %do.end.i.for.end_crit_edge, %entry.for.end_crit_edge
  %. = phi i32 [ 0, %entry.for.end_crit_edge ], [ -121, %do.end.i53.for.end_crit_edge ], [ -121, %do.end.i.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  tail call void @spi_finalize_current_transfer(ptr noundef %master) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jcore_spi_chipsel(ptr nocapture noundef readonly %spi, i1 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %4 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl nuw i32 1, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jcore_spi_chipsel.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jcore_spi_chipsel, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %conv8 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jcore_spi_chipsel.__UNIQUE_ID_ddebug234, ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %conv8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %value, label %if.then10, label %if.else

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %cs_reg = getelementptr inbounds %struct.jcore_spi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %cs_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cs_reg, align 4
  %or = or i32 %13, %shl
  store i32 %or, ptr %cs_reg, align 4
  br label %if.end12

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl, -1
  %cs_reg11 = getelementptr inbounds %struct.jcore_spi, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %cs_reg11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cs_reg11, align 4
  %and = and i32 %15, %neg
  store i32 %and, ptr %cs_reg11, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  %base.i = getelementptr inbounds %struct.jcore_spi, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.end12
  %timeout.0.i.i = phi i32 [ 2000000, %if.end12 ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %19 = and i32 %18, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.jcore_spi_program.exit_crit_edge, label %do.end.i.i

do.body.i.i.jcore_spi_program.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jcore_spi_program.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !55
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i:                                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10) #8
  br label %jcore_spi_program.exit

jcore_spi_program.exit:                           ; preds = %do.end.i, %do.body.i.i.jcore_spi_program.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %cs_reg.i = getelementptr inbounds %struct.jcore_spi, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %cs_reg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cs_reg.i, align 4
  %speed_reg.i = getelementptr inbounds %struct.jcore_spi, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %speed_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %speed_reg.i, align 4
  %or.i = or i32 %27, %25
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %28) #5, !srcloc !57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @jcore_spi_baudrate(ptr nocapture noundef %hw, i32 noundef %speed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %speed_hz = getelementptr inbounds %struct.jcore_spi, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %speed)
  %cmp = icmp eq i32 %1, %speed
  br i1 %cmp, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %speed, ptr %speed_hz, align 4
  %clock_freq = getelementptr inbounds %struct.jcore_spi, ptr %hw, i32 0, i32 5
  %3 = ptrtoint ptr %clock_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clock_freq, align 4
  %div27 = lshr i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div27, i32 %speed)
  %cmp2.not = icmp ugt i32 %div27, %speed
  br i1 %cmp2.not, label %if.else, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %div6 = udiv i32 %div27, %speed
  %sub = shl i32 %div6, 27
  %shl = add i32 %sub, -134217728
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  %.sink = phi i32 [ %shl, %if.else ], [ 0, %if.end.if.end8_crit_edge ]
  %5 = getelementptr inbounds %struct.jcore_spi, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %base.i = getelementptr inbounds %struct.jcore_spi, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.end8
  %timeout.0.i.i = phi i32 [ 2000000, %if.end8 ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  %10 = and i32 %9, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.jcore_spi_program.exit_crit_edge, label %do.end.i.i

do.body.i.i.jcore_spi_program.exit_crit_edge:     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %jcore_spi_program.exit

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !55
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool10.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool10.not.i.i, label %do.end.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

do.end.i:                                         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.10) #8
  br label %jcore_spi_program.exit

jcore_spi_program.exit:                           ; preds = %do.end.i, %do.body.i.i.jcore_spi_program.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %cs_reg.i = getelementptr inbounds %struct.jcore_spi, ptr %hw, i32 0, i32 2
  %15 = ptrtoint ptr %cs_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cs_reg.i, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %5, align 4
  %or.i = or i32 %18, %16
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %19) #5, !srcloc !57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @jcore_spi_baudrate.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@jcore_spi_baudrate, %do.end)) #5
          to label %if.then12 [label %do.end], !srcloc !60

if.then12:                                        ; preds = %jcore_spi_program.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %parent = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent, align 8
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @jcore_spi_baudrate.__UNIQUE_ID_ddebug235, ptr noundef %23, ptr noundef nonnull @.str.14, i32 noundef %speed, i32 noundef %25) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %jcore_spi_program.exit, %entry.do.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_spi_jcore__236_230_jcore_spi_driver_init6, !1, !"__initcall__kmod_spi_jcore__236_230_jcore_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-jcore.c", i32 230, i32 1}
!2 = !{ptr @__exitcall_jcore_spi_driver_exit, !1, !"__exitcall_jcore_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description237, !4, !"__UNIQUE_ID_description237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-jcore.c", i32 232, i32 1}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-jcore.c", i32 233, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-jcore.c", i32 234, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias241, !11, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-jcore.c", i32 235, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-jcore.c", i32 225, i32 11}
!14 = !{ptr @jcore_spi_driver, !15, !"jcore_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-jcore.c", i32 222, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-jcore.c", i32 188, i32 33}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-jcore.c", i32 194, i32 4}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @jcore_spi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @jcore_spi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-jcore.c", i32 73, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @jcore_spi_chipsel.__UNIQUE_ID_ddebug234, !27, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/spi/spi-jcore.c", i32 62, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @jcore_spi_program._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @jcore_spi_program._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-jcore.c", i32 93, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @jcore_spi_baudrate.__UNIQUE_ID_ddebug235, !38, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!41 = !{ptr @jcore_spi_of_match, !42, !"jcore_spi_of_match", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-jcore.c", i32 216, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 4202019}
!53 = !{i64 2154310340}
!54 = !{i64 2154310620}
!55 = !{i64 2154310462}
!56 = !{i64 2154317819}
!57 = !{i64 4201601}
!58 = !{i64 2154318224}
!59 = !{i64 2154318843}
!60 = !{i64 2148720793, i64 2148720798, i64 2148720811, i64 2148720855, i64 2148720889, i64 2148720910}
!61 = !{i64 2154312595}
