; ModuleID = '/llk/IR_all_yes/drivers/mtd/spi-nor/controllers/hisi-sfc.c_pt.bc'
source_filename = "../drivers/mtd/spi-nor/controllers/hisi-sfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_nor_controller_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hifmc_host = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, i32, [2 x ptr], i32 }
%struct.spi_nor_hwcaps = type { i32 }
%struct.spi_nor = type { %struct.mtd_info, %struct.mutex, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i8, i32, i32, ptr, ptr, ptr, %struct.anon.80, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.anon.80 = type { ptr, ptr }
%struct.hifmc_priv = type { i32, i32, ptr }

@__initcall__kmod_hisi_sfc__242_494_hisi_spi_nor_driver_init6 = internal global ptr @hisi_spi_nor_driver_init, section ".initcall6.init", align 4
@hisi_spi_nor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_spi_nor_probe, ptr @hisi_spi_nor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hisi_spi_nor_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_spi_nor_driver_exit = internal global ptr @hisi_spi_nor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file243 = internal constant [55 x i8] c"hisi_sfc.file=drivers/mtd/spi-nor/controllers/hisi-sfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"hisi_sfc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [63 x i8] c"hisi_sfc.description=HiSilicon SPI Nor Flash Controller Driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hisi-sfc\00", [23 x i8] zeroinitializer }, align 32
@hisi_spi_nor_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,fmc-spi-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"control\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@hisi_spi_nor_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to set dma mask\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_spi_nor_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/mtd/spi-nor/controllers/hisi-sfc.c\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_spi_nor_probe._entry_ptr = internal global ptr @hisi_spi_nor_probe._entry, section ".printk_index", align 4
@hisi_spi_nor_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&host->lock\00", [20 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register_all._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 408, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Flash device number exceeds the maximum chipselect number\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hisi_spi_nor_register_all\00", [38 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register_all._entry_ptr = internal global ptr @hisi_spi_nor_register_all._entry, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 356, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"There's no reg property for %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisi_spi_nor_register\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register._entry_ptr = internal global ptr @hisi_spi_nor_register._entry, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-max-frequency\00", [46 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.5, i32 364, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"There's no spi-max-frequency property for %pOF\0A\00", [48 x i8] zeroinitializer }, align 32
@hisi_spi_nor_register._entry_ptr.18 = internal global ptr @hisi_spi_nor_register._entry.16, section ".printk_index", align 4
@hisi_controller_ops = internal constant { %struct.spi_nor_controller_ops, [36 x i8] } { %struct.spi_nor_controller_ops { ptr @hisi_spi_nor_prep, ptr @hisi_spi_nor_unprep, ptr @hisi_spi_nor_read_reg, ptr @hisi_spi_nor_write_reg, ptr @hisi_spi_nor_read, ptr @hisi_spi_nor_write, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@hisi_spi_nor_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 282, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DMA read timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisi_spi_nor_read\00", [46 x i8] zeroinitializer }, align 32
@hisi_spi_nor_read._entry_ptr = internal global ptr @hisi_spi_nor_read._entry, section ".printk_index", align 4
@hisi_spi_nor_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 306, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA write timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hisi_spi_nor_write\00", [45 x i8] zeroinitializer }, align 32
@hisi_spi_nor_write._entry_ptr = internal global ptr @hisi_spi_nor_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 65794, i64 65796, i64 66050, i64 66564]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 65794, i64 65796, i64 66050, i64 66564]
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"hisi_spi_nor_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 486, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 488, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"hisi_spi_nor_dt_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 480, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 434, i32 62 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 438, i32 61 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 448, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 461, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 408, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 353, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 355, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 360, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 363, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"hisi_controller_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 314, i32 44 }
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 464, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 282, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [46 x i8] c"../drivers/mtd/spi-nor/controllers/hisi-sfc.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 306, i32 4 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_hisi_spi_nor_driver_exit, ptr @__initcall__kmod_hisi_sfc__242_494_hisi_spi_nor_driver_init6, ptr @hisi_spi_nor_driver_exit, ptr @hisi_spi_nor_probe._entry, ptr @hisi_spi_nor_probe._entry_ptr, ptr @hisi_spi_nor_read._entry, ptr @hisi_spi_nor_read._entry_ptr, ptr @hisi_spi_nor_register._entry, ptr @hisi_spi_nor_register._entry.16, ptr @hisi_spi_nor_register._entry_ptr, ptr @hisi_spi_nor_register._entry_ptr.18, ptr @hisi_spi_nor_register_all._entry, ptr @hisi_spi_nor_register_all._entry_ptr, ptr @hisi_spi_nor_write._entry, ptr @hisi_spi_nor_write._entry_ptr, ptr @hisi_spi_nor_driver, ptr @.str, ptr @hisi_spi_nor_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @hisi_spi_nor_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @hisi_controller_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_register_all._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_controller_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_spi_nor_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_spi_nor_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_spi_nor_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_spi_nor_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 128, i32 noundef 3520) #6
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
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  %regbase = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.2) #6
  %iobase = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10, ptr %iobase, align 4
  %cmp.i82 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call17 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call.i84 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp eq i32 %call.i84, 0
  br i1 %cmp.i85, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  %dma_buffer = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 6
  %call.i86 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %dma_buffer, i32 noundef 3264, i32 noundef 0) #6
  %buffer = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i86, ptr %buffer, align 4
  %tobool30.not = icmp eq ptr %call.i86, null
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %call.i87 = tail call i32 @clk_prepare(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %call1.i88 = tail call i32 @clk_enable(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i88)
  %tobool2.not.i = icmp eq i32 %call1.i88, 0
  br i1 %tobool2.not.i, label %do.body38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %10) #6
  br label %cleanup

do.body38:                                        ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.hifmc_host, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @hisi_spi_nor_probe.__key) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1862664192) #6, !srcloc !72
  %call41 = tail call fastcc i32 @hisi_spi_nor_register_all(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body38.if.end45_crit_edge, label %if.then43

do.body38.if.end45_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_destroy(ptr noundef %lock) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %do.body38.if.end45_crit_edge
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then3.i, %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end, %if.then20, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then6 ], [ %5, %if.then13 ], [ %7, %if.then20 ], [ %call.i84, %do.end ], [ %call41, %if.end45 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call1.i88, %if.then3.i ], [ %call.i87, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_chip.i = getelementptr inbounds %struct.hifmc_host, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4.not.i = icmp eq i32 %3, 0
  br i1 %cmp4.not.i, label %entry.hisi_spi_nor_unregister_all.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hisi_spi_nor_unregister_all.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_spi_nor_unregister_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hifmc_host, ptr %1, i32 0, i32 7, i32 %i.05.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @mtd_device_unregister(ptr noundef %5) #6
  %inc.i = add nuw i32 %i.05.i, 1
  %6 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_chip.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.hisi_spi_nor_unregister_all.exit_crit_edge

for.body.i.hisi_spi_nor_unregister_all.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_spi_nor_unregister_all.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hisi_spi_nor_unregister_all.exit:                 ; preds = %for.body.i.hisi_spi_nor_unregister_all.exit_crit_edge, %entry.hisi_spi_nor_unregister_all.exit_crit_edge
  %lock = getelementptr inbounds %struct.hifmc_host, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_spi_nor_register_all(ptr noundef %host) unnamed_addr #2 align 64 {
entry:
  %hwcaps.i = alloca %struct.spi_nor_hwcaps, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #6
  %cmp.not38 = icmp eq ptr %call, null
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %num_chip.i = getelementptr inbounds %struct.hifmc_host, ptr %host, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.039 = phi ptr [ %call, %for.body.lr.ph ], [ %call7, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwcaps.i) #6
  %4 = ptrtoint ptr %hwcaps.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65675, ptr %hwcaps.i, align 4
  %5 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 1584, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %dev2.i = getelementptr inbounds %struct.spi_nor, ptr %call.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev2.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 56, i32 27
  %8 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %np.039, ptr %of_node.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i.i, i32 0, i32 13
  %9 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.end.i.spi_nor_set_flash_node.exit.i_crit_edge

if.end.i.spi_nor_set_flash_node.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_nor_set_flash_node.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %np.039, ptr noundef nonnull @.str.19, ptr noundef %name.i.i.i) #6
  br label %spi_nor_set_flash_node.exit.i

spi_nor_set_flash_node.exit.i:                    ; preds = %if.then.i.i.i, %if.end.i.spi_nor_set_flash_node.exit.i_crit_edge
  %call.i69.i = call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 12, i32 noundef 3520) #6
  %tobool4.not.i = icmp eq ptr %call.i69.i, null
  br i1 %tobool4.not.i, label %spi_nor_set_flash_node.exit.i.if.then_crit_edge, label %if.end6.i

spi_nor_set_flash_node.exit.i.if.then_crit_edge:  ; preds = %spi_nor_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end6.i:                                        ; preds = %spi_nor_set_flash_node.exit.i
  %call.i.i70.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.039, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i69.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i70.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i70.i, -1
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end6.i.if.then.sink.split_crit_edge

if.end6.i.if.then.sink.split_crit_edge:           ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split

if.end10.i:                                       ; preds = %if.end6.i
  %clkrate.i = getelementptr inbounds %struct.hifmc_priv, ptr %call.i69.i, i32 0, i32 1
  %call.i.i71.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.039, ptr noundef nonnull @.str.15, ptr noundef %clkrate.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i71.i)
  %tobool12.not.i = icmp sgt i32 %call.i.i71.i, -1
  br i1 %tobool12.not.i, label %if.end17.i, label %if.end10.i.if.then.sink.split_crit_edge

if.end10.i.if.then.sink.split_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.sink.split

if.end17.i:                                       ; preds = %if.end10.i
  %host18.i = getelementptr inbounds %struct.hifmc_priv, ptr %call.i69.i, i32 0, i32 2
  %11 = ptrtoint ptr %host18.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %host, ptr %host18.i, align 4
  %priv19.i = getelementptr inbounds %struct.spi_nor, ptr %call.i.i, i32 0, i32 23
  %12 = ptrtoint ptr %priv19.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i69.i, ptr %priv19.i, align 8
  %controller_ops.i = getelementptr inbounds %struct.spi_nor, ptr %call.i.i, i32 0, i32 20
  %13 = ptrtoint ptr %controller_ops.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hisi_controller_ops, ptr %controller_ops.i, align 8
  %call20.i = call i32 @spi_nor_scan(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef nonnull %hwcaps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end17.i.if.then_crit_edge

if.end17.i.if.then_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end23.i:                                       ; preds = %if.end17.i
  %14 = ptrtoint ptr %np.039 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %np.039, align 4
  %16 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %name.i.i.i, align 8
  %call26.i = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end, label %if.end23.i.if.then_crit_edge

if.end23.i.if.then_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then.sink.split:                               ; preds = %if.end10.i.if.then.sink.split_crit_edge, %if.end6.i.if.then.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.end6.i.if.then.sink.split_crit_edge ], [ @.str.17, %if.end10.i.if.then.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call.i.i70.i, %if.end6.i.if.then.sink.split_crit_edge ], [ %call.i.i71.i, %if.end10.i.if.then.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.12.sink, ptr noundef nonnull %np.039) #9
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %if.end23.i.if.then_crit_edge, %if.end17.i.if.then_crit_edge, %spi_nor_set_flash_node.exit.i.if.then_crit_edge, %for.body.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.ph, %if.then.sink.split ], [ %call26.i, %if.end23.i.if.then_crit_edge ], [ %call20.i, %if.end17.i.if.then_crit_edge ], [ -12, %spi_nor_set_flash_node.exit.i.if.then_crit_edge ], [ -12, %for.body.if.then_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #6
  call void @of_node_put(ptr noundef nonnull %np.039) #6
  %17 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_chip.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp4.not.i = icmp eq i32 %18, 0
  br i1 %cmp4.not.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i22, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i21 = getelementptr %struct.hifmc_host, ptr %host, i32 0, i32 7, i32 %i.05.i
  %19 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i21, align 4
  %call.i = call i32 @mtd_device_unregister(ptr noundef %20) #6
  %inc.i22 = add nuw i32 %i.05.i, 1
  %21 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_chip.i, align 4
  %cmp.i = icmp ult i32 %inc.i22, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end:                                           ; preds = %if.end23.i
  %23 = ptrtoint ptr %num_chip.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_chip.i, align 4
  %arrayidx.i = getelementptr %struct.hifmc_host, ptr %host, i32 0, i32 7, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %26 = load i32, ptr %num_chip.i, align 4
  %inc.i = add i32 %26, 1
  store i32 %inc.i, ptr %num_chip.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwcaps.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i)
  %cmp3 = icmp eq i32 %inc.i, 2
  br i1 %cmp3, label %do.end, label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.9) #9
  call void @of_node_put(ptr noundef nonnull %np.039) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node, align 8
  %call7 = call ptr @of_get_next_available_child(ptr noundef %28, ptr noundef nonnull %np.039) #6
  %cmp.not = icmp eq ptr %call7, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %retval.0.i.ph, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_nor_scan(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_prep(ptr nocapture noundef readonly %nor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %lock = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %clk = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %clkrate = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clkrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clkrate, align 4
  %call = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %out

out:                                              ; preds = %if.then3.i, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hisi_spi_nor_unprep(ptr nocapture noundef readonly %nor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %clk = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %lock = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_read_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %call = tail call fastcc i32 @hisi_spi_nor_op_reg(ptr noundef %nor, i8 noundef zeroext %opcode, i32 noundef %len, i8 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %iobase = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %5, i32 noundef %len) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_write_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %iobase = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 4
  tail call void @mmiocpy(ptr noundef %5, ptr noundef %buf, i32 noundef %len) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call fastcc i32 @hisi_spi_nor_op_reg(ptr noundef %nor, i8 noundef zeroext %opcode, i32 noundef %len, i8 noundef zeroext 32)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_read(ptr nocapture noundef readonly %nor, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %read_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp25.not = icmp eq i32 %len, 0
  br i1 %cmp25.not, label %entry.cleanup5_crit_edge, label %for.body.lr.ph

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup5

for.body.lr.ph:                                   ; preds = %entry
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %dma_buffer = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 6
  %buffer = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.026 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %len, %offset.026
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %conv = zext i32 %offset.026 to i64
  %add = add i64 %conv, %from
  %5 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_buffer, align 4
  %call = tail call fastcc i32 @hisi_spi_nor_dma_transfer(ptr noundef %nor, i64 noundef %add, i32 noundef %6, i32 noundef %4, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.20) #9
  br label %cleanup5

for.inc:                                          ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %read_buf, i32 %offset.026
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %11 = call ptr @memcpy(ptr %add.ptr, ptr %10, i32 %4)
  %add4 = add i32 %offset.026, 4096
  %cmp = icmp ult i32 %add4, %len
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup5_crit_edge

for.inc.cleanup5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup5

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup5:                                         ; preds = %for.inc.cleanup5_crit_edge, %cleanup, %entry.cleanup5_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %entry.cleanup5_crit_edge ], [ %len, %for.inc.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_spi_nor_write(ptr nocapture noundef readonly %nor, i64 noundef %to, i32 noundef %len, ptr nocapture noundef readonly %write_buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp25.not = icmp eq i32 %len, 0
  br i1 %cmp25.not, label %entry.cleanup5_crit_edge, label %for.body.lr.ph

entry.cleanup5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup5

for.body.lr.ph:                                   ; preds = %entry
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %buffer = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 5
  %dma_buffer = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add4 = add i32 %offset.026, 4096
  %cmp = icmp ult i32 %add4, %len
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup5_crit_edge

for.cond.cleanup5_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup5

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %offset.026 = phi i32 [ 0, %for.body.lr.ph ], [ %add4, %for.cond.for.body_crit_edge ]
  %sub = sub i32 %len, %offset.026
  %4 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4096)
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %write_buf, i32 %offset.026
  %7 = call ptr @memcpy(ptr %6, ptr %add.ptr, i32 %4)
  %conv = zext i32 %offset.026 to i64
  %add = add i64 %conv, %to
  %8 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_buffer, align 4
  %call = tail call fastcc i32 @hisi_spi_nor_dma_transfer(ptr noundef %nor, i64 noundef %add, i32 noundef %9, i32 noundef %4, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.22) #9
  br label %cleanup5

cleanup5:                                         ; preds = %cleanup, %for.cond.cleanup5_crit_edge, %entry.cleanup5_crit_edge
  %retval.2 = phi i32 [ %call, %cleanup ], [ 0, %entry.cleanup5_crit_edge ], [ %len, %for.cond.cleanup5_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_spi_nor_op_reg(ptr nocapture noundef readonly %nor, i8 noundef zeroext %opcode, i32 noundef %len, i8 noundef zeroext %optype) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %conv = zext i8 %opcode to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %4 = shl nuw i32 %conv, 24
  %regbase = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !72
  %and3 = and i32 %len, 16383
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %and3)
  %8 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regbase, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %7) #6, !srcloc !72
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %shl = shl i32 %11, 11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %13 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regbase, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -16777216) #6, !srcloc !72
  %17 = or i8 %optype, -127
  %or = zext i8 %17 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %18 = shl nuw i32 %or, 24
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %18) #6, !srcloc !72
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %entry
  %21 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge

for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_spi_nor_wait_op_finish.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase, align 4
  %add.ptr20.i = getelementptr i8, ptr %26, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %phi.cmp.i = icmp eq i32 %28, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 -110, i32 0
  br label %hisi_spi_nor_wait_op_finish.exit

hisi_spi_nor_wait_op_finish.exit:                 ; preds = %if.then16.i, %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge
  %and29.pre-phi.i = phi i32 [ %phi.sel.i, %if.then16.i ], [ 0, %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge ]
  ret i32 %and29.pre-phi.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hisi_spi_nor_dma_transfer(ptr nocapture noundef readonly %nor, i64 noundef %start_off, i32 noundef %dma_buf, i32 noundef %len, i8 noundef zeroext %op_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %host2 = getelementptr inbounds %struct.hifmc_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host2, align 4
  %regbase = getelementptr inbounds %struct.hifmc_host, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regbase, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %7 = and i32 %6, -17039361
  %8 = or i32 %7, 16777216
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %addr_width = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 8
  %10 = ptrtoint ptr %addr_width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp = icmp eq i8 %11, 4
  %cond = select i1 %cmp, i32 1024, i32 0
  %or5 = or i32 %cond, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %13 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regbase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %conv11 = trunc i64 %start_off to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv11)
  %16 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regbase, align 4
  %add.ptr13 = getelementptr i8, ptr %17, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %dma_buf)
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr18 = getelementptr i8, ptr %20, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %and22 = and i32 %len, 268435455
  %21 = tail call i32 @llvm.bswap.i32(i32 %and22)
  %22 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase, align 4
  %add.ptr24 = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %21) #6, !srcloc !72
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %shl = shl i32 %25, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op_type)
  %cmp26 = icmp eq i8 %op_type, 0
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %read_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 13
  %26 = ptrtoint ptr %read_proto to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %read_proto, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %27, label %sw.default.i [
    i32 65794, label %if.then.if.then39_crit_edge
    i32 66050, label %sw.bb1.i
    i32 65796, label %sw.bb2.i
    i32 66564, label %sw.bb3.i
  ]

if.then.if.then39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.else:                                          ; preds = %entry
  %write_proto = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 14
  %29 = ptrtoint ptr %write_proto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %write_proto, align 8
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %30, label %sw.default.i103 [
    i32 65794, label %if.else.if.end_crit_edge
    i32 66050, label %sw.bb1.i100
    i32 65796, label %sw.bb2.i101
    i32 66564, label %sw.bb3.i102
  ]

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb1.i100:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb2.i101:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb3.i102:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.default.i103:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %sw.default.i103, %sw.bb3.i102, %sw.bb2.i101, %sw.bb1.i100, %if.else.if.end_crit_edge
  %if_type.0.in = phi i32 [ 0, %sw.default.i103 ], [ 512, %sw.bb3.i102 ], [ 384, %sw.bb2.i101 ], [ 256, %sw.bb1.i100 ], [ 128, %if.else.if.end_crit_edge ]
  %or35 = or i32 %if_type.0.in, %shl
  br label %do.body44

if.then39:                                        ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then.if.then39_crit_edge
  %if_type.0.in.ph = phi i32 [ 128, %if.then.if.then39_crit_edge ], [ 256, %sw.bb1.i ], [ 384, %sw.bb2.i ], [ 512, %sw.bb3.i ], [ 0, %sw.default.i ]
  %or35109 = or i32 %if_type.0.in.ph, %shl
  %read_dummy = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 11
  %32 = ptrtoint ptr %read_dummy to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %read_dummy, align 1
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 15
  %and41 = zext i8 %35 to i32
  %or42 = or i32 %or35109, %and41
  br label %do.body44

do.body44:                                        ; preds = %if.then39, %if.end
  %.sink = phi i32 [ 8, %if.end ], [ 16, %if.then39 ]
  %reg.0 = phi i32 [ %or35, %if.end ], [ %or42, %if.then39 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %36 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %37 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regbase, align 4
  %add.ptr48 = getelementptr i8, ptr %38, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %36) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regbase, align 4
  %add.ptr53 = getelementptr i8, ptr %40, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -16777216) #6, !srcloc !72
  %program_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 12
  %read_opcode = getelementptr inbounds %struct.spi_nor, ptr %nor, i32 0, i32 10
  %.sink111.in = select i1 %cmp26, ptr %read_opcode, ptr %program_opcode
  %41 = ptrtoint ptr %.sink111.in to i32
  call void @__asan_load1_noabort(i32 %41)
  %.sink111 = load i8, ptr %.sink111.in, align 2
  %conv63 = zext i8 %.sink111 to i32
  %shl65 = shl nuw nsw i32 %conv63, %.sink
  %conv25 = zext i8 %op_type to i32
  %shl55 = shl nuw nsw i32 %conv25, 1
  %or56 = or i32 %shl55, %shl65
  %or67 = or i32 %or56, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %42 = tail call i32 @llvm.bswap.i32(i32 %or67)
  %43 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regbase, align 4
  %add.ptr72 = getelementptr i8, ptr %44, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %42) #6, !srcloc !72
  %call.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call.i, 1000000000
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %do.body44
  %45 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge

for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_spi_nor_wait_op_finish.exit

land.lhs.true.i:                                  ; preds = %for.cond.i
  %call13.i = tail call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regbase, align 4
  %add.ptr20.i = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %phi.cmp.i = icmp eq i32 %52, 0
  %phi.sel.i = select i1 %phi.cmp.i, i32 -110, i32 0
  br label %hisi_spi_nor_wait_op_finish.exit

hisi_spi_nor_wait_op_finish.exit:                 ; preds = %if.then16.i, %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge
  %and29.pre-phi.i = phi i32 [ %phi.sel.i, %if.then16.i ], [ 0, %for.cond.i.hisi_spi_nor_wait_op_finish.exit_crit_edge ]
  ret i32 %and29.pre-phi.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !36, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_hisi_sfc__242_494_hisi_spi_nor_driver_init6, !1, !"__initcall__kmod_hisi_sfc__242_494_hisi_spi_nor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 494, i32 1}
!2 = !{ptr @__exitcall_hisi_spi_nor_driver_exit, !1, !"__exitcall_hisi_spi_nor_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file243, !4, !"__UNIQUE_ID_file243", i1 false, i1 false}
!4 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 496, i32 1}
!5 = !{ptr @__UNIQUE_ID_license244, !4, !"__UNIQUE_ID_license244", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description245, !7, !"__UNIQUE_ID_description245", i1 false, i1 false}
!7 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 497, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 488, i32 11}
!10 = !{ptr @hisi_spi_nor_driver, !11, !"hisi_spi_nor_driver", i1 false, i1 false}
!11 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 486, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 434, i32 62}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 438, i32 61}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 448, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hisi_spi_nor_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hisi_spi_nor_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @hisi_spi_nor_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 461, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 408, i32 4}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @hisi_spi_nor_register_all._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @hisi_spi_nor_register_all._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 353, i32 33}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 355, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hisi_spi_nor_register._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @hisi_spi_nor_register._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 360, i32 33}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 363, i32 3}
!44 = !{ptr @hisi_spi_nor_register._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @hisi_spi_nor_register._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!48 = !{ptr @hisi_controller_ops, !49, !"hisi_controller_ops", i1 false, i1 false}
!49 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 314, i32 44}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 282, i32 4}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @hisi_spi_nor_read._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @hisi_spi_nor_read._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 306, i32 4}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @hisi_spi_nor_write._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @hisi_spi_nor_write._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @hisi_spi_nor_dt_ids, !61, !"hisi_spi_nor_dt_ids", i1 false, i1 false}
!61 = !{!"../drivers/mtd/spi-nor/controllers/hisi-sfc.c", i32 480, i32 34}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2154551839}
!72 = !{i64 6258473}
!73 = !{i64 2154552300}
!74 = !{i64 2154553397}
!75 = !{i64 2154553827}
!76 = !{i64 2154554228}
!77 = !{i64 2154554795}
!78 = !{i64 6258891}
!79 = !{i64 2154551038}
!80 = !{i64 2154551536}
!81 = !{i64 2154555738}
!82 = !{i64 2154556204}
!83 = !{i64 2154556610}
!84 = !{i64 2154557032}
!85 = !{i64 2154558438}
!86 = !{i64 2154559834}
!87 = !{i64 2154560235}
!88 = !{i64 2154560828}
