; ModuleID = '/llk/IR_all_yes/drivers/spi/atmel-quadspi.c_pt.bc'
source_filename = "../drivers/spi/atmel-quadspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atmel_qspi_mode = type { i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atmel_qspi_caps = type { i8, i8 }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.atmel_qspi = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@__initcall__kmod_atmel_quadspi__234_715_atmel_qspi_driver_init6 = internal global ptr @atmel_qspi_driver_init, section ".initcall6.init", align 4
@atmel_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_qspi_probe, ptr @atmel_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_qspi_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_qspi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_qspi_driver_exit = internal global ptr @atmel_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [65 x i8] c"atmel_quadspi.author=Cyrille Pitchen <cyrille.pitchen@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [62 x i8] c"atmel_quadspi.author=Piotr Bugalski <bugalski.piotr@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [55 x i8] c"atmel_quadspi.description=Atmel QSPI Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [45 x i8] c"atmel_quadspi.file=drivers/spi/atmel-quadspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [29 x i8] c"atmel_quadspi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atmel_qspi\00", [21 x i8] zeroinitializer }, align 32
@atmel_qspi_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sama5d2_qspi_caps }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-qspi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_sam9x60_qspi_caps }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@atmel_qspi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_qspi_suspend, ptr @atmel_qspi_resume, ptr @atmel_qspi_suspend, ptr @atmel_qspi_resume, ptr @atmel_qspi_suspend, ptr @atmel_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr @atmel_qspi_supports_op, ptr @atmel_qspi_exec_op, ptr @atmel_qspi_get_name, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_base\00", [22 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 560, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing registers\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel_qspi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/atmel-quadspi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr = internal global ptr @atmel_qspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qspi_mmap\00", [22 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 568, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"missing AHB memory\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.10 = internal global ptr @atmel_qspi_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing peripheral clock\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.14 = internal global ptr @atmel_qspi_probe._entry.12, section ".printk_index", align 4
@atmel_qspi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to enable the peripheral clock\0A\00", [57 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.17 = internal global ptr @atmel_qspi_probe._entry.15, section ".printk_index", align 4
@atmel_qspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 593, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not retrieve QSPI caps\0A\00", [34 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.20 = internal global ptr @atmel_qspi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qspick\00", [25 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 602, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing system clock\0A\00", [42 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.24 = internal global ptr @atmel_qspi_probe._entry.22, section ".printk_index", align 4
@atmel_qspi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 611, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to enable the QSPI system clock\0A\00", [56 x i8] zeroinitializer }, align 32
@atmel_qspi_probe._entry_ptr.27 = internal global ptr @atmel_qspi_probe._entry.25, section ".printk_index", align 4
@atmel_qspi_modes = internal constant { [7 x %struct.atmel_qspi_mode], [40 x i8] } { [7 x %struct.atmel_qspi_mode] [%struct.atmel_qspi_mode { i8 1, i8 1, i8 1, i32 0 }, %struct.atmel_qspi_mode { i8 1, i8 1, i8 2, i32 1 }, %struct.atmel_qspi_mode { i8 1, i8 1, i8 4, i32 2 }, %struct.atmel_qspi_mode { i8 1, i8 2, i8 2, i32 3 }, %struct.atmel_qspi_mode { i8 1, i8 4, i8 4, i32 4 }, %struct.atmel_qspi_mode { i8 2, i8 2, i8 2, i32 5 }, %struct.atmel_qspi_mode { i8 4, i8 4, i8 4, i32 6 }], [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@atmel_sama5d2_qspi_caps = internal constant { %struct.atmel_qspi_caps, [30 x i8] } zeroinitializer, align 32
@atmel_sam9x60_qspi_caps = internal constant { %struct.atmel_qspi_caps, [30 x i8] } { %struct.atmel_qspi_caps { i8 1, i8 1 }, [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"atmel_qspi_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 706, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 708, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"atmel_qspi_dt_ids\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 692, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"atmel_qspi_pm_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 682, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"atmel_qspi_mem_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 466, i32 44 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 557, i32 59 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 560, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 565, i32 59 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 568, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 575, i32 38 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 580, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 587, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 593, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 600, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 602, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 610, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"atmel_qspi_modes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 166, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 87, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [24 x i8] c"atmel_sama5d2_qspi_caps\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 685, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant [24 x i8] c"atmel_sam9x60_qspi_caps\00", align 1
@___asan_gen_.124 = private constant [31 x i8] c"../drivers/spi/atmel-quadspi.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 687, i32 37 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_atmel_qspi_driver_exit, ptr @__initcall__kmod_atmel_quadspi__234_715_atmel_qspi_driver_init6, ptr @atmel_qspi_driver_exit, ptr @atmel_qspi_probe._entry, ptr @atmel_qspi_probe._entry.12, ptr @atmel_qspi_probe._entry.15, ptr @atmel_qspi_probe._entry.18, ptr @atmel_qspi_probe._entry.22, ptr @atmel_qspi_probe._entry.25, ptr @atmel_qspi_probe._entry.8, ptr @atmel_qspi_probe._entry_ptr, ptr @atmel_qspi_probe._entry_ptr.10, ptr @atmel_qspi_probe._entry_ptr.14, ptr @atmel_qspi_probe._entry_ptr.17, ptr @atmel_qspi_probe._entry_ptr.20, ptr @atmel_qspi_probe._entry_ptr.24, ptr @atmel_qspi_probe._entry_ptr.27, ptr @atmel_qspi_driver, ptr @.str, ptr @atmel_qspi_dt_ids, ptr @atmel_qspi_pm_ops, ptr @atmel_qspi_mem_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @atmel_qspi_modes, ptr @init_completion.__key, ptr @.str.28, ptr @atmel_sama5d2_qspi_caps, ptr @atmel_sam9x60_qspi_caps], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_qspi_modes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sama5d2_qspi_caps to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_sam9x60_qspi_caps to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_qspi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_qspi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 96, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3840, ptr %mode_bits, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %1 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @atmel_qspi_setup, ptr %setup, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %bus_num, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %3 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @atmel_qspi_mem_ops, ptr %mem_ops, align 4
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %num_chipselect, align 2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %7 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %of_node3, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i177 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i177 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i177, align 4
  %cmd_completion = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cmd_completion, align 4
  %wait.i = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #7
  %pdev5 = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev5, align 4
  %call6 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #7
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #7
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %10, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call16 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #7
  %call18 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call16) #7
  %mem = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call18, ptr %mem, align 4
  %cmp.i178 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %do.end24, label %if.end28

do.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %end.i = getelementptr inbounds %struct.resource, ptr %call16, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %23 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call16, align 4
  %sub.i = add i32 %22, 1
  %add.i = sub i32 %sub.i, %24
  %mmap_size = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 6
  %25 = ptrtoint ptr %mmap_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i, ptr %mmap_size, align 4
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %pclk = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 2
  %26 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call31, ptr %pclk, align 4
  %cmp.i179 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then34, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %27 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call36, ptr %pclk, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end28.if.end38_crit_edge
  %28 = phi ptr [ %call36, %if.then34 ], [ %call31, %if.end28.if.end38_crit_edge ]
  %cmp.i180 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %29 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pclk, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  %call.i181 = tail call i32 @clk_prepare(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool.not.i = icmp eq i32 %call.i181, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end48.do.end55_crit_edge

if.end48.do.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end.i:                                         ; preds = %if.end48
  %call1.i = tail call i32 @clk_enable(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end57, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %28) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then3.i, %if.end48.do.end55_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i181, %if.end48.do.end55_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end57:                                         ; preds = %if.end.i
  %call59 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %caps = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 5
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call59, ptr %caps, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end65, label %if.end67

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %disable_pclk

if.end67:                                         ; preds = %if.end57
  %33 = ptrtoint ptr %call59 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call59, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool69.not = icmp eq i8 %34, 0
  br i1 %tobool69.not, label %if.end67.if.end92_crit_edge, label %if.then70

if.end67.if.end92_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then70:                                        ; preds = %if.end67
  %call72 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  %qspick = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 3
  %35 = ptrtoint ptr %qspick to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call72, ptr %qspick, align 4
  %cmp.i182 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  %36 = ptrtoint ptr %qspick to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %qspick, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %disable_pclk

if.end82:                                         ; preds = %if.then70
  %call.i183 = tail call i32 @clk_prepare(ptr noundef %call72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool.not.i184, label %if.end.i187, label %if.end82.do.end89_crit_edge

if.end82.do.end89_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

if.end.i187:                                      ; preds = %if.end82
  %call1.i185 = tail call i32 @clk_enable(ptr noundef %call72) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185)
  %tobool2.not.i186 = icmp eq i32 %call1.i185, 0
  br i1 %tobool2.not.i186, label %if.end.i187.if.end92_crit_edge, label %if.then3.i188

if.end.i187.if.end92_crit_edge:                   ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then3.i188:                                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call72) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then3.i188, %if.end82.do.end89_crit_edge
  %retval.0.i189.ph = phi i32 [ %call1.i185, %if.then3.i188 ], [ %call.i183, %if.end82.do.end89_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %disable_pclk

if.end92:                                         ; preds = %if.end.i187.if.end92_crit_edge, %if.end67.if.end92_crit_edge
  %call93 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp = icmp slt i32 %call93, 0
  br i1 %cmp, label %if.end92.disable_qspick_crit_edge, label %if.end95

if.end92.disable_qspick_crit_edge:                ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_qspick

if.end95:                                         ; preds = %if.end92
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i191 = icmp eq ptr %40, null
  br i1 %tobool.not.i191, label %if.end.i192, label %if.end95.dev_name.exit_crit_edge

if.end95.dev_name.exit_crit_edge:                 ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i192:                                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i192, %if.end95.dev_name.exit_crit_edge
  %retval.0.i193 = phi ptr [ %42, %if.end.i192 ], [ %40, %if.end95.dev_name.exit_crit_edge ]
  %call.i194 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call93, ptr noundef nonnull @atmel_qspi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i193, ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool100.not = icmp eq i32 %call.i194, 0
  br i1 %tobool100.not, label %if.end102, label %dev_name.exit.disable_qspick_crit_edge

dev_name.exit.disable_qspick_crit_edge:           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_qspick

if.end102:                                        ; preds = %dev_name.exit
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 -2147483648) #7, !srcloc !81
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !81
  %mr.i = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 8
  %47 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %mr.i, align 4
  %48 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %10, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 16777216) #7, !srcloc !81
  %call103 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end102.cleanup_crit_edge, label %if.end102.disable_qspick_crit_edge

if.end102.disable_qspick_crit_edge:               ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %disable_qspick

if.end102.cleanup_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

disable_qspick:                                   ; preds = %if.end102.disable_qspick_crit_edge, %dev_name.exit.disable_qspick_crit_edge, %if.end92.disable_qspick_crit_edge
  %err.0 = phi i32 [ %call.i194, %dev_name.exit.disable_qspick_crit_edge ], [ %call103, %if.end102.disable_qspick_crit_edge ], [ %call93, %if.end92.disable_qspick_crit_edge ]
  %qspick107 = getelementptr inbounds %struct.atmel_qspi, ptr %10, i32 0, i32 3
  %50 = ptrtoint ptr %qspick107 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %qspick107, align 4
  tail call void @clk_disable(ptr noundef %51) #7
  tail call void @clk_unprepare(ptr noundef %51) #7
  br label %disable_pclk

disable_pclk:                                     ; preds = %disable_qspick, %do.end89, %do.end78, %do.end65
  %err.1 = phi i32 [ %38, %do.end78 ], [ %retval.0.i189.ph, %do.end89 ], [ %err.0, %disable_qspick ], [ -22, %do.end65 ]
  %52 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %53) #7
  tail call void @clk_unprepare(ptr noundef %53) #7
  br label %cleanup

cleanup:                                          ; preds = %disable_pclk, %if.end102.cleanup_crit_edge, %do.end55, %do.end44, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %20, %do.end24 ], [ %31, %do.end44 ], [ %retval.0.i.ph, %do.end55 ], [ %err.1, %disable_pclk ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end102.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 33554432) #7, !srcloc !81
  %qspick = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %qspick to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qspick, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %pclk = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_setup(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %busy = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %busy, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %6 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %pclk = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed_hz, align 8
  %add = add i32 %call4, -1
  %sub = add i32 %add, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sub)
  %cmp.not = icmp ugt i32 %11, %sub
  br i1 %cmp.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %div = udiv i32 %sub, %11
  %dec = shl i32 %div, 8
  %phi.bo = add i32 %dec, 65280
  %phi.bo26 = and i32 %phi.bo, 65280
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %scbr.0 = phi i32 [ %phi.bo26, %if.then10 ], [ 0, %if.end7.if.end11_crit_edge ]
  %scr = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %scr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %scbr.0, ptr %scr, align 4
  %13 = shl nuw nsw i32 %scbr.0, 8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !82
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr.i15 = getelementptr i8, ptr %4, i32 28
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #7, !srcloc !82
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %pending2 = getelementptr inbounds %struct.atmel_qspi, ptr %dev_id, i32 0, i32 7
  %8 = ptrtoint ptr %pending2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending2, align 4
  %or = or i32 %9, %7
  store i32 %or, ptr %pending2, align 4
  %and4 = and i32 %or, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and4)
  %cmp = icmp eq i32 %and4, 1280
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_completion = getelementptr inbounds %struct.atmel_qspi, ptr %dev_id, i32 0, i32 10
  tail call void @complete(ptr noundef %cmd_completion) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then5 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @atmel_qspi_supports_op(ptr nocapture noundef readnone %mem, ptr nocapture noundef readonly %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @atmel_qspi_find_mode(ptr noundef %op)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp1 = icmp eq i8 %1, 2
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buswidth, align 1
  %buswidth5 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %buswidth5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %buswidth5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp7.not = icmp eq i8 %3, %5
  br i1 %cmp7.not, label %land.lhs.true.if.end15_crit_edge, label %land.lhs.true9

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %6 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp12 = icmp eq i8 %7, 0
  br i1 %cmp12, label %land.lhs.true9.return_crit_edge, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true9.return_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %dtr = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 2
  %8 = ptrtoint ptr %dtr to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dtr, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false, label %if.end15.return_crit_edge

if.end15.return_crit_edge:                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %if.end15
  %dtr19 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %dtr19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load20 = load i8, ptr %dtr19, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load20)
  %tobool23.not = icmp sgt i8 %bf.load20, -1
  br i1 %tobool23.not, label %lor.lhs.false24, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %dtr26 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %dtr26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load27 = load i8, ptr %dtr26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load27)
  %tobool30.not = icmp sgt i8 %bf.load27, -1
  br i1 %tobool30.not, label %lor.lhs.false31, label %lor.lhs.false24.return_crit_edge

lor.lhs.false24.return_crit_edge:                 ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false31:                                  ; preds = %lor.lhs.false24
  %dtr32 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %dtr32 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load33 = load i8, ptr %dtr32, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %tobool36.not = icmp sgt i8 %bf.load33, -1
  br i1 %tobool36.not, label %if.end38, label %lor.lhs.false31.return_crit_edge

lor.lhs.false31.return_crit_edge:                 ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end38:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp42.not = icmp eq i8 %13, 1
  br label %return

return:                                           ; preds = %if.end38, %lor.lhs.false31.return_crit_edge, %lor.lhs.false24.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end15.return_crit_edge, %land.lhs.true9.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %land.lhs.true9.return_crit_edge ], [ false, %lor.lhs.false31.return_crit_edge ], [ false, %lor.lhs.false24.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %if.end15.return_crit_edge ], [ %cmp42.not, %if.end38 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %val, align 8
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 4
  %conv = zext i32 %9 to i64
  %add = add i64 %7, %conv
  %mmap_size = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %mmap_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mmap_size, align 4
  %conv1 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv1)
  %cmp = icmp ugt i64 %add, %conv1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %12 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opcode.i, align 4
  %14 = and i16 %13, 255
  %and.i = zext i16 %14 to i32
  %call.i = tail call fastcc i32 @atmel_qspi_find_mode(ptr noundef %op) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %config.i = getelementptr [7 x %struct.atmel_qspi_mode], ptr @atmel_qspi_modes, i32 0, i32 %call.i, i32 3
  %15 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config.i, align 4
  %or.i = or i32 %16, 16
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %17 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dummy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then2.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv5.i = zext i8 %18 to i16
  %mul.i = shl nuw nsw i16 %conv5.i, 3
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %buswidth.i, align 1
  %div.rhs.trunc.i = zext i8 %20 to i16
  %div183.i = udiv i16 %mul.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div183.i to i32
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then2.i, %if.end.i.if.end8.i_crit_edge
  %dummy_cycles.0.i = phi i32 [ %div.zext.i, %if.then2.i ], [ 0, %if.end.i.if.end8.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %buswidth9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool10.not.i = icmp eq i8 %22, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end66.i_crit_edge, label %if.then11.i

if.end8.i.if.end66.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then11.i:                                      ; preds = %if.end8.i
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr.i, align 8
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i8 %24, label %if.then11.i.cleanup_crit_edge [
    i8 0, label %if.then11.i.if.end66.i_crit_edge
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb23.i
    i8 3, label %sw.bb54.i
    i8 4, label %sw.bb60.i
  ]

if.then11.i.if.end66.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then11.i.cleanup_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or15.i = or i32 %16, 848
  %and17.i = shl i64 %7, 16
  %shl18.i = and i64 %and17.i, 16711680
  %conv20.i = zext i16 %14 to i64
  %or21.i = or i64 %shl18.i, %conv20.i
  %conv22.i = trunc i64 %or21.i to i32
  br label %if.end66.i

sw.bb23.i:                                        ; preds = %if.then11.i
  %26 = udiv i8 8, %22
  %div27.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %dummy_cycles.0.i, i32 %div27.i)
  %cmp28.i = icmp ult i32 %dummy_cycles.0.i, %div27.i
  br i1 %cmp28.i, label %if.then30.i, label %if.else.i

if.then30.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  %and31.i = and i32 %16, -49
  %or32.i = or i32 %and31.i, 32
  %conv35.i = zext i16 %13 to i32
  %shl36.i = shl nuw i32 %conv35.i, 16
  %27 = trunc i64 %7 to i32
  %28 = and i32 %27, 65535
  %conv42.i = or i32 %shl36.i, %28
  br label %if.end66.i

if.else.i:                                        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  %or43.i = or i32 %16, 48
  %.tr.i = trunc i64 %7 to i32
  %29 = shl i32 %.tr.i, 8
  %conv48.i = and i32 %29, 16776960
  %sub.i = sub nsw i32 %dummy_cycles.0.i, %div27.i
  br label %if.end66.i

sw.bb54.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or55.i = or i32 %16, 48
  %30 = trunc i64 %7 to i32
  %conv59.i = and i32 %30, 16777215
  br label %if.end66.i

sw.bb60.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %or61.i = or i32 %16, 1072
  %31 = trunc i64 %7 to i32
  %conv65.i = and i32 %31, 134217727
  br label %if.end66.i

if.end66.i:                                       ; preds = %sw.bb60.i, %sw.bb54.i, %if.else.i, %if.then30.i, %sw.bb.i, %if.then11.i.if.end66.i_crit_edge, %if.end8.i.if.end66.i_crit_edge
  %iar.0.i = phi i32 [ %conv65.i, %sw.bb60.i ], [ %conv59.i, %sw.bb54.i ], [ %conv42.i, %if.then30.i ], [ %conv48.i, %if.else.i ], [ 0, %sw.bb.i ], [ 0, %if.then11.i.if.end66.i_crit_edge ], [ 0, %if.end8.i.if.end66.i_crit_edge ]
  %icr.0.i = phi i32 [ %and.i, %sw.bb60.i ], [ %and.i, %sw.bb54.i ], [ %and.i, %if.then30.i ], [ %and.i, %if.else.i ], [ %conv22.i, %sw.bb.i ], [ %and.i, %if.then11.i.if.end66.i_crit_edge ], [ %and.i, %if.end8.i.if.end66.i_crit_edge ]
  %ifr.0.i = phi i32 [ %or61.i, %sw.bb60.i ], [ %or55.i, %sw.bb54.i ], [ %or32.i, %if.then30.i ], [ %or43.i, %if.else.i ], [ %or15.i, %sw.bb.i ], [ %or.i, %if.then11.i.if.end66.i_crit_edge ], [ %or.i, %if.end8.i.if.end66.i_crit_edge ]
  %dummy_cycles.1.i = phi i32 [ %dummy_cycles.0.i, %sw.bb60.i ], [ %dummy_cycles.0.i, %sw.bb54.i ], [ %dummy_cycles.0.i, %if.then30.i ], [ %sub.i, %if.else.i ], [ %dummy_cycles.0.i, %sw.bb.i ], [ %dummy_cycles.0.i, %if.then11.i.if.end66.i_crit_edge ], [ %dummy_cycles.0.i, %if.end8.i.if.end66.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dummy_cycles.1.i)
  %tobool67.not.i = icmp eq i32 %dummy_cycles.1.i, 0
  %shl69.i = shl nsw i32 %dummy_cycles.1.i, 16
  %and70.i = and i32 %shl69.i, 2031616
  %or71.i = select i1 %tobool67.not.i, i32 0, i32 %and70.i
  %ifr.1.i = or i32 %or71.i, %ifr.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool74.not.i = icmp eq i32 %9, 0
  br i1 %tobool74.not.i, label %if.end66.i.if.end83.i_crit_edge, label %if.then75.i

if.end66.i.if.end83.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then75.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool79.not.i = icmp eq i8 %33, 0
  %spec.select.v.i = select i1 %tobool79.not.i, i32 128, i32 4224
  %spec.select.i = or i32 %spec.select.v.i, %ifr.1.i
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then75.i, %if.end66.i.if.end83.i_crit_edge
  %ifr.2.i = phi i32 [ %ifr.1.i, %if.end66.i.if.end83.i_crit_edge ], [ %spec.select.i, %if.then75.i ]
  %mr.i = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 8
  %34 = ptrtoint ptr %mr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp84.not.i = icmp eq i32 %35, 1
  br i1 %cmp84.not.i, label %if.end83.i.if.end88.i_crit_edge, label %if.then86.i

if.end83.i.if.end88.i_crit_edge:                  ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.i

if.then86.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !81
  %38 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %mr.i, align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then86.i, %if.end83.i.if.end88.i_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %add.ptr.i177.i = getelementptr i8, ptr %40, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177.i) #7, !srcloc !82
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool93.not.i = icmp eq i8 %43, 0
  br i1 %tobool93.not.i, label %if.end88.i.if.end98.i_crit_edge, label %land.lhs.true.i

if.end88.i.if.end98.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

land.lhs.true.i:                                  ; preds = %if.end88.i
  %44 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool96.not.i = icmp eq i32 %45, 0
  br i1 %tobool96.not.i, label %if.then97.i, label %land.lhs.true.i.if.end98.i_crit_edge

land.lhs.true.i.if.end98.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98.i

if.then97.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %iar.0.i) #7
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %48, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i178.i, i32 %46) #7, !srcloc !81
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.then97.i, %land.lhs.true.i.if.end98.i_crit_edge, %if.end88.i.if.end98.i_crit_edge
  %caps.i = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 5
  %49 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %caps.i, align 4
  %has_ricr.i = getelementptr inbounds %struct.atmel_qspi_caps, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %has_ricr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_ricr.i, align 1, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool99.not.i = icmp eq i8 %52, 0
  br i1 %tobool99.not.i, label %if.else107.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end98.i
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %53 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp102.i = icmp eq i32 %54, 1
  %55 = tail call i32 @llvm.bswap.i32(i32 %icr.0.i) #7
  %56 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %5, align 4
  br i1 %cmp102.i, label %if.then104.i, label %if.else105.i

if.then104.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i179.i = getelementptr i8, ptr %57, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179.i, i32 %55) #7, !srcloc !81
  br label %if.end5

if.else105.i:                                     ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i180.i = getelementptr i8, ptr %57, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180.i, i32 %55) #7, !srcloc !81
  br label %if.end5

if.else107.i:                                     ; preds = %if.end98.i
  %58 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool110.not.i = icmp eq i32 %59, 0
  br i1 %tobool110.not.i, label %if.else107.i.if.end118.i_crit_edge, label %land.lhs.true111.i

if.else107.i.if.end118.i_crit_edge:               ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

land.lhs.true111.i:                               ; preds = %if.else107.i
  call void @__sanitizer_cov_trace_pc() #9
  %dir113.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %60 = ptrtoint ptr %dir113.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dir113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp114.i = icmp eq i32 %61, 2
  %or117.i = or i32 %ifr.2.i, 8192
  %spec.select176.i = select i1 %cmp114.i, i32 %or117.i, i32 %ifr.2.i
  br label %if.end118.i

if.end118.i:                                      ; preds = %land.lhs.true111.i, %if.else107.i.if.end118.i_crit_edge
  %ifr.3.i = phi i32 [ %ifr.2.i, %if.else107.i.if.end118.i_crit_edge ], [ %spec.select176.i, %land.lhs.true111.i ]
  %62 = tail call i32 @llvm.bswap.i32(i32 %icr.0.i) #7
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %add.ptr.i181.i = getelementptr i8, ptr %64, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i181.i, i32 %62) #7, !srcloc !81
  br label %if.end5

if.end5:                                          ; preds = %if.end118.i, %if.else105.i, %if.then104.i
  %ifr.4.i = phi i32 [ %ifr.2.i, %if.then104.i ], [ %ifr.2.i, %if.else105.i ], [ %ifr.3.i, %if.end118.i ]
  %65 = tail call i32 @llvm.bswap.i32(i32 %ifr.4.i) #7
  %66 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %5, align 4
  %add.ptr.i182.i = getelementptr i8, ptr %67, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182.i, i32 %65) #7, !srcloc !81
  %68 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool8.not = icmp eq i32 %69, 0
  br i1 %tobool8.not, label %if.end5.if.end26_crit_edge, label %if.then9

if.end5.if.end26_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then9:                                         ; preds = %if.end5
  %70 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %71, i32 56
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !82
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %73 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp12 = icmp eq i32 %74, 1
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf, align 4
  %mem16 = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 1
  %77 = ptrtoint ptr %mem16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem16, align 4
  %add.ptr = getelementptr i8, ptr %78, i32 %iar.0.i
  %79 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nbytes, align 4
  tail call void @mmiocpy(ptr noundef %76, ptr noundef %add.ptr, i32 noundef %80) #7
  br label %if.end25

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %mem19 = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 1
  %81 = ptrtoint ptr %mem19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mem19, align 4
  %add.ptr20 = getelementptr i8, ptr %82, i32 %iar.0.i
  %buf22 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %83 = ptrtoint ptr %buf22 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %buf22, align 4
  %85 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %nbytes, align 4
  tail call void @mmiocpy(ptr noundef %add.ptr20, ptr noundef %84, i32 noundef %86) #7
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %87 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 1) #7, !srcloc !81
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end5.if.end26_crit_edge
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %5, align 4
  %add.ptr.i65 = getelementptr i8, ptr %90, i32 16
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !82
  %92 = lshr i32 %91, 8
  %and = and i32 %92, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and)
  %cmp28 = icmp eq i32 %and, 1280
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_completion = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 10
  %93 = ptrtoint ptr %cmd_completion to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %cmd_completion, align 4
  %pending = getelementptr inbounds %struct.atmel_qspi, ptr %5, i32 0, i32 7
  %94 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %and, ptr %pending, align 4
  %95 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %5, align 4
  %add.ptr.i66 = getelementptr i8, ptr %96, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 327680) #7, !srcloc !81
  %call35 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  %spec.select = select i1 %tobool36.not, i32 -110, i32 0
  %97 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %5, align 4
  %add.ptr.i67 = getelementptr i8, ptr %98, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 327680) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %if.then11.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end31 ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ -524, %if.then11.i.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @atmel_qspi_get_name(ptr nocapture noundef readonly %spimem) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %spimem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spimem, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_qspi_find_mode(ptr nocapture noundef readonly %op) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %buswidth.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buswidth.i, align 1
  %addr.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth5.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %nbytes12.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %1, label %entry.for.inc.6_crit_edge [
    i8 1, label %if.end.i
    i8 2, label %if.end.i.5
    i8 4, label %if.end.i.6
  ]

entry.for.inc.6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %5 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp8.not.i = icmp eq i8 %6, 1
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %land.lhs.true.i.land.lhs.true.i.3_crit_edge

land.lhs.true.i.land.lhs.true.i.3_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.3

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %7 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not.i = icmp eq i32 %8, 0
  br i1 %tobool13.not.i, label %if.end11.i.cleanup_crit_edge, label %land.lhs.true14.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i:                                ; preds = %if.end11.i
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp19.not.i = icmp eq i8 %10, 1
  br i1 %cmp19.not.i, label %land.lhs.true14.i.cleanup_crit_edge, label %if.end.i.1

land.lhs.true14.i.cleanup_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.1:                                       ; preds = %land.lhs.true14.i
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool.not.i.1 = icmp eq i8 %.pr, 0
  br i1 %tobool.not.i.1, label %if.end.i.1.if.end11.i.1_crit_edge, label %land.lhs.true.i.1

if.end.i.1.if.end11.i.1_crit_edge:                ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.1

land.lhs.true.i.1:                                ; preds = %if.end.i.1
  %12 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %.pr8 = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr8)
  %cmp8.not.i.1 = icmp eq i8 %.pr8, 1
  br i1 %cmp8.not.i.1, label %land.lhs.true.i.1.if.end11.i.1_crit_edge, label %land.lhs.true.i.1.land.lhs.true.i.3thread-pre-split_crit_edge

land.lhs.true.i.1.land.lhs.true.i.3thread-pre-split_crit_edge: ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.3thread-pre-split

land.lhs.true.i.1.if.end11.i.1_crit_edge:         ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.1

if.end11.i.1:                                     ; preds = %land.lhs.true.i.1.if.end11.i.1_crit_edge, %if.end.i.1.if.end11.i.1_crit_edge
  %13 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not.i.1 = icmp eq i32 %14, 0
  br i1 %tobool13.not.i.1, label %if.end11.i.1.cleanup_crit_edge, label %land.lhs.true14.i.1

if.end11.i.1.cleanup_crit_edge:                   ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.1:                              ; preds = %if.end11.i.1
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp19.not.i.1 = icmp eq i8 %16, 2
  br i1 %cmp19.not.i.1, label %land.lhs.true14.i.1.cleanup_crit_edge, label %if.end.i.2

land.lhs.true14.i.1.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.2:                                       ; preds = %land.lhs.true14.i.1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %.pr10.pr = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr10.pr)
  %tobool.not.i.2 = icmp eq i8 %.pr10.pr, 0
  br i1 %tobool.not.i.2, label %if.end.i.2.if.end11.i.2_crit_edge, label %land.lhs.true.i.2

if.end.i.2.if.end11.i.2_crit_edge:                ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.2

land.lhs.true.i.2:                                ; preds = %if.end.i.2
  %18 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr12.pr = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %.pr12.pr)
  %cmp8.not.i.2 = icmp eq i8 %.pr12.pr, 1
  br i1 %cmp8.not.i.2, label %land.lhs.true.i.2.if.end11.i.2_crit_edge, label %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge

land.lhs.true.i.2.land.lhs.true.i.3_crit_edge:    ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.3

land.lhs.true.i.2.if.end11.i.2_crit_edge:         ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.2

if.end11.i.2:                                     ; preds = %land.lhs.true.i.2.if.end11.i.2_crit_edge, %if.end.i.2.if.end11.i.2_crit_edge
  %19 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not.i.2 = icmp eq i32 %20, 0
  br i1 %tobool13.not.i.2, label %if.end11.i.2.cleanup_crit_edge, label %land.lhs.true14.i.2

if.end11.i.2.cleanup_crit_edge:                   ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.2:                              ; preds = %if.end11.i.2
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp19.not.i.2 = icmp eq i8 %22, 4
  br i1 %cmp19.not.i.2, label %land.lhs.true14.i.2.cleanup_crit_edge, label %if.end.i.3

land.lhs.true14.i.2.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.3:                                       ; preds = %land.lhs.true14.i.2
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %.pr14.pr = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr14.pr)
  %tobool.not.i.3 = icmp eq i8 %.pr14.pr, 0
  br i1 %tobool.not.i.3, label %if.end.i.3.if.end11.i.3_crit_edge, label %if.end.i.3.land.lhs.true.i.3thread-pre-split_crit_edge

if.end.i.3.land.lhs.true.i.3thread-pre-split_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.3thread-pre-split

if.end.i.3.if.end11.i.3_crit_edge:                ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.3

land.lhs.true.i.3thread-pre-split:                ; preds = %if.end.i.3.land.lhs.true.i.3thread-pre-split_crit_edge, %land.lhs.true.i.1.land.lhs.true.i.3thread-pre-split_crit_edge
  %24 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr16 = load i8, ptr %buswidth5.i, align 1
  br label %land.lhs.true.i.3

land.lhs.true.i.3:                                ; preds = %land.lhs.true.i.3thread-pre-split, %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge, %land.lhs.true.i.land.lhs.true.i.3_crit_edge
  %25 = phi i8 [ %.pr16, %land.lhs.true.i.3thread-pre-split ], [ %.pr12.pr, %land.lhs.true.i.2.land.lhs.true.i.3_crit_edge ], [ %6, %land.lhs.true.i.land.lhs.true.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp8.not.i.3 = icmp eq i8 %25, 2
  br i1 %cmp8.not.i.3, label %land.lhs.true.i.3.if.end11.i.3_crit_edge, label %land.lhs.true.i.3.if.end.i.4_crit_edge

land.lhs.true.i.3.if.end.i.4_crit_edge:           ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.4

land.lhs.true.i.3.if.end11.i.3_crit_edge:         ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.3

if.end11.i.3:                                     ; preds = %land.lhs.true.i.3.if.end11.i.3_crit_edge, %if.end.i.3.if.end11.i.3_crit_edge
  %26 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool13.not.i.3 = icmp eq i32 %27, 0
  br i1 %tobool13.not.i.3, label %if.end11.i.3.cleanup_crit_edge, label %land.lhs.true14.i.3

if.end11.i.3.cleanup_crit_edge:                   ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.3:                              ; preds = %if.end11.i.3
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp19.not.i.3 = icmp eq i8 %29, 2
  br i1 %cmp19.not.i.3, label %land.lhs.true14.i.3.cleanup_crit_edge, label %land.lhs.true14.i.3.if.end.i.4_crit_edge

land.lhs.true14.i.3.if.end.i.4_crit_edge:         ; preds = %land.lhs.true14.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.4

land.lhs.true14.i.3.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.4:                                       ; preds = %land.lhs.true14.i.3.if.end.i.4_crit_edge, %land.lhs.true.i.3.if.end.i.4_crit_edge
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.4 = icmp eq i8 %31, 0
  br i1 %tobool.not.i.4, label %if.end.i.4.if.end11.i.4_crit_edge, label %land.lhs.true.i.4

if.end.i.4.if.end11.i.4_crit_edge:                ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.4

land.lhs.true.i.4:                                ; preds = %if.end.i.4
  %32 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %33)
  %cmp8.not.i.4 = icmp eq i8 %33, 4
  br i1 %cmp8.not.i.4, label %land.lhs.true.i.4.if.end11.i.4_crit_edge, label %land.lhs.true.i.4.for.inc.6_crit_edge

land.lhs.true.i.4.for.inc.6_crit_edge:            ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.i.4.if.end11.i.4_crit_edge:         ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.4

if.end11.i.4:                                     ; preds = %land.lhs.true.i.4.if.end11.i.4_crit_edge, %if.end.i.4.if.end11.i.4_crit_edge
  %34 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool13.not.i.4 = icmp eq i32 %35, 0
  br i1 %tobool13.not.i.4, label %if.end11.i.4.cleanup_crit_edge, label %land.lhs.true14.i.4

if.end11.i.4.cleanup_crit_edge:                   ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.4:                              ; preds = %if.end11.i.4
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %37)
  %cmp19.not.i.4 = icmp eq i8 %37, 4
  br i1 %cmp19.not.i.4, label %land.lhs.true14.i.4.cleanup_crit_edge, label %land.lhs.true14.i.4.for.inc.6_crit_edge

land.lhs.true14.i.4.for.inc.6_crit_edge:          ; preds = %land.lhs.true14.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true14.i.4.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.5:                                       ; preds = %entry
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.5 = icmp eq i8 %39, 0
  br i1 %tobool.not.i.5, label %if.end.i.5.if.end11.i.5_crit_edge, label %land.lhs.true.i.5

if.end.i.5.if.end11.i.5_crit_edge:                ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.5

land.lhs.true.i.5:                                ; preds = %if.end.i.5
  %40 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp8.not.i.5 = icmp eq i8 %41, 2
  br i1 %cmp8.not.i.5, label %land.lhs.true.i.5.if.end11.i.5_crit_edge, label %land.lhs.true.i.5.for.inc.6_crit_edge

land.lhs.true.i.5.for.inc.6_crit_edge:            ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.i.5.if.end11.i.5_crit_edge:         ; preds = %land.lhs.true.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.5

if.end11.i.5:                                     ; preds = %land.lhs.true.i.5.if.end11.i.5_crit_edge, %if.end.i.5.if.end11.i.5_crit_edge
  %42 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool13.not.i.5 = icmp eq i32 %43, 0
  br i1 %tobool13.not.i.5, label %if.end11.i.5.cleanup_crit_edge, label %land.lhs.true14.i.5

if.end11.i.5.cleanup_crit_edge:                   ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.5:                              ; preds = %if.end11.i.5
  %44 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp19.not.i.5 = icmp eq i8 %45, 2
  br i1 %cmp19.not.i.5, label %land.lhs.true14.i.5.cleanup_crit_edge, label %land.lhs.true14.i.5.for.inc.6_crit_edge

land.lhs.true14.i.5.for.inc.6_crit_edge:          ; preds = %land.lhs.true14.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true14.i.5.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.6:                                       ; preds = %entry
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %addr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i.6 = icmp eq i8 %47, 0
  br i1 %tobool.not.i.6, label %if.end.i.6.if.end11.i.6_crit_edge, label %land.lhs.true.i.6

if.end.i.6.if.end11.i.6_crit_edge:                ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.6

land.lhs.true.i.6:                                ; preds = %if.end.i.6
  %48 = ptrtoint ptr %buswidth5.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buswidth5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp8.not.i.6 = icmp eq i8 %49, 4
  br i1 %cmp8.not.i.6, label %land.lhs.true.i.6.if.end11.i.6_crit_edge, label %land.lhs.true.i.6.for.inc.6_crit_edge

land.lhs.true.i.6.for.inc.6_crit_edge:            ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true.i.6.if.end11.i.6_crit_edge:         ; preds = %land.lhs.true.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.6

if.end11.i.6:                                     ; preds = %land.lhs.true.i.6.if.end11.i.6_crit_edge, %if.end.i.6.if.end11.i.6_crit_edge
  %50 = ptrtoint ptr %nbytes12.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbytes12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool13.not.i.6 = icmp eq i32 %51, 0
  br i1 %tobool13.not.i.6, label %if.end11.i.6.cleanup_crit_edge, label %land.lhs.true14.i.6

if.end11.i.6.cleanup_crit_edge:                   ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true14.i.6:                              ; preds = %if.end11.i.6
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %53)
  %cmp19.not.i.6 = icmp eq i8 %53, 4
  br i1 %cmp19.not.i.6, label %land.lhs.true14.i.6.cleanup_crit_edge, label %land.lhs.true14.i.6.for.inc.6_crit_edge

land.lhs.true14.i.6.for.inc.6_crit_edge:          ; preds = %land.lhs.true14.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

land.lhs.true14.i.6.cleanup_crit_edge:            ; preds = %land.lhs.true14.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.6:                                        ; preds = %land.lhs.true14.i.6.for.inc.6_crit_edge, %land.lhs.true.i.6.for.inc.6_crit_edge, %land.lhs.true14.i.5.for.inc.6_crit_edge, %land.lhs.true.i.5.for.inc.6_crit_edge, %land.lhs.true14.i.4.for.inc.6_crit_edge, %land.lhs.true.i.4.for.inc.6_crit_edge, %entry.for.inc.6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %land.lhs.true14.i.6.cleanup_crit_edge, %if.end11.i.6.cleanup_crit_edge, %land.lhs.true14.i.5.cleanup_crit_edge, %if.end11.i.5.cleanup_crit_edge, %land.lhs.true14.i.4.cleanup_crit_edge, %if.end11.i.4.cleanup_crit_edge, %land.lhs.true14.i.3.cleanup_crit_edge, %if.end11.i.3.cleanup_crit_edge, %land.lhs.true14.i.2.cleanup_crit_edge, %if.end11.i.2.cleanup_crit_edge, %land.lhs.true14.i.1.cleanup_crit_edge, %if.end11.i.1.cleanup_crit_edge, %land.lhs.true14.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11.i.cleanup_crit_edge ], [ 0, %land.lhs.true14.i.cleanup_crit_edge ], [ 1, %if.end11.i.1.cleanup_crit_edge ], [ 1, %land.lhs.true14.i.1.cleanup_crit_edge ], [ 2, %if.end11.i.2.cleanup_crit_edge ], [ 2, %land.lhs.true14.i.2.cleanup_crit_edge ], [ 3, %if.end11.i.3.cleanup_crit_edge ], [ 3, %land.lhs.true14.i.3.cleanup_crit_edge ], [ 4, %if.end11.i.4.cleanup_crit_edge ], [ 4, %land.lhs.true14.i.4.cleanup_crit_edge ], [ 5, %if.end11.i.5.cleanup_crit_edge ], [ 5, %land.lhs.true14.i.5.cleanup_crit_edge ], [ 6, %if.end11.i.6.cleanup_crit_edge ], [ 6, %land.lhs.true14.i.6.cleanup_crit_edge ], [ -524, %for.inc.6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 33554432) #7, !srcloc !81
  %qspick = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %qspick to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qspick, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %pclk = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_qspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
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
  %pclk = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %qspick = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %qspick to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %qspick, align 4
  %call.i8 = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %tobool.not.i9, label %if.end.i12, label %clk_prepare_enable.exit.clk_prepare_enable.exit15_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit15_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit15

if.end.i12:                                       ; preds = %clk_prepare_enable.exit
  %call1.i10 = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10)
  %tobool2.not.i11 = icmp eq i32 %call1.i10, 0
  br i1 %tobool2.not.i11, label %if.end.i12.clk_prepare_enable.exit15_crit_edge, label %if.then3.i13

if.end.i12.clk_prepare_enable.exit15_crit_edge:   ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit15

if.then3.i13:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %clk_prepare_enable.exit15

clk_prepare_enable.exit15:                        ; preds = %if.then3.i13, %if.end.i12.clk_prepare_enable.exit15_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit15_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 -2147483648) #7, !srcloc !81
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !81
  %mr.i = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %mr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mr.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 16777216) #7, !srcloc !81
  %scr = getelementptr inbounds %struct.atmel_qspi, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %scr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scr, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !81
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__initcall__kmod_atmel_quadspi__234_715_atmel_qspi_driver_init6, !1, !"__initcall__kmod_atmel_quadspi__234_715_atmel_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/atmel-quadspi.c", i32 715, i32 1}
!2 = !{ptr @__exitcall_atmel_qspi_driver_exit, !1, !"__exitcall_atmel_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/spi/atmel-quadspi.c", i32 717, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/spi/atmel-quadspi.c", i32 718, i32 1}
!7 = !{ptr @__UNIQUE_ID_description237, !8, !"__UNIQUE_ID_description237", i1 false, i1 false}
!8 = !{!"../drivers/spi/atmel-quadspi.c", i32 719, i32 1}
!9 = !{ptr @__UNIQUE_ID_file238, !10, !"__UNIQUE_ID_file238", i1 false, i1 false}
!10 = !{!"../drivers/spi/atmel-quadspi.c", i32 720, i32 1}
!11 = !{ptr @__UNIQUE_ID_license239, !10, !"__UNIQUE_ID_license239", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/atmel-quadspi.c", i32 708, i32 11}
!14 = !{ptr @atmel_qspi_driver, !15, !"atmel_qspi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/atmel-quadspi.c", i32 706, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/atmel-quadspi.c", i32 557, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/atmel-quadspi.c", i32 560, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atmel_qspi_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @atmel_qspi_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/atmel-quadspi.c", i32 565, i32 59}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/atmel-quadspi.c", i32 568, i32 3}
!30 = !{ptr @atmel_qspi_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @atmel_qspi_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/atmel-quadspi.c", i32 575, i32 38}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/atmel-quadspi.c", i32 580, i32 3}
!36 = !{ptr @atmel_qspi_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @atmel_qspi_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/atmel-quadspi.c", i32 587, i32 3}
!40 = !{ptr @atmel_qspi_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @atmel_qspi_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/atmel-quadspi.c", i32 593, i32 3}
!44 = !{ptr @atmel_qspi_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @atmel_qspi_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/atmel-quadspi.c", i32 600, i32 41}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/atmel-quadspi.c", i32 602, i32 4}
!50 = !{ptr @atmel_qspi_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @atmel_qspi_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/atmel-quadspi.c", i32 610, i32 4}
!54 = !{ptr @atmel_qspi_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @atmel_qspi_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @atmel_qspi_mem_ops, !57, !"atmel_qspi_mem_ops", i1 false, i1 false}
!57 = !{!"../drivers/spi/atmel-quadspi.c", i32 466, i32 44}
!58 = !{ptr @atmel_qspi_modes, !59, !"atmel_qspi_modes", i1 false, i1 false}
!59 = !{!"../drivers/spi/atmel-quadspi.c", i32 166, i32 37}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @atmel_qspi_dt_ids, !64, !"atmel_qspi_dt_ids", i1 false, i1 false}
!64 = !{!"../drivers/spi/atmel-quadspi.c", i32 692, i32 34}
!65 = !{ptr @atmel_sama5d2_qspi_caps, !66, !"atmel_sama5d2_qspi_caps", i1 false, i1 false}
!66 = !{!"../drivers/spi/atmel-quadspi.c", i32 685, i32 37}
!67 = !{ptr @atmel_sam9x60_qspi_caps, !68, !"atmel_sam9x60_qspi_caps", i1 false, i1 false}
!68 = !{!"../drivers/spi/atmel-quadspi.c", i32 687, i32 37}
!69 = !{ptr @atmel_qspi_pm_ops, !70, !"atmel_qspi_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/spi/atmel-quadspi.c", i32 682, i32 8}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i8 0, i8 2}
!81 = !{i64 4255376}
!82 = !{i64 4255794}
