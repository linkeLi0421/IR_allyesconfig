; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/fsl_ifc_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/fsl_ifc_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsl_ifc_ctrl = type { ptr, ptr, ptr, i32, i32, %struct.spinlock, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.fsl_ifc_global = type { i32, [2 x i32], [8 x %struct.anon.50], [13 x i32], [8 x %struct.anon.51], [12 x i32], [8 x %struct.anon.52], [12 x i32], [8 x %struct.anon.53], [48 x i32], i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], i32, [2 x i32], i32, i32, [2 x i32], i32, i32, i32 }
%struct.anon.50 = type { i32, i32, i32 }
%struct.anon.51 = type { i32, [2 x i32] }
%struct.anon.52 = type { i32, i32, i32 }
%struct.anon.53 = type { [4 x i32], [8 x i32] }
%struct.fsl_ifc_nand_ctrl = type { %struct.nand_controller, [8 x ptr], ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.fsl_ifc_mtd = type { %struct.nand_chip, ptr, ptr, i32, i32, ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_ifc_nand = type { i32, [4 x i32], i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [36 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [2 x i32], i32, i32, i32, i32, i32, [16 x i32], i32, i32, [8 x i32], [28 x i32], i32, [2 x i32], i32, i32, i32, [28 x i32], i32, i32, i32, i32, [60 x i32] }
%struct.mtd_oob_region = type { i32, i32 }

@__initcall__kmod_fsl_ifc_nand__226_1137_fsl_ifc_nand_driver_init6 = internal global ptr @fsl_ifc_nand_driver_init, section ".initcall6.init", align 4
@fsl_ifc_nand_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_ifc_nand_probe, ptr @fsl_ifc_nand_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_ifc_nand_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_ifc_nand_driver_exit = internal global ptr @fsl_ifc_nand_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [52 x i8] c"fsl_ifc_nand.file=drivers/mtd/nand/raw/fsl_ifc_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [25 x i8] c"fsl_ifc_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [30 x i8] c"fsl_ifc_nand.author=Freescale\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [79 x i8] c"fsl_ifc_nand.description=Freescale Integrated Flash Controller MTD NAND driver\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,ifc-nand\00", [19 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ifc-nand\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe.part_probe_types = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RedBoot\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@fsl_ifc_ctrl_dev = external dso_local local_unnamed_addr global ptr, align 4
@fsl_ifc_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 998, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: failed to get resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_ifc_nand_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/fsl_ifc_nand.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe._entry_ptr = internal global ptr @fsl_ifc_nand_probe._entry, section ".printk_index", align 4
@fsl_ifc_nand_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1010, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: address did not match any chip selects\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe._entry_ptr.11 = internal global ptr @fsl_ifc_nand_probe._entry.9, section ".printk_index", align 4
@fsl_ifc_nand_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fsl_ifc_nand_mutex, i64 52), ptr getelementptr (i8, ptr @fsl_ifc_nand_mutex, i64 52) }, ptr @fsl_ifc_nand_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@ifc_nand_ctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@fsl_ifc_nand_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1044, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed to map chip region\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe._entry_ptr.14 = internal global ptr @fsl_ifc_nand_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%llx.flash\00", [21 x i8] zeroinitializer }, align 32
@fsl_ifc_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @fsl_ifc_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1085, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"IFC NAND device at 0x%llx, bank %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fsl_ifc_nand_probe._entry_ptr.19 = internal global ptr @fsl_ifc_nand_probe._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsl_ifc_nand_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_ifc_nand_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@bbt_main_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 2, i32 6, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @bbt_pattern }, [60 x i8] zeroinitializer }, align 32
@bbt_mirror_descr = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 2, i32 6, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @mirror_pattern }, [60 x i8] zeroinitializer }, align 32
@fsl_ifc_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 932, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad csor %#x: bad page size\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ifc_chip_init\00", [46 x i8] zeroinitializer }, align 32
@fsl_ifc_chip_init._entry_ptr = internal global ptr @fsl_ifc_chip_init._entry, section ".printk_index", align 4
@fsl_ifc_read_byte16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 571, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: beyond end of buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_ifc_read_byte16\00", [44 x i8] zeroinitializer }, align 32
@fsl_ifc_read_byte16._entry_ptr = internal global ptr @fsl_ifc_read_byte16._entry, section ".printk_index", align 4
@fsl_ifc_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.28, ptr @.str.6, i32 548, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ifc_read_byte\00", [46 x i8] zeroinitializer }, align 32
@fsl_ifc_read_byte._entry_ptr = internal global ptr @fsl_ifc_read_byte._entry, section ".printk_index", align 4
@fsl_ifc_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 515, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: len %d bytes\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ifc_write_buf\00", [46 x i8] zeroinitializer }, align 32
@fsl_ifc_write_buf._entry_ptr = internal global ptr @fsl_ifc_write_buf._entry, section ".printk_index", align 4
@fsl_ifc_write_buf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.6, i32 522, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: beyond end of buffer (%d requested, %u available)\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_ifc_write_buf._entry_ptr.33 = internal global ptr @fsl_ifc_write_buf._entry.31, section ".printk_index", align 4
@fsl_ifc_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.6, i32 584, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_ifc_read_buf\00", [47 x i8] zeroinitializer }, align 32
@fsl_ifc_read_buf._entry_ptr = internal global ptr @fsl_ifc_read_buf._entry, section ".printk_index", align 4
@fsl_ifc_read_buf._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.6, i32 596, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: beyond end of buffer (%d requested, %d available)\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_ifc_read_buf._entry_ptr.37 = internal global ptr @fsl_ifc_read_buf._entry.35, section ".printk_index", align 4
@fsl_ifc_cmdfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 494, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: error, unsupported command 0x%x.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl_ifc_cmdfunc\00", [16 x i8] zeroinitializer }, align 32
@fsl_ifc_cmdfunc._entry_ptr = internal global ptr @fsl_ifc_cmdfunc._entry, section ".printk_index", align 4
@fsl_ifc_run_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Controller is not responding\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_ifc_run_command\00", [44 x i8] zeroinitializer }, align 32
@fsl_ifc_run_command._entry_ptr = internal global ptr @fsl_ifc_run_command._entry, section ".printk_index", align 4
@fsl_ifc_run_command._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.6, i32 204, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NAND Flash Timeout Error\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_run_command._entry_ptr.44 = internal global ptr @fsl_ifc_run_command._entry.42, section ".printk_index", align 4
@fsl_ifc_run_command._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.6, i32 206, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NAND Flash Write Protect Error\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_ifc_run_command._entry_ptr.47 = internal global ptr @fsl_ifc_run_command._entry.45, section ".printk_index", align 4
@bbt_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@mirror_pattern = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@fsl_ifc_sram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.6, i32 800, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to initialize SRAM!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_ifc_sram_init\00", [46 x i8] zeroinitializer }, align 32
@fsl_ifc_sram_init._entry_ptr = internal global ptr @fsl_ifc_sram_init._entry, section ".printk_index", align 4
@fsl_ifc_sram_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.6, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013fsl-ifc: Failed to Initialise SRAM\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_ifc_sram_init._entry_ptr.52 = internal global ptr @fsl_ifc_sram_init._entry.50, section ".printk_index", align 4
@fsl_ifc_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @fsl_ifc_ooblayout_ecc, ptr @fsl_ifc_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug208 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.55, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_ifc_nand\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl_ifc_attach_chip\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: nand->numchips = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug209 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.56, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: nand->chipsize = %lld\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug210 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.57, i8 0, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: nand->pagemask = %8x\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug211 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.58, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: nand->legacy.chip_delay = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.59, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: nand->badblockpos = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.60, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: nand->chip_shift = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.61, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: nand->page_shift = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.62, i8 0, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: nand->phys_erase_shift = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.63, i8 0, i8 -69, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: nand->ecc.engine_type = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug217 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.64, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: nand->ecc.steps = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug218 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.65, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: nand->ecc.bytes = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.66, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: nand->ecc.total = %d\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug220 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.67, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: mtd->ooblayout = %p\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.68, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: mtd->flags = %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.69, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: mtd->size = %lld\0A\00", [42 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.70, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: mtd->erasesize = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.71, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: mtd->writesize = %d\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_ifc_attach_chip.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.54, ptr @.str.6, ptr @.str.72, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: mtd->oobsize = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 80, i64 96, i64 112, i64 128, i64 144, i64 208, i64 236, i64 255]
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"fsl_ifc_nand_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1128, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1130, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [19 x i8] c"fsl_ifc_nand_match\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1120, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"part_probe_types\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 984, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 985, i32 7 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 985, i32 22 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 985, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 998, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1009, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"fsl_ifc_nand_mutex\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"ifc_nand_ctrl\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 55, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1044, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1063, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant [23 x i8] c"fsl_ifc_controller_ops\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 772, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 1084, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 977, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1105, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"bbt_main_descr\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 63, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"bbt_mirror_descr\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 73, i32 30 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 932, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 571, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 548, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 515, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 520, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 584, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 594, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 493, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 202, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 204, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 206, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [12 x i8] c"bbt_pattern\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 60, i32 11 }
@___asan_gen_.248 = private unnamed_addr constant [15 x i8] c"mirror_pattern\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 61, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 800, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 842, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant [22 x i8] c"fsl_ifc_ooblayout_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 129, i32 39 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 734, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 736, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 738, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 740, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 742, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 744, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 746, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 748, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 750, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 752, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 754, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 756, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 758, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 760, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 761, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 762, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 764, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private constant [39 x i8] c"../drivers/mtd/nand/raw/fsl_ifc_nand.c\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 766, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_fsl_ifc_nand_driver_exit, ptr @__initcall__kmod_fsl_ifc_nand__226_1137_fsl_ifc_nand_driver_init6, ptr @fsl_ifc_chip_init._entry, ptr @fsl_ifc_chip_init._entry_ptr, ptr @fsl_ifc_cmdfunc._entry, ptr @fsl_ifc_cmdfunc._entry_ptr, ptr @fsl_ifc_nand_driver_exit, ptr @fsl_ifc_nand_probe._entry, ptr @fsl_ifc_nand_probe._entry.12, ptr @fsl_ifc_nand_probe._entry.16, ptr @fsl_ifc_nand_probe._entry.9, ptr @fsl_ifc_nand_probe._entry_ptr, ptr @fsl_ifc_nand_probe._entry_ptr.11, ptr @fsl_ifc_nand_probe._entry_ptr.14, ptr @fsl_ifc_nand_probe._entry_ptr.19, ptr @fsl_ifc_read_buf._entry, ptr @fsl_ifc_read_buf._entry.35, ptr @fsl_ifc_read_buf._entry_ptr, ptr @fsl_ifc_read_buf._entry_ptr.37, ptr @fsl_ifc_read_byte._entry, ptr @fsl_ifc_read_byte._entry_ptr, ptr @fsl_ifc_read_byte16._entry, ptr @fsl_ifc_read_byte16._entry_ptr, ptr @fsl_ifc_run_command._entry, ptr @fsl_ifc_run_command._entry.42, ptr @fsl_ifc_run_command._entry.45, ptr @fsl_ifc_run_command._entry_ptr, ptr @fsl_ifc_run_command._entry_ptr.44, ptr @fsl_ifc_run_command._entry_ptr.47, ptr @fsl_ifc_sram_init._entry, ptr @fsl_ifc_sram_init._entry.50, ptr @fsl_ifc_sram_init._entry_ptr, ptr @fsl_ifc_sram_init._entry_ptr.52, ptr @fsl_ifc_write_buf._entry, ptr @fsl_ifc_write_buf._entry.31, ptr @fsl_ifc_write_buf._entry_ptr, ptr @fsl_ifc_write_buf._entry_ptr.33, ptr @fsl_ifc_nand_driver, ptr @.str, ptr @fsl_ifc_nand_match, ptr @fsl_ifc_nand_probe.part_probe_types, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @fsl_ifc_nand_mutex, ptr @ifc_nand_ctrl, ptr @.str.13, ptr @.str.15, ptr @fsl_ifc_controller_ops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @nand_controller_init.__key, ptr @.str.22, ptr @bbt_main_descr, ptr @bbt_mirror_descr, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @bbt_pattern, ptr @mirror_pattern, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @fsl_ifc_ooblayout_ops, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_probe.part_probe_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifc_nand_ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_nand_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_main_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_mirror_descr to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_read_byte16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_write_buf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_read_buf._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_cmdfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_run_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_run_command._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_run_command._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bbt_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirror_pattern to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_sram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_sram_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ifc_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_nand_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_ifc_nand_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ifc_nand_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_ifc_nand_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_nand_probe(ptr noundef %dev) #2 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %1 = call ptr @memset(ptr %res, i32 255, i32 32)
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %4 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rregs, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @of_address_to_resource(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %7 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %banks146 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %banks146 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %banks146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp147 = icmp sgt i32 %9, 0
  br i1 %cmp147, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi ptr [ %21, %for.inc.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %bank.0148 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %gregs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gregs, align 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %res, align 4
  %cspr1.i = getelementptr %struct.fsl_ifc_global, ptr %12, i32 0, i32 2, i32 %bank.0148, i32 1
  %little_endian.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %little_endian.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i = icmp eq i8 %16, 0
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cspr1.i) #9
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %18 = call i32 @llvm.bswap.i32(i32 %17) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit.i

ifc_in32.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %val.0.i.i = phi i32 [ %18, %if.then.i.i ], [ %17, %if.else.i.i ]
  %19 = and i32 %val.0.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %match_bank.exit, label %ifc_in32.exit.i.for.inc_crit_edge

ifc_in32.exit.i.for.inc_crit_edge:                ; preds = %ifc_in32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

match_bank.exit:                                  ; preds = %ifc_in32.exit.i
  %and5.i = and i32 %val.0.i.i, -65536
  %call6.i = call i32 @convert_ifc_address(i32 noundef %14) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %and5.i, i32 %call6.i)
  %cmp7.i.not = icmp eq i32 %and5.i, %call6.i
  br i1 %cmp7.i.not, label %match_bank.exit.for.end_crit_edge, label %match_bank.exit.for.inc_crit_edge

match_bank.exit.for.inc_crit_edge:                ; preds = %match_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

match_bank.exit.for.end_crit_edge:                ; preds = %match_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %match_bank.exit.for.inc_crit_edge, %ifc_in32.exit.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %bank.0148, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %21 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %banks = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %banks, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %match_bank.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bank.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %bank.0148, %match_bank.exit.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %24 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %banks12 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %banks12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %banks12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bank.0.lcssa, i32 %26)
  %cmp13.not = icmp slt i32 %bank.0.lcssa, %26
  br i1 %cmp13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end19:                                         ; preds = %for.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2192, i32 noundef 3520) #9
  %tobool22.not = icmp eq ptr %call.i, null
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @mutex_lock_nested(ptr noundef nonnull @fsl_ifc_nand_mutex, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %27 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %nand to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nand, align 4
  %tobool25.not = icmp eq ptr %29, null
  br i1 %tobool25.not, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 164) #13
  store ptr %call7.i.i, ptr @ifc_nand_ctrl, align 4
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef nonnull @fsl_ifc_nand_mutex) #9
  br label %cleanup

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %read_bytes, align 8
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %index, align 8
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %34 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand31 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %nand31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i, ptr %nand31, align 4
  call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @nand_controller_init.__key) #9
  br label %if.end33

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %29, ptr @ifc_nand_ctrl, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end30
  call void @mutex_unlock(ptr noundef nonnull @fsl_ifc_nand_mutex) #9
  %36 = load ptr, ptr @ifc_nand_ctrl, align 4
  %arrayidx = getelementptr %struct.fsl_ifc_nand_ctrl, ptr %36, i32 0, i32 1, i32 %bank.0.lcssa
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %arrayidx, align 4
  %bank34 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %bank34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %bank.0.lcssa, ptr %bank34, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %39 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %ctrl = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %ctrl, align 8
  %dev36 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %dev36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev1, ptr %dev36, align 4
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %res, align 4
  %44 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %0, align 4
  %sub.i = sub i32 1, %43
  %add.i = add i32 %sub.i, %45
  %call39 = call ptr @ioremap(i32 noundef %43, i32 noundef %add.i) #9
  %vbase = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %vbase to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call39, ptr %vbase, align 8
  %tobool41.not = icmp eq ptr %call39, null
  %47 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev36, align 4
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5) #12
  br label %err

if.end47:                                         ; preds = %if.end33
  %driver_data.i = getelementptr inbounds %struct.device, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i, ptr %driver_data.i, align 4
  %nand_evter_en = getelementptr inbounds %struct.fsl_ifc_nand, ptr %6, i32 0, i32 35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %50 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i = icmp eq i8 %52, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_en, i32 140) #9, !srcloc !196
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_en, i32 -1946157056) #9, !srcloc !196
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i
  %nand_evter_intr_en = getelementptr inbounds %struct.fsl_ifc_nand, ptr %6, i32 0, i32 37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %53 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i123 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %little_endian.i123 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %little_endian.i123, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i124 = icmp eq i8 %55, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i124, label %do.body.i126, label %if.then.i125

if.then.i125:                                     ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_intr_en, i32 140) #9, !srcloc !196
  br label %ifc_out32.exit127

do.body.i126:                                     ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_evter_intr_en, i32 -1946157056) #9, !srcloc !196
  br label %ifc_out32.exit127

ifc_out32.exit127:                                ; preds = %do.body.i126, %if.then.i125
  %56 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %res, align 4
  %conv = zext i32 %57 to i64
  %call52 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, i64 noundef %conv) #9
  %name = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %58 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call52, ptr %name, align 8
  %tobool54.not = icmp eq ptr %call52, null
  br i1 %tobool54.not, label %ifc_out32.exit127.err_crit_edge, label %nand_set_flash_node.exit.i

ifc_out32.exit127.err_crit_edge:                  ; preds = %ifc_out32.exit127
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

nand_set_flash_node.exit.i:                       ; preds = %ifc_out32.exit127
  %59 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctrl, align 8
  %gregs.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %gregs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gregs.i, align 4
  %rregs.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %60, i32 0, i32 2
  %63 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rregs.i, align 4
  %65 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev36, align 4
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 1
  %67 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %parent.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %66, i32 0, i32 27
  %68 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node.i, align 8
  %of_node.i.i.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 56, i32 27
  %70 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %of_node.i.i.i, align 8
  %71 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %bank34, align 8
  %cspr.i = getelementptr %struct.fsl_ifc_global, ptr %62, i32 0, i32 2, i32 %72, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %73 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i.i128 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %little_endian.i.i128 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %little_endian.i.i128, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i129 = icmp eq i8 %75, 0
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cspr.i) #9
  br i1 %tobool.not.i.i129, label %if.else.i.i131, label %if.then.i.i130

if.then.i.i130:                                   ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit.i134

if.else.i.i131:                                   ; preds = %nand_set_flash_node.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit.i134

ifc_in32.exit.i134:                               ; preds = %if.else.i.i131, %if.then.i.i130
  %val.0.i.i132 = phi i32 [ %77, %if.then.i.i130 ], [ %76, %if.else.i.i131 ]
  %and.i = and i32 %val.0.i.i132, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i133 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i133, ptr @fsl_ifc_read_byte, ptr @fsl_ifc_read_byte16
  %78 = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 3
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %spec.select.i, ptr %78, align 4
  %write_buf.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 5
  %80 = ptrtoint ptr %write_buf.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @fsl_ifc_write_buf, ptr %write_buf.i, align 4
  %read_buf.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 6
  %81 = ptrtoint ptr %read_buf.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @fsl_ifc_read_buf, ptr %read_buf.i, align 8
  %select_chip.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %select_chip.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @fsl_ifc_select_chip, ptr %select_chip.i, align 8
  %cmdfunc.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 8
  %83 = ptrtoint ptr %cmdfunc.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @fsl_ifc_cmdfunc, ptr %cmdfunc.i, align 8
  %waitfunc.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 10
  %84 = ptrtoint ptr %waitfunc.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @fsl_ifc_wait, ptr %waitfunc.i, align 8
  %set_features.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 13
  %85 = ptrtoint ptr %set_features.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @nand_get_set_features_notsupp, ptr %set_features.i, align 4
  %get_features.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 5, i32 14
  %86 = ptrtoint ptr %get_features.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @nand_get_set_features_notsupp, ptr %get_features.i, align 8
  %bbt_td.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 13
  %87 = ptrtoint ptr %bbt_td.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @bbt_main_descr, ptr %bbt_td.i, align 4
  %bbt_md.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 14
  %88 = ptrtoint ptr %bbt_md.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @bbt_mirror_descr, ptr %bbt_md.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #9
  %bbt_options.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %bbt_options.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 131072, ptr %bbt_options.i, align 8
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 6
  %90 = ptrtoint ptr %options.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 512, ptr %options.i, align 8
  %91 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bank34, align 8
  %cspr19.i = getelementptr %struct.fsl_ifc_global, ptr %62, i32 0, i32 2, i32 %92, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %93 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i108.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %93, i32 0, i32 11
  %94 = ptrtoint ptr %little_endian.i108.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %little_endian.i108.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i109.i = icmp eq i8 %95, 0
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cspr19.i) #9
  br i1 %tobool.not.i109.i, label %if.else.i111.i, label %if.then.i110.i

if.then.i110.i:                                   ; preds = %ifc_in32.exit.i134
  call void @__sanitizer_cov_trace_pc() #11
  %97 = call i32 @llvm.bswap.i32(i32 %96) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit113.i

if.else.i111.i:                                   ; preds = %ifc_in32.exit.i134
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit113.i

ifc_in32.exit113.i:                               ; preds = %if.else.i111.i, %if.then.i110.i
  %val.0.i112.i = phi i32 [ %97, %if.then.i110.i ], [ %96, %if.else.i111.i ]
  %and21.i = and i32 %val.0.i112.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %ifc_in32.exit113.i.if.end30.i_crit_edge, label %if.then23.i

ifc_in32.exit113.i.if.end30.i_crit_edge:          ; preds = %ifc_in32.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i

if.then23.i:                                      ; preds = %ifc_in32.exit113.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %options.i, align 8
  %or.i = or i32 %99, 2
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then23.i, %ifc_in32.exit113.i.if.end30.i_crit_edge
  %fsl_ifc_read_byte16.sink127.i = phi ptr [ @fsl_ifc_read_byte16, %if.then23.i ], [ @fsl_ifc_read_byte, %ifc_in32.exit113.i.if.end30.i_crit_edge ]
  %100 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %fsl_ifc_read_byte16.sink127.i, ptr %78, align 4
  %101 = load ptr, ptr @ifc_nand_ctrl, align 4
  %controller31.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 32
  %102 = ptrtoint ptr %controller31.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %controller31.i, align 4
  %priv1.i.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 34
  %103 = ptrtoint ptr %priv1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %priv1.i.i, align 8
  %read_page.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 33, i32 18
  %104 = ptrtoint ptr %read_page.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @fsl_ifc_read_page, ptr %read_page.i, align 8
  %write_page.i = getelementptr inbounds %struct.nand_chip, ptr %call.i, i32 0, i32 33, i32 21
  %105 = ptrtoint ptr %write_page.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @fsl_ifc_write_page, ptr %write_page.i, align 4
  %106 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bank34, align 8
  %arrayidx34.i = getelementptr %struct.fsl_ifc_global, ptr %62, i32 0, i32 6, i32 %107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %108 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i114.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %108, i32 0, i32 11
  %109 = ptrtoint ptr %little_endian.i114.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %little_endian.i114.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i115.i = icmp eq i8 %110, 0
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx34.i) #9
  br i1 %tobool.not.i115.i, label %if.else.i117.i, label %if.then.i116.i

if.then.i116.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = call i32 @llvm.bswap.i32(i32 %111) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit119.i

if.else.i117.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit119.i

ifc_in32.exit119.i:                               ; preds = %if.else.i117.i, %if.then.i116.i
  %val.0.i118.i = phi i32 [ %112, %if.then.i116.i ], [ %111, %if.else.i117.i ]
  %and37.i = lshr i32 %val.0.i118.i, 19
  %113 = and i32 %and37.i, 3
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values)
  switch i32 %113, label %if.end30.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %ifc_in32.exit119.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb45.i
    i32 3, label %sw.bb47.i
  ]

ifc_in32.exit119.i.sw.epilog.i_crit_edge:         ; preds = %ifc_in32.exit119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %ifc_in32.exit119.i
  %115 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %options.i, align 8
  %and39.i = and i32 %116, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.then41.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 0, ptr getelementptr inbounds (%struct.nand_bbt_descr, ptr @bbt_main_descr, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.nand_bbt_descr, ptr @bbt_mirror_descr, i32 0, i32 2), align 4
  br label %sw.epilog.i

sw.bb45.i:                                        ; preds = %ifc_in32.exit119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb47.i:                                        ; preds = %ifc_in32.exit119.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end30.unreachabledefault.i:                    ; preds = %ifc_in32.exit119.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb47.i, %sw.bb45.i, %if.then41.i, %sw.bb.i.sw.epilog.i_crit_edge, %ifc_in32.exit119.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 0, %sw.bb47.i ], [ 1, %sw.bb45.i ], [ 15, %if.then41.i ], [ 15, %sw.bb.i.sw.epilog.i_crit_edge ], [ 3, %ifc_in32.exit119.i.sw.epilog.i_crit_edge ]
  %bufnum_mask48.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %call.i, i32 0, i32 4
  %117 = ptrtoint ptr %bufnum_mask48.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %.sink.i, ptr %bufnum_mask48.i, align 4
  %118 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ctrl, align 8
  %rregs.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %rregs.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %rregs.i.i, align 4
  %gregs.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %119, i32 0, i32 1
  %122 = ptrtoint ptr %gregs.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %gregs.i.i, align 4
  %124 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %bank34, align 8
  %version.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %119, i32 0, i32 7
  %126 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842752, i32 %127)
  %cmp.i.i = icmp slt i32 %127, 16842752
  br i1 %cmp.i.i, label %sw.epilog.i.if.end53.i_crit_edge, label %if.end.i.i

sw.epilog.i.if.end53.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16842752, i32 %127)
  %cmp3.not.i.i = icmp eq i32 %127, 16842752
  br i1 %cmp3.not.i.i, label %if.end44.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %128 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %little_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %little_endian.i.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i.i120.i = icmp eq i8 %130, 0
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9
  br i1 %tobool.not.i.i120.i, label %if.else.i.i.i, label %if.then.i.i121.i

if.then.i.i121.i:                                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = call i32 @llvm.bswap.i32(i32 %131) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit.i.i

ifc_in32.exit.i.i:                                ; preds = %if.else.i.i.i, %if.then.i.i121.i
  %val.0.i.i.i = phi i32 [ %132, %if.then.i.i121.i ], [ %131, %if.else.i.i.i ]
  %or.i.i = or i32 %val.0.i.i.i, 536870912
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %133 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i184.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %little_endian.i184.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %little_endian.i184.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool.not.i185.i.i = icmp eq i8 %135, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i185.i.i, label %do.body.i.i.i, label %if.then.i186.i.i

if.then.i186.i.i:                                 ; preds = %ifc_in32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %136 = call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %136) #9, !srcloc !196
  br label %ifc_out32.exit.i.i

do.body.i.i.i:                                    ; preds = %ifc_in32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %or.i.i) #9, !srcloc !196
  br label %ifc_out32.exit.i.i

ifc_out32.exit.i.i:                               ; preds = %do.body.i.i.i, %if.then.i186.i.i
  %call8.i.i = call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call8.i.i, 500000000
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 798) #9
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.then34.i.i, %ifc_out32.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %137 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i187.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %little_endian.i187.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %little_endian.i187.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i188.i.i = icmp eq i8 %139, 0
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9
  br i1 %tobool.not.i188.i.i, label %if.else.i190.i.i, label %if.then.i189.i.i

if.then.i189.i.i:                                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %141 = call i32 @llvm.bswap.i32(i32 %140) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit192.i.i

if.else.i190.i.i:                                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit192.i.i

ifc_in32.exit192.i.i:                             ; preds = %if.else.i190.i.i, %if.then.i189.i.i
  %val.0.i191.i.i = phi i32 [ %141, %if.then.i189.i.i ], [ %140, %if.else.i190.i.i ]
  %and.i.i = and i32 %val.0.i191.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i122.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i122.i, label %ifc_in32.exit192.i.i.for.end.i.i_crit_edge, label %land.lhs.true.i.i

ifc_in32.exit192.i.i.for.end.i.i_crit_edge:       ; preds = %ifc_in32.exit192.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

land.lhs.true.i.i:                                ; preds = %ifc_in32.exit192.i.i
  %call25.i.i = call i64 @ktime_get() #9
  %cmp3.i.i.i = icmp sgt i64 %call25.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %if.then28.i.i, label %if.then34.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %142 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i193.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %142, i32 0, i32 11
  %143 = ptrtoint ptr %little_endian.i193.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %little_endian.i193.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool.not.i194.i.i = icmp eq i8 %144, 0
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #9
  br i1 %tobool.not.i194.i.i, label %if.else.i196.i.i, label %if.then.i195.i.i

if.then.i195.i.i:                                 ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = call i32 @llvm.bswap.i32(i32 %145) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %for.end.i.i

if.else.i196.i.i:                                 ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %for.end.i.i

if.then34.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %if.else.i196.i.i, %if.then.i195.i.i, %ifc_in32.exit192.i.i.for.end.i.i_crit_edge
  %status.0.i.i = phi i32 [ %146, %if.then.i195.i.i ], [ %145, %if.else.i196.i.i ], [ %val.0.i191.i.i, %ifc_in32.exit192.i.i.for.end.i.i_crit_edge ]
  %and36.i.i = and i32 %status.0.i.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i.i)
  %tobool37.not.i.i = icmp eq i32 %and36.i.i, 0
  br i1 %tobool37.not.i.i, label %for.end.i.i.if.end53.i_crit_edge, label %do.end42.i.i

for.end.i.i.if.end53.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i

do.end42.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.48) #12
  br label %err

if.end44.i.i:                                     ; preds = %if.end.i.i
  %arrayidx.i.i = getelementptr %struct.fsl_ifc_global, ptr %123, i32 0, i32 6, i32 %125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %149 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i199.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %149, i32 0, i32 11
  %150 = ptrtoint ptr %little_endian.i199.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %little_endian.i199.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i200.i.i = icmp eq i8 %151, 0
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #9
  br i1 %tobool.not.i200.i.i, label %if.else.i202.i.i, label %if.then.i201.i.i

if.then.i201.i.i:                                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %153 = call i32 @llvm.bswap.i32(i32 %152) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit204.i.i

if.else.i202.i.i:                                 ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit204.i.i

ifc_in32.exit204.i.i:                             ; preds = %if.else.i202.i.i, %if.then.i201.i.i
  %val.0.i203.i.i = phi i32 [ %153, %if.then.i201.i.i ], [ %152, %if.else.i202.i.i ]
  %csor_ext49.i.i = getelementptr %struct.fsl_ifc_global, ptr %123, i32 0, i32 6, i32 %125, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %154 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i205.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %154, i32 0, i32 11
  %155 = ptrtoint ptr %little_endian.i205.i.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %little_endian.i205.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %156)
  %tobool.not.i206.i.i = icmp eq i8 %156, 0
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %csor_ext49.i.i) #9
  br i1 %tobool.not.i206.i.i, label %if.else.i208.i.i, label %if.then.i207.i.i

if.then.i207.i.i:                                 ; preds = %ifc_in32.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %158 = call i32 @llvm.bswap.i32(i32 %157) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit210.i.i

if.else.i208.i.i:                                 ; preds = %ifc_in32.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit210.i.i

ifc_in32.exit210.i.i:                             ; preds = %if.else.i208.i.i, %if.then.i207.i.i
  %val.0.i209.i.i = phi i32 [ %158, %if.then.i207.i.i ], [ %157, %if.else.i208.i.i ]
  %or52.i.i = or i32 %val.0.i203.i.i, 1622016
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %159 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i211.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %little_endian.i211.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %little_endian.i211.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i212.i.i = icmp eq i8 %161, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i212.i.i, label %do.body.i214.i.i, label %if.then.i213.i.i

if.then.i213.i.i:                                 ; preds = %ifc_in32.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = call i32 @llvm.bswap.i32(i32 %or52.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %162) #9, !srcloc !196
  br label %ifc_out32.exit215.i.i

do.body.i214.i.i:                                 ; preds = %ifc_in32.exit210.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %or52.i.i) #9, !srcloc !196
  br label %ifc_out32.exit215.i.i

ifc_out32.exit215.i.i:                            ; preds = %do.body.i214.i.i, %if.then.i213.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %163 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i216.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %163, i32 0, i32 11
  %164 = ptrtoint ptr %little_endian.i216.i.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %little_endian.i216.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i217.i.i = icmp eq i8 %165, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i217.i.i, label %do.body.i219.i.i, label %if.then.i218.i.i

if.then.i218.i.i:                                 ; preds = %ifc_out32.exit215.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csor_ext49.i.i, i32 262144) #9, !srcloc !196
  br label %ifc_out32.exit220.i.i

do.body.i219.i.i:                                 ; preds = %ifc_out32.exit215.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csor_ext49.i.i, i32 1024) #9, !srcloc !196
  br label %ifc_out32.exit220.i.i

ifc_out32.exit220.i.i:                            ; preds = %do.body.i219.i.i, %if.then.i218.i.i
  %nand_fir0.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %166 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i221.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %166, i32 0, i32 11
  %167 = ptrtoint ptr %little_endian.i221.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %little_endian.i221.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i222.i.i = icmp eq i8 %168, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i222.i.i, label %do.body.i224.i.i, label %if.then.i223.i.i

if.then.i223.i.i:                                 ; preds = %ifc_out32.exit220.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0.i.i, i32 4196422) #9, !srcloc !196
  br label %ifc_out32.exit225.i.i

do.body.i224.i.i:                                 ; preds = %ifc_out32.exit220.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0.i.i, i32 1174945792) #9, !srcloc !196
  br label %ifc_out32.exit225.i.i

ifc_out32.exit225.i.i:                            ; preds = %do.body.i224.i.i, %if.then.i223.i.i
  %nand_fcr0.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %169 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i226.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %169, i32 0, i32 11
  %170 = ptrtoint ptr %little_endian.i226.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %little_endian.i226.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i227.i.i = icmp eq i8 %171, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i227.i.i, label %do.body.i229.i.i, label %if.then.i228.i.i

if.then.i228.i.i:                                 ; preds = %ifc_out32.exit225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0.i.i, i32 144) #9, !srcloc !196
  br label %ifc_out32.exit230.i.i

do.body.i229.i.i:                                 ; preds = %ifc_out32.exit225.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0.i.i, i32 -1879048192) #9, !srcloc !196
  br label %ifc_out32.exit230.i.i

ifc_out32.exit230.i.i:                            ; preds = %do.body.i229.i.i, %if.then.i228.i.i
  %row3.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row3.i.i, i32 0) #9
  %nand_fbcr.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr.i.i, i32 0) #9
  %row0.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i.i, i32 0) #9
  %col0.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i.i, i32 0) #9
  %shl.i.i = shl i32 %125, 26
  %nand_csel.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %172 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i251.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %172, i32 0, i32 11
  %173 = ptrtoint ptr %little_endian.i251.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %little_endian.i251.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i252.i.i = icmp eq i8 %174, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i252.i.i, label %do.body.i254.i.i, label %if.then.i253.i.i

if.then.i253.i.i:                                 ; preds = %ifc_out32.exit230.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = lshr exact i32 %shl.i.i, 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_csel.i.i, i32 %175) #9, !srcloc !196
  br label %ifc_out32.exit255.i.i

do.body.i254.i.i:                                 ; preds = %ifc_out32.exit230.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_csel.i.i, i32 %shl.i.i) #9, !srcloc !196
  br label %ifc_out32.exit255.i.i

ifc_out32.exit255.i.i:                            ; preds = %do.body.i254.i.i, %if.then.i253.i.i
  %nandseq_strt.i.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %121, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %176 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i256.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %176, i32 0, i32 11
  %177 = ptrtoint ptr %little_endian.i256.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %little_endian.i256.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i257.i.i = icmp eq i8 %178, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i257.i.i, label %do.body.i259.i.i, label %if.then.i258.i.i

if.then.i258.i.i:                                 ; preds = %ifc_out32.exit255.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nandseq_strt.i.i, i32 128) #9, !srcloc !196
  br label %ifc_out32.exit260.i.i

do.body.i259.i.i:                                 ; preds = %ifc_out32.exit255.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nandseq_strt.i.i, i32 -2147483648) #9, !srcloc !196
  br label %ifc_out32.exit260.i.i

ifc_out32.exit260.i.i:                            ; preds = %do.body.i259.i.i, %if.then.i258.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 839) #9
  %nand_stat.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %119, i32 0, i32 9
  %179 = ptrtoint ptr %nand_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nand_stat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool74.not.i.i = icmp eq i32 %180, 0
  br i1 %tobool74.not.i.i, label %if.then85.i.i, label %ifc_out32.exit260.i.i.if.end113.i.i_crit_edge

ifc_out32.exit260.i.i.if.end113.i.i_crit_edge:    ; preds = %ifc_out32.exit260.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i.i

if.then85.i.i:                                    ; preds = %ifc_out32.exit260.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  %181 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #9
  %nand_wait.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %119, i32 0, i32 10
  %call89275.i.i = call i32 @prepare_to_wait_event(ptr noundef %nand_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %182 = ptrtoint ptr %nand_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nand_stat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool92.not276.not.i.i = icmp eq i32 %183, 0
  br i1 %tobool92.not276.not.i.i, label %if.then85.i.i.cleanup.i.i_crit_edge, label %if.then85.i.i.for.end110.i.i_crit_edge

if.then85.i.i.for.end110.i.i_crit_edge:           ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110.i.i

if.then85.i.i.cleanup.i.i_crit_edge:              ; preds = %if.then85.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.i.i.cleanup.i.i_crit_edge, %if.then85.i.i.cleanup.i.i_crit_edge
  %__ret86.1278.i.i = phi i32 [ %__ret86.1.i.i, %cleanup.i.i.cleanup.i.i_crit_edge ], [ 50, %if.then85.i.i.cleanup.i.i_crit_edge ]
  %call109.i.i = call i32 @schedule_timeout(i32 noundef %__ret86.1278.i.i) #9
  %call89.i.i = call i32 @prepare_to_wait_event(ptr noundef %nand_wait.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 2) #9
  %184 = ptrtoint ptr %nand_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nand_stat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool92.not.i.i = icmp eq i32 %185, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109.i.i)
  %tobool96.not.i.i = icmp eq i32 %call109.i.i, 0
  %spec.store.select137.i.i = select i1 %tobool96.not.i.i, i32 1, i32 %call109.i.i
  %__ret86.1.i.i = select i1 %tobool92.not.i.i, i32 %call109.i.i, i32 %spec.store.select137.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret86.1.i.i)
  %tobool102.not.i.i = icmp eq i32 %__ret86.1.i.i, 0
  %not.tobool92.not.i.i = xor i1 %tobool92.not.i.i, true
  %186 = select i1 %not.tobool92.not.i.i, i1 true, i1 %tobool102.not.i.i
  br i1 %186, label %cleanup.i.i.for.end110.i.i_crit_edge, label %cleanup.i.i.cleanup.i.i_crit_edge

cleanup.i.i.cleanup.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

cleanup.i.i.for.end110.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end110.i.i

for.end110.i.i:                                   ; preds = %cleanup.i.i.for.end110.i.i_crit_edge, %if.then85.i.i.for.end110.i.i_crit_edge
  call void @finish_wait(ptr noundef %nand_wait.i.i, ptr noundef nonnull %__wq_entry.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #9
  %187 = ptrtoint ptr %nand_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pr.i.i = load i32, ptr %nand_stat.i.i, align 4
  br label %if.end113.i.i

if.end113.i.i:                                    ; preds = %for.end110.i.i, %ifc_out32.exit260.i.i.if.end113.i.i_crit_edge
  %188 = phi i32 [ %.pr.i.i, %for.end110.i.i ], [ %180, %ifc_out32.exit260.i.i.if.end113.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %188)
  %cmp116.not.i.i = icmp eq i32 %188, -2147483648
  br i1 %cmp116.not.i.i, label %if.end123.i.i, label %do.end120.i.i

do.end120.i.i:                                    ; preds = %if.end113.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call122.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #12
  br label %err

if.end123.i.i:                                    ; preds = %if.end113.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %189 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i261.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %189, i32 0, i32 11
  %190 = ptrtoint ptr %little_endian.i261.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %little_endian.i261.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i262.i.i = icmp eq i8 %191, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i262.i.i, label %do.body.i264.i.i, label %if.then.i263.i.i

if.then.i263.i.i:                                 ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %192 = call i32 @llvm.bswap.i32(i32 %val.0.i203.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %192) #9, !srcloc !196
  br label %ifc_out32.exit265.i.i

do.body.i264.i.i:                                 ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i.i, i32 %val.0.i203.i.i) #9, !srcloc !196
  br label %ifc_out32.exit265.i.i

ifc_out32.exit265.i.i:                            ; preds = %do.body.i264.i.i, %if.then.i263.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %193 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i266.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %193, i32 0, i32 11
  %194 = ptrtoint ptr %little_endian.i266.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %little_endian.i266.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i267.i.i = icmp eq i8 %195, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  br i1 %tobool.not.i267.i.i, label %do.body.i269.i.i, label %if.then.i268.i.i

if.then.i268.i.i:                                 ; preds = %ifc_out32.exit265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %196 = call i32 @llvm.bswap.i32(i32 %val.0.i209.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csor_ext49.i.i, i32 %196) #9, !srcloc !196
  br label %if.end53.i

do.body.i269.i.i:                                 ; preds = %ifc_out32.exit265.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csor_ext49.i.i, i32 %val.0.i209.i.i) #9, !srcloc !196
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.body.i269.i.i, %if.then.i268.i.i, %for.end.i.i.if.end53.i_crit_edge, %sw.epilog.i.if.end53.i_crit_edge
  %version.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %60, i32 0, i32 7
  %197 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %198)
  %cmp.i = icmp sgt i32 %198, 33554431
  br i1 %cmp.i, label %if.then54.i, label %if.end53.i.if.end60_crit_edge

if.end53.i.if.end60_crit_edge:                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then54.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %bufnum_mask48.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %bufnum_mask48.i, align 4
  %mul.i = shl i32 %200, 1
  %add.i135 = or i32 %mul.i, 1
  store i32 %add.i135, ptr %bufnum_mask48.i, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then54.i, %if.end53.i.if.end60_crit_edge
  %201 = ptrtoint ptr %controller31.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %controller31.i, align 4
  %ops = getelementptr inbounds %struct.nand_controller, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr @fsl_ifc_controller_ops, ptr %ops, align 4
  %call.i137 = call i32 @nand_scan_with_ids(ptr noundef %call.i, i32 noundef 1, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool65.not = icmp eq i32 %call.i137, 0
  br i1 %tobool65.not, label %if.end67, label %if.end60.err_crit_edge

if.end60.err_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end67:                                         ; preds = %if.end60
  %call68 = call i32 @mtd_device_parse_register(ptr noundef %call.i, ptr noundef nonnull @fsl_ifc_nand_probe.part_probe_types, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %do.end74, label %cleanup_nand

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %204 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev36, align 4
  %206 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %res, align 4
  %conv77 = zext i32 %207 to i64
  %208 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bank34, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %205, ptr noundef nonnull @.str.17, i64 noundef %conv77, i32 noundef %209) #12
  br label %cleanup

cleanup_nand:                                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  call void @nand_cleanup(ptr noundef nonnull %call.i) #9
  br label %err

err:                                              ; preds = %cleanup_nand, %if.end60.err_crit_edge, %do.end120.i.i, %do.end42.i.i, %ifc_out32.exit127.err_crit_edge, %do.end45
  %ret.0 = phi i32 [ %call.i137, %if.end60.err_crit_edge ], [ %call68, %cleanup_nand ], [ -12, %do.end45 ], [ -12, %ifc_out32.exit127.err_crit_edge ], [ -110, %do.end120.i.i ], [ -110, %do.end42.i.i ]
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %call.i, i32 0, i32 13
  %210 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %name.i, align 8
  call void @kfree(ptr noundef %211) #9
  %212 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %vbase, align 8
  %tobool.not.i138 = icmp eq ptr %213, null
  br i1 %tobool.not.i138, label %err.fsl_ifc_chip_remove.exit_crit_edge, label %if.then.i139

err.fsl_ifc_chip_remove.exit_crit_edge:           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsl_ifc_chip_remove.exit

if.then.i139:                                     ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  call void @iounmap(ptr noundef nonnull %213) #9
  br label %fsl_ifc_chip_remove.exit

fsl_ifc_chip_remove.exit:                         ; preds = %if.then.i139, %err.fsl_ifc_chip_remove.exit_crit_edge
  %214 = load ptr, ptr @ifc_nand_ctrl, align 4
  %215 = ptrtoint ptr %bank34 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %bank34, align 8
  %arrayidx.i = getelementptr %struct.fsl_ifc_nand_ctrl, ptr %214, i32 0, i32 1, i32 %216
  %217 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %fsl_ifc_chip_remove.exit, %do.end74, %if.then29, %if.end19.cleanup_crit_edge, %do.end17, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %do.end17 ], [ %ret.0, %fsl_ifc_chip_remove.exit ], [ 0, %do.end74 ], [ -12, %if.then29 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_nand_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !197

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1104, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #9
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 8
  tail call void @kfree(ptr noundef %3) #9
  %vbase.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbase.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.fsl_ifc_chip_remove.exit_crit_edge, label %if.then.i

if.end.fsl_ifc_chip_remove.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fsl_ifc_chip_remove.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %5) #9
  br label %fsl_ifc_chip_remove.exit

fsl_ifc_chip_remove.exit:                         ; preds = %if.then.i, %if.end.fsl_ifc_chip_remove.exit_crit_edge
  %6 = load ptr, ptr @ifc_nand_ctrl, align 4
  %bank.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bank.i, align 8
  %arrayidx.i = getelementptr %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 1, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @fsl_ifc_nand_mutex, i32 noundef 0) #9
  %10 = load ptr, ptr @ifc_nand_ctrl, align 4
  %counter = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %counter, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %if.then27, label %fsl_ifc_chip_remove.exit.if.end28_crit_edge

fsl_ifc_chip_remove.exit.if.end28_crit_edge:      ; preds = %fsl_ifc_chip_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then27:                                        ; preds = %fsl_ifc_chip_remove.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %13 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %nand = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %nand to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %nand, align 4
  tail call void @kfree(ptr noundef %10) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %fsl_ifc_chip_remove.exit.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @fsl_ifc_nand_mutex) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @convert_ifc_address(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @fsl_ifc_read_byte16(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %7 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #9
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %11 = lshr i16 %10, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  %extract.t = trunc i16 %11 to i8
  br label %ifc_in16.exit

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  %extract.t8 = trunc i16 %10 to i8
  br label %ifc_in16.exit

ifc_in16.exit:                                    ; preds = %if.else.i, %if.then.i
  %.sink.off0 = phi i8 [ %extract.t, %if.then.i ], [ %extract.t8, %if.else.i ]
  %12 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index3 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index3, align 4
  %add = add i32 %14, 2
  store i32 %add, ptr %index3, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ifc_in16.exit
  %retval.0 = phi i8 [ %.sink.off0, %ifc_in16.exit ], [ -1, %do.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @fsl_ifc_read_byte(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %read_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nuw i32 %2, 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %index, align 4
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %0, i32 0, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %2
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i8 [ %8, %if.then ], [ -1, %do.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ifc_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %2 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %add = add i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %len)
  %cmp = icmp slt i32 %len, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %len) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp2 = icmp ult i32 %sub, %len
  br i1 %cmp2, label %do.end6, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev7 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %len, i32 noundef %sub) #12
  %13 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index10 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %index10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index10, align 4
  %sub11 = sub i32 %add, %15
  br label %if.end12

if.end12:                                         ; preds = %do.end6, %if.end.if.end12_crit_edge
  %len.addr.0 = phi i32 [ %sub11, %do.end6 ], [ %len, %if.end.if.end12_crit_edge ]
  %16 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr, align 4
  %index13 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %index13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index13, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 %20
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len.addr.0) #9
  %21 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index14 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %index14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index14, align 4
  %add15 = add i32 %23, %len.addr.0
  store i32 %add15, ptr %index14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ifc_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp slt i32 %len, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef %len) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %read_bytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %read_bytes, align 4
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %sub = sub i32 %6, %8
  %9 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %len)
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 2
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %8
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %9) #9
  %12 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index3 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %index3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index3, align 4
  %add = add i32 %14, %9
  store i32 %add, ptr %index3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp4 = icmp ult i32 %sub, %len
  br i1 %cmp4, label %do.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %len, i32 noundef %9) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @fsl_ifc_select_chip(ptr nocapture noundef %chip, i32 noundef %cs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_ifc_cmdfunc(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rregs, align 4
  %6 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %read_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %command)
  %cond = icmp eq i32 %command, 16
  br i1 %cond, label %sw.bb68, label %if.then

if.then:                                          ; preds = %entry
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 6
  %8 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %index, align 4
  %9 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %command, label %do.end [
    i32 0, label %sw.bb
    i32 80, label %sw.bb9
    i32 255, label %sw.bb100
    i32 112, label %sw.bb80
    i32 96, label %sw.bb28
    i32 208, label %sw.bb29
    i32 128, label %sw.bb37
    i32 144, label %if.then.if.end20_crit_edge
    i32 236, label %if.then19
  ]

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

sw.bb:                                            ; preds = %if.then
  %nand_fbcr = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr, i32 0) #9
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  %ctrl2.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl2.i, align 8
  %rregs.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rregs.i, align 4
  %16 = load ptr, ptr @ifc_nand_ctrl, align 4
  %page.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %page_addr, ptr %page.i, align 4
  %row0.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %15, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %18 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %little_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %little_endian.i.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %page_addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i, i32 %21) #9, !srcloc !196
  br label %ifc_out32.exit.i

do.body.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i, i32 %page_addr) #9, !srcloc !196
  br label %ifc_out32.exit.i

ifc_out32.exit.i:                                 ; preds = %do.body.i.i, %if.then.i.i
  %col0.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %15, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i, i32 0) #9
  %bufnum_mask.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %bufnum_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bufnum_mask.i, align 4
  %and.i = and i32 %23, %page_addr
  %vbase.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %11, i32 0, i32 5
  %24 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vbase.i, align 8
  %writesize.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %26 = ptrtoint ptr %writesize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %writesize.i, align 4
  %mul.i = shl i32 %and.i, 1
  %mul4.i = mul i32 %mul.i, %27
  %add.ptr.i = getelementptr i8, ptr %25, i32 %mul4.i
  %28 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr.i, ptr %addr.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %28, i32 0, i32 6
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %index.i, align 4
  %31 = load i32, ptr %writesize.i, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %32 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oobsize, align 4
  %add = add i32 %33, %31
  %read_bytes3 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %28, i32 0, i32 4
  %34 = ptrtoint ptr %read_bytes3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %read_bytes3, align 4
  store i32 %column, ptr %index.i, align 4
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %35 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp6 = icmp eq i32 %36, 3
  br i1 %cmp6, label %if.then7, label %ifc_out32.exit.i.if.end8_crit_edge

ifc_out32.exit.i.if.end8_crit_edge:               ; preds = %ifc_out32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %ifc_out32.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %eccread = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %28, i32 0, i32 8
  %37 = ptrtoint ptr %eccread to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %eccread, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %ifc_out32.exit.i.if.end8_crit_edge
  tail call fastcc void @fsl_ifc_do_read(ptr noundef %chip, i32 noundef 0, ptr noundef %chip)
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

sw.bb9:                                           ; preds = %if.then
  %oobsize10 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %38 = ptrtoint ptr %oobsize10 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %oobsize10, align 4
  %sub = sub i32 %39, %column
  %nand_fbcr12 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %40 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i178 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %little_endian.i178 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %little_endian.i178, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i179 = icmp eq i8 %42, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i179, label %do.body.i181, label %if.then.i180

if.then.i180:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %sub) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr12, i32 %43) #9, !srcloc !196
  br label %ifc_out32.exit182

do.body.i181:                                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr12, i32 %sub) #9, !srcloc !196
  br label %ifc_out32.exit182

ifc_out32.exit182:                                ; preds = %do.body.i181, %if.then.i180
  tail call fastcc void @set_addr(ptr noundef %chip, i32 noundef %column, i32 noundef %page_addr, i32 noundef 1)
  %writesize13 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %44 = ptrtoint ptr %writesize13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %writesize13, align 4
  %46 = ptrtoint ptr %oobsize10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %oobsize10, align 4
  %add15 = add i32 %47, %45
  %48 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes16 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %read_bytes16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add15, ptr %read_bytes16, align 4
  tail call fastcc void @fsl_ifc_do_read(ptr noundef %chip, i32 noundef 1, ptr noundef %chip)
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then.if.end20_crit_edge
  %len.0 = phi i32 [ 768, %if.then19 ], [ 8, %if.then.if.end20_crit_edge ]
  %timing.0 = phi i32 [ 1174831104, %if.then19 ], [ 1174945792, %if.then.if.end20_crit_edge ]
  %nand_fir0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %50 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i183 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %little_endian.i183 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %little_endian.i183, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i184 = icmp eq i8 %52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i184, label %do.body.i186, label %if.then.i185

if.then.i185:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %timing.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 %53) #9, !srcloc !196
  br label %ifc_out32.exit187

do.body.i186:                                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 %timing.0) #9, !srcloc !196
  br label %ifc_out32.exit187

ifc_out32.exit187:                                ; preds = %do.body.i186, %if.then.i185
  %nand_fcr0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %54 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i188 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %little_endian.i188 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %little_endian.i188, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i189 = icmp eq i8 %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i189, label %do.body.i191, label %if.then.i190

if.then.i190:                                     ; preds = %ifc_out32.exit187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 %command) #9, !srcloc !196
  br label %ifc_out32.exit192

do.body.i191:                                     ; preds = %ifc_out32.exit187
  call void @__sanitizer_cov_trace_pc() #11
  %shl22 = shl nuw i32 %command, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 %shl22) #9, !srcloc !196
  br label %ifc_out32.exit192

ifc_out32.exit192:                                ; preds = %do.body.i191, %if.then.i190
  %row3 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %57 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i193 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %little_endian.i193 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %little_endian.i193, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i194 = icmp eq i8 %59, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i194, label %do.body.i196, label %if.then.i195

if.then.i195:                                     ; preds = %ifc_out32.exit192
  call void @__sanitizer_cov_trace_pc() #11
  %60 = tail call i32 @llvm.bswap.i32(i32 %column) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row3, i32 %60) #9, !srcloc !196
  br label %ifc_out32.exit197

do.body.i196:                                     ; preds = %ifc_out32.exit192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row3, i32 %column) #9, !srcloc !196
  br label %ifc_out32.exit197

ifc_out32.exit197:                                ; preds = %do.body.i196, %if.then.i195
  %nand_fbcr26 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %61 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i198 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %little_endian.i198 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %little_endian.i198, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i199 = icmp eq i8 %63, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i199, label %do.body.i201, label %if.then.i200

if.then.i200:                                     ; preds = %ifc_out32.exit197
  call void @__sanitizer_cov_trace_pc() #11
  %64 = tail call i32 @llvm.bswap.i32(i32 %len.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr26, i32 %64) #9, !srcloc !196
  br label %ifc_out32.exit202

do.body.i201:                                     ; preds = %ifc_out32.exit197
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr26, i32 %len.0) #9, !srcloc !196
  br label %ifc_out32.exit202

ifc_out32.exit202:                                ; preds = %do.body.i201, %if.then.i200
  %65 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes27 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %read_bytes27 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %len.0, ptr %read_bytes27, align 4
  %67 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %priv.i, align 8
  %ctrl2.i204 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %ctrl2.i204 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ctrl2.i204, align 8
  %rregs.i205 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %rregs.i205 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rregs.i205, align 4
  %page.i206 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %65, i32 0, i32 3
  %73 = ptrtoint ptr %page.i206 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %page.i206, align 4
  %row0.i207 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %72, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i207, i32 0) #9
  %col0.i212 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %72, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i212, i32 0) #9
  %vbase.i219 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %68, i32 0, i32 5
  %74 = ptrtoint ptr %vbase.i219 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vbase.i219, align 8
  %76 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i221 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %addr.i221 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %75, ptr %addr.i221, align 4
  %index.i222 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %76, i32 0, i32 6
  %78 = ptrtoint ptr %index.i222 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %index.i222, align 4
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

sw.bb28:                                          ; preds = %if.then
  %79 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv.i, align 8
  %ctrl2.i225 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %ctrl2.i225 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ctrl2.i225, align 8
  %rregs.i226 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %rregs.i226 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %rregs.i226, align 4
  %page.i227 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 3
  %85 = ptrtoint ptr %page.i227 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %page_addr, ptr %page.i227, align 4
  %row0.i228 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %84, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %86 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i.i229 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %little_endian.i.i229 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %little_endian.i.i229, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i.i230 = icmp eq i8 %88, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i.i230, label %do.body.i.i232, label %if.then.i.i231

if.then.i.i231:                                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  %89 = tail call i32 @llvm.bswap.i32(i32 %page_addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i228, i32 %89) #9, !srcloc !196
  br label %ifc_out32.exit.i236

do.body.i.i232:                                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i228, i32 %page_addr) #9, !srcloc !196
  br label %ifc_out32.exit.i236

ifc_out32.exit.i236:                              ; preds = %do.body.i.i232, %if.then.i.i231
  %col0.i233 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %84, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i233, i32 0) #9
  %bufnum_mask.i239 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %80, i32 0, i32 4
  %90 = ptrtoint ptr %bufnum_mask.i239 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bufnum_mask.i239, align 4
  %and.i240 = and i32 %91, %page_addr
  %vbase.i241 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %80, i32 0, i32 5
  %92 = ptrtoint ptr %vbase.i241 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vbase.i241, align 8
  %writesize.i242 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %94 = ptrtoint ptr %writesize.i242 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %writesize.i242, align 4
  %mul.i243 = shl i32 %and.i240, 1
  %mul4.i244 = mul i32 %mul.i243, %95
  %add.ptr.i245 = getelementptr i8, ptr %93, i32 %mul4.i244
  %96 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i246 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %addr.i246 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr.i245, ptr %addr.i246, align 4
  %index.i247 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %96, i32 0, i32 6
  %98 = ptrtoint ptr %index.i247 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %index.i247, align 4
  br label %cleanup

sw.bb29:                                          ; preds = %if.then
  %nand_fir031 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %99 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i249 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %little_endian.i249 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %little_endian.i249, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not.i250 = icmp eq i8 %101, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i250, label %do.body.i252, label %if.then.i251

if.then.i251:                                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir031, i32 8409668) #9, !srcloc !196
  br label %ifc_out32.exit253

do.body.i252:                                     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir031, i32 1146257408) #9, !srcloc !196
  br label %ifc_out32.exit253

ifc_out32.exit253:                                ; preds = %do.body.i252, %if.then.i251
  %nand_fcr033 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %102 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i254 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %little_endian.i254 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %little_endian.i254, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i255 = icmp eq i8 %104, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i255, label %do.body.i257, label %if.then.i256

if.then.i256:                                     ; preds = %ifc_out32.exit253
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr033, i32 53344) #9, !srcloc !196
  br label %ifc_out32.exit258

do.body.i257:                                     ; preds = %ifc_out32.exit253
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr033, i32 1624244224) #9, !srcloc !196
  br label %ifc_out32.exit258

ifc_out32.exit258:                                ; preds = %do.body.i257, %if.then.i256
  %nand_fbcr35 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr35, i32 0) #9
  %105 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes36 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %read_bytes36 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %read_bytes36, align 4
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

sw.bb37:                                          ; preds = %if.then
  %column39 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 5
  %107 = ptrtoint ptr %column39 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %column, ptr %column39, align 4
  %oob = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 7
  %108 = ptrtoint ptr %oob to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %oob, align 4
  %writesize40 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %109 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %writesize40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %110)
  %cmp41 = icmp ugt i32 %110, 512
  %nand_fir044 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %111 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i264 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %little_endian.i264 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %little_endian.i264, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i265 = icmp eq i8 %113, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %sw.bb37
  br i1 %tobool.not.i265, label %do.body.i267, label %if.then.i266

if.then.i266:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir044, i32 744034628) #9, !srcloc !196
  br label %ifc_out32.exit268

do.body.i267:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir044, i32 1141987628) #9, !srcloc !196
  br label %ifc_out32.exit268

ifc_out32.exit268:                                ; preds = %do.body.i267, %if.then.i266
  %nand_fir1 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %114 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i269 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %114, i32 0, i32 11
  %115 = ptrtoint ptr %little_endian.i269 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %little_endian.i269, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i270 = icmp eq i8 %116, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i270, label %do.body.i272, label %if.then.i271

if.then.i271:                                     ; preds = %ifc_out32.exit268
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir1, i32 49225) #9, !srcloc !196
  br label %if.end57

do.body.i272:                                     ; preds = %ifc_out32.exit268
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir1, i32 1237319680) #9, !srcloc !196
  br label %if.end57

if.else:                                          ; preds = %sw.bb37
  br i1 %tobool.not.i265, label %do.body.i277, label %if.then.i276

if.then.i276:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir044, i32 1682288708) #9, !srcloc !196
  br label %ifc_out32.exit278

do.body.i277:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir044, i32 1152402788) #9, !srcloc !196
  br label %ifc_out32.exit278

ifc_out32.exit278:                                ; preds = %do.body.i277, %if.then.i276
  %nand_fir149 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %117 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i279 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %little_endian.i279 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %little_endian.i279, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i280 = icmp eq i8 %119, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i280, label %do.body.i282, label %if.then.i281

if.then.i281:                                     ; preds = %ifc_out32.exit278
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir149, i32 18217) #9, !srcloc !196
  br label %ifc_out32.exit283

do.body.i282:                                     ; preds = %ifc_out32.exit278
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir149, i32 692518912) #9, !srcloc !196
  br label %ifc_out32.exit283

ifc_out32.exit283:                                ; preds = %do.body.i282, %if.then.i281
  %120 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %writesize40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %column)
  %cmp51.not = icmp ugt i32 %121, %column
  %. = select i1 %cmp51.not, i32 1081456, i32 1343258736
  br label %if.end57

if.end57:                                         ; preds = %ifc_out32.exit283, %do.body.i272, %if.then.i271
  %nand_fcr038.0 = phi i32 [ %., %ifc_out32.exit283 ], [ -2140139520, %if.then.i271 ], [ -2140139520, %do.body.i272 ]
  %122 = ptrtoint ptr %writesize40 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %writesize40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %column)
  %cmp59.not = icmp ugt i32 %123, %column
  br i1 %cmp59.not, label %if.end57.if.end64_crit_edge, label %if.then60

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %sub62 = sub i32 %column, %123
  %124 = load ptr, ptr @ifc_nand_ctrl, align 4
  %oob63 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %124, i32 0, i32 7
  %125 = ptrtoint ptr %oob63 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %oob63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.end57.if.end64_crit_edge
  %column.addr.0 = phi i32 [ %sub62, %if.then60 ], [ %column, %if.end57.if.end64_crit_edge ]
  %nand_fcr066 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %126 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i284 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %126, i32 0, i32 11
  %127 = ptrtoint ptr %little_endian.i284 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %little_endian.i284, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i285 = icmp eq i8 %128, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i285, label %do.body.i287, label %if.then.i286

if.then.i286:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %129 = tail call i32 @llvm.bswap.i32(i32 %nand_fcr038.0) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr066, i32 %129) #9, !srcloc !196
  br label %ifc_out32.exit288

do.body.i287:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr066, i32 %nand_fcr038.0) #9, !srcloc !196
  br label %ifc_out32.exit288

ifc_out32.exit288:                                ; preds = %do.body.i287, %if.then.i286
  %130 = load ptr, ptr @ifc_nand_ctrl, align 4
  %oob67 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %130, i32 0, i32 7
  %131 = ptrtoint ptr %oob67 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %oob67, align 4
  tail call fastcc void @set_addr(ptr noundef %chip, i32 noundef %column.addr.0, i32 noundef %page_addr, i32 noundef %132)
  br label %cleanup

sw.bb68:                                          ; preds = %entry
  %oob69 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 7
  %133 = ptrtoint ptr %oob69 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %oob69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not = icmp eq i32 %134, 0
  br i1 %tobool.not, label %if.else76, label %if.then70

if.then70:                                        ; preds = %sw.bb68
  %index71 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 6
  %135 = ptrtoint ptr %index71 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index71, align 4
  %column72 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 5
  %137 = ptrtoint ptr %column72 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %column72, align 4
  %sub73 = sub i32 %136, %138
  %nand_fbcr75 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %139 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i289 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %139, i32 0, i32 11
  %140 = ptrtoint ptr %little_endian.i289 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %little_endian.i289, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i290 = icmp eq i8 %141, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i290, label %do.body.i292, label %if.then.i291

if.then.i291:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  %142 = tail call i32 @llvm.bswap.i32(i32 %sub73) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr75, i32 %142) #9, !srcloc !196
  br label %if.end79

do.body.i292:                                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr75, i32 %sub73) #9, !srcloc !196
  br label %if.end79

if.else76:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  %nand_fbcr78 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr78, i32 0) #9
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %do.body.i292, %if.then.i291
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

sw.bb80:                                          ; preds = %if.then
  %nand_fir082 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %143 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i299 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %143, i32 0, i32 11
  %144 = ptrtoint ptr %little_endian.i299 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %little_endian.i299, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i300 = icmp eq i8 %145, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i300, label %do.body.i302, label %if.then.i301

if.then.i301:                                     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir082, i32 4166) #9, !srcloc !196
  br label %ifc_out32.exit303

do.body.i302:                                     ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir082, i32 1175453696) #9, !srcloc !196
  br label %ifc_out32.exit303

ifc_out32.exit303:                                ; preds = %do.body.i302, %if.then.i301
  %nand_fcr084 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %146 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i304 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %146, i32 0, i32 11
  %147 = ptrtoint ptr %little_endian.i304 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %little_endian.i304, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool.not.i305 = icmp eq i8 %148, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i305, label %do.body.i307, label %if.then.i306

if.then.i306:                                     ; preds = %ifc_out32.exit303
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr084, i32 112) #9, !srcloc !196
  br label %ifc_out32.exit308

do.body.i307:                                     ; preds = %ifc_out32.exit303
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr084, i32 1879048192) #9, !srcloc !196
  br label %ifc_out32.exit308

ifc_out32.exit308:                                ; preds = %do.body.i307, %if.then.i306
  %nand_fbcr86 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %149 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i309 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %149, i32 0, i32 11
  %150 = ptrtoint ptr %little_endian.i309 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %little_endian.i309, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i310 = icmp eq i8 %151, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i310, label %do.body.i312, label %if.then.i311

if.then.i311:                                     ; preds = %ifc_out32.exit308
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr86, i32 16777216) #9, !srcloc !196
  br label %ifc_out32.exit313

do.body.i312:                                     ; preds = %ifc_out32.exit308
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr86, i32 1) #9, !srcloc !196
  br label %ifc_out32.exit313

ifc_out32.exit313:                                ; preds = %do.body.i312, %if.then.i311
  %152 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %priv.i, align 8
  %ctrl2.i315 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %ctrl2.i315 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ctrl2.i315, align 8
  %rregs.i316 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %rregs.i316 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %rregs.i316, align 4
  %158 = load ptr, ptr @ifc_nand_ctrl, align 4
  %page.i317 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %page.i317 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %page.i317, align 4
  %row0.i318 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %157, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i318, i32 0) #9
  %col0.i323 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %157, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i323, i32 0) #9
  %vbase.i330 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %153, i32 0, i32 5
  %160 = ptrtoint ptr %vbase.i330 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %vbase.i330, align 8
  %162 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i332 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %addr.i332 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %161, ptr %addr.i332, align 4
  %index.i333 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %162, i32 0, i32 6
  %164 = ptrtoint ptr %index.i333 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %index.i333, align 4
  %read_bytes87 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %162, i32 0, i32 4
  %165 = ptrtoint ptr %read_bytes87 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 1, ptr %read_bytes87, align 4
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  %166 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr88 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %addr88 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %addr88, align 4
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %169 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %options, align 8
  %and = and i32 %170, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool89.not = icmp eq i32 %and, 0
  br i1 %tobool89.not, label %if.else94, label %if.then90

if.then90:                                        ; preds = %ifc_out32.exit313
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %171 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i335 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %171, i32 0, i32 11
  %172 = ptrtoint ptr %little_endian.i335 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %little_endian.i335, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i336 = icmp eq i8 %173, 0
  %174 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %168) #9
  br i1 %tobool.not.i336, label %if.else.i, label %if.then.i337

if.then.i337:                                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  %175 = tail call i16 @llvm.bswap.i16(i16 %174) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  br label %ifc_in16.exit

if.else.i:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  br label %ifc_in16.exit

ifc_in16.exit:                                    ; preds = %if.else.i, %if.then.i337
  %val.0.i = phi i16 [ %175, %if.then.i337 ], [ %174, %if.else.i ]
  %176 = or i16 %val.0.i, 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %177 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i338 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %177, i32 0, i32 11
  %178 = ptrtoint ptr %little_endian.i338 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %little_endian.i338, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i339 = icmp eq i8 %179, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i339, label %do.body.i341, label %if.then.i340

if.then.i340:                                     ; preds = %ifc_in16.exit
  call void @__sanitizer_cov_trace_pc() #11
  %180 = tail call i16 @llvm.bswap.i16(i16 %176) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %168, i16 %180) #9, !srcloc !202
  br label %cleanup

do.body.i341:                                     ; preds = %ifc_in16.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %168, i16 %176) #9, !srcloc !202
  br label %cleanup

if.else94:                                        ; preds = %ifc_out32.exit313
  call void @__sanitizer_cov_trace_pc() #11
  %181 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %168) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  %182 = or i8 %181, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %168, i8 %182) #9, !srcloc !204
  br label %cleanup

sw.bb100:                                         ; preds = %if.then
  %nand_fir0102 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %183 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i342 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %183, i32 0, i32 11
  %184 = ptrtoint ptr %little_endian.i342 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %little_endian.i342, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i343 = icmp eq i8 %185, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i343, label %do.body.i345, label %if.then.i344

if.then.i344:                                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0102, i32 68) #9, !srcloc !196
  br label %ifc_out32.exit346

do.body.i345:                                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0102, i32 1140850688) #9, !srcloc !196
  br label %ifc_out32.exit346

ifc_out32.exit346:                                ; preds = %do.body.i345, %if.then.i344
  %nand_fcr0104 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %186 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i347 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %186, i32 0, i32 11
  %187 = ptrtoint ptr %little_endian.i347 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %little_endian.i347, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i348 = icmp eq i8 %188, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i348, label %do.body.i350, label %if.then.i349

if.then.i349:                                     ; preds = %ifc_out32.exit346
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0104, i32 255) #9, !srcloc !196
  br label %ifc_out32.exit351

do.body.i350:                                     ; preds = %ifc_out32.exit346
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0104, i32 -16777216) #9, !srcloc !196
  br label %ifc_out32.exit351

ifc_out32.exit351:                                ; preds = %do.body.i350, %if.then.i349
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %190, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef %command) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ifc_out32.exit351, %if.else94, %do.body.i341, %if.then.i340, %if.end79, %ifc_out32.exit288, %ifc_out32.exit258, %ifc_out32.exit.i236, %ifc_out32.exit202, %ifc_out32.exit182, %if.end8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_wait(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rregs, align 4
  %nand_fir0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %6 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 49221) #9, !srcloc !196
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 1170210816) #9, !srcloc !196
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i
  %nand_fcr0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %9 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i13 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %little_endian.i13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %little_endian.i13, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i14 = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i14, label %do.body.i16, label %if.then.i15

if.then.i15:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 112) #9, !srcloc !196
  br label %ifc_out32.exit17

do.body.i16:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 1879048192) #9, !srcloc !196
  br label %ifc_out32.exit17

ifc_out32.exit17:                                 ; preds = %do.body.i16, %if.then.i15
  %nand_fbcr = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %12 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i18 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %little_endian.i18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %little_endian.i18, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i19 = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i19, label %do.body.i21, label %if.then.i20

if.then.i20:                                      ; preds = %ifc_out32.exit17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr, i32 16777216) #9, !srcloc !196
  br label %ifc_out32.exit22

do.body.i21:                                      ; preds = %ifc_out32.exit17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fbcr, i32 1) #9, !srcloc !196
  br label %ifc_out32.exit22

ifc_out32.exit22:                                 ; preds = %do.body.i21, %if.then.i20
  %15 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.i, align 8
  %ctrl2.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl2.i, align 8
  %rregs.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %rregs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rregs.i, align 4
  %21 = load ptr, ptr @ifc_nand_ctrl, align 4
  %page.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %page.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %page.i, align 4
  %row0.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0.i, i32 0) #9
  %col0.i = getelementptr inbounds %struct.fsl_ifc_nand, ptr %20, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0.i, i32 0) #9
  %vbase.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %vbase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbase.i, align 8
  %25 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %addr.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %25, i32 0, i32 6
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %index.i, align 4
  %read_bytes = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %read_bytes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %read_bytes, align 4
  tail call fastcc void @fsl_ifc_run_command(ptr noundef %chip)
  %nand_fsr6 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %29 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i23 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %little_endian.i23 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %little_endian.i23, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i24 = icmp eq i8 %31, 0
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %nand_fsr6) #9
  br i1 %tobool.not.i24, label %if.else.i, label %if.then.i25

if.then.i25:                                      ; preds = %ifc_out32.exit22
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %ifc_out32.exit22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i25
  %val.0.i = phi i32 [ %33, %if.then.i25 ], [ %32, %if.else.i ]
  %shr = lshr i32 %val.0.i, 24
  %or = or i32 %shr, 128
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %oobregion.i = alloca %struct.mtd_oob_region, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %4 = load ptr, ptr @ifc_nand_ctrl, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %5 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %writesize, align 4
  %call3 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob_required)
  %tobool.not = icmp eq i32 %oob_required, 0
  br i1 %tobool.not, label %if.end.thread, label %if.then

if.then:                                          ; preds = %entry
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %oobsize, align 4
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef %8) #12
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %13 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %oob_poi, align 4
  %15 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %read_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_bytes.i, align 4
  %index.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %sub.i = sub i32 %17, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %8) #9
  %addr.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %15, i32 0, i32 2
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %19
  tail call void @mmiocpy(ptr noundef %14, ptr noundef %add.ptr.i, i32 noundef %20) #9
  %23 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index3.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %index3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index3.i, align 4
  %add.i = add i32 %25, %20
  store i32 %add.i, ptr %index3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %cmp4.i = icmp ult i32 %sub.i, %8
  br i1 %cmp4.i, label %do.end8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %10, i32 0, i32 2
  %26 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev9.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %8, i32 noundef %20) #12
  br label %if.end

if.end:                                           ; preds = %do.end8.i, %if.end.i.if.end_crit_edge, %do.end.i
  %nand_stat = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nand_stat, align 4
  %and = and i32 %29, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end12_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end.thread:                                    ; preds = %entry
  %nand_stat51 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %nand_stat51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nand_stat51, align 4
  %and52 = and i32 %31, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool4.not53 = icmp eq i32 %and52, 0
  br i1 %tobool4.not53, label %if.end.thread.if.end12_crit_edge, label %if.then7

if.end.thread.if.end12_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %if.end.thread
  %oobsize9 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %32 = ptrtoint ptr %oobsize9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %oobsize9, align 4
  %34 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i33 = icmp slt i32 %33, 0
  br i1 %cmp.i33, label %do.end.i35, label %if.end.i44

do.end.i35:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i34 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, i32 noundef %33) #12
  br label %if.end10

if.end.i44:                                       ; preds = %if.then7
  %oob_poi8 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %38 = ptrtoint ptr %oob_poi8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %oob_poi8, align 4
  %40 = load ptr, ptr @ifc_nand_ctrl, align 4
  %read_bytes.i36 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %read_bytes.i36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %read_bytes.i36, align 4
  %index.i37 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %40, i32 0, i32 6
  %43 = ptrtoint ptr %index.i37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %index.i37, align 4
  %sub.i38 = sub i32 %42, %44
  %45 = tail call i32 @llvm.umin.i32(i32 %sub.i38, i32 %33) #9
  %addr.i39 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %40, i32 0, i32 2
  %46 = ptrtoint ptr %addr.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %addr.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %47, i32 %44
  tail call void @mmiocpy(ptr noundef %39, ptr noundef %add.ptr.i40, i32 noundef %45) #9
  %48 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index3.i41 = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %index3.i41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index3.i41, align 4
  %add.i42 = add i32 %50, %45
  store i32 %add.i42, ptr %index3.i41, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i38, i32 %33)
  %cmp4.i43 = icmp ult i32 %sub.i38, %33
  br i1 %cmp4.i43, label %do.end8.i46, label %if.end.i44.if.end10_crit_edge

if.end.i44.if.end10_crit_edge:                    ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.end8.i46:                                      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i45 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %35, i32 0, i32 2
  %51 = ptrtoint ptr %dev9.i45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev9.i45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %33, i32 noundef %45) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end8.i46, %if.end.i44.if.end10_crit_edge, %do.end.i35, %if.end.if.end10_crit_edge
  %oob_poi.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %53 = ptrtoint ptr %oob_poi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %oob_poi.i, align 4
  %bytes.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %55 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes.i, align 4
  %size.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %57 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oobregion.i) #9
  %59 = ptrtoint ptr %oobregion.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %oobregion.i, align 8
  %call3.i = call i32 @mtd_ooblayout_ecc(ptr noundef %chip, i32 noundef 0, ptr noundef nonnull %oobregion.i) #9
  %steps.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %60 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp31.i = icmp sgt i32 %61, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %if.end10.check_erased_page.exit_crit_edge

if.end10.check_erased_page.exit_crit_edge:        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_erased_page.exit

for.body.lr.ph.i:                                 ; preds = %if.end10
  %62 = ptrtoint ptr %oobregion.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oobregion.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %54, i32 %63
  %strength.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %ecc_stats8.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  %failed.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %buf.addr.035.i = phi ptr [ %buf, %for.body.lr.ph.i ], [ %add.ptr10.i, %for.body.i.for.body.i_crit_edge ]
  %bitflips.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %68, %for.body.i.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.body.i.for.body.i_crit_edge ]
  %ecc.032.i = phi ptr [ %add.ptr.i48, %for.body.lr.ph.i ], [ %add.ptr11.i, %for.body.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %strength.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %strength.i, align 4
  %call6.i = call i32 @nand_check_erased_ecc_chunk(ptr noundef %buf.addr.035.i, i32 noundef %58, ptr noundef %ecc.032.i, i32 noundef %56, ptr noundef null, i32 noundef 0, i32 noundef %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  %failed.ecc_stats8.i = select i1 %cmp7.i, ptr %failed.i, ptr %ecc_stats8.i
  %.call6.i = select i1 %cmp7.i, i32 1, i32 %call6.i
  %66 = ptrtoint ptr %failed.ecc_stats8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %failed.ecc_stats8.i, align 4
  %add.i49 = add i32 %.call6.i, %67
  store i32 %add.i49, ptr %failed.ecc_stats8.i, align 4
  %68 = call i32 @llvm.smax.i32(i32 %call6.i, i32 %bitflips.034.i) #9
  %add.ptr10.i = getelementptr i8, ptr %buf.addr.035.i, i32 %58
  %add.ptr11.i = getelementptr i8, ptr %ecc.032.i, i32 %56
  %inc12.i = add nuw nsw i32 %i.033.i, 1
  %69 = ptrtoint ptr %steps.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %steps.i, align 4
  %cmp.i50 = icmp slt i32 %inc12.i, %70
  br i1 %cmp.i50, label %for.body.i.for.body.i_crit_edge, label %for.body.i.check_erased_page.exit_crit_edge

for.body.i.check_erased_page.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_erased_page.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

check_erased_page.exit:                           ; preds = %for.body.i.check_erased_page.exit_crit_edge, %if.end10.check_erased_page.exit_crit_edge
  %bitflips.0.lcssa.i = phi i32 [ 0, %if.end10.check_erased_page.exit_crit_edge ], [ %68, %for.body.i.check_erased_page.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oobregion.i) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end.thread.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %71 = phi i32 [ %31, %if.end.thread.if.end12_crit_edge ], [ %29, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %71)
  %cmp.not = icmp eq i32 %71, -2147483648
  br i1 %cmp.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  %72 = ptrtoint ptr %failed to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %failed, align 4
  %inc = add i32 %73, 1
  store i32 %inc, ptr %failed, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %max_bitflips = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 10
  %74 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_bitflips, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %check_erased_page.exit
  %retval.0 = phi i32 [ %bitflips.0.lcssa.i, %check_erased_page.exit ], [ %75, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_write_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %call1 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %1) #9
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  %8 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %writesize, align 4
  %add.i = add i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %5) #12
  br label %fsl_ifc_write_buf.exit

if.end.i:                                         ; preds = %entry
  %12 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  %sub.i = sub i32 %add.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %5)
  %cmp2.i = icmp ult i32 %sub.i, %5
  br i1 %cmp2.i, label %do.end6.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev7.i = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i32 noundef %5, i32 noundef %sub.i) #12
  %17 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index10.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %index10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index10.i, align 4
  %sub11.i = sub i32 %add.i, %19
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end6.i, %if.end.i.if.end12.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub11.i, %do.end6.i ], [ %5, %if.end.i.if.end12.i_crit_edge ]
  %20 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i, align 4
  %index13.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %index13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %24
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef %3, i32 noundef %len.addr.0.i) #9
  %25 = load ptr, ptr @ifc_nand_ctrl, align 4
  %index14.i = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %index14.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index14.i, align 4
  %add15.i = add i32 %27, %len.addr.0.i
  store i32 %add15.i, ptr %index14.i, align 4
  br label %fsl_ifc_write_buf.exit

fsl_ifc_write_buf.exit:                           ; preds = %if.end12.i, %do.end.i
  %call2 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_addr(ptr nocapture noundef readonly %mtd, i32 noundef %column, i32 noundef %page_addr, i32 noundef %oob) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rregs, align 4
  %6 = load ptr, ptr @ifc_nand_ctrl, align 4
  %page = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %page_addr, ptr %page, align 4
  %row0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %8 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %page_addr) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0, i32 %11) #9, !srcloc !196
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %row0, i32 %page_addr) #9, !srcloc !196
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob)
  %tobool.not = icmp eq i32 %oob, 0
  %cond = select i1 %tobool.not, i32 0, i32 -2147483648
  %or = or i32 %cond, %column
  %col0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %12 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i17 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %little_endian.i17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %little_endian.i17, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i18 = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i18, label %do.body.i20, label %if.then.i19

if.then.i19:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0, i32 %15) #9, !srcloc !196
  br label %ifc_out32.exit21

do.body.i20:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %col0, i32 %or) #9, !srcloc !196
  br label %ifc_out32.exit21

ifc_out32.exit21:                                 ; preds = %do.body.i20, %if.then.i19
  %bufnum_mask = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %bufnum_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bufnum_mask, align 4
  %and = and i32 %17, %page_addr
  %vbase = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %vbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbase, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %20 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %writesize, align 4
  %mul = shl i32 %and, 1
  %mul4 = mul i32 %mul, %21
  %add.ptr = getelementptr i8, ptr %19, i32 %mul4
  %22 = load ptr, ptr @ifc_nand_ctrl, align 4
  %addr = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %addr, align 4
  %index = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %22, i32 0, i32 6
  %24 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %column, ptr %index, align 4
  br i1 %tobool.not, label %ifc_out32.exit21.if.end_crit_edge, label %if.then

ifc_out32.exit21.if.end_crit_edge:                ; preds = %ifc_out32.exit21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ifc_out32.exit21
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %writesize, align 4
  %add = add i32 %26, %column
  %27 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ifc_out32.exit21.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_ifc_do_read(ptr nocapture noundef readonly %chip, i32 noundef %oob, ptr nocapture noundef readonly %mtd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl1 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rregs, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %6 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp = icmp ugt i32 %7, 512
  %nand_fir0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %8 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 1749684548) #9, !srcloc !196
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 1141983848) #9, !srcloc !196
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i
  %nand_fir1 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir1, i32 0) #9
  %nand_fcr0 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %11 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i26 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %little_endian.i26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %little_endian.i26, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i27 = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i27, label %do.body.i29, label %if.then.i28

if.then.i28:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 12288) #9, !srcloc !196
  br label %if.end14

do.body.i29:                                      ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr0, i32 3145728) #9, !srcloc !196
  br label %if.end14

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i, label %do.body.i34, label %if.then.i33

if.then.i33:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 5902660) #9, !srcloc !196
  br label %ifc_out32.exit35

do.body.i34:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir0, i32 1141987840) #9, !srcloc !196
  br label %ifc_out32.exit35

ifc_out32.exit35:                                 ; preds = %do.body.i34, %if.then.i33
  %nand_fir17 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fir17, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %oob)
  %tobool.not = icmp eq i32 %oob, 0
  %nand_fcr013 = getelementptr inbounds %struct.fsl_ifc_nand, ptr %5, i32 0, i32 2
  br i1 %tobool.not, label %if.else11, label %if.then8

if.then8:                                         ; preds = %ifc_out32.exit35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %14 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i41 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %little_endian.i41 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %little_endian.i41, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i42 = icmp eq i8 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i42, label %do.body.i44, label %if.then.i43

if.then.i43:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr013, i32 80) #9, !srcloc !196
  br label %if.end14

do.body.i44:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr013, i32 1342177280) #9, !srcloc !196
  br label %if.end14

if.else11:                                        ; preds = %ifc_out32.exit35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_fcr013, i32 0) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %do.body.i44, %if.then.i43, %do.body.i29, %if.then.i28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_ifc_run_command(ptr nocapture noundef %mtd) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %4 = load ptr, ptr @ifc_nand_ctrl, align 4
  %rregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %rregs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rregs, align 4
  %bank = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bank, align 8
  %shl = shl i32 %8, 26
  %nand_csel = getelementptr inbounds %struct.fsl_ifc_nand, ptr %6, i32 0, i32 27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %9 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = lshr exact i32 %shl, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_csel, i32 %12) #9, !srcloc !196
  br label %ifc_out32.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nand_csel, i32 %shl) #9, !srcloc !196
  br label %ifc_out32.exit

ifc_out32.exit:                                   ; preds = %do.body.i, %if.then.i
  %nand_stat = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 9
  %13 = ptrtoint ptr %nand_stat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %nand_stat, align 4
  %nandseq_strt = getelementptr inbounds %struct.fsl_ifc_nand, ptr %6, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %14 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i142 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %little_endian.i142 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %little_endian.i142, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i143 = icmp eq i8 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i143, label %do.body.i145, label %if.then.i144

if.then.i144:                                     ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nandseq_strt, i32 128) #9, !srcloc !196
  br label %ifc_out32.exit146

do.body.i145:                                     ; preds = %ifc_out32.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %nandseq_strt, i32 -2147483648) #9, !srcloc !196
  br label %ifc_out32.exit146

ifc_out32.exit146:                                ; preds = %do.body.i145, %if.then.i144
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 198) #9
  %17 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nand_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.then14, label %ifc_out32.exit146.if.end48_crit_edge

ifc_out32.exit146.if.end48_crit_edge:             ; preds = %ifc_out32.exit146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then14:                                        ; preds = %ifc_out32.exit146
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %nand_wait = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 10
  %call17160 = call i32 @prepare_to_wait_event(ptr noundef %nand_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %20 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nand_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not161.not = icmp eq i32 %21, 0
  br i1 %tobool20.not161.not, label %if.then14.cleanup_crit_edge, label %if.then14.if.end40_crit_edge

if.then14.if.end40_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then14.cleanup_crit_edge
  %__ret15.1163 = phi i32 [ %__ret15.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then14.cleanup_crit_edge ]
  %call37 = call i32 @schedule_timeout(i32 noundef %__ret15.1163) #9
  %call17 = call i32 @prepare_to_wait_event(ptr noundef %nand_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #9
  %22 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nand_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool20.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool24.not = icmp eq i32 %call37, 0
  %spec.store.select95 = select i1 %tobool24.not, i32 1, i32 %call37
  %__ret15.1 = select i1 %tobool20.not, i32 %call37, i32 %spec.store.select95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret15.1)
  %tobool30.not = icmp eq i32 %__ret15.1, 0
  %not.tobool20.not = xor i1 %tobool20.not, true
  %24 = select i1 %not.tobool20.not, i1 true, i1 %tobool30.not
  br i1 %24, label %cleanup.if.end40_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.if.end40_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %cleanup.if.end40_crit_edge, %if.then14.if.end40_crit_edge
  call void @finish_wait(ptr noundef %nand_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  %25 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %nand_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool43.not = icmp eq i32 %.pr, 0
  br i1 %tobool43.not, label %do.end47, label %if.end40.if.end48_crit_edge

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

do.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.40) #12
  br label %if.end48

if.end48:                                         ; preds = %do.end47, %if.end40.if.end48_crit_edge, %ifc_out32.exit146.if.end48_crit_edge
  %28 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nand_stat, align 4
  %and = and i32 %29, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %do.end54

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %dev55 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.43) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end54, %if.end48.if.end56_crit_edge
  %32 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nand_stat, align 4
  %and58 = and i32 %33, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end56.if.end65_crit_edge, label %do.end63

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %dev64 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev64, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.46) #12
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end56.if.end65_crit_edge
  %max_bitflips = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 10
  %36 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %max_bitflips, align 4
  %eccread = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 8
  %37 = ptrtoint ptr %eccread to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eccread, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool66.not = icmp eq i32 %38, 0
  br i1 %tobool66.not, label %if.end65.if.end94_crit_edge, label %if.then67

if.end65.if.end94_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.then67:                                        ; preds = %if.end65
  %page = getelementptr inbounds %struct.fsl_ifc_nand_ctrl, ptr %4, i32 0, i32 3
  %39 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %page, align 4
  %bufnum_mask = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %bufnum_mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bufnum_mask, align 4
  %and68 = and i32 %42, %40
  %steps = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 3
  %43 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %steps, align 4
  %mul = mul i32 %and68, %44
  %add = add i32 %44, -1
  %sub = add i32 %add, %mul
  %nand_eccstat = getelementptr inbounds %struct.fsl_ifc_nand, ptr %6, i32 0, i32 45
  %div = sdiv i32 %mul, 4
  %arrayidx = getelementptr i32, ptr %nand_eccstat, i32 %div
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %45 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i147 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %little_endian.i147 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %little_endian.i147, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i148 = icmp eq i8 %47, 0
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9
  br i1 %tobool.not.i148, label %if.else.i, label %if.then.i149

if.then.i149:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  %49 = call i32 @llvm.bswap.i32(i32 %48) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i149
  %val.0.i = phi i32 [ %49, %if.then.i149 ], [ %48, %if.else.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub)
  %cmp.not164 = icmp sgt i32 %mul, %sub
  br i1 %cmp.not164, label %ifc_in32.exit.for.end92_crit_edge, label %for.body.lr.ph

ifc_in32.exit.for.end92_crit_edge:                ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.body.lr.ph:                                   ; preds = %ifc_in32.exit
  %ecc_stats = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %eccstat.0166 = phi i32 [ %val.0.i, %for.body.lr.ph ], [ %eccstat.1, %for.inc.for.body_crit_edge ]
  %i.0165 = phi i32 [ %mul, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0165, i32 %mul)
  %cmp74.not = icmp ne i32 %i.0165, %mul
  %50 = and i32 %i.0165, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool76.not = icmp eq i32 %50, 0
  %or.cond = and i1 %cmp74.not, %tobool76.not
  br i1 %or.cond, label %if.then77, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then77:                                        ; preds = %for.body
  %div78 = sdiv i32 %i.0165, 4
  %arrayidx79 = getelementptr i32, ptr %nand_eccstat, i32 %div78
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %51 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i150 = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %little_endian.i150 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %little_endian.i150, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i151 = icmp eq i8 %53, 0
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx79) #9
  br i1 %tobool.not.i151, label %if.else.i153, label %if.then.i152

if.then.i152:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  %55 = call i32 @llvm.bswap.i32(i32 %54) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %if.end81

if.else.i153:                                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %if.end81

if.end81:                                         ; preds = %if.else.i153, %if.then.i152, %for.body.if.end81_crit_edge
  %eccstat.1 = phi i32 [ %eccstat.0166, %for.body.if.end81_crit_edge ], [ %55, %if.then.i152 ], [ %54, %if.else.i153 ]
  %rem.i = shl i32 %i.0165, 3
  %sub.i = and i32 %rem.i, 24
  %mul.i = xor i32 %sub.i, 24
  %shr.i = lshr i32 %eccstat.1, %mul.i
  %and.i = and i32 %shr.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and.i)
  %cmp83 = icmp eq i32 %and.i, 15
  br i1 %cmp83, label %if.then84, label %if.end86

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %nand_stat to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nand_stat, align 4
  %or = or i32 %57, 33554432
  store i32 %or, ptr %nand_stat, align 4
  br label %for.inc

if.end86:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %ecc_stats to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ecc_stats, align 4
  %add87 = add i32 %59, %and.i
  store i32 %add87, ptr %ecc_stats, align 4
  %60 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_bitflips, align 4
  %62 = call i32 @llvm.umax.i32(i32 %61, i32 %and.i)
  %63 = ptrtoint ptr %max_bitflips to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %max_bitflips, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end86, %if.then84
  %inc = add i32 %i.0165, 1
  %cmp.not = icmp sgt i32 %inc, %sub
  br i1 %cmp.not, label %for.inc.for.end92_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end92_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end92

for.end92:                                        ; preds = %for.inc.for.end92_crit_edge, %ifc_in32.exit.for.end92_crit_edge
  %64 = ptrtoint ptr %eccread to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %eccread, align 4
  br label %if.end94

if.end94:                                         ; preds = %for.end92, %if.end65.if.end94_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_ooblayout_ecc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_check_erased_ecc_chunk(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_ifc_attach_chip(ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %ctrl2 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 8
  %gregs = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %gregs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gregs, align 4
  %bank = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bank, align 8
  %arrayidx = getelementptr %struct.fsl_ifc_global, ptr %5, i32 0, i32 6, i32 %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fsl_ifc_ctrl_dev to i32))
  %8 = load ptr, ptr @fsl_ifc_ctrl_dev, align 4
  %little_endian.i = getelementptr inbounds %struct.fsl_ifc_ctrl, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %little_endian.i, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #9
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  br label %ifc_in32.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  br label %ifc_in32.exit

ifc_in32.exit:                                    ; preds = %if.else.i, %if.then.i
  %val.0.i = phi i32 [ %12, %if.then.i ], [ %11, %if.else.i ]
  %and = and i32 %val.0.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ecc15 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  br i1 %tobool.not, label %if.else14, label %if.then

if.then:                                          ; preds = %ifc_in32.exit
  %13 = ptrtoint ptr %ecc15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %ecc15, align 8
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %14 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @fsl_ifc_ooblayout_ops, ptr %ooblayout1.i, align 8
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 512, ptr %size, align 8
  %and6 = and i32 %val.0.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp = icmp eq i32 %and6, 0
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %17 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %strength, align 4
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 16, ptr %bytes, align 4
  %strength13 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %19 = ptrtoint ptr %strength13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %strength13, align 4
  br label %do.body

if.else14:                                        ; preds = %ifc_in32.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ecc15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %ecc15, align 8
  %algo = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 2
  %21 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %algo, align 8
  br label %do.body

do.body:                                          ; preds = %if.else14, %if.else, %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug208, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then23)) #9
          to label %do.body26 [label %if.then23], !srcloc !205

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %ntargets.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %ntargets.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ntargets.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug208, ptr noundef %23, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %25) #9
  br label %do.body26

do.body26:                                        ; preds = %if.then23, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug209, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then38)) #9
          to label %do.body45 [label %if.then38], !srcloc !205

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %dev39 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev39, align 4
  %luns_per_target.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 7
  %28 = ptrtoint ptr %luns_per_target.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %luns_per_target.i, align 4
  %conv.i = zext i32 %29 to i64
  %eraseblocks_per_lun.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 4
  %30 = ptrtoint ptr %eraseblocks_per_lun.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %eraseblocks_per_lun.i, align 8
  %conv2.i = zext i32 %31 to i64
  %mul.i = mul nuw i64 %conv2.i, %conv.i
  %pages_per_eraseblock.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %pages_per_eraseblock.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pages_per_eraseblock.i, align 4
  %conv4.i = zext i32 %33 to i64
  %mul5.i = mul i64 %mul.i, %conv4.i
  %pagesize.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pagesize.i, align 4
  %conv7.i = zext i32 %35 to i64
  %mul8.i = mul i64 %mul5.i, %conv7.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug209, ptr noundef %27, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i64 noundef %mul8.i) #9
  br label %do.body45

do.body45:                                        ; preds = %if.then38, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug210, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then57)) #9
          to label %do.body62 [label %if.then57], !srcloc !205

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev58, align 4
  %pagemask = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 20
  %38 = ptrtoint ptr %pagemask to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pagemask, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug210, ptr noundef %37, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef %39) #9
  br label %do.body62

do.body62:                                        ; preds = %if.then57, %do.body45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug211, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then74)) #9
          to label %do.body79 [label %if.then74], !srcloc !205

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #11
  %dev75 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev75, align 4
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 15
  %42 = ptrtoint ptr %chip_delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip_delay, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug211, ptr noundef %41, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef %43) #9
  br label %do.body79

do.body79:                                        ; preds = %if.then74, %do.body62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then91)) #9
          to label %do.body96 [label %if.then91], !srcloc !205

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #11
  %dev92 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev92, align 4
  %badblockpos = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 11
  %46 = ptrtoint ptr %badblockpos to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %badblockpos, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug212, ptr noundef %45, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %47) #9
  br label %do.body96

do.body96:                                        ; preds = %if.then91, %do.body79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then108)) #9
          to label %do.body113 [label %if.then108], !srcloc !205

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #11
  %dev109 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev109, align 4
  %chip_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 19
  %50 = ptrtoint ptr %chip_shift to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chip_shift, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug213, ptr noundef %49, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54, i32 noundef %51) #9
  br label %do.body113

do.body113:                                       ; preds = %if.then108, %do.body96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then125)) #9
          to label %do.body130 [label %if.then125], !srcloc !205

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %dev126 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %52 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev126, align 4
  %page_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 17
  %54 = ptrtoint ptr %page_shift to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_shift, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug214, ptr noundef %53, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54, i32 noundef %55) #9
  br label %do.body130

do.body130:                                       ; preds = %if.then125, %do.body113
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then142)) #9
          to label %do.body147 [label %if.then142], !srcloc !205

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #11
  %dev143 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev143, align 4
  %phys_erase_shift = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 18
  %58 = ptrtoint ptr %phys_erase_shift to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phys_erase_shift, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug215, ptr noundef %57, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.54, i32 noundef %59) #9
  br label %do.body147

do.body147:                                       ; preds = %if.then142, %do.body130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then159)) #9
          to label %do.body166 [label %if.then159], !srcloc !205

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  %dev160 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %dev160 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev160, align 4
  %ecc161 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %62 = ptrtoint ptr %ecc161 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ecc161, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug216, ptr noundef %61, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef %63) #9
  br label %do.body166

do.body166:                                       ; preds = %if.then159, %do.body147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug217, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then178)) #9
          to label %do.body184 [label %if.then178], !srcloc !205

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #11
  %dev179 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %64 = ptrtoint ptr %dev179 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev179, align 4
  %steps = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 3
  %66 = ptrtoint ptr %steps to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %steps, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug217, ptr noundef %65, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.54, i32 noundef %67) #9
  br label %do.body184

do.body184:                                       ; preds = %if.then178, %do.body166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug218, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then196)) #9
          to label %do.body203 [label %if.then196], !srcloc !205

if.then196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %dev197 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %dev197 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev197, align 4
  %bytes199 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %70 = ptrtoint ptr %bytes199 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bytes199, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug218, ptr noundef %69, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.54, i32 noundef %71) #9
  br label %do.body203

do.body203:                                       ; preds = %if.then196, %do.body184
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then215)) #9
          to label %do.body221 [label %if.then215], !srcloc !205

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #11
  %dev216 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %72 = ptrtoint ptr %dev216 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev216, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 6
  %74 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %total, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug219, ptr noundef %73, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.54, i32 noundef %75) #9
  br label %do.body221

do.body221:                                       ; preds = %if.then215, %do.body203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug220, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then233)) #9
          to label %do.body238 [label %if.then233], !srcloc !205

if.then233:                                       ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #11
  %dev234 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %dev234 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev234, align 4
  %ooblayout = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %78 = ptrtoint ptr %ooblayout to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ooblayout, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug220, ptr noundef %77, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.54, ptr noundef %79) #9
  br label %do.body238

do.body238:                                       ; preds = %if.then233, %do.body221
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then250)) #9
          to label %do.body255 [label %if.then250], !srcloc !205

if.then250:                                       ; preds = %do.body238
  call void @__sanitizer_cov_trace_pc() #11
  %dev251 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %dev251 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev251, align 4
  %flags = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 1
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug221, ptr noundef %81, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.54, i32 noundef %83) #9
  br label %do.body255

do.body255:                                       ; preds = %if.then250, %do.body238
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then267)) #9
          to label %do.body273 [label %if.then267], !srcloc !205

if.then267:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #11
  %dev268 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %dev268 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev268, align 4
  %size269 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 2
  %86 = ptrtoint ptr %size269 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %size269, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug222, ptr noundef %85, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.54, i64 noundef %87) #9
  br label %do.body273

do.body273:                                       ; preds = %if.then267, %do.body255
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then285)) #9
          to label %do.body290 [label %if.then285], !srcloc !205

if.then285:                                       ; preds = %do.body273
  call void @__sanitizer_cov_trace_pc() #11
  %dev286 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %88 = ptrtoint ptr %dev286 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev286, align 4
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %90 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %erasesize, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug223, ptr noundef %89, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.54, i32 noundef %91) #9
  br label %do.body290

do.body290:                                       ; preds = %if.then285, %do.body273
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then302)) #9
          to label %do.body307 [label %if.then302], !srcloc !205

if.then302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #11
  %dev303 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %dev303 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev303, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %94 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %writesize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug224, ptr noundef %93, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.54, i32 noundef %95) #9
  br label %do.body307

do.body307:                                       ; preds = %if.then302, %do.body290
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fsl_ifc_attach_chip, %if.then319)) #9
          to label %do.end323 [label %if.then319], !srcloc !205

if.then319:                                       ; preds = %do.body307
  call void @__sanitizer_cov_trace_pc() #11
  %dev320 = getelementptr inbounds %struct.fsl_ifc_mtd, ptr %1, i32 0, i32 2
  %96 = ptrtoint ptr %dev320 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev320, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %98 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %oobsize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug225, ptr noundef %97, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.54, i32 noundef %99) #9
  br label %do.end323

do.end323:                                        ; preds = %if.then319, %do.body307
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_ifc_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool.not = icmp eq i32 %section, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 8, ptr %oobregion, align 4
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %1 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %total, align 8
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %3 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsl_ifc_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %section)
  %cmp = icmp sgt i32 %section, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp1 = icmp eq i32 %1, 512
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %options = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 6
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool3.not = icmp eq i32 %section, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 6, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %section)
  %tobool9.not = icmp eq i32 %section, 0
  br i1 %tobool9.not, label %if.then10, label %if.else13

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %oobregion, align 4
  br label %cleanup.sink.split

if.else13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %7 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %total, align 8
  %add = add i32 %8, 8
  %9 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %10 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oobsize, align 4
  %sub = sub i32 %11, %add
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else13, %if.then10, %if.else, %if.then4
  %.sink = phi i32 [ 6, %if.then10 ], [ %sub, %if.else13 ], [ 5, %if.then4 ], [ 2, %if.else ]
  %length12 = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %12 = ptrtoint ptr %length12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %length12, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !56, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_fsl_ifc_nand__226_1137_fsl_ifc_nand_driver_init6, !1, !"__initcall__kmod_fsl_ifc_nand__226_1137_fsl_ifc_nand_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1137, i32 1}
!2 = !{ptr @__exitcall_fsl_ifc_nand_driver_exit, !1, !"__exitcall_fsl_ifc_nand_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file227, !4, !"__UNIQUE_ID_file227", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1139, i32 1}
!5 = !{ptr @__UNIQUE_ID_license228, !4, !"__UNIQUE_ID_license228", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author229, !7, !"__UNIQUE_ID_author229", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1140, i32 1}
!8 = !{ptr @__UNIQUE_ID_description230, !9, !"__UNIQUE_ID_description230", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1141, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1130, i32 11}
!12 = !{ptr @fsl_ifc_nand_driver, !13, !"fsl_ifc_nand_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1128, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 985, i32 7}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 985, i32 22}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 985, i32 33}
!20 = !{ptr @fsl_ifc_nand_probe.part_probe_types, !21, !"part_probe_types", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 984, i32 21}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 998, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fsl_ifc_nand_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @fsl_ifc_nand_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1009, i32 3}
!32 = !{ptr @fsl_ifc_nand_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @fsl_ifc_nand_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1044, i32 3}
!36 = !{ptr @fsl_ifc_nand_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_ifc_nand_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1063, i32 36}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1084, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @fsl_ifc_nand_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsl_ifc_nand_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 977, i32 8}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fsl_ifc_nand_mutex, !46, !"fsl_ifc_nand_mutex", i1 false, i1 false}
!49 = !{ptr @ifc_nand_ctrl, !50, !"ifc_nand_ctrl", i1 false, i1 false}
!50 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 55, i32 34}
!51 = !{ptr @nand_controller_init.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 932, i32 3}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @fsl_ifc_chip_init._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @fsl_ifc_chip_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 571, i32 2}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @fsl_ifc_read_byte16._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @fsl_ifc_read_byte16._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 548, i32 2}
!68 = !{ptr @fsl_ifc_read_byte._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @fsl_ifc_read_byte._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 515, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @fsl_ifc_write_buf._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @fsl_ifc_write_buf._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 520, i32 3}
!77 = !{ptr @fsl_ifc_write_buf._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @fsl_ifc_write_buf._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 584, i32 3}
!81 = !{ptr @fsl_ifc_read_buf._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @fsl_ifc_read_buf._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 594, i32 3}
!85 = !{ptr @fsl_ifc_read_buf._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @fsl_ifc_read_buf._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 493, i32 3}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fsl_ifc_cmdfunc._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @fsl_ifc_cmdfunc._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 202, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fsl_ifc_run_command._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @fsl_ifc_run_command._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 204, i32 3}
!99 = !{ptr @fsl_ifc_run_command._entry.42, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @fsl_ifc_run_command._entry_ptr.44, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 206, i32 3}
!103 = !{ptr @fsl_ifc_run_command._entry.45, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @fsl_ifc_run_command._entry_ptr.47, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @bbt_main_descr, !106, !"bbt_main_descr", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 63, i32 30}
!107 = !{ptr @bbt_pattern, !108, !"bbt_pattern", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 60, i32 11}
!109 = !{ptr @bbt_mirror_descr, !110, !"bbt_mirror_descr", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 73, i32 30}
!111 = !{ptr @mirror_pattern, !112, !"mirror_pattern", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 61, i32 11}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 800, i32 4}
!115 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @fsl_ifc_sram_init._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @fsl_ifc_sram_init._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 842, i32 3}
!120 = !{ptr @fsl_ifc_sram_init._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @fsl_ifc_sram_init._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @fsl_ifc_controller_ops, !123, !"fsl_ifc_controller_ops", i1 false, i1 false}
!123 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 772, i32 41}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 734, i32 2}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug208, !125, !"__UNIQUE_ID_ddebug208", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 736, i32 2}
!131 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug209, !130, !"__UNIQUE_ID_ddebug209", i1 false, i1 false}
!132 = !{ptr @.str.57, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 738, i32 2}
!134 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug210, !133, !"__UNIQUE_ID_ddebug210", i1 false, i1 false}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 740, i32 2}
!137 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug211, !136, !"__UNIQUE_ID_ddebug211", i1 false, i1 false}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 742, i32 2}
!140 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug212, !139, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!141 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 744, i32 2}
!143 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug213, !142, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 746, i32 2}
!146 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug214, !145, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 748, i32 2}
!149 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug215, !148, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!150 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 750, i32 2}
!152 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug216, !151, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 752, i32 2}
!155 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug217, !154, !"__UNIQUE_ID_ddebug217", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 754, i32 2}
!158 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug218, !157, !"__UNIQUE_ID_ddebug218", i1 false, i1 false}
!159 = !{ptr @.str.66, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 756, i32 2}
!161 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug219, !160, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 758, i32 2}
!164 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug220, !163, !"__UNIQUE_ID_ddebug220", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 760, i32 2}
!167 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug221, !166, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 761, i32 2}
!170 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug222, !169, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 762, i32 2}
!173 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug223, !172, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 764, i32 2}
!176 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug224, !175, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 766, i32 2}
!179 = !{ptr @fsl_ifc_attach_chip.__UNIQUE_ID_ddebug225, !178, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!180 = !{ptr @fsl_ifc_ooblayout_ops, !181, !"fsl_ifc_ooblayout_ops", i1 false, i1 false}
!181 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 129, i32 39}
!182 = !{ptr @fsl_ifc_nand_match, !183, !"fsl_ifc_nand_match", i1 false, i1 false}
!183 = !{!"../drivers/mtd/nand/raw/fsl_ifc_nand.c", i32 1120, i32 34}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
!194 = !{i64 2151736893}
!195 = !{i64 2153474186}
!196 = !{i64 4203616}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{i64 2151736281}
!199 = !{i64 2153474638}
!200 = !{i64 4203814}
!201 = !{i64 2151735669}
!202 = !{i64 4202996}
!203 = !{i64 2151737274}
!204 = !{i64 4203419}
!205 = !{i64 2148983285, i64 2148983290, i64 2148983303, i64 2148983347, i64 2148983381, i64 2148983402}
