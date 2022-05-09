; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-fsl-spi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsl-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.fsl_spi_match_data = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.fsl_spi_platform_data = type { i32, i16, i32, i16, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mpc8xxx_spi = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.completion }
%struct.fsl_spi_reg = type { i32, [28 x i8], i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.mpc8xxx_spi_probe_info = type { %struct.fsl_spi_platform_data, ptr }
%struct.spi_mpc8xxx_cs = type { ptr, ptr, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_fsl_spi__237_866_fsl_spi_init6 = internal global ptr @fsl_spi_init, section ".initcall6.init", align 4
@of_fsl_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_fsl_spi_probe, ptr @of_fsl_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_fsl_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_spi_exit = internal global ptr @fsl_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [30 x i8] c"spi_fsl_spi.author=Kumar Gala\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [52 x i8] c"spi_fsl_spi.description=Simple Freescale SPI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [41 x i8] c"spi_fsl_spi.file=drivers/spi/spi-fsl-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"spi_fsl_spi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fsl_spi\00", [24 x i8] zeroinitializer }, align 32
@of_fsl_spi_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fsl_spi_fsl_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aeroflexgaisler,spictrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fsl_spi_grlib_config }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"cs\00", [29 x i8] zeroinitializer }, align 32
@fsl_spi_cs_control.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-fsl-spi.c\00", [38 x i8] zeroinitializer }, align 32
@fsl_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"at 0x%p (irq = %d), %s mode\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_spi_probe._entry_ptr = internal global ptr @fsl_spi_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fsl_spi_setup_transfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: Requested speed is too low: %d Hz. Will use %d Hz instead.\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_spi_do_one_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 390, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"speed_hz cannot change while CS is active\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_spi_do_one_msg\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@fsl_spi_do_one_msg._entry_ptr = internal global ptr @fsl_spi_do_one_msg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_spi_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_fsl_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl_spi_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: events %x\0A\00", [17 x i8] zeroinitializer }, align 32
@of_fsl_spi_fsl_config = internal global { %struct.fsl_spi_match_data, [28 x i8] } zeroinitializer, align 32
@of_fsl_spi_grlib_config = internal global { %struct.fsl_spi_match_data, [28 x i8] } { %struct.fsl_spi_match_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"of_fsl_spi_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 786, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 788, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"of_fsl_spi_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 64, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 744, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 700, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 678, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 272, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 389, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 543, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [22 x i8] c"of_fsl_spi_fsl_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 56, i32 34 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"of_fsl_spi_grlib_config\00", align 1
@___asan_gen_.72 = private constant [29 x i8] c"../drivers/spi/spi-fsl-spi.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 60, i32 34 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_fsl_spi_exit, ptr @__initcall__kmod_spi_fsl_spi__237_866_fsl_spi_init6, ptr @fsl_spi_do_one_msg._entry, ptr @fsl_spi_do_one_msg._entry_ptr, ptr @fsl_spi_exit, ptr @fsl_spi_probe._entry, ptr @fsl_spi_probe._entry_ptr, ptr @legacy_driver_unregister, ptr @of_fsl_spi_driver, ptr @.str, ptr @of_fsl_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @of_fsl_spi_fsl_config, ptr @of_fsl_spi_grlib_config], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fsl_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fsl_spi_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_spi_do_one_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fsl_spi_fsl_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fsl_spi_grlib_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @legacy_driver_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spi_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fsl_spi_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spi_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @of_fsl_spi_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fsl_spi_probe(ptr noundef %ofdev) #3 align 64 {
entry:
  %mem = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mem) #10
  %2 = call ptr @memset(ptr %mem, i32 255, i32 32)
  %call = tail call i32 @of_mpc8xxx_spi_probe(ptr noundef %ofdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.then5_crit_edge, label %if.then.i

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then.i:                                        ; preds = %if.end
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @of_fsl_spi_match, ptr noundef nonnull %4) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %if.then.i.if.then5_crit_edge, label %land.lhs.true.i

if.then.i.if.then5_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

land.lhs.true.i:                                  ; preds = %if.then.i
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %tobool3.not.i = icmp eq ptr %6, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.then5_crit_edge, label %fsl_spi_get_type.exit

land.lhs.true.i.if.then5_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

fsl_spi_get_type.exit:                            ; preds = %land.lhs.true.i
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %fsl_spi_get_type.exit.if.then5_crit_edge, label %fsl_spi_get_type.exit.if.end18_crit_edge

fsl_spi_get_type.exit.if.end18_crit_edge:         ; preds = %fsl_spi_get_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

fsl_spi_get_type.exit.if.then5_crit_edge:         ; preds = %fsl_spi_get_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %fsl_spi_get_type.exit.if.then5_crit_edge, %land.lhs.true.i.if.then5_crit_edge, %if.then.i.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  %call7 = tail call i32 @gpiod_count(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp11 = icmp slt i32 %call7, 1
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %max_chipselect = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %max_chipselect to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %max_chipselect, align 4
  br label %if.end18

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %conv15 = trunc i32 %call7 to i16
  %max_chipselect16 = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %10, i32 0, i32 3
  %12 = ptrtoint ptr %max_chipselect16 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv15, ptr %max_chipselect16, align 4
  %cs_control = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %cs_control to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @fsl_spi_cs_control, ptr %cs_control, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13, %fsl_spi_get_type.exit.if.end18_crit_edge
  %call19 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %mem) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = call i32 @platform_get_irq(ptr noundef %ofdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 7
  %14 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %platform_data.i.i, align 8
  %call.i.i = call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 156, i1 noundef zeroext false) #10
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end27.err.i_crit_edge, label %if.end.i

if.end27.err.i_crit_edge:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.i

if.end.i:                                         ; preds = %if.end27
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %driver_data.i.i, align 4
  call void @mpc8xxx_spi_probe(ptr noundef %dev1, ptr noundef nonnull %mem, i32 noundef %call23) #10
  %setup.i = getelementptr inbounds %struct.spi_controller, ptr %call.i.i, i32 0, i32 20
  %17 = ptrtoint ptr %setup.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @fsl_spi_setup, ptr %setup.i, align 4
  %cleanup.i = getelementptr inbounds %struct.spi_controller, ptr %call.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fsl_spi_cleanup, ptr %cleanup.i, align 8
  %transfer_one_message.i = getelementptr inbounds %struct.spi_controller, ptr %call.i.i, i32 0, i32 45
  %19 = ptrtoint ptr %transfer_one_message.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @fsl_spi_do_one_msg, ptr %transfer_one_message.i, align 4
  %use_gpio_descriptors.i = getelementptr inbounds %struct.spi_controller, ptr %call.i.i, i32 0, i32 56
  %20 = ptrtoint ptr %use_gpio_descriptors.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %use_gpio_descriptors.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %call.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  %max_bits_per_word.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %max_bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 32, ptr %max_bits_per_word.i, align 4
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.end.i.fsl_spi_get_type.exit.i_crit_edge, label %if.then.i.i

if.end.i.fsl_spi_get_type.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spi_get_type.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i125.i = call ptr @of_match_node(ptr noundef nonnull @of_fsl_spi_match, ptr noundef nonnull %25) #10
  %tobool2.not.i.i = icmp eq ptr %call.i125.i, null
  br i1 %tobool2.not.i.i, label %if.then.i.i.fsl_spi_get_type.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.fsl_spi_get_type.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spi_get_type.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %data.i.i = getelementptr inbounds %struct.of_device_id, ptr %call.i125.i, i32 0, i32 3
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %27, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.fsl_spi_get_type.exit.i_crit_edge, label %if.then4.i.i

land.lhs.true.i.i.fsl_spi_get_type.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spi_get_type.exit.i

if.then4.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  br label %fsl_spi_get_type.exit.i

fsl_spi_get_type.exit.i:                          ; preds = %if.then4.i.i, %land.lhs.true.i.i.fsl_spi_get_type.exit.i_crit_edge, %if.then.i.i.fsl_spi_get_type.exit.i_crit_edge, %if.end.i.fsl_spi_get_type.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %29, %if.then4.i.i ], [ 0, %if.then.i.i.fsl_spi_get_type.exit.i_crit_edge ], [ 0, %land.lhs.true.i.i.fsl_spi_get_type.exit.i_crit_edge ], [ 0, %if.end.i.fsl_spi_get_type.exit.i_crit_edge ]
  %type.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 22
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i, ptr %type.i, align 4
  %call7.i = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %mem) #10
  %reg_base8.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %reg_base8.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %reg_base8.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11.i, label %if.end14.i

if.then11.i:                                      ; preds = %fsl_spi_get_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call7.i to i32
  br label %spi_controller_put.exit.i

if.end14.i:                                       ; preds = %fsl_spi_get_type.exit.i
  %33 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp16.i = icmp eq i32 %34, 1
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end18.i_crit_edge

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  %35 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %platform_data.i.i, align 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %reg_base3.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %reg_base3.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_base3.i.i, align 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #10, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %set_shifts.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 25
  %44 = ptrtoint ptr %set_shifts.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @fsl_spi_grlib_set_shifts, ptr %set_shifts.i.i, align 4
  %shr.i.i = lshr i32 %43, 20
  %and.i.i = and i32 %shr.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i127.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i127.i, label %if.then17.i.if.end.i.i_crit_edge, label %if.then.i128.i

if.then17.i.if.end.i.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i128.i:                                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = trunc i32 %and.i.i to i8
  %conv.i.i = add nuw nsw i8 %45, 1
  %max_bits_per_word.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 24
  %46 = ptrtoint ptr %max_bits_per_word.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv.i.i, ptr %max_bits_per_word.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i128.i, %if.then17.i.if.end.i.i_crit_edge
  %native_chipselects.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 23
  %47 = ptrtoint ptr %native_chipselects.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %native_chipselects.i.i, align 4
  %48 = and i32 %43, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not.i.i = icmp eq i32 %48, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.fsl_spi_grlib_probe.exit.i_crit_edge, label %if.then8.i.i

if.end.i.i.fsl_spi_grlib_probe.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spi_grlib_probe.exit.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr9.i.i = lshr i32 %43, 24
  %49 = ptrtoint ptr %native_chipselects.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shr9.i.i, ptr %native_chipselects.i.i, align 4
  %slvsel.i.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %42, i32 0, i32 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %slvsel.i.i, i32 -1) #10, !srcloc !59
  br label %fsl_spi_grlib_probe.exit.i

fsl_spi_grlib_probe.exit.i:                       ; preds = %if.then8.i.i, %if.end.i.i.fsl_spi_grlib_probe.exit.i_crit_edge
  %50 = ptrtoint ptr %native_chipselects.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %native_chipselects.i.i, align 4
  %conv14.i.i = trunc i32 %51 to i16
  %num_chipselect.i.i = getelementptr inbounds %struct.spi_controller, ptr %38, i32 0, i32 3
  %52 = ptrtoint ptr %num_chipselect.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv14.i.i, ptr %num_chipselect.i.i, align 2
  %cs_control.i.i = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %36, i32 0, i32 4
  %53 = ptrtoint ptr %cs_control.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @fsl_spi_grlib_cs_control, ptr %cs_control.i.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %fsl_spi_grlib_probe.exit.i, %if.end14.i.if.end18.i_crit_edge
  %54 = ptrtoint ptr %max_bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %max_bits_per_word.i, align 4
  %conv.i = zext i8 %55 to i32
  %sub20.i = sub nsw i32 32, %conv.i
  %shr.i = lshr i32 -1, %sub20.i
  %and21.i = and i32 %shr.i, -2147418120
  %bits_per_word_mask.i = getelementptr inbounds %struct.spi_controller, ptr %call.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %bits_per_word_mask.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and21.i, ptr %bits_per_word_mask.i, align 8
  %flags.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 21
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags.i, align 4
  %and22.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end25.i_crit_edge, label %if.then24.i

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %set_shifts.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 25
  %59 = ptrtoint ptr %set_shifts.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @fsl_spi_qe_cpu_set_shifts, ptr %set_shifts.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end25.i_crit_edge
  %set_shifts26.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 25
  %60 = ptrtoint ptr %set_shifts26.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %set_shifts26.i, align 4
  %tobool27.not.i = icmp eq ptr %61, null
  br i1 %tobool27.not.i, label %if.end25.i.if.end30.i_crit_edge, label %if.then28.i

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  %rx_shift.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 19
  %tx_shift.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 20
  call void %61(ptr noundef %rx_shift.i, ptr noundef %tx_shift.i, i32 noundef 8, i32 noundef 1) #10
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %if.end25.i.if.end30.i_crit_edge
  %irq31.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %22, i32 0, i32 16
  %62 = ptrtoint ptr %irq31.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq31.i, align 4
  %call.i129.i = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %63, ptr noundef nonnull @fsl_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129.i)
  %cmp33.not.i = icmp eq i32 %call.i129.i, 0
  br i1 %cmp33.not.i, label %if.end36.i, label %if.end30.i.spi_controller_put.exit.i_crit_edge

if.end30.i.spi_controller_put.exit.i_crit_edge:   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit.i

if.end36.i:                                       ; preds = %if.end30.i
  %64 = ptrtoint ptr %reg_base8.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_base8.i, align 4
  %mode.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %65, i32 0, i32 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode.i, i32 0) #10, !srcloc !59
  %mask.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %65, i32 0, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #10, !srcloc !59
  %command.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %65, i32 0, i32 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %command.i, i32 0) #10, !srcloc !59
  %event.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %65, i32 0, i32 3
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %event.i, i32 -1) #10, !srcloc !59
  %66 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %15, align 4
  %or38.i = or i32 %67, 796852224
  %68 = ptrtoint ptr %max_bits_per_word.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %max_bits_per_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %69)
  %cmp41.i = icmp ult i8 %69, 8
  %conv40.i = zext i8 %69 to i32
  %and44.i = and i32 %or38.i, -15728641
  %sub47.i = shl nuw nsw i32 %conv40.i, 20
  %shl.i = add nsw i32 %sub47.i, -1048576
  %or48.i = or i32 %shl.i, %and44.i
  %regval.0.i = select i1 %cmp41.i, i32 %or48.i, i32 %or38.i
  %70 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags.i, align 4
  %and51.i = shl i32 %71, 14
  %72 = and i32 %and51.i, 16384
  %73 = or i32 %regval.0.i, %72
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode.i, i32 %73) #10, !srcloc !59
  %call57.i = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.end36.i.spi_controller_put.exit.i_crit_edge, label %do.end.i

if.end36.i.spi_controller_put.exit.i_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_controller_put.exit.i

do.end.i:                                         ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %irq31.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq31.i, align 4
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %call64.i = call ptr @mpc8xxx_spi_strmode(i32 noundef %77) #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %65, i32 noundef %75, ptr noundef %call64.i) #13
  br label %fsl_spi_probe.exit

spi_controller_put.exit.i:                        ; preds = %if.end36.i.spi_controller_put.exit.i_crit_edge, %if.end30.i.spi_controller_put.exit.i_crit_edge, %if.then11.i
  %ret.0.i = phi i32 [ %32, %if.then11.i ], [ %call.i129.i, %if.end30.i.spi_controller_put.exit.i_crit_edge ], [ %call57.i, %if.end36.i.spi_controller_put.exit.i_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i.i) #10
  br label %err.i

err.i:                                            ; preds = %spi_controller_put.exit.i, %if.end27.err.i_crit_edge
  %ret.2.i = phi i32 [ %ret.0.i, %spi_controller_put.exit.i ], [ -12, %if.end27.err.i_crit_edge ]
  %78 = inttoptr i32 %ret.2.i to ptr
  br label %fsl_spi_probe.exit

fsl_spi_probe.exit:                               ; preds = %err.i, %do.end.i
  %retval.0.i54 = phi ptr [ %78, %err.i ], [ %call.i.i, %do.end.i ]
  %cmp.i.i55 = icmp ugt ptr %retval.0.i54, inttoptr (i32 -4096 to ptr)
  %79 = ptrtoint ptr %retval.0.i54 to i32
  %spec.select.i = select i1 %cmp.i.i55, i32 %79, i32 0
  br label %cleanup

cleanup:                                          ; preds = %fsl_spi_probe.exit, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %fsl_spi_probe.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mem) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @of_fsl_spi_remove(ptr nocapture noundef readonly %ofdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mpc8xxx_spi_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spi_cs_control(ptr nocapture noundef readonly %spi, i1 noundef zeroext %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %0 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i1 %on to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %1, i32 noundef %conv) #10
  br label %if.end57

if.else:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent4, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %call5 = tail call ptr @to_of_pinfo(ptr noundef %7) #10
  %immr_spi_cs = getelementptr inbounds %struct.mpc8xxx_spi_probe_info, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %immr_spi_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %immr_spi_cs, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.rhs, label %do.body49

land.rhs:                                         ; preds = %if.else
  %.b64 = load i1, ptr @fsl_spi_cs_control.__already_done, align 1
  br i1 %.b64, label %land.rhs.if.end57_crit_edge, label %if.then17, !prof !60

land.rhs.if.end57_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then17:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @fsl_spi_cs_control.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 700, i32 noundef 9, ptr noundef null) #10
  br label %if.end57

do.body49:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %cond = select i1 %on, i32 0, i32 -2147483648
  %10 = ptrtoint ptr %immr_spi_cs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %immr_spi_cs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %cond) #10, !srcloc !59
  br label %if.end57

if.end57:                                         ; preds = %do.body49, %if.then17, %land.rhs.if.end57_crit_edge, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_of_pinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpc8xxx_spi_probe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spi_setup(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %controller_state.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %cs.0 = phi ptr [ %3, %if.end.if.end8_crit_edge ], [ %call7.i.i, %if.end7 ]
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %reg_base10 = getelementptr inbounds %struct.mpc8xxx_spi, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %reg_base10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base10, align 4
  %hw_mode11 = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %cs.0, i32 0, i32 4
  %12 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_mode11, align 4
  %mode = getelementptr inbounds %struct.fsl_spi_reg, ptr %11, i32 0, i32 2
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mode) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %and = and i32 %14, -1946157057
  %15 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %hw_mode11, align 4
  %mode15 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %16 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode15, align 8
  %and16 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end8.if.end20_crit_edge, label %if.then18

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then18:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %and, 268435456
  %18 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %hw_mode11, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end8.if.end20_crit_edge
  %19 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode15, align 8
  %and22 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hw_mode11, align 4
  %or26 = or i32 %22, 536870912
  store i32 %or26, ptr %hw_mode11, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %23 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode15, align 8
  %and29 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then31, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hw_mode11, align 4
  %or33 = or i32 %26, 67108864
  store i32 %or33, ptr %hw_mode11, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end27.if.end34_crit_edge
  %27 = ptrtoint ptr %mode15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode15, align 8
  %and36 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end41_crit_edge, label %if.then38

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hw_mode11, align 4
  %or40 = or i32 %30, 1073741824
  store i32 %or40, ptr %hw_mode11, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end34.if.end41_crit_edge
  %call42 = tail call fastcc i32 @fsl_spi_setup_transfer(ptr noundef %spi, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp = icmp slt i32 %call42, 0
  br i1 %cmp, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end41
  %31 = ptrtoint ptr %hw_mode11 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %13, ptr %hw_mode11, align 4
  br i1 %tobool2.not, label %if.then46, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then46:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %cs.0) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %parent.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 1
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent1.i, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %platform_data.i, align 8
  %cs_control.i = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %cs_control.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cs_control.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end48.cleanup_crit_edge, label %if.then2.i

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %39(ptr noundef %spi, i1 noundef zeroext false) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then2.i, %if.end48.cleanup_crit_edge, %if.then46, %if.then43.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ %call42, %if.then46 ], [ %call42, %if.then43.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ 0, %if.then2.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spi_cleanup(ptr nocapture noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  tail call void @kfree(ptr noundef %1) #10
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %controller_state.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spi_do_one_msg(ptr noundef %master, ptr noundef %m) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi1, align 4
  %flags = getelementptr inbounds %struct.mpc8xxx_spi, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.cond.preheader:                               ; preds = %entry
  %6 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn217 = load ptr, ptr %m, align 4
  %cmp.not218 = icmp eq ptr %.pn217, %m
  br i1 %cmp.not218, label %for.cond.preheader.if.end26_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end26_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn219 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn217, %for.cond.preheader.for.body_crit_edge ]
  %len = getelementptr i8, ptr %.pn219, i32 -76
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %8)
  %cmp3 = icmp ult i32 %8, 256
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %bits_per_word = getelementptr i8, ptr %.pn219, i32 -39
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp4.not = icmp eq i8 %10, 8
  br i1 %cmp4.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %and8 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.end.for.inc.sink.split_crit_edge, label %if.else

if.end.for.inc.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.end
  %and14 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.else.for.inc.sink.split_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else.for.inc.sink.split_crit_edge, %if.end.for.inc.sink.split_crit_edge
  %.sink = phi i8 [ 32, %if.end.for.inc.sink.split_crit_edge ], [ 16, %if.else.for.inc.sink.split_crit_edge ]
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %bits_per_word, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %.pn219 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn219, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.inc.if.end26_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end26_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %for.inc.if.end26_crit_edge, %for.cond.preheader.if.end26_crit_edge, %entry.if.end26_crit_edge
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn173220 = load ptr, ptr %m, align 4
  %cmp35.not221 = icmp eq ptr %.pn173220, %m
  br i1 %cmp35.not221, label %if.end26.for.cond60.preheader_crit_edge, label %if.end26.for.body38_crit_edge

if.end26.for.body38_crit_edge:                    ; preds = %if.end26
  br label %for.body38

if.end26.for.cond60.preheader_crit_edge:          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond60.preheader

for.cond60.preheader:                             ; preds = %for.inc48.for.cond60.preheader_crit_edge, %if.end26.for.cond60.preheader_crit_edge
  %14 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn174225 = load ptr, ptr %m, align 4
  %cmp63.not227 = icmp eq ptr %.pn174225, %m
  br i1 %cmp63.not227, label %for.cond60.preheader.if.then118_crit_edge, label %for.body66.lr.ph

for.cond60.preheader.if.then118_crit_edge:        ; preds = %for.cond60.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

for.body66.lr.ph:                                 ; preds = %for.cond60.preheader
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 9
  %master.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %bits_per_word3.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 5
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  br label %for.body66

for.body38:                                       ; preds = %for.inc48.for.body38_crit_edge, %if.end26.for.body38_crit_edge
  %.pn173224 = phi ptr [ %.pn173, %for.inc48.for.body38_crit_edge ], [ %.pn173220, %if.end26.for.body38_crit_edge ]
  %first.0223 = phi ptr [ %spec.select, %for.inc48.for.body38_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end26.for.body38_crit_edge ]
  %cs_change.0222 = phi i32 [ %bf.cast, %for.inc48.for.body38_crit_edge ], [ 1, %if.end26.for.body38_crit_edge ]
  %t.1 = getelementptr i8, ptr %.pn173224, i32 -84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cs_change.0222)
  %tobool39.not = icmp eq i32 %cs_change.0222, 0
  %spec.select = select i1 %tobool39.not, ptr %first.0223, ptr %t.1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %spec.select, i32 0, i32 12
  %15 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %speed_hz, align 4
  %speed_hz43 = getelementptr i8, ptr %.pn173224, i32 -24
  %17 = ptrtoint ptr %speed_hz43 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %speed_hz43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp44.not = icmp eq i32 %16, %18
  br i1 %cmp44.not, label %for.inc48, label %do.end

do.end:                                           ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8) #13
  br label %cleanup

for.inc48:                                        ; preds = %for.body38
  %cs_change42 = getelementptr i8, ptr %.pn173224, i32 -40
  %19 = ptrtoint ptr %cs_change42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %cs_change42, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %20 = ptrtoint ptr %.pn173224 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn173 = load ptr, ptr %.pn173224, align 4
  %cmp35.not = icmp eq ptr %.pn173, %m
  br i1 %cmp35.not, label %for.inc48.for.cond60.preheader_crit_edge, label %for.inc48.for.body38_crit_edge

for.inc48.for.body38_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body38

for.inc48.for.cond60.preheader_crit_edge:         ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond60.preheader

for.body66:                                       ; preds = %for.body66.backedge, %for.body66.lr.ph
  %.pn174232 = phi ptr [ %.pn174225, %for.body66.lr.ph ], [ %.pn174232.be, %for.body66.backedge ]
  %cs_change.1231.shrunk = phi i8 [ 1, %for.body66.lr.ph ], [ %cs_change.1231.shrunk.be, %for.body66.backedge ]
  %status.0230 = phi i32 [ -22, %for.body66.lr.ph ], [ 0, %for.body66.backedge ]
  %cmp76190229 = phi i1 [ true, %for.body66.lr.ph ], [ false, %for.body66.backedge ]
  %last_bpw.0228 = phi i32 [ -1, %for.body66.lr.ph ], [ %conv81196, %for.body66.backedge ]
  %t.2233 = getelementptr i8, ptr %.pn174232, i32 -84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cs_change.1231.shrunk)
  %tobool67.not = icmp eq i8 %cs_change.1231.shrunk, 0
  br i1 %tobool67.not, label %lor.lhs.false68, label %if.end75.thread205

lor.lhs.false68:                                  ; preds = %for.body66
  %bits_per_word69 = getelementptr i8, ptr %.pn174232, i32 -39
  %21 = ptrtoint ptr %bits_per_word69 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_word69, align 1
  %conv70 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last_bpw.0228, i32 %conv70)
  %cmp71.not = icmp eq i32 %last_bpw.0228, %conv70
  br i1 %cmp71.not, label %if.end75.thread, label %if.end75

if.end75:                                         ; preds = %lor.lhs.false68
  %call74 = tail call fastcc i32 @fsl_spi_setup_transfer(ptr noundef %3, ptr noundef %t.2233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp76 = icmp slt i32 %call74, 0
  br i1 %cmp76, label %if.end75.if.then118_crit_edge, label %if.end79

if.end75.if.then118_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end75.thread205:                               ; preds = %for.body66
  %call74206 = tail call fastcc i32 @fsl_spi_setup_transfer(ptr noundef %3, ptr noundef %t.2233)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74206)
  %cmp76207 = icmp slt i32 %call74206, 0
  br i1 %cmp76207, label %if.end75.thread205.if.then118_crit_edge, label %if.then83

if.end75.thread205.if.then118_crit_edge:          ; preds = %if.end75.thread205
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end75.thread:                                  ; preds = %lor.lhs.false68
  br i1 %cmp76190229, label %if.end75.thread.if.then118_crit_edge, label %if.end79.thread

if.end75.thread.if.then118_crit_edge:             ; preds = %if.end75.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end79.thread:                                  ; preds = %if.end75.thread
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %bits_per_word69 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bits_per_word69, align 1
  br label %if.end84

if.end79:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %bits_per_word69 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bits_per_word69, align 1
  br label %if.end84

if.then83:                                        ; preds = %if.end75.thread205
  %bits_per_word80210 = getelementptr i8, ptr %.pn174232, i32 -39
  %27 = ptrtoint ptr %bits_per_word80210 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bits_per_word80210, align 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent1.i, align 8
  %platform_data.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %platform_data.i, align 8
  %35 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %controller_state.i, align 8
  %37 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i, align 4
  %rx_shift.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %rx_shift.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_shift.i, align 4
  %rx_shift7.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 19
  %43 = ptrtoint ptr %rx_shift7.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %rx_shift7.i, align 4
  %tx_shift.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %36, i32 0, i32 3
  %44 = ptrtoint ptr %tx_shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_shift.i, align 4
  %tx_shift8.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 20
  %46 = ptrtoint ptr %tx_shift8.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tx_shift8.i, align 4
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %36, align 4
  %get_rx9.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 13
  %49 = ptrtoint ptr %get_rx9.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %get_rx9.i, align 4
  %get_tx.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %36, i32 0, i32 1
  %50 = ptrtoint ptr %get_tx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_tx.i, align 4
  %get_tx10.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %40, i32 0, i32 14
  %52 = ptrtoint ptr %get_tx10.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %get_tx10.i, align 4
  tail call fastcc void @fsl_spi_change_mode(ptr noundef %3) #10
  %cs_control11.i = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %34, i32 0, i32 4
  %53 = ptrtoint ptr %cs_control11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cs_control11.i, align 4
  %tobool12.not.i = icmp eq ptr %54, null
  br i1 %tobool12.not.i, label %if.then83.fsl_spi_chipselect.exit_crit_edge, label %if.then13.i

if.then83.fsl_spi_chipselect.exit_crit_edge:      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_spi_chipselect.exit

if.then13.i:                                      ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %54(ptr noundef %3, i1 noundef zeroext true) #10
  br label %fsl_spi_chipselect.exit

fsl_spi_chipselect.exit:                          ; preds = %if.then13.i, %if.then83.fsl_spi_chipselect.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748) #10
  br label %if.end84

if.end84:                                         ; preds = %fsl_spi_chipselect.exit, %if.end79, %if.end79.thread
  %conv81196.in = phi i8 [ %24, %if.end79.thread ], [ %28, %fsl_spi_chipselect.exit ], [ %26, %if.end79 ]
  %status.1191195 = phi i32 [ 0, %if.end79.thread ], [ %call74206, %fsl_spi_chipselect.exit ], [ %call74, %if.end79 ]
  %conv81196 = zext i8 %conv81196.in to i32
  %cs_change85 = getelementptr i8, ptr %.pn174232, i32 -40
  %56 = ptrtoint ptr %cs_change85 to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load86 = load i8, ptr %cs_change85, align 4
  %bf.lshr87 = lshr i8 %bf.load86, 6
  %bf.clear88 = and i8 %bf.lshr87, 1
  %len90 = getelementptr i8, ptr %.pn174232, i32 -76
  %57 = ptrtoint ptr %len90 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool91.not = icmp eq i32 %58, 0
  br i1 %tobool91.not, label %if.end84.if.end98_crit_edge, label %if.then92

if.end84.if.end98_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98

if.then92:                                        ; preds = %if.end84
  %59 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i176 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %driver_data.i.i.i176 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i.i176, align 4
  %63 = ptrtoint ptr %len90 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len90, align 4
  %reg_base2.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_base2.i, align 4
  %67 = ptrtoint ptr %bits_per_word3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %bits_per_word3.i, align 1
  %bits_per_word4.i = getelementptr i8, ptr %.pn174232, i32 -39
  %69 = ptrtoint ptr %bits_per_word4.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %bits_per_word4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  %spec.select.i = select i1 %tobool.not.i, i8 %68, i8 %70
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %spec.select.i)
  %cmp.i = icmp ugt i8 %spec.select.i, 8
  br i1 %cmp.i, label %if.then7.i, label %if.then92.if.end21.i_crit_edge

if.then92.if.end21.i_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then7.i:                                       ; preds = %if.then92
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end11.i, label %if.then7.i.if.then118_crit_edge

if.then7.i.if.then118_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end11.i:                                       ; preds = %if.then7.i
  %div66.i = lshr i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %spec.select.i)
  %cmp13.i = icmp ugt i8 %spec.select.i, 16
  br i1 %cmp13.i, label %if.then15.i, label %if.end11.i.if.end21.i_crit_edge

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21.i

if.then15.i:                                      ; preds = %if.end11.i
  %71 = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool17.not.i = icmp eq i32 %71, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then15.i.if.then118_crit_edge

if.then15.i.if.then118_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end19.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  %div2065.i = lshr i32 %64, 2
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end19.i, %if.end11.i.if.end21.i_crit_edge, %if.then92.if.end21.i_crit_edge
  %len.1.i = phi i32 [ %div2065.i, %if.end19.i ], [ %div66.i, %if.end11.i.if.end21.i_crit_edge ], [ %64, %if.then92.if.end21.i_crit_edge ]
  %72 = ptrtoint ptr %t.2233 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %t.2233, align 4
  %tx.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 2
  %74 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %tx.i, align 4
  %rx_buf.i = getelementptr i8, ptr %.pn174232, i32 -80
  %75 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf.i, align 4
  %rx.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 3
  %77 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %rx.i, align 4
  %done.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 26
  %78 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %done.i, align 4
  %flags.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 21
  %79 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags.i, align 4
  %and22.i = and i32 %80, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else.i, label %if.end21.i.if.end31.i_crit_edge

if.end21.i.if.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.else.i:                                        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %count.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 15
  %81 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %len.1.i, ptr %count.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %66, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i.i, i32 512) #10, !srcloc !59
  %get_tx.i.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 14
  %82 = ptrtoint ptr %get_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %get_tx.i.i, align 4
  %call.i.i = tail call i32 %83(ptr noundef %62) #10
  %transmit.i.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %66, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %transmit.i.i, i32 %call.i.i) #10, !srcloc !59
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else.i, %if.end21.i.if.end31.i_crit_edge
  tail call void @wait_for_completion(ptr noundef %done.i) #10
  %mask.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %66, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask.i, i32 0) #10, !srcloc !59
  %count.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %62, i32 0, i32 15
  %84 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count.i, align 4
  br label %if.end98

if.end98:                                         ; preds = %if.end31.i, %if.end84.if.end98_crit_edge
  %status.2 = phi i32 [ %status.1191195, %if.end84.if.end98_crit_edge ], [ %85, %if.end31.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.2)
  %tobool99.not = icmp eq i32 %status.2, 0
  br i1 %tobool99.not, label %if.end101, label %if.end98.if.then118_crit_edge

if.end98.if.then118_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.end101:                                        ; preds = %if.end98
  %86 = ptrtoint ptr %len90 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len90, align 4
  %88 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %actual_length, align 4
  %add = add i32 %89, %87
  store i32 %add, ptr %actual_length, align 4
  %delay.i = getelementptr i8, ptr %.pn174232, i32 -38
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %t.2233) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear88)
  %tobool104.not = icmp eq i8 %bf.clear88, 0
  br i1 %tobool104.not, label %for.inc107, label %if.then105

if.then105:                                       ; preds = %if.end101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #10
  %91 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %parent.i, align 8
  %parent1.i178 = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %parent1.i178 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %parent1.i178, align 8
  %platform_data.i179 = getelementptr inbounds %struct.device, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %platform_data.i179 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %platform_data.i179, align 8
  %cs_control.i = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %cs_control.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cs_control.i, align 4
  %tobool.not.i180 = icmp eq ptr %98, null
  br i1 %tobool.not.i180, label %if.then105.for.inc107.thread_crit_edge, label %if.then2.i

if.then105.for.inc107.thread_crit_edge:           ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc107.thread

if.then2.i:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %98(ptr noundef %3, i1 noundef zeroext false) #10
  br label %for.inc107.thread

for.inc107:                                       ; preds = %if.end101
  %99 = ptrtoint ptr %.pn174232 to i32
  call void @__asan_load4_noabort(i32 %99)
  %.pn174 = load ptr, ptr %.pn174232, align 4
  %cmp63.not = icmp eq ptr %.pn174, %m
  br i1 %cmp63.not, label %for.inc107.if.then118_crit_edge, label %for.inc107.for.body66.backedge_crit_edge

for.inc107.for.body66.backedge_crit_edge:         ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body66.backedge

for.inc107.if.then118_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

for.body66.backedge:                              ; preds = %for.inc107.thread.for.body66.backedge_crit_edge, %for.inc107.for.body66.backedge_crit_edge
  %.pn174232.be = phi ptr [ %.pn174, %for.inc107.for.body66.backedge_crit_edge ], [ %.pn174241, %for.inc107.thread.for.body66.backedge_crit_edge ]
  %cs_change.1231.shrunk.be = phi i8 [ %bf.clear88, %for.inc107.for.body66.backedge_crit_edge ], [ 1, %for.inc107.thread.for.body66.backedge_crit_edge ]
  br label %for.body66

for.inc107.thread:                                ; preds = %if.then2.i, %if.then105.for.inc107.thread_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748) #10
  %101 = ptrtoint ptr %.pn174232 to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pn174241 = load ptr, ptr %.pn174232, align 4
  %cmp63.not242 = icmp eq ptr %.pn174241, %m
  br i1 %cmp63.not242, label %for.end113.thread243, label %for.inc107.thread.for.body66.backedge_crit_edge

for.inc107.thread.for.body66.backedge_crit_edge:  ; preds = %for.inc107.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body66.backedge

for.end113.thread243:                             ; preds = %for.inc107.thread
  call void @__sanitizer_cov_trace_pc() #12
  %status114245 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %102 = ptrtoint ptr %status114245 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %status114245, align 4
  br label %if.end119

if.then118:                                       ; preds = %for.inc107.if.then118_crit_edge, %if.end98.if.then118_crit_edge, %if.then15.i.if.then118_crit_edge, %if.then7.i.if.then118_crit_edge, %if.end75.thread.if.then118_crit_edge, %if.end75.thread205.if.then118_crit_edge, %if.end75.if.then118_crit_edge, %for.cond60.preheader.if.then118_crit_edge
  %.sink246 = phi i32 [ -22, %for.cond60.preheader.if.then118_crit_edge ], [ %status.0230, %if.end75.thread.if.then118_crit_edge ], [ -90, %if.end98.if.then118_crit_edge ], [ %call74, %if.end75.if.then118_crit_edge ], [ %call74206, %if.end75.thread205.if.then118_crit_edge ], [ -90, %if.then7.i.if.then118_crit_edge ], [ -90, %if.then15.i.if.then118_crit_edge ], [ 0, %for.inc107.if.then118_crit_edge ]
  %status114 = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %103 = ptrtoint ptr %status114 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %.sink246, ptr %status114, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748) #10
  %parent.i182 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %105 = ptrtoint ptr %parent.i182 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %parent.i182, align 8
  %parent1.i183 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %parent1.i183 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %parent1.i183, align 8
  %platform_data.i184 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %platform_data.i184 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %platform_data.i184, align 8
  %cs_control.i185 = getelementptr inbounds %struct.fsl_spi_platform_data, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %cs_control.i185 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cs_control.i185, align 4
  %tobool.not.i186 = icmp eq ptr %112, null
  br i1 %tobool.not.i186, label %if.then118.if.end119_crit_edge, label %if.then2.i187

if.then118.if.end119_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end119

if.then2.i187:                                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %112(ptr noundef %3, i1 noundef zeroext false) #10
  br label %if.end119

if.end119:                                        ; preds = %if.then2.i187, %if.then118.if.end119_crit_edge, %for.end113.thread243
  %call120 = tail call fastcc i32 @fsl_spi_setup_transfer(ptr noundef %3, ptr noundef null)
  tail call void @spi_finalize_current_message(ptr noundef %master) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end119, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end119 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fsl_spi_qe_cpu_set_shifts(ptr nocapture noundef writeonly %rx_shift, ptr nocapture noundef writeonly %tx_shift, i32 noundef %bits_per_word, i32 noundef %msb_first) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_shift, align 4
  %1 = ptrtoint ptr %tx_shift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msb_first)
  %tobool.not = icmp eq i32 %msb_first, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %bits_per_word)
  %cmp6 = icmp slt i32 %bits_per_word, 9
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp6, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %rx_shift, align 4
  %3 = ptrtoint ptr %tx_shift to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 24, ptr %tx_shift, align 4
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %bits_per_word)
  %cmp2 = icmp ult i32 %bits_per_word, 17
  br i1 %cmp2, label %if.then3, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %rx_shift, align 4
  %5 = ptrtoint ptr %tx_shift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %tx_shift, align 4
  br label %if.end9

if.else5:                                         ; preds = %entry
  br i1 %cmp6, label %if.then7, label %if.else5.if.end9_crit_edge

if.else5.if.end9_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %rx_shift, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.else5.if.end9_crit_edge, %if.then3, %if.else.if.end9_crit_edge, %if.then1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_spi_irq(i32 noundef %irq, ptr noundef %context_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base1 = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 1
  %0 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base1, align 4
  %event = getelementptr inbounds %struct.fsl_spi_reg, ptr %1, i32 0, i32 3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %event) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_spi_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_spi_irq, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !62

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %context_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_spi_irq.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %2) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %entry
  %flags = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 21
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.else:                                          ; preds = %do.end
  %7 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_base1, align 4
  %and.i = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.if.end4.i_crit_edge, label %if.then.i

if.else.if.end4.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then.i:                                        ; preds = %if.else
  %receive.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %8, i32 0, i32 7
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %receive.i) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %rx.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 3
  %10 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then3.i

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %get_rx.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 13
  %12 = ptrtoint ptr %get_rx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_rx.i, align 4
  tail call void %13(i32 noundef %9, ptr noundef %context_data) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.then.i.if.end4.i_crit_edge, %if.else.if.end4.i_crit_edge
  %and5.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp.i = icmp eq i32 %and5.i, 0
  br i1 %cmp.i, label %while.cond.preheader.i, label %if.end4.i.if.end16.i_crit_edge

if.end4.i.if.end16.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.preheader.i:                           ; preds = %if.end4.i
  %event.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %8, i32 0, i32 3
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %event.i) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %and836.i = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and836.i)
  %cmp937.i = icmp eq i32 %and836.i, 0
  br i1 %cmp937.i, label %while.cond.preheader.i.do.end.i_crit_edge, label %while.cond.preheader.i.if.end16.i_crit_edge

while.cond.preheader.i.if.end16.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

while.cond.preheader.i.do.end.i_crit_edge:        ; preds = %while.cond.preheader.i
  br label %do.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %while.cond.preheader.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !63
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %event.i) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %and8.i = and i32 %15, 256
  %cmp9.i = icmp eq i32 %and8.i, 0
  br i1 %cmp9.i, label %do.end.i.do.end.i_crit_edge, label %do.end.i.if.end16.i_crit_edge

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.end16.i:                                       ; preds = %do.end.i.if.end16.i_crit_edge, %while.cond.preheader.i.if.end16.i_crit_edge, %if.end4.i.if.end16.i_crit_edge
  %events.addr.0.i = phi i32 [ %2, %if.end4.i.if.end16.i_crit_edge ], [ %14, %while.cond.preheader.i.if.end16.i_crit_edge ], [ %15, %do.end.i.if.end16.i_crit_edge ]
  %event17.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %8, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %event17.i, i32 %events.addr.0.i) #10, !srcloc !59
  %count.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 15
  %16 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count.i, align 4
  %sub.i = add i32 %17, -1
  store i32 %sub.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool19.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool19.not.i, label %if.else.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %get_tx.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 14
  %18 = ptrtoint ptr %get_tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_tx.i, align 4
  %call21.i = tail call i32 %19(ptr noundef %context_data) #10
  %transmit.i = getelementptr inbounds %struct.fsl_spi_reg, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %transmit.i, i32 %call21.i) #10, !srcloc !59
  br label %if.end11

if.else.i:                                        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %done.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %context_data, i32 0, i32 26
  tail call void @complete(ptr noundef %done.i) #10
  br label %if.end11

if.end11:                                         ; preds = %if.else.i, %if.then20.i, %do.end.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp ne i32 %2, 0
  %spec.select = zext i1 %tobool.not to i32
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpc8xxx_spi_strmode(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_spi_setup_transfer(ptr nocapture noundef readonly %spi, ptr noundef readonly %t) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not = icmp eq ptr %t, null
  br i1 %tobool.not, label %entry.if.then3_crit_edge, label %if.end

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.end:                                           ; preds = %entry
  %bits_per_word1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %6 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bits_per_word1, align 1
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %8 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.then3_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %hz.0158 = phi i32 [ %9, %if.end.if.then3_crit_edge ], [ 0, %entry.if.then3_crit_edge ]
  %bits_per_word4 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %10 = ptrtoint ptr %bits_per_word4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bits_per_word4, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %hz.0157 = phi i32 [ %9, %if.end.if.end6_crit_edge ], [ %hz.0158, %if.then3 ]
  %bits_per_word.1.in = phi i8 [ %7, %if.end.if.end6_crit_edge ], [ %11, %if.then3 ]
  %bits_per_word.1 = zext i8 %bits_per_word.1.in to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hz.0157)
  %tobool7.not = icmp eq i32 %hz.0157, 0
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %12 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_speed_hz, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %hz.1 = phi i32 [ %hz.0157, %if.end6.if.end9_crit_edge ], [ %13, %if.then8 ]
  %flags = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 21
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %rx_shift.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %rx_shift.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %rx_shift.i, align 4
  %tx_shift.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %tx_shift.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %bits_per_word.1.in)
  %cmp.i = icmp ult i8 %bits_per_word.1.in, 9
  br i1 %cmp.i, label %if.then11.if.end12.i_crit_edge, label %if.else.i

if.then11.if.end12.i_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %bits_per_word.1.in)
  %cmp1.i = icmp ult i8 %bits_per_word.1.in, 17
  br i1 %cmp1.i, label %if.else.i.if.end12.i_crit_edge, label %if.else5.i

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.else5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %bits_per_word.1.in)
  %cmp6.i = icmp ult i8 %bits_per_word.1.in, 33
  br i1 %cmp6.i, label %if.else5.i.if.end12.i_crit_edge, label %if.else5.i.cleanup_crit_edge

if.else5.i.cleanup_crit_edge:                     ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else5.i.if.end12.i_crit_edge:                  ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else5.i.if.end12.i_crit_edge, %if.else.i.if.end12.i_crit_edge, %if.then11.if.end12.i_crit_edge
  %mpc8xxx_spi_rx_buf_u16.sink.i = phi ptr [ @mpc8xxx_spi_rx_buf_u8, %if.then11.if.end12.i_crit_edge ], [ @mpc8xxx_spi_rx_buf_u16, %if.else.i.if.end12.i_crit_edge ], [ @mpc8xxx_spi_rx_buf_u32, %if.else5.i.if.end12.i_crit_edge ]
  %mpc8xxx_spi_tx_buf_u16.sink.i = phi ptr [ @mpc8xxx_spi_tx_buf_u8, %if.then11.if.end12.i_crit_edge ], [ @mpc8xxx_spi_tx_buf_u16, %if.else.i.if.end12.i_crit_edge ], [ @mpc8xxx_spi_tx_buf_u32, %if.else5.i.if.end12.i_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mpc8xxx_spi_rx_buf_u16.sink.i, ptr %1, align 4
  %get_tx4.i = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %get_tx4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mpc8xxx_spi_tx_buf_u16.sink.i, ptr %get_tx4.i, align 4
  %set_shifts.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 25
  %20 = ptrtoint ptr %set_shifts.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_shifts.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end12.i.if.end18.i_crit_edge, label %if.then13.i

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %22 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode.i, align 8
  %and.i = lshr i32 %23, 3
  %and.lobit.i = and i32 %and.i, 1
  %24 = xor i32 %and.lobit.i, 1
  tail call void %21(ptr noundef %rx_shift.i, ptr noundef %tx_shift.i, i32 noundef %bits_per_word.1, i32 noundef %24) #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end12.i.if.end18.i_crit_edge
  %25 = ptrtoint ptr %rx_shift.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_shift.i, align 4
  %rx_shift20.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 19
  %27 = ptrtoint ptr %rx_shift20.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rx_shift20.i, align 4
  %28 = ptrtoint ptr %tx_shift.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_shift.i, align 4
  %tx_shift22.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 20
  %30 = ptrtoint ptr %tx_shift22.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tx_shift22.i, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %get_rx24.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 13
  %33 = ptrtoint ptr %get_rx24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %get_rx24.i, align 4
  %34 = ptrtoint ptr %get_tx4.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_tx4.i, align 4
  %get_tx26.i = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %get_tx26.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %get_tx26.i, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end9
  %and14 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else.if.end22_crit_edge, label %if.then16

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.else
  %mode.i147 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %37 = ptrtoint ptr %mode.i147 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode.i147, align 8
  %and.i148 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148)
  %tobool.not.i149 = icmp ne i32 %and.i148, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %bits_per_word.1.in)
  %cmp.i150 = icmp ugt i8 %bits_per_word.1.in, 8
  %or.cond.i = and i1 %cmp.i150, %tobool.not.i149
  %39 = tail call i32 @llvm.smin.i32(i32 %bits_per_word.1, i32 8) #10
  br i1 %or.cond.i, label %if.then16.cleanup_crit_edge, label %if.then16.if.end22_crit_edge

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.end18.i
  %bits_per_word.2.ph = phi i32 [ %bits_per_word.1, %if.end18.i ], [ %bits_per_word.1, %if.else.if.end22_crit_edge ], [ %39, %if.then16.if.end22_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits_per_word.2.ph)
  %cmp23 = icmp eq i32 %bits_per_word.2.ph, 32
  %sub = shl nuw nsw i32 %bits_per_word.2.ph, 20
  %phi.bo = add nsw i32 %sub, -1048576
  %bits_per_word.3 = select i1 %cmp23, i32 0, i32 %phi.bo
  %hw_mode = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_mode, align 4
  %and28 = and i32 %41, -150929409
  %or = or i32 %bits_per_word.3, %and28
  store i32 %or, ptr %hw_mode, align 4
  %spibrg = getelementptr inbounds %struct.mpc8xxx_spi, ptr %5, i32 0, i32 18
  %42 = ptrtoint ptr %spibrg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %spibrg, align 4
  %div = udiv i32 %43, %hz.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp30 = icmp ugt i32 %div, 64
  br i1 %cmp30, label %if.then32, label %if.else88

if.then32:                                        ; preds = %if.end22
  %or34 = or i32 %or, 134217728
  %44 = ptrtoint ptr %hw_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or34, ptr %hw_mode, align 4
  %45 = ptrtoint ptr %spibrg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %spibrg, align 4
  %sub36 = add i32 %46, -1
  %mul = shl i32 %hz.1, 6
  %div37 = udiv i32 %sub36, %mul
  %47 = trunc i32 %div37 to i8
  %conv38 = add i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %conv38)
  %cmp40 = icmp ugt i8 %conv38, 16
  br i1 %cmp40, label %land.rhs, label %if.then32.if.end75_crit_edge

if.then32.if.end75_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

land.rhs:                                         ; preds = %if.then32
  %.b146 = load i1, ptr @fsl_spi_setup_transfer.__already_done, align 1
  br i1 %.b146, label %land.rhs.if.end75_crit_edge, label %if.then50, !prof !60

land.rhs.if.end75_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then50:                                        ; preds = %land.rhs
  store i1 true, ptr @fsl_spi_setup_transfer.__already_done, align 1
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i152 = icmp eq ptr %49, null
  br i1 %tobool.not.i152, label %if.end.i, label %if.then50.dev_name.exit_crit_edge

if.then50.dev_name.exit_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then50.dev_name.exit_crit_edge
  %retval.0.i153 = phi ptr [ %51, %if.end.i ], [ %49, %if.then50.dev_name.exit_crit_edge ]
  %div62145 = lshr i32 %46, 10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 274, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i153, i32 noundef %hz.1, i32 noundef %div62145) #10
  br label %if.end75

if.end75:                                         ; preds = %dev_name.exit, %land.rhs.if.end75_crit_edge, %if.then32.if.end75_crit_edge
  %52 = tail call i8 @llvm.umin.i8(i8 %conv38, i8 16)
  br label %if.end95

if.else88:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %sub90 = add i32 %43, -1
  %mul91 = shl i32 %hz.1, 2
  %div92 = udiv i32 %sub90, %mul91
  %53 = trunc i32 %div92 to i8
  %conv94 = add i8 %53, 1
  br label %if.end95

if.end95:                                         ; preds = %if.else88, %if.end75
  %pm.0 = phi i8 [ %52, %if.end75 ], [ %conv94, %if.else88 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pm.0)
  %tobool96.not = icmp eq i8 %pm.0, 0
  %dec = add i8 %pm.0, -1
  %phi.cast = zext i8 %dec to i32
  %phi.bo144 = shl nuw nsw i32 %phi.cast, 16
  %pm.1 = select i1 %tobool96.not, i32 0, i32 %phi.bo144
  %54 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_mode, align 4
  %or102 = or i32 %pm.1, %55
  store i32 %or102, ptr %hw_mode, align 4
  tail call fastcc void @fsl_spi_change_mode(ptr noundef %spi)
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %if.then16.cleanup_crit_edge, %if.else5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end95 ], [ -22, %if.else5.i.cleanup_crit_edge ], [ -22, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_spi_change_mode(ptr nocapture noundef readonly %spi) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %4 = ptrtoint ptr %controller_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %controller_state, align 8
  %reg_base1 = getelementptr inbounds %struct.mpc8xxx_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base1, align 4
  %mode2 = getelementptr inbounds %struct.fsl_spi_reg, ptr %7, i32 0, i32 2
  %hw_mode = getelementptr inbounds %struct.spi_mpc8xxx_cs, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_mode, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mode2) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %10)
  %cmp = icmp eq i32 %9, %10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !65
  %and.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then14, label %do.body36.critedge

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  %12 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_mode, align 4
  %and.c = and i32 %13, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode2, i32 %and.c) #10, !srcloc !59
  %14 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hw_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode2, i32 %15) #10, !srcloc !59
  tail call void @trace_hardirqs_on() #10
  br label %do.body36

do.body36.critedge:                               ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_mode, align 4
  %and.c70 = and i32 %17, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode2, i32 %and.c70) #10, !srcloc !59
  %18 = ptrtoint ptr %hw_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hw_mode, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mode2, i32 %19) #10, !srcloc !59
  br label %do.body36

do.body36:                                        ; preds = %do.body36.critedge, %if.then14
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !66
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool44.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool44.not, label %if.then48, label %do.body36.do.end51_crit_edge, !prof !67

do.body36.do.end51_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end51

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body36.do.end51_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #10, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpc8xxx_spi_rx_buf_u8(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpc8xxx_spi_tx_buf_u8(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpc8xxx_spi_rx_buf_u16(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpc8xxx_spi_tx_buf_u16(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpc8xxx_spi_rx_buf_u32(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpc8xxx_spi_tx_buf_u32(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @fsl_spi_grlib_set_shifts(ptr nocapture noundef writeonly %rx_shift, ptr nocapture noundef writeonly %tx_shift, i32 noundef %bits_per_word, i32 noundef %msb_first) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rx_shift, align 4
  %1 = ptrtoint ptr %tx_shift to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %tx_shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %bits_per_word)
  %cmp = icmp slt i32 %bits_per_word, 17
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %msb_first)
  %tobool.not = icmp eq i32 %msb_first, 0
  br i1 %tobool.not, label %if.then.if.end3.sink.split_crit_edge, label %if.then1

if.then.if.end3.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3.sink.split

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %rx_shift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16, ptr %rx_shift, align 4
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then1, %if.then.if.end3.sink.split_crit_edge
  %.sink = phi i32 [ 32, %if.then1 ], [ 16, %if.then.if.end3.sink.split_crit_edge ]
  %tx_shift.sink = phi ptr [ %tx_shift, %if.then1 ], [ %rx_shift, %if.then.if.end3.sink.split_crit_edge ]
  %sub = sub i32 %.sink, %bits_per_word
  %3 = ptrtoint ptr %tx_shift.sink to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %tx_shift.sink, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_spi_grlib_cs_control(ptr nocapture noundef readonly %spi, i1 noundef zeroext %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %reg_base1 = getelementptr inbounds %struct.mpc8xxx_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base1, align 4
  %cs_gpiod = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 14
  %6 = ptrtoint ptr %cs_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cs_gpiod, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = zext i1 %on to i32
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef %conv4) #10
  br label %if.end16

if.else:                                          ; preds = %entry
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  %conv5 = zext i8 %9 to i32
  %native_chipselects = getelementptr inbounds %struct.mpc8xxx_spi, ptr %3, i32 0, i32 23
  %10 = ptrtoint ptr %native_chipselects to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %native_chipselects, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5)
  %cmp = icmp sgt i32 %11, %conv5
  br i1 %cmp, label %if.then7, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %slvsel8 = getelementptr inbounds %struct.fsl_spi_reg, ptr %5, i32 0, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %slvsel8) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %shl = shl nuw i32 1, %conv5
  %or = or i32 %12, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %12, %neg
  %cond = select i1 %on, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %slvsel8, i32 %cond) #10, !srcloc !59
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %if.else.if.end16_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_spi_fsl_spi__237_866_fsl_spi_init6, !1, !"__initcall__kmod_spi_fsl_spi__237_866_fsl_spi_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-fsl-spi.c", i32 866, i32 1}
!2 = !{ptr @__exitcall_fsl_spi_exit, !3, !"__exitcall_fsl_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-fsl-spi.c", i32 873, i32 1}
!4 = !{ptr @__UNIQUE_ID_author238, !5, !"__UNIQUE_ID_author238", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-fsl-spi.c", i32 875, i32 1}
!6 = !{ptr @__UNIQUE_ID_description239, !7, !"__UNIQUE_ID_description239", i1 false, i1 false}
!7 = !{!"../drivers/spi/spi-fsl-spi.c", i32 876, i32 1}
!8 = !{ptr @__UNIQUE_ID_file240, !9, !"__UNIQUE_ID_file240", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-fsl-spi.c", i32 877, i32 1}
!10 = !{ptr @__UNIQUE_ID_license241, !9, !"__UNIQUE_ID_license241", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-fsl-spi.c", i32 788, i32 11}
!13 = !{ptr @of_fsl_spi_driver, !14, !"of_fsl_spi_driver", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-fsl-spi.c", i32 786, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-fsl-spi.c", i32 744, i32 26}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-fsl-spi.c", i32 700, i32 7}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-fsl-spi.c", i32 678, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsl_spi_probe._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_spi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../drivers/spi/spi-fsl-spi.c", i32 272, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-fsl-spi.c", i32 389, i32 4}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @fsl_spi_do_one_msg._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @fsl_spi_do_one_msg._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-fsl-spi.c", i32 543, i32 2}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @fsl_spi_irq.__UNIQUE_ID_ddebug236, !37, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!41 = !{ptr @of_fsl_spi_match, !42, !"of_fsl_spi_match", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-fsl-spi.c", i32 64, i32 34}
!43 = !{ptr @of_fsl_spi_fsl_config, !44, !"of_fsl_spi_fsl_config", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-fsl-spi.c", i32 56, i32 34}
!45 = !{ptr @of_fsl_spi_grlib_config, !46, !"of_fsl_spi_grlib_config", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-fsl-spi.c", i32 60, i32 34}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 6244516}
!57 = !{i64 2154419361}
!58 = !{i64 2154418860}
!59 = !{i64 6244098}
!60 = !{!"branch_weights", i32 2000, i32 1}
!61 = !{i64 2154448285}
!62 = !{i64 2148776302, i64 2148776307, i64 2148776320, i64 2148776364, i64 2148776398, i64 2148776419}
!63 = !{i64 2154440302}
!64 = !{i64 2154440144}
!65 = !{i64 601118, i64 601179}
!66 = !{i64 603850}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 604135}
