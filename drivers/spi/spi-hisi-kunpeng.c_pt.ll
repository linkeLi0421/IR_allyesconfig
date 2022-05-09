; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-hisi-kunpeng.c_pt.bc'
source_filename = "../drivers/spi/spi-hisi-kunpeng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
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
%struct.hisi_spi = type { ptr, ptr, i32, i32, ptr, i32, ptr, i32, i8, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.hisi_chip_data = type { i32, i32, i16, i8, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_hisi_kunpeng__283_551_hisi_spi_driver_init6 = internal global ptr @hisi_spi_driver_init, section ".initcall6.init", align 4
@hisi_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_spi_probe, ptr @hisi_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @hisi_spi_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_spi_driver_exit = internal global ptr @hisi_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author284 = internal constant [57 x i8] c"spi_hisi_kunpeng.author=Jay Fang <f.fangjian@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description285 = internal constant [78 x i8] c"spi_hisi_kunpeng.description=HiSilicon SPI Controller Driver for Kunpeng SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_file286 = internal constant [51 x i8] c"spi_hisi_kunpeng.file=drivers/spi/spi-hisi-kunpeng\00", section ".modinfo", align 1
@__UNIQUE_ID_license287 = internal constant [32 x i8] c"spi_hisi_kunpeng.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hisi-kunpeng-spi\00", [47 x i8] zeroinitializer }, align 32
@hisi_spi_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI03E1\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to get max SPI clocking speed, ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_spi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-hisi-kunpeng.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry_ptr = internal global ptr @hisi_spi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 506, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get IRQ=%d, ret=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry_ptr.10 = internal global ptr @hisi_spi_probe._entry.8, section ".printk_index", align 4
@hisi_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 512, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register spi master, ret=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry_ptr.13 = internal global ptr @hisi_spi_probe._entry.11, section ".printk_index", align 4
@hisi_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 517, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create debugfs dir\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry_ptr.17 = internal global ptr @hisi_spi_probe._entry.14, section ".printk_index", align 4
@hisi_spi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 521, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"hw version:0x%x max-freq:%u kHz\0A\00", [63 x i8] zeroinitializer }, align 32
@hisi_spi_probe._entry_ptr.20 = internal global ptr @hisi_spi_probe._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@hisi_spi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"interrupt_transfer: fifo overflow\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hisi_spi_irq\00", [19 x i8] zeroinitializer }, align 32
@hisi_spi_irq._entry_ptr = internal global ptr @hisi_spi_irq._entry, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hisi_spi%d\00", [21 x i8] zeroinitializer }, align 32
@hisi_spi_regs = internal constant { [12 x %struct.debugfs_reg32], [32 x i8] } { [12 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.25, i32 0 }, %struct.debugfs_reg32 { ptr @.str.26, i32 4 }, %struct.debugfs_reg32 { ptr @.str.27, i32 8 }, %struct.debugfs_reg32 { ptr @.str.28, i32 12 }, %struct.debugfs_reg32 { ptr @.str.29, i32 16 }, %struct.debugfs_reg32 { ptr @.str.30, i32 20 }, %struct.debugfs_reg32 { ptr @.str.31, i32 24 }, %struct.debugfs_reg32 { ptr @.str.32, i32 28 }, %struct.debugfs_reg32 { ptr @.str.33, i32 32 }, %struct.debugfs_reg32 { ptr @.str.34, i32 36 }, %struct.debugfs_reg32 { ptr @.str.35, i32 40 }, %struct.debugfs_reg32 { ptr @.str.36, i32 224 }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CSCR\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CR\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ENR\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FIFOC\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IMR\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DIN\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOUT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SR\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RISR\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ISR\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICR\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VERSION\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"hisi_spi_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 543, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 547, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"hisi_spi_acpi_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 537, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 478, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 481, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 486, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 506, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 512, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 517, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 519, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 351, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 170, i32 21 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"hisi_spi_regs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 148, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 178, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 149, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 150, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 151, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 152, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 153, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 154, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 155, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 156, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 157, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 158, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 159, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [34 x i8] c"../drivers/spi/spi-hisi-kunpeng.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 160, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author284, ptr @__UNIQUE_ID_description285, ptr @__UNIQUE_ID_file286, ptr @__UNIQUE_ID_license287, ptr @__exitcall_hisi_spi_driver_exit, ptr @__initcall__kmod_spi_hisi_kunpeng__283_551_hisi_spi_driver_init6, ptr @hisi_spi_driver_exit, ptr @hisi_spi_irq._entry, ptr @hisi_spi_irq._entry_ptr, ptr @hisi_spi_probe._entry, ptr @hisi_spi_probe._entry.11, ptr @hisi_spi_probe._entry.14, ptr @hisi_spi_probe._entry.18, ptr @hisi_spi_probe._entry.8, ptr @hisi_spi_probe._entry_ptr, ptr @hisi_spi_probe._entry_ptr.10, ptr @hisi_spi_probe._entry_ptr.13, ptr @hisi_spi_probe._entry_ptr.17, ptr @hisi_spi_probe._entry_ptr.20, ptr @hisi_spi_driver, ptr @.str, ptr @hisi_spi_acpi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @hisi_spi_regs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_regs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_spi_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_spi_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev1, i32 noundef 56, i1 noundef zeroext false) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup58_crit_edge, label %if.end4

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup58

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i114 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i114 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i114, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %2, align 4
  %irq7 = getelementptr inbounds %struct.hisi_spi, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %irq7, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.hisi_spi, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup58

if.end14:                                         ; preds = %if.end4
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %call.i115 = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef %max_speed_hz, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool16.not = icmp eq i32 %call.i115, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i115) #11
  br label %cleanup58

if.end18:                                         ; preds = %if.end14
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %call.i116 = tail call i32 @device_property_read_u16_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %num_chipselect, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool20.not = icmp eq i32 %call.i116, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %num_chipselect, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %use_gpio_descriptors = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 56
  %8 = ptrtoint ptr %use_gpio_descriptors to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %use_gpio_descriptors, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 39, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -8, ptr %bits_per_word_mask, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id, align 4
  %conv = trunc i32 %12 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %bus_num, align 8
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %14 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @hisi_spi_setup, ptr %setup, align 4
  %cleanup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 23
  %15 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @hisi_spi_cleanup, ptr %cleanup, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %16 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @hisi_spi_transfer_one, ptr %transfer_one, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %17 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @hisi_spi_handle_err, ptr %handle_err, align 8
  %fwnode = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 28
  %18 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwnode, align 4
  %fwnode25 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 28
  %20 = ptrtoint ptr %fwnode25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %fwnode25, align 4
  tail call fastcc void @hisi_spi_hw_init(ptr noundef %2)
  %21 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq7, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.dev_name.exit_crit_edge

if.end23.dev_name.exit_crit_edge:                 ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end23.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %26, %if.end.i ], [ %24, %if.end23.dev_name.exit_crit_edge ]
  %call.i117 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @hisi_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp29 = icmp slt i32 %call.i117, 0
  br i1 %cmp29, label %do.end34, label %if.end36

do.end34:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %28, i32 noundef %call.i117) #11
  br label %cleanup58

if.end36:                                         ; preds = %dev_name.exit
  %call37 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call37) #11
  br label %cleanup58

if.end43:                                         ; preds = %if.end36
  %call44 = tail call fastcc i32 @hisi_spi_debugfs_init(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end43.do.end53_crit_edge, label %do.end49

if.end43.do.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %do.end53

do.end53:                                         ; preds = %do.end49, %if.end43.do.end53_crit_edge
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 224
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !89
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %33 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_speed_hz, align 8
  %div = udiv i32 %34, 1000
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %32, i32 noundef %div) #11
  br label %cleanup58

cleanup58:                                        ; preds = %do.end53, %do.end42, %do.end34, %do.end, %if.then11, %if.end.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ -22, %do.end ], [ %call.i117, %do.end34 ], [ %call37, %do.end42 ], [ 0, %do.end53 ], [ %call, %entry.cleanup58_crit_edge ], [ -12, %if.end.cleanup58_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i3, align 4
  %debugfs = getelementptr inbounds %struct.hisi_spi, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  tail call void @spi_unregister_controller(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_setup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #12
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %controller_state.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %chip.0 = phi ptr [ %1, %entry.if.end4_crit_edge ], [ %call7.i.i, %if.end ]
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i, align 8
  %trunc.i = trunc i32 %5 to i4
  %rev.i = tail call i4 @llvm.bitreverse.i4(i4 %trunc.i) #8
  %mask.i = and i4 %rev.i, -4
  %or.i = zext i4 %mask.i to i32
  %6 = lshr i32 %5, 4
  %shl111.i = and i32 %6, 2
  %or76.i = or i32 %shl111.i, %or.i
  %or113.i = or i32 %or76.i, 33554432
  %7 = ptrtoint ptr %chip.0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or113.i, ptr %chip.0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_spi_cleanup(ptr nocapture noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %0 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %controller_state.i, align 8
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %controller_state.i, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_transfer_one(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %spi, ptr nocapture noundef %transfer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %controller_state.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 9
  %2 = ptrtoint ptr %controller_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controller_state.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 12
  %6 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed_hz, align 4
  %max_speed_hz.i = getelementptr inbounds %struct.spi_controller, ptr %master, i32 0, i32 9
  %8 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed_hz.i, align 8
  %add.i = add i32 %7, -1
  %sub.i = add i32 %add.i, %9
  %div.i = udiv i32 %sub.i, %7
  %clk_div.i = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 2
  %10 = trunc i32 %div.i to i16
  %11 = add i16 %10, 1
  %conv4.i = and i16 %11, -2
  %12 = tail call i16 @llvm.umin.i16(i16 %conv4.i, i16 -512) #8
  %13 = ptrtoint ptr %clk_div.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %clk_div.i, align 4
  %14 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_speed_hz.i, align 8
  %conv11.i = zext i16 %12 to i32
  %div12.i = udiv i32 %15, %conv11.i
  %speed_hz13.i = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %speed_hz13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed_hz13.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div12.i)
  %cmp14.not.i = icmp eq i32 %17, %div12.i
  br i1 %cmp14.not.i, label %entry.hisi_calc_effective_speed.exit_crit_edge, label %if.then16.i

entry.hisi_calc_effective_speed.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hisi_calc_effective_speed.exit

if.then16.i:                                      ; preds = %entry
  %div_pre.i.i = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then16.i
  %storemerge41.i.i = phi i8 [ -2, %if.then16.i ], [ %sub.i.i, %if.end.i.i.while.body.i.i_crit_edge ]
  %rem.rhs.trunc.i.i = zext i8 %storemerge41.i.i to i16
  %rem39.i.i = urem i16 %12, %rem.rhs.trunc.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem39.i.i)
  %cmp6.i.i = icmp eq i16 %rem39.i.i, 0
  br i1 %cmp6.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %if.end.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %sub.i.i = add i8 %storemerge41.i.i, -2
  %cmp.not.i.i = icmp eq i8 %sub.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %while.body.i.i.while.end.i.i_crit_edge
  %storemerge.lcssa40.i.i = phi i8 [ 0, %if.end.i.i.while.end.i.i_crit_edge ], [ %storemerge41.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %18 = zext i8 %storemerge.lcssa40.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %18)
  %cmp15.i.i = icmp ult i16 %12, %18
  %conv19.i.i = trunc i16 %12 to i8
  %spec.select.i = select i1 %cmp15.i.i, i8 %conv19.i.i, i8 %storemerge.lcssa40.i.i
  %19 = ptrtoint ptr %div_pre.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i, ptr %div_pre.i.i, align 1
  %conv25.i.i = zext i8 %spec.select.i to i16
  %div.i.i = udiv i16 %12, %conv25.i.i
  %20 = trunc i16 %div.i.i to i8
  %conv27.i.i = add i8 %20, -1
  %div_post.i.i = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %div_post.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv27.i.i, ptr %div_post.i.i, align 2
  %22 = ptrtoint ptr %speed_hz13.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div12.i, ptr %speed_hz13.i, align 4
  br label %hisi_calc_effective_speed.exit

hisi_calc_effective_speed.exit:                   ; preds = %while.end.i.i, %entry.hisi_calc_effective_speed.exit_crit_edge
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 13
  %23 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div12.i, ptr %effective_speed_hz, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 8
  %24 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bits_per_word, align 1
  %conv56 = zext i8 %25 to i32
  %div_post = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %div_post to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %div_post, align 2
  %div_pre = getelementptr inbounds %struct.hisi_chip_data, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %div_pre to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %div_pre, align 1
  %conv18 = zext i8 %29 to i32
  %shl = shl nuw nsw i32 %conv18, 4
  %conv45 = zext i8 %27 to i32
  %shl46 = shl nuw nsw i32 %conv45, 12
  %sub77 = shl nuw nsw i32 %conv56, 20
  %shl78 = add nuw nsw i32 %sub77, 32505856
  %and79 = and i32 %shl78, 32505856
  %or = or i32 %and79, %5
  %or48 = or i32 %or, %shl46
  %or80 = or i32 %or48, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or80)
  %regs = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %30) #8, !srcloc !92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @loops_per_jiffy to i32))
  %33 = load i32, ptr @loops_per_jiffy, align 4
  %shl.i = shl i32 %33, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %hisi_calc_effective_speed.exit
  %limit.0.i = phi i32 [ %shl.i, %hisi_calc_effective_speed.exit ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %35, i32 28
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %37 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not12.i = icmp eq i32 %37, 0
  br i1 %tobool.not12.i, label %do.body.i.do.cond.i_crit_edge, label %do.body.i.while.body.i_crit_edge

do.body.i.while.body.i_crit_edge:                 ; preds = %do.body.i
  br label %while.body.i

do.body.i.do.cond.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.body.i.while.body.i_crit_edge
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 24
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 28
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %44 = and i32 %43, 67108864
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %while.body.i.do.cond.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.do.cond.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond.i

do.cond.i:                                        ; preds = %while.body.i.do.cond.i_crit_edge, %do.body.i.do.cond.i_crit_edge
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %46, i32 28
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  %48 = and i32 %47, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool4.not.i = icmp eq i32 %48, 0
  %dec.i = add i32 %limit.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit.0.i)
  %tobool5.not.i = icmp eq i32 %limit.0.i, 0
  %or.cond.i = select i1 %tobool4.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %hisi_spi_flush_fifo.exit, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

hisi_spi_flush_fifo.exit:                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %50)
  %cmp.i = icmp ult i8 %50, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %50)
  %cmp4.i = icmp ult i8 %50, 17
  %..i = select i1 %cmp4.i, i8 2, i8 4
  %retval.0.i = select i1 %cmp.i, i8 1, i8 %..i
  %n_bytes = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %n_bytes to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %retval.0.i, ptr %n_bytes, align 4
  %52 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %transfer, align 4
  %tx = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %55 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %len, align 4
  %57 = select i1 %cmp4.i, i32 1, i32 2
  %58 = select i1 %cmp.i, i32 0, i32 %57
  %div133 = lshr i32 %56, %58
  %tx_len = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div133, ptr %tx_len, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %60 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_buf, align 4
  %rx = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %rx to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %rx, align 4
  %rx_len = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 7
  %63 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %div133, ptr %rx_len, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr98 = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 -251658241) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr103 = getelementptr i8, ptr %67, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 16777216) #8, !srcloc !92
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_spi_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %7, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 50331648) #8, !srcloc !92
  tail call void @msleep(i32 noundef 10) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_spi_hw_init(ptr nocapture noundef %hs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 50331648) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 671481856) #8, !srcloc !92
  %fifo_len = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 3
  %8 = ptrtoint ptr %fifo_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 256, ptr %fifo_len, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %5 = and i32 %4, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_msg = getelementptr inbounds %struct.spi_controller, ptr %dev_id, i32 0, i32 31
  %6 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_msg, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21) #11
  %11 = ptrtoint ptr %cur_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_msg, align 4
  %status = getelementptr inbounds %struct.spi_message, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %status, align 4
  br label %finalize_transfer

if.end10:                                         ; preds = %if.end5
  %rx_len.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_len.i, align 4
  %fifo_len.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fifo_len.i, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %19, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %21 = and i32 %20, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not37.i = icmp eq i32 %21, 0
  br i1 %tobool.not37.i, label %if.end10.hisi_spi_reader.exit_crit_edge, label %land.rhs.lr.ph.i

if.end10.hisi_spi_reader.exit_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %hisi_spi_reader.exit

land.rhs.lr.ph.i:                                 ; preds = %if.end10
  %22 = tail call i32 @llvm.umin.i32(i32 %15, i32 %17) #8
  %rx.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 6
  %n_bytes.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 8
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %max.038.i = phi i32 [ %22, %land.rhs.lr.ph.i ], [ %dec.i, %if.end.i.land.rhs.i_crit_edge ]
  %dec.i = add i32 %max.038.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.038.i)
  %tobool1.not.i = icmp eq i32 %max.038.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.hisi_spi_reader.exit_crit_edge, label %while.body.i

land.rhs.i.hisi_spi_reader.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hisi_spi_reader.exit

while.body.i:                                     ; preds = %land.rhs.i
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !89
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx.i, align 4
  %tobool5.not.i = icmp eq ptr %28, null
  br i1 %tobool5.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  %29 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %n_bytes.i, align 4
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i8 %30, label %if.then.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb8.i
    i8 4, label %sw.bb11.i
  ]

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv6.i = trunc i32 %26 to i8
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6.i, ptr %28, align 1
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = trunc i32 %26 to i16
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv9.i, ptr %28, align 2
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %28, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb8.i, %sw.bb.i, %if.then.i.sw.epilog.i_crit_edge
  %35 = ptrtoint ptr %n_bytes.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %n_bytes.i, align 4
  %conv14.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %38, i32 %conv14.i
  store ptr %add.ptr16.i, ptr %rx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %sw.epilog.i, %while.body.i.if.end.i_crit_edge
  %39 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_len.i, align 4
  %dec18.i = add i32 %40, -1
  store i32 %dec18.i, ptr %rx_len.i, align 4
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 28
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !93
  %44 = and i32 %43, 67108864
  %tobool.not.i = icmp eq i32 %44, 0
  br i1 %tobool.not.i, label %if.end.i.hisi_spi_reader.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

if.end.i.hisi_spi_reader.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %hisi_spi_reader.exit

hisi_spi_reader.exit:                             ; preds = %if.end.i.hisi_spi_reader.exit_crit_edge, %land.rhs.i.hisi_spi_reader.exit_crit_edge, %if.end10.hisi_spi_reader.exit_crit_edge
  %45 = ptrtoint ptr %rx_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not = icmp eq i32 %46, 0
  br i1 %tobool11.not, label %hisi_spi_reader.exit.finalize_transfer_crit_edge, label %if.end13

hisi_spi_reader.exit.finalize_transfer_crit_edge: ; preds = %hisi_spi_reader.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %finalize_transfer

if.end13:                                         ; preds = %hisi_spi_reader.exit
  %47 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool15.not = icmp eq i32 %47, 0
  br i1 %tobool15.not, label %if.end13.cleanup_crit_edge, label %if.then16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  %tx_len.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_len.i, align 4
  %50 = ptrtoint ptr %fifo_len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fifo_len.i, align 4
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i31.i = getelementptr i8, ptr %53, i32 28
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31.i) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %55 = and i32 %54, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not32.i = icmp eq i32 %55, 0
  br i1 %tobool.not32.i, label %if.then16.cleanup_crit_edge, label %land.rhs.lr.ph.i33

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.lr.ph.i33:                               ; preds = %if.then16
  %56 = tail call i32 @llvm.umin.i32(i32 %49, i32 %51) #8
  %tx.i = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 4
  %n_bytes.i32 = getelementptr inbounds %struct.hisi_spi, ptr %1, i32 0, i32 8
  br label %land.rhs.i36

land.rhs.i36:                                     ; preds = %do.body.i.land.rhs.i36_crit_edge, %land.rhs.lr.ph.i33
  %txw.034.i = phi i32 [ 0, %land.rhs.lr.ph.i33 ], [ %txw.2.i, %do.body.i.land.rhs.i36_crit_edge ]
  %max.033.i = phi i32 [ %56, %land.rhs.lr.ph.i33 ], [ %dec.i34, %do.body.i.land.rhs.i36_crit_edge ]
  %dec.i34 = add i32 %max.033.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max.033.i)
  %tobool1.not.i35 = icmp eq i32 %max.033.i, 0
  br i1 %tobool1.not.i35, label %land.rhs.i36.cleanup_crit_edge, label %while.body.i37

land.rhs.i36.cleanup_crit_edge:                   ; preds = %land.rhs.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i37:                                   ; preds = %land.rhs.i36
  %57 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx.i, align 4
  %tobool2.not.i = icmp eq ptr %58, null
  br i1 %tobool2.not.i, label %while.body.i37.do.body.i_crit_edge, label %if.then.i38

while.body.i37.do.body.i_crit_edge:               ; preds = %while.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i38:                                      ; preds = %while.body.i37
  %59 = ptrtoint ptr %n_bytes.i32 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %n_bytes.i32, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %60, label %if.then.i38.sw.epilog.i42_crit_edge [
    i8 1, label %sw.bb.i39
    i8 2, label %sw.bb5.i
    i8 4, label %sw.bb8.i40
  ]

if.then.i38.sw.epilog.i42_crit_edge:              ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i42

sw.bb.i39:                                        ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %58, align 1
  %conv4.i = zext i8 %63 to i32
  br label %sw.epilog.i42

sw.bb5.i:                                         ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %58, align 2
  %conv7.i = zext i16 %65 to i32
  br label %sw.epilog.i42

sw.bb8.i40:                                       ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %58, align 4
  br label %sw.epilog.i42

sw.epilog.i42:                                    ; preds = %sw.bb8.i40, %sw.bb5.i, %sw.bb.i39, %if.then.i38.sw.epilog.i42_crit_edge
  %txw.1.i = phi i32 [ %txw.034.i, %if.then.i38.sw.epilog.i42_crit_edge ], [ %67, %sw.bb8.i40 ], [ %conv7.i, %sw.bb5.i ], [ %conv4.i, %sw.bb.i39 ]
  %conv11.i = zext i8 %60 to i32
  %add.ptr.i41 = getelementptr i8, ptr %58, i32 %conv11.i
  %68 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i41, ptr %tx.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i42, %while.body.i37.do.body.i_crit_edge
  %txw.2.i = phi i32 [ %txw.1.i, %sw.epilog.i42 ], [ %txw.034.i, %while.body.i37.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %69 = tail call i32 @llvm.bswap.i32(i32 %txw.2.i) #8
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr13.i = getelementptr i8, ptr %71, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %69) #8, !srcloc !92
  %72 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tx_len.i, align 4
  %dec15.i = add i32 %73, -1
  store i32 %dec15.i, ptr %tx_len.i, align 4
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %75, i32 28
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #8, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  %77 = and i32 %76, 33554432
  %tobool.not.i44 = icmp eq i32 %77, 0
  br i1 %tobool.not.i44, label %do.body.i.cleanup_crit_edge, label %do.body.i.land.rhs.i36_crit_edge

do.body.i.land.rhs.i36_crit_edge:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i36

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

finalize_transfer:                                ; preds = %hisi_spi_reader.exit.finalize_transfer_crit_edge, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %add.ptr.i45 = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 0) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr4.i = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #8, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %83, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 50331648) #8, !srcloc !92
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #8
  br label %cleanup

cleanup:                                          ; preds = %finalize_transfer, %do.body.i.cleanup_crit_edge, %land.rhs.i36.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %finalize_transfer ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end13.cleanup_crit_edge ], [ 1, %if.then16.cleanup_crit_edge ], [ 1, %land.rhs.i36.cleanup_crit_edge ], [ 1, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_spi_debugfs_init(ptr noundef %hs) unnamed_addr #2 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #8
  %0 = call ptr @memset(ptr %name, i32 255, i32 32)
  %1 = ptrtoint ptr %hs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hs, align 4
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bus_num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %bus_num, align 8
  %conv = sext i16 %4 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.23, i32 noundef %conv)
  %call2 = call ptr @debugfs_create_dir(ptr noundef nonnull %name, ptr noundef null) #8
  %debugfs = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 9
  %5 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %debugfs, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regset = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 10
  %6 = ptrtoint ptr %regset to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @hisi_spi_regs, ptr %regset, align 4
  %nregs = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %nregs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 12, ptr %nregs, align 4
  %regs5 = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 1
  %8 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs5, align 4
  %base = getelementptr inbounds %struct.hisi_spi, ptr %hs, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %base, align 4
  call void @debugfs_create_regset32(ptr noundef nonnull @.str.24, i16 noundef zeroext 256, ptr noundef nonnull %call2, ptr noundef %regset) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i4 @llvm.bitreverse.i4(i4) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_spi_hisi_kunpeng__283_551_hisi_spi_driver_init6, !1, !"__initcall__kmod_spi_hisi_kunpeng__283_551_hisi_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 551, i32 1}
!2 = !{ptr @__exitcall_hisi_spi_driver_exit, !1, !"__exitcall_hisi_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author284, !4, !"__UNIQUE_ID_author284", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 553, i32 1}
!5 = !{ptr @__UNIQUE_ID_description285, !6, !"__UNIQUE_ID_description285", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 554, i32 1}
!7 = !{ptr @__UNIQUE_ID_file286, !8, !"__UNIQUE_ID_file286", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 555, i32 1}
!9 = !{ptr @__UNIQUE_ID_license287, !8, !"__UNIQUE_ID_license287", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 547, i32 11}
!12 = !{ptr @hisi_spi_driver, !13, !"hisi_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 543, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 478, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 481, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hisi_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hisi_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 486, i32 38}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 506, i32 3}
!28 = !{ptr @hisi_spi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @hisi_spi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 512, i32 3}
!32 = !{ptr @hisi_spi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @hisi_spi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 517, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hisi_spi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @hisi_spi_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 519, i32 2}
!41 = !{ptr @hisi_spi_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hisi_spi_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 351, i32 3}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @hisi_spi_irq._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @hisi_spi_irq._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 170, i32 21}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 178, i32 26}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 149, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 150, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 151, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 152, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 153, i32 2}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 154, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 155, i32 2}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 156, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 157, i32 2}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 158, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 159, i32 2}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 160, i32 2}
!76 = !{ptr @hisi_spi_regs, !77, !"hisi_spi_regs", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 148, i32 35}
!78 = !{ptr @hisi_spi_acpi_match, !79, !"hisi_spi_acpi_match", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-hisi-kunpeng.c", i32 537, i32 36}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 6681537}
!90 = !{i64 2155314500}
!91 = !{i64 2155302097}
!92 = !{i64 6681119}
!93 = !{i64 2154857131}
!94 = !{i64 2154858261}
!95 = !{i64 2154856566}
!96 = !{i64 2155302419}
!97 = !{i64 2155303129}
!98 = !{i64 2155303892}
!99 = !{i64 2154858476}
!100 = !{i64 2154859346}
!101 = !{i64 2154860334}
!102 = !{i64 2155129048}
!103 = !{i64 2155174872}
!104 = !{i64 2154862914}
!105 = !{i64 2154857696}
!106 = !{i64 2154864881}
