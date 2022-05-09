; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-omap-100k.c_pt.bc'
source_filename = "../drivers/spi/spi-omap-100k.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.omap1_spi100k = type { ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.omap1_spi100k_cs = type { ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_omap_100k__238_485_omap1_spi100k_driver_init6 = internal global ptr @omap1_spi100k_driver_init, section ".initcall6.init", align 4
@omap1_spi100k_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap1_spi100k_probe, ptr @omap1_spi100k_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap1_spi100k_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap1_spi100k_driver_exit = internal global ptr @omap1_spi100k_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [61 x i8] c"spi_omap_100k.description=OMAP7xx SPI 100k controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [56 x i8] c"spi_omap_100k.author=Fabrice Crohas <fcrohas@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [45 x i8] c"spi_omap_100k.file=drivers/spi/spi-omap-100k\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [26 x i8] c"spi_omap_100k.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap1_spi100k\00", [18 x i8] zeroinitializer }, align 32
@omap1_spi100k_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap1_spi100k_runtime_suspend, ptr @omap1_spi100k_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_omap_100k\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap1_spi100k_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-omap-100k.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"master allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ick\00", [28 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get spi100k_ick\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get spi100k_fck\0A\00", [41 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable ick: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe._entry_ptr = internal global ptr @omap1_spi100k_probe._entry, section ".printk_index", align 4
@omap1_spi100k_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable fck: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap1_spi100k_probe._entry_ptr.14 = internal global ptr @omap1_spi100k_probe._entry.12, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap1_spi100k_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 456, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable ick: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap1_spi100k_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@omap1_spi100k_runtime_resume._entry_ptr = internal global ptr @omap1_spi100k_runtime_resume._entry, section ".printk_index", align 4
@omap1_spi100k_runtime_resume._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 462, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to enable fck: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap1_spi100k_runtime_resume._entry_ptr.19 = internal global ptr @omap1_spi100k_runtime_resume._entry.17, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [21 x i8] c"omap1_spi100k_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 476, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 478, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"omap1_spi100k_pm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 471, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 354, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 379, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 381, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 386, i32 42 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 388, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 395, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 401, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 456, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [31 x i8] c"../drivers/spi/spi-omap-100k.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 462, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_omap1_spi100k_driver_exit, ptr @__initcall__kmod_spi_omap_100k__238_485_omap1_spi100k_driver_init6, ptr @omap1_spi100k_driver_exit, ptr @omap1_spi100k_probe._entry, ptr @omap1_spi100k_probe._entry.12, ptr @omap1_spi100k_probe._entry_ptr, ptr @omap1_spi100k_probe._entry_ptr.14, ptr @omap1_spi100k_runtime_resume._entry, ptr @omap1_spi100k_runtime_resume._entry.17, ptr @omap1_spi100k_runtime_resume._entry_ptr, ptr @omap1_spi100k_runtime_resume._entry_ptr.19, ptr @omap1_spi100k_driver, ptr @.str, ptr @omap1_spi100k_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap1_spi100k_runtime_resume._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap1_spi100k_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap1_spi100k_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap1_spi100k_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 12, i1 noundef zeroext false) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap1_spi100k_probe, %cleanup)) #5
          to label %if.then7 [label %cleanup], !srcloc !60

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap1_spi100k_probe.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp12.not = icmp eq i32 %3, -1
  br i1 %cmp12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %conv = trunc i32 %3 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %bus_num, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @omap1_spi100k_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 45
  %6 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @omap1_spi100k_transfer_one_message, ptr %transfer_one_message, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 732, ptr %min_speed_hz, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 48000000, ptr %max_speed_hz, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %12 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %auto_runtime_pm, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %base = getelementptr inbounds %struct.omap1_spi100k, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %base, align 4
  %call20 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #5
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call20, ptr %14, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body24, label %if.end45

do.body24:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap1_spi100k_probe, %do.end42)) #5
          to label %if.then38 [label %do.end42], !srcloc !60

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap1_spi100k_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %do.body24
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %spi_controller_put.exit

if.end45:                                         ; preds = %if.end15
  %call47 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #5
  %fck = getelementptr inbounds %struct.omap1_spi100k, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %fck to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call47, ptr %fck, align 4
  %cmp.i154 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.body51, label %if.end72

do.body51:                                        ; preds = %if.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap1_spi100k_probe, %do.end69)) #5
          to label %if.then65 [label %do.end69], !srcloc !60

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap1_spi100k_probe.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body51
  %23 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fck, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %spi_controller_put.exit

if.end72:                                         ; preds = %if.end45
  %26 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %14, align 4
  %call.i155 = tail call i32 @clk_prepare(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end72.do.end80_crit_edge

if.end72.do.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end80

if.end.i:                                         ; preds = %if.end72
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end82, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %27) #5
  br label %do.end80

do.end80:                                         ; preds = %if.then3.i, %if.end72.do.end80_crit_edge
  %retval.0.i156.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i155, %if.end72.do.end80_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i156.ph) #8
  br label %spi_controller_put.exit

if.end82:                                         ; preds = %if.end.i
  %28 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fck, align 4
  %call.i157 = tail call i32 @clk_prepare(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end.i161, label %if.end82.do.end90_crit_edge

if.end82.do.end90_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end90

if.end.i161:                                      ; preds = %if.end82
  %call1.i159 = tail call i32 @clk_enable(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool2.not.i160 = icmp eq i32 %call1.i159, 0
  br i1 %tobool2.not.i160, label %if.end92, label %if.then3.i162

if.then3.i162:                                    ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %29) #5
  br label %do.end90

do.end90:                                         ; preds = %if.then3.i162, %if.end82.do.end90_crit_edge
  %retval.0.i163.ph = phi i32 [ %call1.i159, %if.then3.i162 ], [ %call.i157, %if.end82.do.end90_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i163.ph) #8
  br label %err_ick

if.end92:                                         ; preds = %if.end.i161
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %call.i165 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  %call97 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %err_fck, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_fck:                                          ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  tail call void @clk_unprepare(ptr noundef %31) #5
  br label %err_ick

err_ick:                                          ; preds = %err_fck, %do.end90
  %status.0 = phi i32 [ %retval.0.i163.ph, %do.end90 ], [ %call97, %err_fck ]
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %33) #5
  tail call void @clk_unprepare(ptr noundef %33) #5
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %err_ick, %do.end80, %do.end69, %do.end42
  %status.1 = phi i32 [ %21, %do.end42 ], [ %25, %do.end69 ], [ %retval.0.i156.ph, %do.end80 ], [ %status.0, %err_ick ]
  tail call void @put_device(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end92.cleanup_crit_edge, %if.then7, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.1, %spi_controller_put.exit ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then7 ], [ %call97, %if.end92.cleanup_crit_edge ], [ -12, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i4, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %fck = getelementptr inbounds %struct.omap1_spi100k, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state, align 8
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.omap1_spi100k, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %9 to i32
  %mul = mul nuw nsw i32 %conv, 20
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr, ptr %call.i, align 4
  %11 = ptrtoint ptr %controller_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %controller_state, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.omap1_spi100k, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 12288) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 0) #5, !srcloc !62
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.clk_prepare_enable.exit_crit_edge

if.end6.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end6
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end6.clk_prepare_enable.exit_crit_edge
  %fck = getelementptr inbounds %struct.omap1_spi100k, ptr %5, i32 0, i32 1
  %22 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fck, align 4
  %call.i29 = tail call i32 @clk_prepare(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.end.i33, label %clk_prepare_enable.exit.clk_prepare_enable.exit36_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit36_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit36

if.end.i33:                                       ; preds = %clk_prepare_enable.exit
  %call1.i31 = tail call i32 @clk_enable(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool2.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool2.not.i32, label %if.end.i33.clk_prepare_enable.exit36_crit_edge, label %if.then3.i34

if.end.i33.clk_prepare_enable.exit36_crit_edge:   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit36

if.then3.i34:                                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %clk_prepare_enable.exit36

clk_prepare_enable.exit36:                        ; preds = %if.then3.i34, %if.end.i33.clk_prepare_enable.exit36_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit36_crit_edge
  %bits_per_word1.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %24 = ptrtoint ptr %bits_per_word1.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %word_len.0.i = load i8, ptr %bits_per_word1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %word_len.0.i)
  %cmp2.i = icmp ugt i8 %word_len.0.i, 32
  br i1 %cmp2.i, label %clk_prepare_enable.exit36.omap1_spi100k_setup_transfer.exit_crit_edge, label %if.end5.i

clk_prepare_enable.exit36.omap1_spi100k_setup_transfer.exit_crit_edge: ; preds = %clk_prepare_enable.exit36
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_setup_transfer.exit

if.end5.i:                                        ; preds = %clk_prepare_enable.exit36
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %controller_state, align 8
  %27 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master, align 4
  %driver_data.i.i.i37 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i.i37, align 4
  %conv.i = zext i8 %word_len.0.i to i32
  %word_len7.i = getelementptr inbounds %struct.omap1_spi100k_cs, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %word_len7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i, ptr %word_len7.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %base.i38 = getelementptr inbounds %struct.omap1_spi100k, ptr %30, i32 0, i32 2
  %32 = ptrtoint ptr %base.i38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i38, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 15872) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %base.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i38, align 4
  %add.ptr12.i = getelementptr i8, ptr %35, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i, i16 0) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %base.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i38, align 4
  %add.ptr17.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 15872) #5, !srcloc !62
  br label %omap1_spi100k_setup_transfer.exit

omap1_spi100k_setup_transfer.exit:                ; preds = %if.end5.i, %clk_prepare_enable.exit36.omap1_spi100k_setup_transfer.exit_crit_edge
  %retval.0.i39 = phi i32 [ 0, %if.end5.i ], [ -22, %clk_prepare_enable.exit36.omap1_spi100k_setup_transfer.exit_crit_edge ]
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  tail call void @clk_disable(ptr noundef %39) #5
  tail call void @clk_unprepare(ptr noundef %39) #5
  %40 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %41) #5
  tail call void @clk_unprepare(ptr noundef %41) #5
  br label %cleanup

cleanup:                                          ; preds = %omap1_spi100k_setup_transfer.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i39, %omap1_spi100k_setup_transfer.exit ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_transfer_one_message(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %4 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn92 = load ptr, ptr %m, align 4
  %cmp.not94 = icmp eq ptr %.pn92, %m
  br i1 %cmp.not94, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bits_per_word1.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 9
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %base3.i = getelementptr inbounds %struct.omap1_spi100k, ptr %1, i32 0, i32 2
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn96 = phi ptr [ %.pn92, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cs_active.095 = phi i32 [ 0, %for.body.lr.ph ], [ %cs_active.2, %for.inc.for.body_crit_edge ]
  %t.097 = getelementptr i8, ptr %.pn96, i32 -84
  %5 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t.097, align 4
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %rx_buf = getelementptr i8, ptr %.pn96, i32 -80
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %cmp4 = icmp eq ptr %8, null
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %len = getelementptr i8, ptr %.pn96, i32 -76
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.for.end_crit_edge

land.lhs.true5.for.end_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %cmp.not.i = icmp eq ptr %t.097, null
  %bits_per_word.i = getelementptr i8, ptr %.pn96, i32 -39
  %word_len.0.in.i = select i1 %cmp.not.i, ptr %bits_per_word1.i, ptr %bits_per_word.i
  %11 = ptrtoint ptr %word_len.0.in.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %word_len.0.i = load i8, ptr %word_len.0.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %word_len.0.i)
  %cmp2.i = icmp ugt i8 %word_len.0.i, 32
  br i1 %cmp2.i, label %if.end.for.end_crit_edge, label %if.end9

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %controller_state.i, align 8
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %conv.i = zext i8 %word_len.0.i to i32
  %word_len7.i = getelementptr inbounds %struct.omap1_spi100k_cs, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %word_len7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %word_len7.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.omap1_spi100k, ptr %17, i32 0, i32 2
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 15872) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %22, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i, i16 0) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 15872) #5, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_active.095)
  %tobool10.not = icmp eq i32 %cs_active.095, 0
  br i1 %tobool10.not, label %if.then11, label %if.end9.if.end12_crit_edge

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base3.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 -1019) #5, !srcloc !62
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %len13 = getelementptr i8, ptr %.pn96, i32 -76
  %27 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.end12.if.end21_crit_edge, label %if.then15

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  %29 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %controller_state.i, align 8
  %31 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len13, align 4
  %word_len1.i = getelementptr inbounds %struct.omap1_spi100k_cs, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %word_len1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %word_len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %34)
  %cmp.i = icmp slt i32 %34, 9
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then15
  %rx_buf.i = getelementptr i8, ptr %.pn96, i32 -80
  %35 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_buf.i, align 4
  %37 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %t.097, align 4
  br label %do.body.i

do.bodythread-pre-split.i:                        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr.i = load ptr, ptr %t.097, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.bodythread-pre-split.i, %if.then.i
  %40 = phi ptr [ %.pr.i, %do.bodythread-pre-split.i ], [ %38, %if.then.i ]
  %c.0.i = phi i32 [ %sub.i, %do.bodythread-pre-split.i ], [ %32, %if.then.i ]
  %rx.0.i = phi ptr [ %rx.1.i, %do.bodythread-pre-split.i ], [ %36, %if.then.i ]
  %tx.0.i = phi ptr [ %tx.1.i, %do.bodythread-pre-split.i ], [ %38, %if.then.i ]
  %sub.i = add i32 %c.0.i, -1
  %cmp3.not.i = icmp eq ptr %40, null
  br i1 %cmp3.not.i, label %do.body.i.if.end.i_crit_edge, label %if.then4.i

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %tx.0.i, i32 1
  %43 = ptrtoint ptr %tx.0.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tx.0.i, align 1
  %conv.i66 = zext i8 %44 to i32
  tail call fastcc void @spi100k_write_data(ptr noundef %42, i32 noundef %34, i32 noundef %conv.i66) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %do.body.i.if.end.i_crit_edge
  %tx.1.i = phi ptr [ %incdec.ptr.i, %if.then4.i ], [ %tx.0.i, %do.body.i.if.end.i_crit_edge ]
  %45 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_buf.i, align 4
  %cmp6.not.i = icmp eq ptr %46, null
  br i1 %cmp6.not.i, label %if.end.i.do.cond.i_crit_edge, label %if.then8.i

if.end.i.do.cond.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %master.i, align 4
  %call.i = tail call fastcc i32 @spi100k_read_data(ptr noundef %48, i32 noundef %34) #5
  %conv10.i = trunc i32 %call.i to i8
  %incdec.ptr11.i = getelementptr i8, ptr %rx.0.i, i32 1
  %49 = ptrtoint ptr %rx.0.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv10.i, ptr %rx.0.i, align 1
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.then8.i, %if.end.i.do.cond.i_crit_edge
  %rx.1.i = phi ptr [ %incdec.ptr11.i, %if.then8.i ], [ %rx.0.i, %if.end.i.do.cond.i_crit_edge ]
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %do.cond.i.omap1_spi100k_txrx_pio.exit_crit_edge, label %do.bodythread-pre-split.i

do.cond.i.omap1_spi100k_txrx_pio.exit_crit_edge:  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_txrx_pio.exit

if.else.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %34)
  %cmp13.i = icmp ult i32 %34, 17
  br i1 %cmp13.i, label %if.then15.i, label %if.else42.i

if.then15.i:                                      ; preds = %if.else.i
  %rx_buf18.i = getelementptr i8, ptr %.pn96, i32 -80
  %50 = ptrtoint ptr %rx_buf18.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_buf18.i, align 4
  %52 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %t.097, align 4
  br label %do.body20.i

do.body20thread-pre-split.i:                      ; preds = %do.cond39.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr105.i = load ptr, ptr %t.097, align 4
  br label %do.body20.i

do.body20.i:                                      ; preds = %do.body20thread-pre-split.i, %if.then15.i
  %55 = phi ptr [ %.pr105.i, %do.body20thread-pre-split.i ], [ %53, %if.then15.i ]
  %c.1.i = phi i32 [ %sub21.i, %do.body20thread-pre-split.i ], [ %32, %if.then15.i ]
  %rx16.0.i = phi ptr [ %rx16.1.i, %do.body20thread-pre-split.i ], [ %51, %if.then15.i ]
  %tx17.0.i = phi ptr [ %tx17.1.i, %do.body20thread-pre-split.i ], [ %53, %if.then15.i ]
  %sub21.i = add i32 %c.1.i, -2
  %cmp23.not.i = icmp eq ptr %55, null
  br i1 %cmp23.not.i, label %do.body20.i.if.end29.i_crit_edge, label %if.then25.i

do.body20.i.if.end29.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then25.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %master.i, align 4
  %incdec.ptr27.i = getelementptr i16, ptr %tx17.0.i, i32 1
  %58 = ptrtoint ptr %tx17.0.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx17.0.i, align 2
  %conv28.i = zext i16 %59 to i32
  tail call fastcc void @spi100k_write_data(ptr noundef %57, i32 noundef %34, i32 noundef %conv28.i) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then25.i, %do.body20.i.if.end29.i_crit_edge
  %tx17.1.i = phi ptr [ %incdec.ptr27.i, %if.then25.i ], [ %tx17.0.i, %do.body20.i.if.end29.i_crit_edge ]
  %60 = ptrtoint ptr %rx_buf18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf18.i, align 4
  %cmp31.not.i = icmp eq ptr %61, null
  br i1 %cmp31.not.i, label %if.end29.i.do.cond39.i_crit_edge, label %if.then33.i

if.end29.i.do.cond39.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond39.i

if.then33.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %master.i, align 4
  %call35.i = tail call fastcc i32 @spi100k_read_data(ptr noundef %63, i32 noundef %34) #5
  %conv36.i = trunc i32 %call35.i to i16
  %incdec.ptr37.i = getelementptr i16, ptr %rx16.0.i, i32 1
  %64 = ptrtoint ptr %rx16.0.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv36.i, ptr %rx16.0.i, align 2
  br label %do.cond39.i

do.cond39.i:                                      ; preds = %if.then33.i, %if.end29.i.do.cond39.i_crit_edge
  %rx16.1.i = phi ptr [ %incdec.ptr37.i, %if.then33.i ], [ %rx16.0.i, %if.end29.i.do.cond39.i_crit_edge ]
  %tobool40.not.i = icmp eq i32 %sub21.i, 0
  br i1 %tobool40.not.i, label %do.cond39.i.omap1_spi100k_txrx_pio.exit_crit_edge, label %do.body20thread-pre-split.i

do.cond39.i.omap1_spi100k_txrx_pio.exit_crit_edge: ; preds = %do.cond39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_txrx_pio.exit

if.else42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %34)
  %cmp43.i = icmp ult i32 %34, 33
  br i1 %cmp43.i, label %if.then45.i, label %if.else42.i.omap1_spi100k_txrx_pio.exit_crit_edge

if.else42.i.omap1_spi100k_txrx_pio.exit_crit_edge: ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_txrx_pio.exit

if.then45.i:                                      ; preds = %if.else42.i
  %rx_buf48.i = getelementptr i8, ptr %.pn96, i32 -80
  %65 = ptrtoint ptr %rx_buf48.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_buf48.i, align 4
  %67 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %t.097, align 4
  br label %do.body50.i

do.body50thread-pre-split.i:                      ; preds = %do.cond65.i
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %t.097 to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pr106.i = load ptr, ptr %t.097, align 4
  br label %do.body50.i

do.body50.i:                                      ; preds = %do.body50thread-pre-split.i, %if.then45.i
  %70 = phi ptr [ %.pr106.i, %do.body50thread-pre-split.i ], [ %68, %if.then45.i ]
  %c.2.i = phi i32 [ %sub51.i, %do.body50thread-pre-split.i ], [ %32, %if.then45.i ]
  %sub51.i = add i32 %c.2.i, -4
  %cmp53.not.i = icmp eq ptr %70, null
  br i1 %cmp53.not.i, label %do.body50.i.if.end57.i_crit_edge, label %if.then55.i

do.body50.i.if.end57.i_crit_edge:                 ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57.i

if.then55.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #7
  %71 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %master.i, align 4
  %73 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %68, align 4
  tail call fastcc void @spi100k_write_data(ptr noundef %72, i32 noundef %34, i32 noundef %74) #5
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %do.body50.i.if.end57.i_crit_edge
  %75 = ptrtoint ptr %rx_buf48.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf48.i, align 4
  %cmp59.not.i = icmp eq ptr %76, null
  br i1 %cmp59.not.i, label %if.end57.i.do.cond65.i_crit_edge, label %if.then61.i

if.end57.i.do.cond65.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond65.i

if.then61.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %master.i, align 4
  %call63.i = tail call fastcc i32 @spi100k_read_data(ptr noundef %78, i32 noundef %34) #5
  %79 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %call63.i, ptr %66, align 4
  br label %do.cond65.i

do.cond65.i:                                      ; preds = %if.then61.i, %if.end57.i.do.cond65.i_crit_edge
  %tobool66.not.i = icmp eq i32 %sub51.i, 0
  br i1 %tobool66.not.i, label %do.cond65.i.omap1_spi100k_txrx_pio.exit_crit_edge, label %do.body50thread-pre-split.i

do.cond65.i.omap1_spi100k_txrx_pio.exit_crit_edge: ; preds = %do.cond65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_txrx_pio.exit

omap1_spi100k_txrx_pio.exit:                      ; preds = %do.cond65.i.omap1_spi100k_txrx_pio.exit_crit_edge, %if.else42.i.omap1_spi100k_txrx_pio.exit_crit_edge, %do.cond39.i.omap1_spi100k_txrx_pio.exit_crit_edge, %do.cond.i.omap1_spi100k_txrx_pio.exit_crit_edge
  %c.3.i = phi i32 [ %32, %if.else42.i.omap1_spi100k_txrx_pio.exit_crit_edge ], [ 0, %do.cond.i.omap1_spi100k_txrx_pio.exit_crit_edge ], [ 0, %do.cond39.i.omap1_spi100k_txrx_pio.exit_crit_edge ], [ 0, %do.cond65.i.omap1_spi100k_txrx_pio.exit_crit_edge ]
  %sub71.i = sub i32 %32, %c.3.i
  %80 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %actual_length, align 4
  %add = add i32 %81, %sub71.i
  store i32 %add, ptr %actual_length, align 4
  %82 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub71.i, i32 %83)
  %cmp18.not = icmp eq i32 %sub71.i, %83
  br i1 %cmp18.not, label %omap1_spi100k_txrx_pio.exit.if.end21_crit_edge, label %omap1_spi100k_txrx_pio.exit.for.end_crit_edge

omap1_spi100k_txrx_pio.exit.for.end_crit_edge:    ; preds = %omap1_spi100k_txrx_pio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

omap1_spi100k_txrx_pio.exit.if.end21_crit_edge:   ; preds = %omap1_spi100k_txrx_pio.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end21:                                         ; preds = %omap1_spi100k_txrx_pio.exit.if.end21_crit_edge, %if.end12.if.end21_crit_edge
  %delay.i = getelementptr i8, ptr %.pn96, i32 -38
  %call.i67 = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.097) #5
  %cs_change = getelementptr i8, ptr %.pn96, i32 -40
  %84 = ptrtoint ptr %cs_change to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load = load i8, ptr %cs_change, align 4
  %85 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool23.not = icmp eq i8 %85, 0
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %if.then24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %base3.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base3.i, align 4
  %add.ptr4.i69 = getelementptr i8, ptr %87, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i69, i16 -763) #5, !srcloc !62
  br label %for.inc

for.inc:                                          ; preds = %if.then24, %if.end21.for.inc_crit_edge
  %cs_active.2 = phi i32 [ 0, %if.then24 ], [ 1, %if.end21.for.inc_crit_edge ]
  %88 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %omap1_spi100k_txrx_pio.exit.for.end_crit_edge, %if.end.for.end_crit_edge, %land.lhs.true5.for.end_crit_edge, %entry.for.end_crit_edge
  %cs_active.3 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %cs_active.095, %if.end.for.end_crit_edge ], [ 1, %omap1_spi100k_txrx_pio.exit.for.end_crit_edge ], [ %cs_active.095, %land.lhs.true5.for.end_crit_edge ], [ %cs_active.2, %for.inc.for.end_crit_edge ]
  %bits_per_word1.i71 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %89 = ptrtoint ptr %bits_per_word1.i71 to i32
  call void @__asan_load1_noabort(i32 %89)
  %word_len.0.i72 = load i8, ptr %bits_per_word1.i71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %word_len.0.i72)
  %cmp2.i73 = icmp ugt i8 %word_len.0.i72, 32
  br i1 %cmp2.i73, label %for.end.omap1_spi100k_setup_transfer.exit84_crit_edge, label %if.end5.i82

for.end.omap1_spi100k_setup_transfer.exit84_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap1_spi100k_setup_transfer.exit84

if.end5.i82:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %controller_state.i74 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 9
  %90 = ptrtoint ptr %controller_state.i74 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %controller_state.i74, align 8
  %master.i75 = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %92 = ptrtoint ptr %master.i75 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %master.i75, align 4
  %driver_data.i.i.i76 = getelementptr inbounds %struct.device, ptr %93, i32 0, i32 8
  %94 = ptrtoint ptr %driver_data.i.i.i76 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver_data.i.i.i76, align 4
  %conv.i77 = zext i8 %word_len.0.i72 to i32
  %word_len7.i78 = getelementptr inbounds %struct.omap1_spi100k_cs, ptr %91, i32 0, i32 1
  %96 = ptrtoint ptr %word_len7.i78 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv.i77, ptr %word_len7.i78, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %base.i79 = getelementptr inbounds %struct.omap1_spi100k, ptr %95, i32 0, i32 2
  %97 = ptrtoint ptr %base.i79 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i79, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 15872) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %base.i79 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i79, align 4
  %add.ptr12.i80 = getelementptr i8, ptr %100, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i80, i16 0) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %base.i79 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i79, align 4
  %add.ptr17.i81 = getelementptr i8, ptr %102, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i81, i16 15872) #5, !srcloc !62
  br label %omap1_spi100k_setup_transfer.exit84

omap1_spi100k_setup_transfer.exit84:              ; preds = %if.end5.i82, %for.end.omap1_spi100k_setup_transfer.exit84_crit_edge
  %retval.0.i83 = phi i32 [ 0, %if.end5.i82 ], [ -22, %for.end.omap1_spi100k_setup_transfer.exit84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_active.3)
  %tobool32.not = icmp eq i32 %cs_active.3, 0
  br i1 %tobool32.not, label %omap1_spi100k_setup_transfer.exit84.if.end34_crit_edge, label %if.then33

omap1_spi100k_setup_transfer.exit84.if.end34_crit_edge: ; preds = %omap1_spi100k_setup_transfer.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then33:                                        ; preds = %omap1_spi100k_setup_transfer.exit84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %base3.i85 = getelementptr inbounds %struct.omap1_spi100k, ptr %1, i32 0, i32 2
  %103 = ptrtoint ptr %base3.i85 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base3.i85, align 4
  %add.ptr4.i86 = getelementptr i8, ptr %104, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i86, i16 -763) #5, !srcloc !62
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %omap1_spi100k_setup_transfer.exit84.if.end34_crit_edge
  %status35 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %105 = ptrtoint ptr %status35 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i83, ptr %status35, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #5
  ret i32 %retval.0.i83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @spi100k_write_data(ptr nocapture noundef readonly %master, i32 noundef %len, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp = icmp slt i32 %len, 9
  %shl = shl i32 %data, 8
  %spec.select = select i1 %cmp, i32 %shl, i32 %data
  %base.i = getelementptr inbounds %struct.omap1_spi100k, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %5 = or i16 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %spec.select to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %8) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %11 = trunc i32 %len to i16
  %.op = shl i16 %11, 2
  %.op.op.op = add i16 %.op, -2
  %conv6 = select i1 %cmp, i16 62, i16 %.op.op.op
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8, i16 %12) #5, !srcloc !62
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 6
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %18 = and i16 %17, 512
  %cmp14.not.not = icmp eq i16 %18, 0
  br i1 %cmp14.not.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #5
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %base.i24 = getelementptr inbounds %struct.omap1_spi100k, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i24, align 4
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %25 = and i16 %24, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i24, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %25) #5, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spi100k_read_data(ptr nocapture noundef readonly %master, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp = icmp slt i32 %len, 9
  %base.i = getelementptr inbounds %struct.omap1_spi100k, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %3) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %5 = or i16 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %7, i16 %5) #5, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %len.tr = trunc i32 %len to i16
  %8 = shl i16 %len.tr, 2
  %9 = add i16 %8, -3
  %conv = select i1 %cmp, i16 61, i16 %9
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %10) #5, !srcloc !62
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 6
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %16 = and i16 %15, 256
  %cmp7.not.not = icmp eq i16 %16, 0
  br i1 %cmp7.not.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #5
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr12 = getelementptr i8, ptr %19, i32 12
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #5, !srcloc !67
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  %conv16 = zext i16 %21 to i32
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr20 = getelementptr i8, ptr %23, i32 14
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr20) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  %base.i31 = getelementptr inbounds %struct.omap1_spi100k, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %base.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i31, align 4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %30 = and i16 %29, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %base.i31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i31, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 %30) #5, !srcloc !62
  ret i32 %conv16
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %fck = getelementptr inbounds %struct.omap1_spi100k, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fck, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap1_spi100k_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %5) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %fck = getelementptr inbounds %struct.omap1_spi100k, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %fck to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fck, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end.i26.cleanup_crit_edge, label %if.then3.i27

if.end.i26.cleanup_crit_edge:                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %7) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i27, %if.end.do.end8_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i28.ph) #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %9) #5
  tail call void @clk_unprepare(ptr noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.i26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i28.ph, %do.end8 ], [ 0, %if.end.i26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_spi_omap_100k__238_485_omap1_spi100k_driver_init6, !1, !"__initcall__kmod_spi_omap_100k__238_485_omap1_spi100k_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-omap-100k.c", i32 485, i32 1}
!2 = !{ptr @__exitcall_omap1_spi100k_driver_exit, !1, !"__exitcall_omap1_spi100k_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-omap-100k.c", i32 487, i32 1}
!5 = !{ptr @__UNIQUE_ID_author240, !6, !"__UNIQUE_ID_author240", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-omap-100k.c", i32 488, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-omap-100k.c", i32 489, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-omap-100k.c", i32 478, i32 12}
!12 = !{ptr @omap1_spi100k_driver, !13, !"omap1_spi100k_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-omap-100k.c", i32 476, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-omap-100k.c", i32 354, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug235, !15, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-omap-100k.c", i32 379, i32 42}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-omap-100k.c", i32 381, i32 3}
!24 = !{ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug236, !23, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-omap-100k.c", i32 386, i32 42}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-omap-100k.c", i32 388, i32 3}
!29 = !{ptr @omap1_spi100k_probe.__UNIQUE_ID_ddebug237, !28, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-omap-100k.c", i32 395, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @omap1_spi100k_probe._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @omap1_spi100k_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-omap-100k.c", i32 401, i32 3}
!38 = !{ptr @omap1_spi100k_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @omap1_spi100k_probe._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @omap1_spi100k_pm, !41, !"omap1_spi100k_pm", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-omap-100k.c", i32 471, i32 32}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-omap-100k.c", i32 456, i32 3}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @omap1_spi100k_runtime_resume._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @omap1_spi100k_runtime_resume._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-omap-100k.c", i32 462, i32 3}
!49 = !{ptr @omap1_spi100k_runtime_resume._entry.17, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @omap1_spi100k_runtime_resume._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148701719, i64 2148701724, i64 2148701737, i64 2148701781, i64 2148701815, i64 2148701836}
!61 = !{i64 2154274609}
!62 = !{i64 4207593}
!63 = !{i64 2154275182}
!64 = !{i64 2154276642}
!65 = !{i64 2154277046}
!66 = !{i64 2154277450}
!67 = !{i64 4207793}
!68 = !{i64 2154267950}
!69 = !{i64 2154268183}
!70 = !{i64 2154269610}
!71 = !{i64 2154270103}
!72 = !{i64 2154270919}
!73 = !{i64 2154268920}
!74 = !{i64 2154269153}
!75 = !{i64 2154271863}
!76 = !{i64 2154272679}
!77 = !{i64 2154273758}
!78 = !{i64 2154274261}
