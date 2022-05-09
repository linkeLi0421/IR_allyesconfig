; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/denali_pci.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/denali_pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nand_ecc_caps = type { ptr, i32, ptr }
%struct.nand_ecc_step_info = type { i32, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.denali_controller = type { %struct.nand_controller, ptr, %struct.list_head, i32, i32, ptr, ptr, %struct.completion, i32, i32, i32, %struct.spinlock, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.75 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.75 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.denali_chip = type { %struct.nand_chip, %struct.list_head, i32, [0 x %struct.denali_chip_sel] }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.anon.81 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.denali_chip_sel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_denali_pci__251_142_denali_pci_driver_init6 = internal global ptr @denali_pci_driver_init, section ".initcall6.init", align 4
@denali_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @denali_pci_ids, ptr @denali_pci_probe, ptr @denali_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_denali_pci_driver_exit = internal global ptr @denali_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description252 = internal constant [61 x i8] c"denali_pci.description=PCI driver for Denali NAND controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [54 x i8] c"denali_pci.author=Intel Corporation and its suppliers\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [48 x i8] c"denali_pci.file=drivers/mtd/nand/raw/denali_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [26 x i8] c"denali_pci.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"denali_pci\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"denali-nand-pci\00", [16 x i8] zeroinitializer }, align 32
@denali_pci_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 1793, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 2057, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 44, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Spectra: pci_enable_device failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"denali_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/mtd/nand/raw/denali_pci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry_ptr = internal global ptr @denali_pci_probe._entry, section ".printk_index", align 4
@denali_pci_ecc_caps = internal constant { %struct.nand_ecc_caps, [20 x i8] } { %struct.nand_ecc_caps { ptr @denali_pci_ecc_caps_stepinfo, i32 1, ptr @denali_calc_ecc_bytes }, [20 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Spectra: Unable to request memory regions\0A\00", [53 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry_ptr.9 = internal global ptr @denali_pci_probe._entry.7, section ".printk_index", align 4
@denali_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Spectra: Unable to remap memory region\0A\00", [56 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry_ptr.12 = internal global ptr @denali_pci_probe._entry.10, section ".printk_index", align 4
@denali_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 85, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Spectra: ioremap failed!\00", [39 x i8] zeroinitializer }, align 32
@denali_pci_probe._entry_ptr.15 = internal global ptr @denali_pci_probe._entry.13, section ".printk_index", align 4
@denali_pci_ecc_caps_stepinfo = internal constant { %struct.nand_ecc_step_info, [20 x i8] } { %struct.nand_ecc_step_info { i32 512, ptr @denali_pci_ecc_caps_strengths, i32 2 }, [20 x i8] zeroinitializer }, align 32
@denali_pci_ecc_caps_strengths = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 8, i32 15], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"denali_pci_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 136, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 142, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 137, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"denali_pci_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 21, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 44, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c"denali_pci_ecc_caps\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 73, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 79, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 85, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"denali_pci_ecc_caps_stepinfo\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"denali_pci_ecc_caps_strengths\00", align 1
@___asan_gen_.71 = private constant [37 x i8] c"../drivers/mtd/nand/raw/denali_pci.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 28, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_denali_pci_driver_exit, ptr @__initcall__kmod_denali_pci__251_142_denali_pci_driver_init6, ptr @denali_pci_driver_exit, ptr @denali_pci_probe._entry, ptr @denali_pci_probe._entry.10, ptr @denali_pci_probe._entry.13, ptr @denali_pci_probe._entry.7, ptr @denali_pci_probe._entry_ptr, ptr @denali_pci_probe._entry_ptr.12, ptr @denali_pci_probe._entry_ptr.15, ptr @denali_pci_probe._entry_ptr.9, ptr @denali_pci_driver, ptr @.str, ptr @.str.1, ptr @denali_pci_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @denali_pci_ecc_caps, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @denali_pci_ecc_caps_stepinfo, ptr @denali_pci_ecc_caps_strengths], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_ecc_caps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_ecc_caps_stepinfo to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @denali_pci_ecc_caps_strengths to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @denali_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @denali_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @denali_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @denali_pci_probe(ptr noundef %dev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 280, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pcim_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource, align 8
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end6
  %arrayidx9 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %end = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %if.then7.cond.end_crit_edge, label %cond.false

if.then7.cond.end_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx9, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then7.cond.end_crit_edge
  %sub32.pre-phi = phi i32 [ %sub, %cond.false ], [ 1, %if.then7.cond.end_crit_edge ]
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.then7.cond.end_crit_edge ]
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 8
  %add33 = sub i32 %sub32.pre-phi, %9
  %cond35 = select i1 %cmp10, i32 0, i32 %add33
  br label %if.end78

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %end41 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 0, i32 1
  %10 = ptrtoint ptr %end41 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp42 = icmp eq i32 %11, 0
  %sub51 = sub i32 1, %3
  %add52 = add i32 %sub51, %11
  %cond54 = select i1 %cmp42, i32 0, i32 %add52
  %arrayidx56 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1
  %12 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx56, align 8
  %end60 = getelementptr %struct.pci_dev, ptr %dev, i32 0, i32 47, i32 1, i32 1
  %14 = ptrtoint ptr %end60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp61 = icmp eq i32 %15, 0
  %sub70 = sub i32 1, %13
  %add71 = add i32 %sub70, %15
  %cond73 = select i1 %cmp61, i32 0, i32 %add71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond73)
  %tobool74.not = icmp eq i32 %cond73, 0
  %add76 = add i32 %cond54, %3
  %spec.select = select i1 %tobool74.not, i32 %add76, i32 %13
  %spec.select200 = select i1 %tobool74.not, i32 %cond54, i32 %cond73
  br label %if.end78

if.end78:                                         ; preds = %if.else, %cond.end
  %csr_base.0 = phi i32 [ %9, %cond.end ], [ %3, %if.else ]
  %mem_base.0 = phi i32 [ %3, %cond.end ], [ %spec.select, %if.else ]
  %csr_len.0 = phi i32 [ %cond35, %cond.end ], [ %cond54, %if.else ]
  %mem_len.0 = phi i32 [ %cond, %cond.end ], [ %spec.select200, %if.else ]
  tail call void @pci_set_master(ptr noundef %dev) #5
  %dev80 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %dev80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev80, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %irq81 = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %irq81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq81, align 4
  %ecc_caps = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 19
  %20 = ptrtoint ptr %ecc_caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @denali_pci_ecc_caps, ptr %ecc_caps, align 4
  %clk_rate = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 50000000, ptr %clk_rate, align 4
  %clk_x_rate = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 4
  %22 = ptrtoint ptr %clk_x_rate to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 200000000, ptr %clk_x_rate, align 4
  %call82 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end89, label %do.end87

do.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end89:                                         ; preds = %if.end78
  %call90 = tail call ptr @ioremap(i32 noundef %csr_base.0, i32 noundef %csr_len.0) #5
  %reg = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call90, ptr %reg, align 4
  %tobool92.not = icmp eq ptr %call90, null
  br i1 %tobool92.not, label %do.end96, label %if.end98

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end98:                                         ; preds = %if.end89
  %call99 = tail call ptr @ioremap(i32 noundef %mem_base.0, i32 noundef %mem_len.0) #5
  %host = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call99, ptr %host, align 4
  %tobool101.not = icmp eq ptr %call99, null
  br i1 %tobool101.not, label %do.end105, label %if.end107

do.end105:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %out_unmap_reg

if.end107:                                        ; preds = %if.end98
  %call108 = tail call i32 @denali_init(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %if.end107.out_unmap_host_crit_edge

if.end107.out_unmap_host_crit_edge:               ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unmap_host

if.end111:                                        ; preds = %if.end107
  %nbanks = getelementptr inbounds %struct.denali_controller, ptr %call.i, i32 0, i32 16
  %25 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbanks, align 4
  %27 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev80, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %26, i32 36) #5
  %30 = extractvalue { i32, i1 } %29, 1
  %31 = extractvalue { i32, i1 } %29, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %31, i32 2184) #5
  %retval.0.i = select i1 %30, i32 -1, i32 %spec.select.i
  %call.i201 = tail call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %retval.0.i, i32 noundef 3520) #5
  %tobool115.not = icmp eq ptr %call.i201, null
  br i1 %tobool115.not, label %if.end111.out_remove_denali_crit_edge, label %if.end117

if.end111.out_remove_denali_crit_edge:            ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_denali

if.end117:                                        ; preds = %if.end111
  %flags = getelementptr inbounds %struct.nand_device, ptr %call.i201, i32 0, i32 2, i32 2, i32 5
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %or = or i32 %33, 1
  store i32 %or, ptr %flags, align 4
  %nsels118 = getelementptr inbounds %struct.denali_chip, ptr %call.i201, i32 0, i32 2
  %34 = ptrtoint ptr %nsels118 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %26, ptr %nsels118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp119205 = icmp sgt i32 %26, 0
  br i1 %cmp119205, label %if.end117.for.body_crit_edge, label %if.end117.for.end_crit_edge

if.end117.for.end_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end117.for.body_crit_edge:                     ; preds = %if.end117
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end117.for.body_crit_edge
  %i.0206 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end117.for.body_crit_edge ]
  %arrayidx120 = getelementptr %struct.denali_chip, ptr %call.i201, i32 0, i32 3, i32 %i.0206
  %35 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0206, ptr %arrayidx120, align 4
  %inc = add nuw nsw i32 %i.0206, 1
  %exitcond.not = icmp eq i32 %inc, %26
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end117.for.end_crit_edge
  %call121 = tail call i32 @denali_chip_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i201) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %for.end.out_remove_denali_crit_edge

for.end.out_remove_denali_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_remove_denali

if.end124:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out_remove_denali:                                ; preds = %for.end.out_remove_denali_crit_edge, %if.end111.out_remove_denali_crit_edge
  %ret.0 = phi i32 [ %call121, %for.end.out_remove_denali_crit_edge ], [ -12, %if.end111.out_remove_denali_crit_edge ]
  tail call void @denali_remove(ptr noundef nonnull %call.i) #5
  br label %out_unmap_host

out_unmap_host:                                   ; preds = %out_remove_denali, %if.end107.out_unmap_host_crit_edge
  %ret.1 = phi i32 [ %call108, %if.end107.out_unmap_host_crit_edge ], [ %ret.0, %out_remove_denali ]
  %37 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host, align 4
  tail call void @iounmap(ptr noundef %38) #5
  br label %out_unmap_reg

out_unmap_reg:                                    ; preds = %out_unmap_host, %do.end105
  %ret.2 = phi i32 [ %ret.1, %out_unmap_host ], [ -12, %do.end105 ]
  %39 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %40) #5
  br label %cleanup

cleanup:                                          ; preds = %out_unmap_reg, %if.end124, %do.end96, %do.end87, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call82, %do.end87 ], [ %ret.2, %out_unmap_reg ], [ 0, %if.end124 ], [ -12, %do.end96 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @denali_pci_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @denali_remove(ptr noundef %1) #5
  %reg = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @iounmap(ptr noundef %3) #5
  %host = getelementptr inbounds %struct.denali_controller, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  tail call void @iounmap(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_chip_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @denali_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @denali_calc_ecc_bytes(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_denali_pci__251_142_denali_pci_driver_init6, !1, !"__initcall__kmod_denali_pci__251_142_denali_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 142, i32 1}
!2 = !{ptr @__exitcall_denali_pci_driver_exit, !1, !"__exitcall_denali_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description252, !4, !"__UNIQUE_ID_description252", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 144, i32 1}
!5 = !{ptr @__UNIQUE_ID_author253, !6, !"__UNIQUE_ID_author253", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 145, i32 1}
!7 = !{ptr @__UNIQUE_ID_file254, !8, !"__UNIQUE_ID_file254", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 146, i32 1}
!9 = !{ptr @__UNIQUE_ID_license255, !8, !"__UNIQUE_ID_license255", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 137, i32 10}
!13 = !{ptr @denali_pci_driver, !14, !"denali_pci_driver", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 136, i32 26}
!15 = !{ptr @denali_pci_ids, !16, !"denali_pci_ids", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 21, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 44, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @denali_pci_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @denali_pci_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 73, i32 3}
!27 = !{ptr @denali_pci_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @denali_pci_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 79, i32 3}
!31 = !{ptr @denali_pci_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @denali_pci_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 85, i32 3}
!35 = !{ptr @denali_pci_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @denali_pci_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @denali_pci_ecc_caps, !38, !"denali_pci_ecc_caps", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/denali_pci.c", i32 28, i32 1}
!39 = !{ptr @denali_pci_ecc_caps_stepinfo, !38, !"denali_pci_ecc_caps_stepinfo", i1 false, i1 false}
!40 = !{ptr @denali_pci_ecc_caps_strengths, !38, !"denali_pci_ecc_caps_strengths", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
