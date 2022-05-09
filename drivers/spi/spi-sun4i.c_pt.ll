; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sun4i.c_pt.bc'
source_filename = "../drivers/spi/spi-sun4i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sun4i_spi = type { ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_sun4i__241_546_sun4i_spi_driver_init6 = internal global ptr @sun4i_spi_driver_init, section ".initcall6.init", align 4
@sun4i_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_spi_probe, ptr @sun4i_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_spi_driver_exit = internal global ptr @sun4i_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author242 = internal constant [52 x i8] c"spi_sun4i.author=Pan Nan <pannan@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [66 x i8] c"spi_sun4i.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [62 x i8] c"spi_sun4i.description=Allwinner A1X/A20 SPI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [37 x i8] c"spi_sun4i.file=drivers/spi/spi-sun4i\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [22 x i8] c"spi_sun4i.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun4i-spi\00", [22 x i8] zeroinitializer }, align 32
@sun4i_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun4i_spi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_spi_runtime_suspend, ptr @sun4i_spi_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to allocate SPI Master\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_spi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/spi/spi-sun4i.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr = internal global ptr @sun4i_spi_probe._entry, section ".printk_index", align 4
@sun4i_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr.8 = internal global ptr @sun4i_spi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 475, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to acquire AHB clock\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr.12 = internal global ptr @sun4i_spi_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mod\00", [28 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to acquire module clock\0A\00", [32 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr.16 = internal global ptr @sun4i_spi_probe._entry.14, section ".printk_index", align 4
@sun4i_spi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't resume the device\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr.19 = internal global ptr @sun4i_spi_probe._entry.17, section ".printk_index", align 4
@sun4i_spi_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot register SPI master\0A\00", [36 x i8] zeroinitializer }, align 32
@sun4i_spi_probe._entry_ptr.22 = internal global ptr @sun4i_spi_probe._entry.20, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sun4i_spi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 337, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: timeout transferring %u bytes@%iHz for %i(%i)ms\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_spi_transfer_one\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun4i_spi_transfer_one._entry_ptr = internal global ptr @sun4i_spi_transfer_one._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@sun4i_spi_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't enable AHB clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun4i_spi_runtime_resume\00", [39 x i8] zeroinitializer }, align 32
@sun4i_spi_runtime_resume._entry_ptr = internal global ptr @sun4i_spi_runtime_resume._entry, section ".printk_index", align 4
@sun4i_spi_runtime_resume._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 401, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't enable module clock\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_spi_runtime_resume._entry_ptr.31 = internal global ptr @sun4i_spi_runtime_resume._entry.29, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"sun4i_spi_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 537, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 541, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"sun4i_spi_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 526, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"sun4i_spi_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 532, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 435, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 457, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 473, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 475, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 480, i32 40 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 482, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 495, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 505, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 334, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 87, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 395, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [27 x i8] c"../drivers/spi/spi-sun4i.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 401, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_sun4i_spi_driver_exit, ptr @__initcall__kmod_spi_sun4i__241_546_sun4i_spi_driver_init6, ptr @sun4i_spi_driver_exit, ptr @sun4i_spi_probe._entry, ptr @sun4i_spi_probe._entry.10, ptr @sun4i_spi_probe._entry.14, ptr @sun4i_spi_probe._entry.17, ptr @sun4i_spi_probe._entry.20, ptr @sun4i_spi_probe._entry.6, ptr @sun4i_spi_probe._entry_ptr, ptr @sun4i_spi_probe._entry_ptr.12, ptr @sun4i_spi_probe._entry_ptr.16, ptr @sun4i_spi_probe._entry_ptr.19, ptr @sun4i_spi_probe._entry_ptr.22, ptr @sun4i_spi_probe._entry_ptr.8, ptr @sun4i_spi_runtime_resume._entry, ptr @sun4i_spi_runtime_resume._entry.29, ptr @sun4i_spi_runtime_resume._entry_ptr, ptr @sun4i_spi_runtime_resume._entry_ptr.31, ptr @sun4i_spi_transfer_one._entry, ptr @sun4i_spi_transfer_one._entry_ptr, ptr @sun4i_spi_driver, ptr @.str, ptr @sun4i_spi_match, ptr @sun4i_spi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_spi_runtime_resume._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_spi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_spi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 84, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i129 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i129 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i129, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base_addr = getelementptr inbounds %struct.sun4i_spi, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  br label %spi_controller_put.exit

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.spi_controller_put.exit_crit_edge, label %if.end12

if.end9.spi_controller_put.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_controller_put.exit

if.end12:                                         ; preds = %if.end9
  %call.i130 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call10, ptr noundef nonnull @sun4i_spi_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool15.not = icmp eq i32 %call.i130, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %spi_controller_put.exit

if.end21:                                         ; preds = %if.end12
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %2, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100000000, ptr %max_speed_hz, align 8
  %min_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %min_speed_hz to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3000, ptr %min_speed_hz, align 4
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %8 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sun4i_spi_set_cs, ptr %set_cs, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %9 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sun4i_spi_transfer_one, ptr %transfer_one, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4, ptr %num_chipselect, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 15, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 128, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %of_node25 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %15 = ptrtoint ptr %of_node25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %of_node25, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %16 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %auto_runtime_pm, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 13
  %17 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sun4i_spi_max_transfer_size, ptr %max_transfer_size, align 8
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.9) #6
  %hclk = getelementptr inbounds %struct.sun4i_spi, ptr %2, i32 0, i32 2
  %18 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call27, ptr %hclk, align 4
  %cmp.i131 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  %19 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hclk, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %spi_controller_put.exit

if.end37:                                         ; preds = %if.end21
  %call39 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #6
  %mclk = getelementptr inbounds %struct.sun4i_spi, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call39, ptr %mclk, align 4
  %cmp.i132 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end45, label %if.end49

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %23 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mclk, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %spi_controller_put.exit

if.end49:                                         ; preds = %if.end37
  %done = getelementptr inbounds %struct.sun4i_spi, ptr %2, i32 0, i32 4
  %26 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.sun4i_spi, ptr %2, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #6
  %call51 = tail call i32 @sun4i_spi_runtime_resume(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %spi_controller_put.exit

if.end58:                                         ; preds = %if.end49
  %call.i133 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i134 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  %call65 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end58.cleanup_crit_edge, label %do.end70

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end70:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %call75 = tail call i32 @sun4i_spi_runtime_suspend(ptr noundef %dev)
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %do.end70, %do.end56, %do.end45, %do.end33, %do.end19, %if.end9.spi_controller_put.exit_crit_edge, %if.then6
  %ret.0 = phi i32 [ %4, %if.then6 ], [ %call.i130, %do.end19 ], [ %21, %do.end33 ], [ %25, %do.end45 ], [ %call51, %do.end56 ], [ %call65, %do.end70 ], [ -6, %if.end9.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end58.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -12, %do.end ], [ 0, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr.i = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !79
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %and = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 256) #6, !srcloc !82
  %6 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !79
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %and.i = and i32 %9, 127
  %10 = tail call i32 @llvm.umin.i32(i32 %and.i, i32 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not2.i = icmp eq i32 %10, 0
  br i1 %tobool.not2.i, label %if.then.sun4i_spi_drain_fifo.exit_crit_edge, label %while.body.lr.ph.i

if.then.sun4i_spi_drain_fifo.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_drain_fifo.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %rx_buf.i = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec3.in.i = phi i32 [ %10, %while.body.lr.ph.i ], [ %dec3.i, %if.end6.i.while.body.i_crit_edge ]
  %dec3.i = add nsw i32 %dec3.in.i, -1
  %11 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_addr.i, align 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf.i, align 4
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %while.body.i.if.end6.i_crit_edge, label %if.then4.i

while.body.i.if.end6.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i8, ptr %15, i32 1
  %16 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %incdec.ptr.i, ptr %rx_buf.i, align 4
  %17 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %13, ptr %15, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %while.body.i.if.end6.i_crit_edge
  %tobool.not.i = icmp eq i32 %dec3.i, 0
  br i1 %tobool.not.i, label %if.end6.i.sun4i_spi_drain_fifo.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end6.i.sun4i_spi_drain_fifo.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_drain_fifo.exit

sun4i_spi_drain_fifo.exit:                        ; preds = %if.end6.i.sun4i_spi_drain_fifo.exit_crit_edge, %if.then.sun4i_spi_drain_fifo.exit_crit_edge
  %done = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %done) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #6, !srcloc !79
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %and.i28 = and i32 %21, 127
  %22 = tail call i32 @llvm.umin.i32(i32 %and.i28, i32 64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not2.i29 = icmp eq i32 %22, 0
  br i1 %tobool.not2.i29, label %if.then3.sun4i_spi_drain_fifo.exit40_crit_edge, label %while.body.lr.ph.i31

if.then3.sun4i_spi_drain_fifo.exit40_crit_edge:   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_drain_fifo.exit40

while.body.lr.ph.i31:                             ; preds = %if.then3
  %rx_buf.i30 = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 6
  br label %while.body.i35

while.body.i35:                                   ; preds = %if.end6.i39.while.body.i35_crit_edge, %while.body.lr.ph.i31
  %dec3.in.i32 = phi i32 [ %22, %while.body.lr.ph.i31 ], [ %dec3.i33, %if.end6.i39.while.body.i35_crit_edge ]
  %dec3.i33 = add nsw i32 %dec3.in.i32, -1
  %23 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i, align 4
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %24) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %26 = ptrtoint ptr %rx_buf.i30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_buf.i30, align 4
  %tobool3.not.i34 = icmp eq ptr %27, null
  br i1 %tobool3.not.i34, label %while.body.i35.if.end6.i39_crit_edge, label %if.then4.i37

while.body.i35.if.end6.i39_crit_edge:             ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i39

if.then4.i37:                                     ; preds = %while.body.i35
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i36 = getelementptr i8, ptr %27, i32 1
  %28 = ptrtoint ptr %rx_buf.i30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %incdec.ptr.i36, ptr %rx_buf.i30, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %25, ptr %27, align 1
  br label %if.end6.i39

if.end6.i39:                                      ; preds = %if.then4.i37, %while.body.i35.if.end6.i39_crit_edge
  %tobool.not.i38 = icmp eq i32 %dec3.i33, 0
  br i1 %tobool.not.i38, label %if.end6.i39.sun4i_spi_drain_fifo.exit40_crit_edge, label %if.end6.i39.while.body.i35_crit_edge

if.end6.i39.while.body.i35_crit_edge:             ; preds = %if.end6.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i35

if.end6.i39.sun4i_spi_drain_fifo.exit40_crit_edge: ; preds = %if.end6.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_drain_fifo.exit40

sun4i_spi_drain_fifo.exit40:                      ; preds = %if.end6.i39.sun4i_spi_drain_fifo.exit40_crit_edge, %if.then3.sun4i_spi_drain_fifo.exit40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 268435456) #6, !srcloc !82
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %and5 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %32 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 40
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %35 = lshr i32 %34, 8
  %and.i.i = and i32 %35, 127
  %sub.i = sub nsw i32 64, %and.i.i
  %len1.i = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 7
  %36 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len1.i, align 4
  %38 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not29.i = icmp eq i32 %38, 0
  br i1 %tobool.not29.i, label %if.then7.sun4i_spi_fill_fifo.exit_crit_edge, label %while.body.lr.ph.i43

if.then7.sun4i_spi_fill_fifo.exit_crit_edge:      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_fill_fifo.exit

while.body.lr.ph.i43:                             ; preds = %if.then7
  %tx_buf.i = getelementptr inbounds %struct.sun4i_spi, ptr %dev_id, i32 0, i32 5
  br label %while.body.i44

while.body.i44:                                   ; preds = %cond.end12.i.while.body.i44_crit_edge, %while.body.lr.ph.i43
  %dec30.in.i = phi i32 [ %38, %while.body.lr.ph.i43 ], [ %dec30.i, %cond.end12.i.while.body.i44_crit_edge ]
  %dec30.i = add i32 %dec30.in.i, -1
  %39 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %40, null
  br i1 %tobool8.not.i, label %while.body.i44.cond.end12.i_crit_edge, label %cond.true9.i

while.body.i44.cond.end12.i_crit_edge:            ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end12.i

cond.true9.i:                                     ; preds = %while.body.i44
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i45 = getelementptr i8, ptr %40, i32 1
  %41 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %incdec.ptr.i45, ptr %tx_buf.i, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %40, align 1
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.true9.i, %while.body.i44.cond.end12.i_crit_edge
  %cond13.i = phi i8 [ %43, %cond.true9.i ], [ 0, %while.body.i44.cond.end12.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i46, i8 %cond13.i) #6, !srcloc !86
  %46 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len1.i, align 4
  %dec16.i = add i32 %47, -1
  store i32 %dec16.i, ptr %len1.i, align 4
  %tobool.not.i47 = icmp eq i32 %dec30.i, 0
  br i1 %tobool.not.i47, label %cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge, label %cond.end12.i.while.body.i44_crit_edge

cond.end12.i.while.body.i44_crit_edge:            ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i44

cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge:  ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_fill_fifo.exit

sun4i_spi_fill_fifo.exit:                         ; preds = %cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge, %if.then7.sun4i_spi_fill_fifo.exit_crit_edge
  %48 = phi i32 [ %37, %if.then7.sun4i_spi_fill_fifo.exit_crit_edge ], [ %dec16.i, %cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool8.not = icmp eq i32 %48, 0
  br i1 %tobool8.not, label %if.then9, label %sun4i_spi_fill_fifo.exit.if.end10_crit_edge

sun4i_spi_fill_fifo.exit.if.end10_crit_edge:      ; preds = %sun4i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %sun4i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %50, i32 12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %52 = and i32 %51, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %54, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %52) #6, !srcloc !82
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %sun4i_spi_fill_fifo.exit.if.end10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %56, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 1048576) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end4.cleanup_crit_edge, %sun4i_spi_drain_fifo.exit40, %sun4i_spi_drain_fifo.exit
  %retval.0 = phi i32 [ 1, %sun4i_spi_drain_fifo.exit ], [ 1, %sun4i_spi_drain_fifo.exit40 ], [ 1, %if.end10 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_spi_set_cs(ptr nocapture noundef readonly %spi, i1 noundef zeroext %enable) #2 align 64 {
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
  %base_addr.i = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %7 = and i32 %6, -3145985
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %9 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 12
  %and2 = and i32 %shl, 12288
  %or = or i32 %and2, %8
  %or4 = or i32 %or, 196608
  %or3 = and i32 %or, -196625
  %and5 = or i32 %or3, 65536
  %reg.0 = select i1 %enable, i32 %or4, i32 %and5
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 8
  %and9 = and i32 %reg.0, -17
  %and6 = shl i32 %12, 2
  %13 = and i32 %and6, 16
  %14 = or i32 %and9, %13
  %reg.1 = xor i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %reg.1) #6
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %15) #6, !srcloc !82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_transfer_one(ptr noundef %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef readonly %tfr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %3)
  %cmp = icmp ugt i32 %3, 16777215
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfr, align 4
  %tobool.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %3)
  %cmp2 = icmp eq i32 %3, 16777215
  %or.cond = select i1 %tobool.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done, align 4
  %7 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfr, align 4
  %tx_buf6 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %tx_buf6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %tx_buf6, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 1
  %10 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_buf, align 4
  %rx_buf7 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %rx_buf7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %rx_buf7, align 4
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  %len9 = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %len9, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %base_addr.i = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #6, !srcloc !82
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i206 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #6, !srcloc !79
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %or11 = or i32 %21, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or11) #6
  %23 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i208 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 %22) #6, !srcloc !82
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 8
  %and15 = and i32 %21, -32845
  %and = shl i32 %26, 2
  %27 = and i32 %and, 8
  %reg.0 = or i32 %27, %and15
  %28 = and i32 %and, 4
  %reg.1 = or i32 %reg.0, %28
  %and26 = shl i32 %26, 3
  %29 = and i32 %and26, 64
  %reg.2 = or i32 %reg.1, %29
  %30 = ptrtoint ptr %rx_buf7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_buf7, align 4
  %tobool34.not = icmp eq ptr %31, null
  %masksel = select i1 %tobool34.not, i32 32768, i32 0
  %reg.3 = or i32 %reg.2, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %reg.3) #6
  %33 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i210 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210, i32 %32) #6, !srcloc !82
  %mclk = getelementptr inbounds %struct.sun4i_spi, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mclk, align 4
  %call40 = tail call i32 @clk_get_rate(ptr noundef %36) #6
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 12
  %37 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed_hz, align 4
  %mul = shl i32 %38, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %mul)
  %cmp41 = icmp ult i32 %call40, %mul
  br i1 %cmp41, label %if.then42, label %if.end4.if.end49_crit_edge

if.end4.if.end49_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then42:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mclk, align 4
  %call46 = tail call i32 @clk_set_rate(ptr noundef %40, i32 noundef %mul) #6
  %41 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mclk, align 4
  %call48 = tail call i32 @clk_get_rate(ptr noundef %42) #6
  %43 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr = load i32, ptr %speed_hz, align 4
  %.pre = shl i32 %.pr, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %if.end4.if.end49_crit_edge
  %mul51.pre-phi = phi i32 [ %.pre, %if.then42 ], [ %mul, %if.end4.if.end49_crit_edge ]
  %44 = phi i32 [ %.pr, %if.then42 ], [ %38, %if.end4.if.end49_crit_edge ]
  %mclk_rate.0 = phi i32 [ %call48, %if.then42 ], [ %call40, %if.end4.if.end49_crit_edge ]
  %div52 = udiv i32 %mclk_rate.0, %mul51.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %div52)
  %cmp53 = icmp ult i32 %div52, 257
  br i1 %cmp53, label %if.then54, label %cond.false63

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul51.pre-phi, i32 %mclk_rate.0)
  %cmp55.not = icmp ugt i32 %mul51.pre-phi, %mclk_rate.0
  %dec = add nuw nsw i32 %div52, 255
  %phi.bo = and i32 %dec, 255
  %phi.bo204 = or i32 %phi.bo, 4096
  %div.0 = select i1 %cmp55.not, i32 4096, i32 %phi.bo204
  br label %if.end87

cond.false63:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_rate.0)
  %tobool.not.i.i = icmp eq i32 %mclk_rate.0, 0
  %45 = tail call i32 @llvm.ctlz.i32(i32 %mclk_rate.0, i1 true) #6, !range !87
  %sub.i.op.i = xor i32 %45, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.i211 = icmp eq i32 %44, 0
  %46 = tail call i32 @llvm.ctlz.i32(i32 %44, i1 true) #6, !range !87
  %sub.i.op.i212.neg = add nsw i32 %46, -31
  %sub.i213.neg = select i1 %tobool.not.i.i211, i32 1, i32 %sub.i.op.i212.neg
  %sub85 = add nsw i32 %sub.i213.neg, %sub.i
  %and86 = shl nsw i32 %sub85, 8
  %shl = and i32 %and86, 3840
  br label %if.end87

if.end87:                                         ; preds = %cond.false63, %if.then54
  %reg.4 = phi i32 [ %div.0, %if.then54 ], [ %shl, %cond.false63 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %47 = tail call i32 @llvm.bswap.i32(i32 %reg.4) #6
  %48 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i215 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %47) #6, !srcloc !82
  %50 = ptrtoint ptr %tx_buf6 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_buf6, align 4
  %tobool89.not = icmp eq ptr %51, null
  br i1 %tobool89.not, label %if.end87.if.end92_crit_edge, label %if.then90

if.end87.if.end92_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end87.if.end92_crit_edge
  %tx_len.0 = phi i32 [ %53, %if.then90 ], [ 0, %if.end87.if.end92_crit_edge ]
  %54 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len, align 4
  %and94 = and i32 %55, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %56 = tail call i32 @llvm.bswap.i32(i32 %and94) #6
  %57 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i217 = getelementptr i8, ptr %58, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i217, i32 %56) #6, !srcloc !82
  %and95 = and i32 %tx_len.0, 16777215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %and95) #6
  %60 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %61, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i219, i32 %59) #6, !srcloc !82
  %62 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %63, i32 40
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %65 = lshr i32 %64, 8
  %and.i.i = and i32 %65, 127
  %sub.i220 = sub nsw i32 64, %and.i.i
  %66 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len9, align 4
  %68 = tail call i32 @llvm.smin.i32(i32 %sub.i220, i32 %67)
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 63)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not29.i = icmp eq i32 %69, 0
  br i1 %tobool.not29.i, label %if.end92.sun4i_spi_fill_fifo.exit_crit_edge, label %if.end92.while.body.i_crit_edge

if.end92.while.body.i_crit_edge:                  ; preds = %if.end92
  br label %while.body.i

if.end92.sun4i_spi_fill_fifo.exit_crit_edge:      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_fill_fifo.exit

while.body.i:                                     ; preds = %cond.end12.i.while.body.i_crit_edge, %if.end92.while.body.i_crit_edge
  %dec30.in.i = phi i32 [ %dec30.i, %cond.end12.i.while.body.i_crit_edge ], [ %69, %if.end92.while.body.i_crit_edge ]
  %dec30.i = add i32 %dec30.in.i, -1
  %70 = ptrtoint ptr %tx_buf6 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tx_buf6, align 4
  %tobool8.not.i = icmp eq ptr %71, null
  br i1 %tobool8.not.i, label %while.body.i.cond.end12.i_crit_edge, label %cond.true9.i

while.body.i.cond.end12.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end12.i

cond.true9.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr i8, ptr %71, i32 1
  %72 = ptrtoint ptr %tx_buf6 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %incdec.ptr.i, ptr %tx_buf6, align 4
  %73 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %71, align 1
  br label %cond.end12.i

cond.end12.i:                                     ; preds = %cond.true9.i, %while.body.i.cond.end12.i_crit_edge
  %cond13.i = phi i8 [ %74, %cond.true9.i ], [ 0, %while.body.i.cond.end12.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %75 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i222 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i222, i8 %cond13.i) #6, !srcloc !86
  %77 = ptrtoint ptr %len9 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %len9, align 4
  %dec16.i = add i32 %78, -1
  store i32 %dec16.i, ptr %len9, align 4
  %tobool.not.i = icmp eq i32 %dec30.i, 0
  br i1 %tobool.not.i, label %cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge, label %cond.end12.i.while.body.i_crit_edge

cond.end12.i.while.body.i_crit_edge:              ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge:  ; preds = %cond.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_spi_fill_fifo.exit

sun4i_spi_fill_fifo.exit:                         ; preds = %cond.end12.i.sun4i_spi_fill_fifo.exit_crit_edge, %if.end92.sun4i_spi_fill_fifo.exit_crit_edge
  %79 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 12
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %82 = or i32 %81, 268435712
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %82) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %tx_len.0)
  %cmp96 = icmp ugt i32 %tx_len.0, 64
  br i1 %cmp96, label %if.then98, label %sun4i_spi_fill_fifo.exit.if.end99_crit_edge

sun4i_spi_fill_fifo.exit.if.end99_crit_edge:      ; preds = %sun4i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then98:                                        ; preds = %sun4i_spi_fill_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i.i224 = getelementptr i8, ptr %86, i32 12
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i224) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %88 = or i32 %87, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i4.i226 = getelementptr i8, ptr %90, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i226, i32 %88) #6, !srcloc !82
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %sun4i_spi_fill_fifo.exit.if.end99_crit_edge
  %91 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i228 = getelementptr i8, ptr %92, i32 8
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #6, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %94 = or i32 %93, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i230 = getelementptr i8, ptr %96, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230, i32 %94) #6, !srcloc !82
  %97 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len, align 4
  %mul104 = shl i32 %98, 4
  %99 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %speed_hz, align 4
  %div106 = udiv i32 %100, 1000
  %div107 = udiv i32 %mul104, %div106
  %101 = tail call i32 @llvm.umax.i32(i32 %div107, i32 100)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %102 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %101) #6
  %call116 = tail call i32 @wait_for_completion_timeout(ptr noundef %done, i32 noundef %call2.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.end, label %if.end99.out_crit_edge

if.end99.out_crit_edge:                           ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end:                                           ; preds = %if.end99
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %104 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i231 = icmp eq ptr %105, null
  br i1 %tobool.not.i231, label %if.end.i232, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i232:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i232, %do.end.dev_name.exit_crit_edge
  %retval.0.i233 = phi ptr [ %107, %if.end.i232 ], [ %105, %do.end.dev_name.exit_crit_edge ]
  %108 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len, align 4
  %110 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %speed_hz, align 4
  %sub123 = sub i32 %103, %102
  %call124 = tail call i32 @jiffies_to_msecs(i32 noundef %sub123) #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %master, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i233, i32 noundef %109, i32 noundef %111, i32 noundef %call124, i32 noundef %101) #9
  br label %out

out:                                              ; preds = %dev_name.exit, %if.end99.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end99.out_crit_edge ], [ -110, %dev_name.exit ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %112 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i235 = getelementptr i8, ptr %113, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235, i32 0) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_spi_max_transfer_size(ptr nocapture noundef readnone %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16777214
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %hclk = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %mclk = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mclk, align 4
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end9, label %if.then3.i25

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i25, %if.end.do.end8_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  %8 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %base_addr.i = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50332672) #6, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end8, %do.end
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i26.ph, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_spi_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %hclk = getelementptr inbounds %struct.sun4i_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_spi_sun4i__241_546_sun4i_spi_driver_init6, !1, !"__initcall__kmod_spi_sun4i__241_546_sun4i_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sun4i.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_sun4i_spi_driver_exit, !1, !"__exitcall_sun4i_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author242, !4, !"__UNIQUE_ID_author242", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sun4i.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sun4i.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_description244, !8, !"__UNIQUE_ID_description244", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sun4i.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-sun4i.c", i32 551, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sun4i.c", i32 541, i32 12}
!14 = !{ptr @sun4i_spi_driver, !15, !"sun4i_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sun4i.c", i32 537, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-sun4i.c", i32 435, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun4i_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-sun4i.c", i32 457, i32 3}
!26 = !{ptr @sun4i_spi_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4i_spi_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sun4i.c", i32 473, i32 40}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-sun4i.c", i32 475, i32 3}
!32 = !{ptr @sun4i_spi_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun4i_spi_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-sun4i.c", i32 480, i32 40}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-sun4i.c", i32 482, i32 3}
!38 = !{ptr @sun4i_spi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun4i_spi_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-sun4i.c", i32 495, i32 3}
!42 = !{ptr @sun4i_spi_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sun4i_spi_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-sun4i.c", i32 505, i32 3}
!46 = !{ptr @sun4i_spi_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sun4i_spi_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-sun4i.c", i32 334, i32 3}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun4i_spi_transfer_one._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun4i_spi_transfer_one._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-sun4i.c", i32 395, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sun4i_spi_runtime_resume._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sun4i_spi_runtime_resume._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-sun4i.c", i32 401, i32 3}
!64 = !{ptr @sun4i_spi_runtime_resume._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sun4i_spi_runtime_resume._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @sun4i_spi_match, !67, !"sun4i_spi_match", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-sun4i.c", i32 526, i32 34}
!68 = !{ptr @sun4i_spi_pm_ops, !69, !"sun4i_spi_pm_ops", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-sun4i.c", i32 532, i32 32}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 4910232}
!80 = !{i64 2154269745}
!81 = !{i64 2154270134}
!82 = !{i64 4909814}
!83 = !{i64 4910012}
!84 = !{i64 2154271287}
!85 = !{i64 2154281320}
!86 = !{i64 4909617}
!87 = !{i32 0, i32 33}
