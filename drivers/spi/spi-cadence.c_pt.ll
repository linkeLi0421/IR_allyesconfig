; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-cadence.c_pt.bc'
source_filename = "../drivers/spi/spi-cadence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.cdns_spi = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i8, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_cadence__236_724_cdns_spi_driver_init6 = internal global ptr @cdns_spi_driver_init, section ".initcall6.init", align 4
@cdns_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_spi_probe, ptr @cdns_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_spi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_spi_driver_exit = internal global ptr @cdns_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [32 x i8] c"spi_cadence.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [43 x i8] c"spi_cadence.description=Cadence SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"spi_cadence.file=drivers/spi/spi-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"spi_cadence.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns-spi\00", [23 x i8] zeroinitializer }, align 32
@cdns_spi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-spi-r1p6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,spi-r1p6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_spi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr @cdns_spi_suspend, ptr @cdns_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cnds_runtime_suspend, ptr @cnds_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 496, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pclk clock not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-cadence.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr = internal global ptr @cdns_spi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ref_clk clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr.10 = internal global ptr @cdns_spi_probe._entry.8, section ".printk_index", align 4
@cdns_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 510, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable APB clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr.13 = internal global ptr @cdns_spi_probe._entry.11, section ".printk_index", align 4
@cdns_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable device clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr.16 = internal global ptr @cdns_spi_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"is-decoded-cs\00", [18 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr.21 = internal global ptr @cdns_spi_probe._entry.19, section ".printk_index", align 4
@cdns_spi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 575, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_register_master failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cdns_spi_probe._entry_ptr.24 = internal global ptr @cdns_spi_probe._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cdns_spi_setup_transfer.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_cadence\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_spi_setup_transfer\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s, mode %d, %u bits/w, %u clock speed\0A\00", [56 x i8] zeroinitializer }, align 32
@cnds_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable APB clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cnds_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@cnds_runtime_resume._entry_ptr = internal global ptr @cnds_runtime_resume._entry, section ".printk_index", align 4
@cnds_runtime_resume._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 674, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot enable device clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@cnds_runtime_resume._entry_ptr.32 = internal global ptr @cnds_runtime_resume._entry.30, section ".printk_index", align 4
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"cdns_spi_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 714, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 718, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"cdns_spi_of_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 706, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"cdns_spi_dev_pm_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 700, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 494, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 496, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 501, i32 43 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 503, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 510, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 516, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 526, i32 48 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 532, i32 48 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 550, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 575, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 292, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 668, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [29 x i8] c"../drivers/spi/spi-cadence.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 674, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_cdns_spi_driver_exit, ptr @__initcall__kmod_spi_cadence__236_724_cdns_spi_driver_init6, ptr @cdns_spi_driver_exit, ptr @cdns_spi_probe._entry, ptr @cdns_spi_probe._entry.11, ptr @cdns_spi_probe._entry.14, ptr @cdns_spi_probe._entry.19, ptr @cdns_spi_probe._entry.22, ptr @cdns_spi_probe._entry.8, ptr @cdns_spi_probe._entry_ptr, ptr @cdns_spi_probe._entry_ptr.10, ptr @cdns_spi_probe._entry_ptr.13, ptr @cdns_spi_probe._entry_ptr.16, ptr @cdns_spi_probe._entry_ptr.21, ptr @cdns_spi_probe._entry_ptr.24, ptr @cnds_runtime_resume._entry, ptr @cnds_runtime_resume._entry.30, ptr @cnds_runtime_resume._entry_ptr, ptr @cnds_runtime_resume._entry_ptr.32, ptr @cdns_spi_driver, ptr @.str, ptr @cdns_spi_of_match, ptr @cdns_spi_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_spi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnds_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnds_runtime_resume._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #7
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_cs, align 4, !annotation !77
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 44, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %of_node4 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %5 = ptrtoint ptr %of_node4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node4, align 8
  %driver_data.i.i182 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i182 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i182, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call5 to i32
  br label %spi_controller_put.exit

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %pclk = getelementptr inbounds %struct.cdns_spi, ptr %2, i32 0, i32 2
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %pclk, align 4
  %cmp.i183 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %spi_controller_put.exit

if.end20:                                         ; preds = %if.end11
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #7
  %ref_clk = getelementptr inbounds %struct.cdns_spi, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %ref_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %ref_clk, align 4
  %cmp.i184 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %14 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ref_clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end20
  %17 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pclk, align 4
  %call.i185 = tail call i32 @clk_prepare(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i = icmp eq i32 %call.i185, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %18) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i185, %if.end32.do.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

if.end41:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ref_clk, align 4
  %call.i186 = tail call i32 @clk_prepare(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool.not.i187 = icmp eq i32 %call.i186, 0
  br i1 %tobool.not.i187, label %if.end.i190, label %if.end41.do.end48_crit_edge

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.i190:                                      ; preds = %if.end41
  %call1.i188 = tail call i32 @clk_enable(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i188)
  %tobool2.not.i189 = icmp eq i32 %call1.i188, 0
  br i1 %tobool2.not.i189, label %if.end50, label %if.then3.i191

if.then3.i191:                                    ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i191, %if.end41.do.end48_crit_edge
  %retval.0.i192.ph = phi i32 [ %call1.i188, %if.then3.i191 ], [ %call.i186, %if.end41.do.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %clk_dis_apb

if.end50:                                         ; preds = %if.end.i190
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !78
  %call.i194 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  tail call void @pm_runtime_enable(ptr noundef %dev) #7
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end50.if.end62_crit_edge, label %if.else

if.end50.if.end62_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.else:                                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_cs, align 4
  %conv = trunc i32 %25 to i16
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.end50.if.end62_crit_edge
  %conv.sink = phi i16 [ %conv, %if.else ], [ 4, %if.end50.if.end62_crit_edge ]
  %26 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.sink, ptr %26, align 2
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %is_decoded_cs = getelementptr inbounds %struct.cdns_spi, ptr %2, i32 0, i32 10
  %call.i.i195 = call i32 @of_property_read_variable_u32_array(ptr noundef %29, ptr noundef nonnull @.str.18, ptr noundef %is_decoded_cs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i195)
  %cmp66 = icmp slt i32 %call.i.i195, 0
  br i1 %cmp66, label %if.then68, label %if.end62.if.end70_crit_edge

if.end62.if.end70_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %is_decoded_cs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %is_decoded_cs, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end62.if.end70_crit_edge
  %31 = ptrtoint ptr %is_decoded_cs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %is_decoded_cs, align 4
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !79
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %36, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 2130706432) #7, !srcloc !79
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %add.ptr.i1216.i = getelementptr i8, ptr %38, i32 4
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1216.i) #7, !srcloc !80
  %40 = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool1.not17.i = icmp eq i32 %40, 0
  br i1 %tobool1.not17.i, label %if.end70.cdns_spi_init_hw.exit_crit_edge, label %if.end70.while.body.i_crit_edge

if.end70.while.body.i_crit_edge:                  ; preds = %if.end70
  br label %while.body.i

if.end70.cdns_spi_init_hw.exit_crit_edge:         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_init_hw.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end70.while.body.i_crit_edge
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %2, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %42, i32 32
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #7, !srcloc !80
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %2, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %45, i32 4
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !80
  %47 = and i32 %46, 268435456
  %tobool1.not.i = icmp eq i32 %47, 0
  br i1 %tobool1.not.i, label %while.body.i.cdns_spi_init_hw.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cdns_spi_init_hw.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_init_hw.exit

cdns_spi_init_hw.exit:                            ; preds = %while.body.i.cdns_spi_init_hw.exit_crit_edge, %if.end70.cdns_spi_init_hw.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i196 = icmp eq i32 %32, 0
  %spec.select.i = select i1 %tobool.not.i196, i32 31753, i32 32265
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %49, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 2130706432) #7, !srcloc !79
  %50 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %51 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %2, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #7, !srcloc !79
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %54, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 16777216) #7, !srcloc !79
  %call71 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 1
  br i1 %cmp72, label %cdns_spi_init_hw.exit.clk_dis_all_crit_edge, label %if.end75

cdns_spi_init_hw.exit.clk_dis_all_crit_edge:      ; preds = %cdns_spi_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_dis_all

if.end75:                                         ; preds = %cdns_spi_init_hw.exit
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call.i197 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call71, ptr noundef nonnull @cdns_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %56, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %cmp78.not = icmp eq i32 %call.i197, 0
  br i1 %cmp78.not, label %if.end85, label %if.end75.clk_dis_all.sink.split_crit_edge

if.end75.clk_dis_all.sink.split_crit_edge:        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_dis_all.sink.split

if.end85:                                         ; preds = %if.end75
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %57 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %prepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 44
  %58 = ptrtoint ptr %prepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @cdns_prepare_transfer_hardware, ptr %prepare_transfer_hardware, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %59 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @cdns_prepare_message, ptr %prepare_message, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %60 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @cdns_transfer_one, ptr %transfer_one, align 4
  %unprepare_transfer_hardware = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 46
  %61 = ptrtoint ptr %unprepare_transfer_hardware to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @cdns_unprepare_transfer_hardware, ptr %unprepare_transfer_hardware, align 8
  %set_cs = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 50
  %62 = ptrtoint ptr %set_cs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @cdns_spi_chipselect, ptr %set_cs, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %63 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %auto_runtime_pm, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %64 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 7, ptr %mode_bits, align 8
  %65 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ref_clk, align 4
  %call87 = call i32 @clk_get_rate(ptr noundef %66) #7
  %clk_rate = getelementptr inbounds %struct.cdns_spi, ptr %2, i32 0, i32 3
  %67 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call87, ptr %clk_rate, align 4
  %div181 = lshr i32 %call87, 2
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %68 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div181, ptr %max_speed_hz, align 8
  %speed_hz = getelementptr inbounds %struct.cdns_spi, ptr %2, i32 0, i32 4
  %69 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div181, ptr %speed_hz, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %70 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 128, ptr %bits_per_word_mask, align 8
  %call.i198 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %71 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store volatile i64 %call.i198, ptr %last_busy.i, align 8
  %call.i199 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  %call93 = call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end85.cleanup_crit_edge, label %if.end85.clk_dis_all.sink.split_crit_edge

if.end85.clk_dis_all.sink.split_crit_edge:        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_dis_all.sink.split

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

clk_dis_all.sink.split:                           ; preds = %if.end85.clk_dis_all.sink.split_crit_edge, %if.end75.clk_dis_all.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.20, %if.end75.clk_dis_all.sink.split_crit_edge ], [ @.str.23, %if.end85.clk_dis_all.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -6, %if.end75.clk_dis_all.sink.split_crit_edge ], [ %call93, %if.end85.clk_dis_all.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.23.sink) #10
  br label %clk_dis_all

clk_dis_all:                                      ; preds = %clk_dis_all.sink.split, %cdns_spi_init_hw.exit.clk_dis_all_crit_edge
  %ret.0 = phi i32 [ -6, %cdns_spi_init_hw.exit.clk_dis_all_crit_edge ], [ %ret.0.ph, %clk_dis_all.sink.split ]
  %call.i200 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %72 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ref_clk, align 4
  call void @clk_disable(ptr noundef %73) #7
  call void @clk_unprepare(ptr noundef %73) #7
  br label %clk_dis_apb

clk_dis_apb:                                      ; preds = %clk_dis_all, %do.end48
  %ret.1 = phi i32 [ %retval.0.i192.ph, %do.end48 ], [ %ret.0, %clk_dis_all ]
  %74 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %75) #7
  call void @clk_unprepare(ptr noundef %75) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %clk_dis_apb, %do.end39, %do.end28, %do.end, %if.then8
  %ret.2 = phi i32 [ %8, %if.then8 ], [ %12, %do.end ], [ %16, %do.end28 ], [ %retval.0.i.ph, %do.end39 ], [ %ret.1, %clk_dis_apb ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end85.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i9 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i9, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !79
  %ref_clk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %pclk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr.i35 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %4) #7, !srcloc !79
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr.i36 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 100663296) #7, !srcloc !79
  br label %if.end18.sink.split

if.else:                                          ; preds = %entry
  %and2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.end18_crit_edge, label %if.then4

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then4:                                         ; preds = %if.else
  %rx_bytes = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes, align 4
  %sub = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool5.not39 = icmp eq i32 %sub, 0
  br i1 %tobool5.not39, label %if.then4.while.end_crit_edge, label %while.body.lr.ph

if.then4.while.end_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.then4
  %rxbuf = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %trans_cnt.040 = phi i32 [ %sub, %while.body.lr.ph ], [ %dec11, %if.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !80
  %17 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxbuf, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %while.body.if.end_crit_edge, label %if.then8

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = lshr i32 %16, 24
  %conv = trunc i32 %19 to i8
  %incdec.ptr = getelementptr i8, ptr %18, i32 1
  %20 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %incdec.ptr, ptr %rxbuf, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then8, %while.body.if.end_crit_edge
  %22 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_bytes, align 4
  %dec = add i32 %23, -1
  store i32 %dec, ptr %rx_bytes, align 4
  %dec11 = add i32 %trans_cnt.040, -1
  %tobool5.not = icmp eq i32 %dec11, 0
  br i1 %tobool5.not, label %while.endthread-pre-split, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.endthread-pre-split:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %tx_bytes, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %if.then4.while.end_crit_edge
  %25 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %13, %if.then4.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %while.end
  %txbuf.i = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 5
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end5.i.land.rhs.i_crit_edge, %if.then14
  %26 = phi i32 [ %25, %if.then14 ], [ %dec.i, %if.end5.i.land.rhs.i_crit_edge ]
  %trans_cnt.016.i = phi i32 [ 0, %if.then14 ], [ %inc.i, %if.end5.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i = icmp sgt i32 %26, 0
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.if.end18_crit_edge

land.rhs.i.if.end18_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

while.body.i:                                     ; preds = %land.rhs.i
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !80
  %30 = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %32 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %txbuf.i, align 4
  %tobool2.not.i = icmp eq ptr %33, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %33, i32 1
  %34 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %incdec.ptr.i, ptr %txbuf.i, align 4
  %35 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %33, align 1
  %conv.i = zext i8 %36 to i32
  %37 = shl nuw i32 %conv.i, 24
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %37) #7, !srcloc !79
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %41, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #7, !srcloc !79
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then3.i
  %42 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_bytes, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr %tx_bytes, align 4
  %inc.i = add nuw nsw i32 %trans_cnt.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %if.end5.i.if.end18_crit_edge, label %if.end5.i.land.rhs.i_crit_edge

if.end5.i.land.rhs.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end5.i.if.end18_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else15:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %add.ptr.i38 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 100663296) #7, !srcloc !79
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.else15, %if.then
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #7
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end5.i.if.end18_crit_edge, %land.rhs.i.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %status.0 = phi i32 [ 0, %if.else.if.end18_crit_edge ], [ 1, %if.end18.sink.split ], [ 1, %land.rhs.i.if.end18_crit_edge ], [ 1, %if.end5.i.if.end18_crit_edge ]
  ret i32 %status.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_prepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !79
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_prepare_message(ptr nocapture noundef readnone %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !80
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %and.i = and i32 %9, -7
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode.i, align 8
  %and2.i = shl i32 %11, 2
  %12 = and i32 %and2.i, 4
  %and4.i = and i32 %11, 2
  %13 = or i32 %and4.i, %and.i
  %14 = or i32 %13, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %9)
  %cmp.not.i = icmp eq i32 %14, %9
  br i1 %cmp.not.i, label %entry.cdns_spi_config_clock_mode.exit_crit_edge, label %if.then9.i

entry.cdns_spi_config_clock_mode.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_config_clock_mode.exit

if.then9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !79
  %17 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #7, !srcloc !79
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 16777216) #7, !srcloc !79
  br label %cdns_spi_config_clock_mode.exit

cdns_spi_config_clock_mode.exit:                  ; preds = %if.then9.i, %entry.cdns_spi_config_clock_mode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_transfer_one(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer, align 4
  %txbuf = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %txbuf, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_buf, align 4
  %rxbuf = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rxbuf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tx_bytes, align 4
  %11 = load i32, ptr %len, align 4
  %rx_bytes = getelementptr inbounds %struct.cdns_spi, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rx_bytes, align 4
  tail call fastcc void @cdns_spi_setup_transfer(ptr noundef %spi, ptr noundef %transfer)
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr.i = load i32, ptr %tx_bytes, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end5.i.land.rhs.i_crit_edge, %entry
  %14 = phi i32 [ %.pr.i, %entry ], [ %dec.i, %if.end5.i.land.rhs.i_crit_edge ]
  %trans_cnt.016.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end5.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1.i = icmp sgt i32 %14, 0
  br i1 %cmp1.i, label %while.body.i, label %land.rhs.i.cdns_spi_fill_tx_fifo.exit_crit_edge

land.rhs.i.cdns_spi_fill_tx_fifo.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_fill_tx_fifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !80
  %18 = and i32 %17, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %20 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txbuf, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i = getelementptr i8, ptr %21, i32 1
  %22 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %incdec.ptr.i, ptr %txbuf, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %21, align 1
  %conv.i = zext i8 %24 to i32
  %25 = shl nuw i32 %conv.i, 24
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %25) #7, !srcloc !79
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #7, !srcloc !79
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then3.i
  %30 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_bytes, align 4
  %dec.i = add i32 %31, -1
  store i32 %dec.i, ptr %tx_bytes, align 4
  %inc.i = add nuw nsw i32 %trans_cnt.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %if.end5.i.cdns_spi_fill_tx_fifo.exit_crit_edge, label %if.end5.i.land.rhs.i_crit_edge

if.end5.i.land.rhs.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

if.end5.i.cdns_spi_fill_tx_fifo.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_fill_tx_fifo.exit

cdns_spi_fill_tx_fifo.exit:                       ; preds = %if.end5.i.cdns_spi_fill_tx_fifo.exit_crit_edge, %land.rhs.i.cdns_spi_fill_tx_fifo.exit_crit_edge
  %delay.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 9
  %call.i = tail call i32 @spi_delay_exec(ptr noundef %delay.i, ptr noundef %transfer) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 100663296) #7, !srcloc !79
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_unprepare_transfer_hardware(ptr nocapture noundef readonly %master) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !79
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_spi_chipselect(ptr nocapture noundef readonly %spi, i1 noundef zeroext %is_high) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !80
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  br i1 %is_high, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %7, 15360
  br label %if.end13

if.else:                                          ; preds = %entry
  %and = and i32 %7, -15361
  %is_decoded_cs = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %is_decoded_cs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %is_decoded_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %10 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %11 to i32
  br i1 %tobool2.not, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl nuw i32 1, %conv
  %neg = xor i32 %shl, -1
  %shl4 = shl i32 %neg, 10
  %and5 = and i32 %shl4, 15360
  %or6 = or i32 %and5, %and
  br label %if.end13

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shl10 = shl nuw nsw i32 %conv, 10
  %and11 = and i32 %shl10, 15360
  %or12 = or i32 %and11, %and
  br label %if.end13

if.end13:                                         ; preds = %if.else7, %if.then3, %if.then
  %ctrl_reg.0 = phi i32 [ %or, %if.then ], [ %or12, %if.else7 ], [ %or6, %if.then3 ]
  %12 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.0) #7
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #7, !srcloc !79
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_spi_setup_transfer(ptr noundef %spi, ptr nocapture noundef readonly %transfer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk_rate.i = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_rate.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #7, !srcloc !80
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  %speed_hz.i = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed_hz.i, align 4
  %speed_hz2.i = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 12
  %12 = ptrtoint ptr %speed_hz2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed_hz2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i = icmp eq i32 %11, %13
  br i1 %cmp.not.i, label %entry.cdns_spi_config_clock_freq.exit_crit_edge, label %while.cond.preheader.i

entry.cdns_spi_config_clock_freq.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_config_clock_freq.exit

while.cond.preheader.i:                           ; preds = %entry
  %div23.i = lshr i32 %5, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.i, i32 %13)
  %cmp5.i = icmp ugt i32 %div23.i, %13
  br i1 %cmp5.i, label %while.cond.1.i, label %while.cond.preheader.i.while.end.i_crit_edge

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.1.i:                                   ; preds = %while.cond.preheader.i
  %div23.1.i = lshr i32 %5, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.1.i, i32 %13)
  %cmp5.1.i = icmp ugt i32 %div23.1.i, %13
  br i1 %cmp5.1.i, label %while.cond.2.i, label %while.cond.1.i.while.end.i_crit_edge

while.cond.1.i.while.end.i_crit_edge:             ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %div23.2.i = lshr i32 %5, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.2.i, i32 %13)
  %cmp5.2.i = icmp ugt i32 %div23.2.i, %13
  br i1 %cmp5.2.i, label %while.cond.3.i, label %while.cond.2.i.while.end.i_crit_edge

while.cond.2.i.while.end.i_crit_edge:             ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %div23.3.i = lshr i32 %5, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.3.i, i32 %13)
  %cmp5.3.i = icmp ugt i32 %div23.3.i, %13
  br i1 %cmp5.3.i, label %while.cond.4.i, label %while.cond.3.i.while.end.i_crit_edge

while.cond.3.i.while.end.i_crit_edge:             ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %div23.4.i = lshr i32 %5, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.4.i, i32 %13)
  %cmp5.4.i = icmp ugt i32 %div23.4.i, %13
  br i1 %cmp5.4.i, label %while.cond.5.i, label %while.cond.4.i.while.end.i_crit_edge

while.cond.4.i.while.end.i_crit_edge:             ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.cond.5.i:                                   ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %div23.5.i = lshr i32 %5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %div23.5.i, i32 %13)
  %cmp5.5.i = icmp ugt i32 %div23.5.i, %13
  %spec.select.i = select i1 %cmp5.5.i, i32 7, i32 6
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.5.i, %while.cond.4.i.while.end.i_crit_edge, %while.cond.3.i.while.end.i_crit_edge, %while.cond.2.i.while.end.i_crit_edge, %while.cond.1.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %baud_rate_val.0.lcssa.i = phi i32 [ 1, %while.cond.preheader.i.while.end.i_crit_edge ], [ 2, %while.cond.1.i.while.end.i_crit_edge ], [ 3, %while.cond.2.i.while.end.i_crit_edge ], [ 4, %while.cond.3.i.while.end.i_crit_edge ], [ 5, %while.cond.4.i.while.end.i_crit_edge ], [ %spec.select.i, %while.cond.5.i ]
  %and.i = and i32 %9, -57
  %shl6.i = shl nuw nsw i32 %baud_rate_val.0.lcssa.i, 3
  %or.i = or i32 %shl6.i, %and.i
  %14 = add nuw nsw i32 %baud_rate_val.0.lcssa.i, 1
  %div822.i = lshr i32 %5, %14
  %15 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div822.i, ptr %speed_hz.i, align 4
  br label %cdns_spi_config_clock_freq.exit

cdns_spi_config_clock_freq.exit:                  ; preds = %while.end.i, %entry.cdns_spi_config_clock_freq.exit_crit_edge
  %ctrl_reg.0.i = phi i32 [ %or.i, %while.end.i ], [ %9, %entry.cdns_spi_config_clock_freq.exit_crit_edge ]
  %16 = tail call i32 @llvm.bswap.i32(i32 %ctrl_reg.0.i) #7
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #7, !srcloc !79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_spi_setup_transfer.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cdns_spi_setup_transfer, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %cdns_spi_config_clock_freq.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %21 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_word, align 1
  %conv = zext i8 %22 to i32
  %23 = ptrtoint ptr %speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed_hz.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_spi_setup_transfer.__UNIQUE_ID_ddebug235, ptr noundef %spi, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %20, i32 noundef %conv, i32 noundef %24) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %cdns_spi_config_clock_freq.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @spi_controller_suspend(ptr noundef %1) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_spi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %is_decoded_cs.i = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %is_decoded_cs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_decoded_cs.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !79
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 2130706432) #7, !srcloc !79
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i1216.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1216.i) #7, !srcloc !80
  %13 = and i32 %12, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not17.i = icmp eq i32 %13, 0
  br i1 %tobool1.not17.i, label %entry.cdns_spi_init_hw.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cdns_spi_init_hw.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_init_hw.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #7, !srcloc !80
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !80
  %20 = and i32 %19, 268435456
  %tobool1.not.i = icmp eq i32 %20, 0
  br i1 %tobool1.not.i, label %while.body.i.cdns_spi_init_hw.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.cdns_spi_init_hw.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cdns_spi_init_hw.exit

cdns_spi_init_hw.exit:                            ; preds = %while.body.i.cdns_spi_init_hw.exit_crit_edge, %entry.cdns_spi_init_hw.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 31753, i32 32265
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 2130706432) #7, !srcloc !79
  %23 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !79
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 16777216) #7, !srcloc !79
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %1) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cnds_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ref_clk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %pclk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cnds_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %pclk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %ref_clk = getelementptr inbounds %struct.cdns_spi, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk, align 4
  %call.i20 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i24, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end8

if.end.i24:                                       ; preds = %if.end
  %call1.i22 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not.i23, label %if.end.i24.cleanup_crit_edge, label %if.then3.i25

if.end.i24.cleanup_crit_edge:                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i25:                                     ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i25, %if.end.do.end8_crit_edge
  %retval.0.i26.ph = phi i32 [ %call1.i22, %if.then3.i25 ], [ %call.i20, %if.end.do.end8_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.i24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i26.ph, %do.end8 ], [ 0, %if.end.i24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_spi_cadence__236_724_cdns_spi_driver_init6, !1, !"__initcall__kmod_spi_cadence__236_724_cdns_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-cadence.c", i32 724, i32 1}
!2 = !{ptr @__exitcall_cdns_spi_driver_exit, !1, !"__exitcall_cdns_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-cadence.c", i32 726, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-cadence.c", i32 727, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-cadence.c", i32 728, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-cadence.c", i32 718, i32 11}
!12 = !{ptr @cdns_spi_driver, !13, !"cdns_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-cadence.c", i32 714, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-cadence.c", i32 494, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-cadence.c", i32 496, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cdns_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cdns_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-cadence.c", i32 501, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-cadence.c", i32 503, i32 3}
!28 = !{ptr @cdns_spi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cdns_spi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-cadence.c", i32 510, i32 3}
!32 = !{ptr @cdns_spi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cdns_spi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-cadence.c", i32 516, i32 3}
!36 = !{ptr @cdns_spi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cdns_spi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-cadence.c", i32 526, i32 48}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/spi/spi-cadence.c", i32 532, i32 48}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-cadence.c", i32 550, i32 3}
!44 = !{ptr @cdns_spi_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cdns_spi_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-cadence.c", i32 575, i32 3}
!48 = !{ptr @cdns_spi_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cdns_spi_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-cadence.c", i32 292, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cdns_spi_setup_transfer.__UNIQUE_ID_ddebug235, !51, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!55 = !{ptr @cdns_spi_of_match, !56, !"cdns_spi_of_match", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-cadence.c", i32 706, i32 34}
!57 = !{ptr @cdns_spi_dev_pm_ops, !58, !"cdns_spi_dev_pm_ops", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-cadence.c", i32 700, i32 32}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-cadence.c", i32 668, i32 3}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cnds_runtime_resume._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cnds_runtime_resume._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-cadence.c", i32 674, i32 3}
!66 = !{ptr @cnds_runtime_resume._entry.30, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cnds_runtime_resume._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148259539, i64 2148259565, i64 2148259594, i64 2148259628, i64 2148259659, i64 2148259682}
!79 = !{i64 4287150}
!80 = !{i64 4287568}
!81 = !{i64 2148741354, i64 2148741359, i64 2148741372, i64 2148741416, i64 2148741450, i64 2148741471}
