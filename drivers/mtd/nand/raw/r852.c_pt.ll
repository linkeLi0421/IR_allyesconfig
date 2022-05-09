; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/r852.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/r852.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
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
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.81 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.r852_device = type { %struct.nand_controller, ptr, ptr, ptr, i32, %struct.completion, i32, ptr, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i32, ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.sm_oob = type { i32, i8, i8, [2 x i8], [3 x i8], [2 x i8], [3 x i8] }

@__param_str_r852_enable_dma = internal constant [21 x i8] c"r852.r852_enable_dma\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@r852_enable_dma = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_r852_enable_dma = internal constant %struct.kernel_param { ptr @__param_str_r852_enable_dma, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.68 { ptr @r852_enable_dma } }, section "__param", align 4
@__UNIQUE_ID_r852_enable_dmatype251 = internal constant [35 x i8] c"r852.parmtype=r852_enable_dma:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_r852_enable_dma252 = internal constant [60 x i8] c"r852.parm=r852_enable_dma:Enable usage of the DMA (default)\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"r852.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype253 = internal constant [24 x i8] c"r852.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug254 = internal constant [34 x i8] c"r852.parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_r852__264_1087_r852_pci_driver_init6 = internal global ptr @r852_pci_driver_init, section ".initcall6.init", align 4
@r852_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @r852_pci_id_tbl, ptr @r852_probe, ptr @r852_remove, ptr null, ptr null, ptr @r852_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @r852_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_r852_pci_driver_exit = internal global ptr @r852_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file265 = internal constant [36 x i8] c"r852.file=drivers/mtd/nand/raw/r852\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [17 x i8] c"r852.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author267 = internal constant [53 x i8] c"r852.author=Maxim Levitsky <maximlevitsky@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [61 x i8] c"r852.description=Ricoh 85xx xD/smartmedia card reader driver\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r852\00", [27 x i8] zeroinitializer }, align 32
@r852_pci_id_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4480, i32 2130, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@r852_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @r852_suspend, ptr @r852_resume, ptr @r852_suspend, ptr @r852_resume, ptr @r852_suspend, ptr @r852_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@r852_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @r852_attach_chip, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@r852_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&dev->card_detect_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@r852_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&dev->card_detect_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@r852_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->irqlock\00", [18 x i8] zeroinitializer }, align 32
@r852_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015r852: driver loaded successfully\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"r852_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/nand/raw/r852.c\00", [36 x i8] zeroinitializer }, align 32
@r852_probe._entry_ptr = internal global ptr @r852_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@r852_do_dma.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.9, ptr @.str.11, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r852_do_dma\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"doing dma %s \0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"r852: doing dma %s \0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@r852_do_dma.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.9, ptr @.str.15, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dma: using bounce buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"r852: dma: using bounce buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@r852_dma_wait.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.9, ptr @.str.20, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r852_dma_wait\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for DMA interrupt\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"r852: timeout waiting for DMA interrupt\0A\00", [55 x i8] zeroinitializer }, align 32
@nand_controller_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nfc->lock\00", [21 x i8] zeroinitializer }, align 32
@r852_ecc_correct.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.9, ptr @.str.24, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"r852_ecc_correct\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ecc: unrecoverable error, in half %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"r852: ecc: unrecoverable error, in half %d\0A\00", [52 x i8] zeroinitializer }, align 32
@r852_ecc_correct.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.9, ptr @.str.26, i8 0, i8 125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ecc: recoverable error, in half %d, byte %d, bit %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"r852: ecc: recoverable error, in half %d, byte %d, bit %d\0A\00", [37 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@r852_update_media_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.9, i32 608, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016r852: card removed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"r852_update_media_status\00", [39 x i8] zeroinitializer }, align 32
@r852_update_media_status._entry_ptr = internal global ptr @r852_update_media_status._entry, section ".printk_index", align 4
@r852_update_media_status._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.9, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016r852: detected %s %s card in slot\0A\00", [59 x i8] zeroinitializer }, align 32
@r852_update_media_status._entry_ptr.33 = internal global ptr @r852_update_media_status._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SmartMedia\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xD\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"readonly\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"writeable\00", [22 x i8] zeroinitializer }, align 32
@dev_attr_media_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @media_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@r852_register_nand_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.9, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016r852: can't create media type sysfs attribute\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"r852_register_nand_device\00", [38 x i8] zeroinitializer }, align 32
@r852_register_nand_device._entry_ptr = internal global ptr @r852_register_nand_device._entry, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"media_type\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smartmedia\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xd\00", [29 x i8] zeroinitializer }, align 32
@r852_dma_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016r852: Non dma capable device detected, dma disabled\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"r852_dma_test\00", [18 x i8] zeroinitializer }, align 32
@r852_dma_test._entry_ptr = internal global ptr @r852_dma_test._entry, section ".printk_index", align 4
@r852_dma_test._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.9, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016r852: disabling dma on user request\0A\00", [57 x i8] zeroinitializer }, align 32
@r852_dma_test._entry_ptr.47 = internal global ptr @r852_dma_test._entry.45, section ".printk_index", align 4
@r852_irq.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.9, ptr @.str.49, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"r852_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"received dma error IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"r852: received dma error IRQ\0A\00", [34 x i8] zeroinitializer }, align 32
@r852_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@r852_irq.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.9, ptr @.str.51, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bad dma IRQ status = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"r852: bad dma IRQ status = %x\0A\00", [33 x i8] zeroinitializer }, align 32
@r852_irq.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.9, ptr @.str.53, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"strange card status = %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"r852: strange card status = %x\0A\00", [32 x i8] zeroinitializer }, align 32
@r852_resume.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.9, ptr @.str.56, i8 1, i8 5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"r852_resume\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"card was %s during low power state\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"r852: card was %s during low power state\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"added\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"removed\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 4294967295]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"r852_enable_dma\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 25, i32 13 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 29, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"r852_pci_driver\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1078, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1087, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"r852_pci_id_tbl\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1068, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"r852_pm_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1076, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"r852_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 837, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 918, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 923, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 932, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 948, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 185, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 204, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 326, i32 6 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 162, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"../include/linux/mtd/rawnand.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 1105, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 489, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 498, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 87, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 608, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 617, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"dev_attr_media_type\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 646, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 596, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 591, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 591, i32 40 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 77, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 80, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 767, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 808, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 811, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [31 x i8] c"../drivers/mtd/nand/raw/r852.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1046, i32 3 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author267, ptr @__UNIQUE_ID_debug254, ptr @__UNIQUE_ID_debugtype253, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file265, ptr @__UNIQUE_ID_license266, ptr @__UNIQUE_ID_r852_enable_dma252, ptr @__UNIQUE_ID_r852_enable_dmatype251, ptr @__exitcall_r852_pci_driver_exit, ptr @__initcall__kmod_r852__264_1087_r852_pci_driver_init6, ptr @__param_debug, ptr @__param_r852_enable_dma, ptr @r852_dma_test._entry, ptr @r852_dma_test._entry.45, ptr @r852_dma_test._entry_ptr, ptr @r852_dma_test._entry_ptr.47, ptr @r852_pci_driver_exit, ptr @r852_probe._entry, ptr @r852_probe._entry_ptr, ptr @r852_register_nand_device._entry, ptr @r852_register_nand_device._entry_ptr, ptr @r852_update_media_status._entry, ptr @r852_update_media_status._entry.31, ptr @r852_update_media_status._entry_ptr, ptr @r852_update_media_status._entry_ptr.33, ptr @r852_enable_dma, ptr @debug, ptr @r852_pci_driver, ptr @.str, ptr @r852_pci_id_tbl, ptr @r852_pm_ops, ptr @r852_ops, ptr @.str.1, ptr @r852_probe.__key, ptr @.str.2, ptr @r852_probe.__key.3, ptr @.str.4, ptr @r852_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @nand_controller_init.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @init_completion.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @dev_attr_media_type, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_enable_dma to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_pci_id_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_controller_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_update_media_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_update_media_status._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_media_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_register_nand_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_dma_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r852_dma_test._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @r852_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @r852_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @r852_pci_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_probe(ptr noundef %pci_dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pci_dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pci_set_master(ptr noundef %pci_dev) #10
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error2_crit_edge

if.end.error2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %error2

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_request_regions(ptr noundef %pci_dev, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.error2_crit_edge

if.end5.error2_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %error2

if.end9:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2168) #13
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.error4_crit_edge, label %if.end13

if.end9.error4_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %error4

if.end13:                                         ; preds = %if.end9
  %cmd_ctrl = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 7
  %1 = ptrtoint ptr %cmd_ctrl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @r852_cmdctl, ptr %cmd_ctrl, align 4
  %waitfunc = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 10
  %2 = ptrtoint ptr %waitfunc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @r852_wait, ptr %waitfunc, align 8
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 9
  %3 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @r852_ready, ptr %dev_ready, align 4
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @r852_read_byte, ptr %read_byte, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 6
  %5 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @r852_read_buf, ptr %read_buf, align 8
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @r852_write_buf, ptr %write_buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 376) #13
  %tobool20.not = icmp eq ptr %call7.i.i155, null
  br i1 %tobool20.not, label %if.end13.error5_crit_edge, label %if.end22

if.end13.error5_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %error5

if.end22:                                         ; preds = %if.end13
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 34
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i155, ptr %priv1.i, align 8
  %chip23 = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 2
  %9 = ptrtoint ptr %chip23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %chip23, align 4
  %pci_dev24 = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 3
  %10 = ptrtoint ptr %pci_dev24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %pci_dev, ptr %pci_dev24, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i155, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i155, ptr noundef nonnull @.str.22, ptr noundef nonnull @nand_controller_init.__key) #10
  %ops = getelementptr inbounds %struct.nand_controller, ptr %call7.i.i155, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @r852_ops, ptr %ops, align 4
  %controller27 = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 32
  %13 = ptrtoint ptr %controller27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i155, ptr %controller27, align 4
  %phys_bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef 512, ptr noundef %phys_bounce_buffer, i32 noundef 3264, i32 noundef 0) #10
  %bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 7
  %14 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %bounce_buffer, align 4
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %if.end22.error6_crit_edge, label %if.end33

if.end22.error6_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %error6

if.end33:                                         ; preds = %if.end22
  %call34 = tail call ptr @pci_ioremap_bar(ptr noundef %pci_dev, i32 noundef 0) #10
  %mmio = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 1
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %mmio, align 8
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.end33.error7_crit_edge, label %if.end38

if.end33.error7_crit_edge:                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %error7

if.end38:                                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i156 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 512) #13
  %tmp_buffer = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 22
  %17 = ptrtoint ptr %tmp_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i156, ptr %tmp_buffer, align 8
  %tobool41.not = icmp eq ptr %call7.i.i156, null
  br i1 %tobool41.not, label %if.end38.error8_crit_edge, label %if.end43

if.end38.error8_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %error8

if.end43:                                         ; preds = %if.end38
  %dma_done = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 5
  %18 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dma_done, align 8
  %wait.i = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #10
  %call44 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 262158, i32 noundef 1, ptr noundef nonnull @.str) #10
  %card_workqueue = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 14
  %19 = ptrtoint ptr %card_workqueue to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call44, ptr %card_workqueue, align 8
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end43.error9_crit_edge, label %do.body49

if.end43.error9_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %error9

do.body49:                                        ; preds = %if.end43
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13
  tail call void @__init_work(ptr noundef %card_detect_work, i32 noundef 0) #10
  %20 = ptrtoint ptr %card_detect_work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %card_detect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @r852_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry56 = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13, i32 0, i32 1
  %21 = ptrtoint ptr %entry56 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry56, ptr %entry56, align 8
  %prev.i = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry56, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13, i32 0, i32 2
  %23 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @r852_card_detect_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.4, ptr noundef nonnull @r852_probe.__key.3) #10
  tail call fastcc void @r852_engine_disable(ptr noundef nonnull %call7.i.i155)
  tail call fastcc void @r852_disable_irqs(ptr noundef nonnull %call7.i.i155)
  tail call fastcc void @r852_dma_test(ptr noundef nonnull %call7.i.i155)
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %irq65 = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 21
  %26 = ptrtoint ptr %irq65 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %irq65, align 4
  %irqlock = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 20
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.6, ptr noundef nonnull @r852_probe.__key.5, i16 noundef signext 3) #10
  %card_detected = getelementptr inbounds %struct.r852_device, ptr %call7.i.i155, i32 0, i32 16
  %27 = ptrtoint ptr %card_detected to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %card_detected, align 8
  tail call fastcc void @r852_card_update_present(ptr noundef nonnull %call7.i.i155)
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call.i157 = tail call i32 @request_threaded_irq(i32 noundef %29, ptr noundef nonnull @r852_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i155) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool72.not = icmp eq i32 %call.i157, 0
  %30 = ptrtoint ptr %card_workqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card_workqueue, align 8
  br i1 %tobool72.not, label %if.end74, label %error10

if.end74:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  %call.i158 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %card_detect_work, i32 noundef 0) #10
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup

error10:                                          ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @destroy_workqueue(ptr noundef %31) #10
  br label %error9

error9:                                           ; preds = %error10, %if.end43.error9_crit_edge
  %error.0 = phi i32 [ -19, %error10 ], [ -12, %if.end43.error9_crit_edge ]
  %32 = ptrtoint ptr %tmp_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tmp_buffer, align 8
  tail call void @kfree(ptr noundef %33) #10
  br label %error8

error8:                                           ; preds = %error9, %if.end38.error8_crit_edge
  %error.1 = phi i32 [ %error.0, %error9 ], [ -12, %if.end38.error8_crit_edge ]
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 8
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef %35) #10
  br label %error7

error7:                                           ; preds = %error8, %if.end33.error7_crit_edge
  %error.2 = phi i32 [ %error.1, %error8 ], [ -19, %if.end33.error7_crit_edge ]
  %36 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bounce_buffer, align 4
  %38 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys_bounce_buffer, align 8
  tail call void @dma_free_attrs(ptr noundef %dev1, i32 noundef 512, ptr noundef %37, i32 noundef %39, i32 noundef 0) #10
  br label %error6

error6:                                           ; preds = %error7, %if.end22.error6_crit_edge
  %error.3 = phi i32 [ %error.2, %error7 ], [ -12, %if.end22.error6_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i155) #10
  br label %error5

error5:                                           ; preds = %error6, %if.end13.error5_crit_edge
  %error.4 = phi i32 [ %error.3, %error6 ], [ -12, %if.end13.error5_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %error4

error4:                                           ; preds = %error5, %if.end9.error4_crit_edge
  %error.5 = phi i32 [ %error.4, %error5 ], [ -12, %if.end9.error4_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pci_dev) #10
  br label %error2

error2:                                           ; preds = %error4, %if.end5.error2_crit_edge, %if.end.error2_crit_edge
  %error.6 = phi i32 [ %call2, %if.end.error2_crit_edge ], [ %call6, %if.end5.error2_crit_edge ], [ %error.5, %error4 ]
  tail call void @pci_disable_device(ptr noundef %pci_dev) #10
  br label %cleanup

cleanup:                                          ; preds = %error2, %if.end74, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ %call, %entry.cleanup_crit_edge ], [ %error.6, %error2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_remove(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %card_detect_work) #10
  %card_workqueue = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %card_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #10
  tail call fastcc void @r852_unregister_nand_device(ptr noundef %1)
  %mmio.i.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 7
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %7 = and i8 %6, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %9, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %7) #10, !srcloc !154
  %10 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5.i = and i32 %12, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %and5.i) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %16, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %18, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 7) #10, !srcloc !158
  %irq = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 21
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %1) #10
  %tmp_buffer = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 22
  %21 = ptrtoint ptr %tmp_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tmp_buffer, align 4
  tail call void @kfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  tail call void @pci_iounmap(ptr noundef %pci_dev, ptr noundef %24) #10
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44
  %bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bounce_buffer, align 4
  %phys_bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_bounce_buffer, align 4
  tail call void @dma_free_attrs(ptr noundef %dev3, i32 noundef 512, ptr noundef %26, i32 noundef %28, i32 noundef 0) #10
  %chip = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip, align 4
  tail call void @kfree(ptr noundef %30) #10
  tail call void @kfree(ptr noundef %1) #10
  tail call void @pci_release_regions(ptr noundef %pci_dev) #10
  tail call void @pci_disable_device(ptr noundef %pci_dev) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_shutdown(ptr noundef %pci_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci_dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %card_detect_work) #10
  %mmio.i.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %5 = and i8 %4, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %5) #10, !srcloc !154
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5.i = and i32 %10, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %and5.i) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %14, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 7) #10, !srcloc !158
  %irq = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %18) #10
  tail call void @pci_disable_device(ptr noundef %pci_dev) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_cmdctl(ptr nocapture noundef readonly %chip, i32 noundef %dat, i32 noundef %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %ctrl, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end41_crit_edge, label %if.then3

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctlreg = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctlreg, align 4
  %6 = and i8 %5, -24
  %7 = trunc i32 %ctrl to i8
  %8 = lshr i8 %7, 1
  %9 = and i8 %8, 2
  %10 = or i8 %6, %9
  %11 = and i8 %8, 1
  %12 = or i8 %11, %10
  store i8 %12, ptr %ctlreg, align 4
  %and21 = and i32 %ctrl, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %13 = and i8 %12, 107
  %14 = or i8 %12, 20
  %storemerge = select i1 %tobool22.not, i8 %13, i8 %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %dat)
  %cmp = icmp eq i32 %dat, 96
  %15 = or i8 %storemerge, -128
  %spec.select85 = select i1 %cmp, i8 %15, i8 %storemerge
  %16 = ptrtoint ptr %ctlreg to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select85, ptr %ctlreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %spec.select85) #10, !srcloc !154
  br label %if.end41

if.end41:                                         ; preds = %if.then3, %if.end.if.end41_crit_edge
  %19 = zext i32 %dat to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dat, label %if.end41.if.then57_crit_edge [
    i32 128, label %land.lhs.true
    i32 -1, label %if.end41.cleanup_crit_edge
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41.if.then57_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

land.lhs.true:                                    ; preds = %if.end41
  %ctlreg44 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %20 = ptrtoint ptr %ctlreg44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ctlreg44, align 4
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool47.not = icmp eq i8 %22, 0
  br i1 %tobool47.not, label %land.lhs.true.if.then57_crit_edge, label %if.then48

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then57

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %or51 = or i8 %21, -128
  %23 = ptrtoint ptr %ctlreg44 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or51, ptr %ctlreg44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i80 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %mmio.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i81, i8 %or51) #10, !srcloc !154
  br label %if.then57

if.then57:                                        ; preds = %if.then48, %land.lhs.true.if.then57_crit_edge, %if.end41.if.then57_crit_edge
  %conv58 = trunc i32 %dat to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i82 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %mmio.i82 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i82, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 %conv58) #10, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_wait(ptr noundef %chip) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %status, align 1, !annotation !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 9
  %add.neg = sub i32 -40, %3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.cond
  %5 = ptrtoint ptr %dev_ready to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_ready, align 4
  %call2 = tail call i32 %6(ptr noundef %chip) #10
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %call3 = call i32 @nand_status_op(ptr noundef %chip, ptr noundef nonnull %status) #10
  %dma_error = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %dma_error to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %while.end.if.end8_crit_edge, label %if.then5

while.end.if.end8_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status, align 1
  %11 = or i8 %10, 1
  store i8 %11, ptr %status, align 1
  %12 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma_error, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %while.end.if.end8_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %status, align 1
  %conv9 = zext i8 %14 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret i32 %conv9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_ready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %5 = xor i8 %4, -1
  %6 = lshr i8 %5, 7
  %.not = zext i8 %6 to i32
  ret i32 %.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @r852_read_byte(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memset(ptr %buf, i32 0, i32 %len)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %len)
  %cmp = icmp eq i32 %len, 512
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %dma_usable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %dma_usable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_usable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %land.lhs.true.while.body.lr.ph_crit_edge, label %if.then3

land.lhs.true.while.body.lr.ph_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_do_dma(ptr noundef %1, ptr noundef %buf, i32 noundef 1)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp543 = icmp sgt i32 %len, 3
  br i1 %cmp543, label %if.end4.while.body.lr.ph_crit_edge, label %if.end4.while.cond18.preheader_crit_edge

if.end4.while.cond18.preheader_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond18.preheader

if.end4.while.body.lr.ph_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end4.while.body.lr.ph_crit_edge, %land.lhs.true.while.body.lr.ph_crit_edge
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  br label %while.body

while.cond18.preheader:                           ; preds = %while.body.while.cond18.preheader_crit_edge, %if.end4.while.cond18.preheader_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %if.end4.while.cond18.preheader_crit_edge ], [ %incdec.ptr17, %while.body.while.cond18.preheader_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %if.end4.while.cond18.preheader_crit_edge ], [ %sub, %while.body.while.cond18.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %tobool19.not47 = icmp eq i32 %len.addr.0.lcssa, 0
  br i1 %tobool19.not47, label %while.cond18.preheader.cleanup_crit_edge, label %while.body20.lr.ph

while.cond18.preheader.cleanup_crit_edge:         ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body20.lr.ph:                               ; preds = %while.cond18.preheader
  %mmio.i42 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  br label %while.body20

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %len.addr.045 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %buf.addr.044 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr17, %while.body.while.body_crit_edge ]
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %conv = trunc i32 %9 to i8
  %incdec.ptr = getelementptr i8, ptr %buf.addr.044, i32 1
  %10 = ptrtoint ptr %buf.addr.044 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %buf.addr.044, align 1
  %shr = lshr i32 %9, 8
  %conv8 = trunc i32 %shr to i8
  %incdec.ptr9 = getelementptr i8, ptr %buf.addr.044, i32 2
  %11 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv8, ptr %incdec.ptr, align 1
  %shr10 = lshr i32 %9, 16
  %conv12 = trunc i32 %shr10 to i8
  %incdec.ptr13 = getelementptr i8, ptr %buf.addr.044, i32 3
  %12 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv12, ptr %incdec.ptr9, align 1
  %shr14 = lshr i32 %9, 24
  %conv16 = trunc i32 %shr14 to i8
  %incdec.ptr17 = getelementptr i8, ptr %buf.addr.044, i32 4
  %13 = ptrtoint ptr %incdec.ptr13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv16, ptr %incdec.ptr13, align 1
  %sub = add nsw i32 %len.addr.045, -4
  %cmp5 = icmp ugt i32 %len.addr.045, 7
  br i1 %cmp5, label %while.body.while.body_crit_edge, label %while.body.while.cond18.preheader_crit_edge

while.body.while.cond18.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond18.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body20:                                     ; preds = %while.body20.while.body20_crit_edge, %while.body20.lr.ph
  %len.addr.149 = phi i32 [ %len.addr.0.lcssa, %while.body20.lr.ph ], [ %dec, %while.body20.while.body20_crit_edge ]
  %buf.addr.148 = phi ptr [ %buf.addr.0.lcssa, %while.body20.lr.ph ], [ %incdec.ptr22, %while.body20.while.body20_crit_edge ]
  %dec = add i32 %len.addr.149, -1
  %14 = ptrtoint ptr %mmio.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i42, align 4
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %incdec.ptr22 = getelementptr i8, ptr %buf.addr.148, i32 1
  %17 = ptrtoint ptr %buf.addr.148 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %buf.addr.148, align 1
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %while.body20.cleanup_crit_edge, label %while.body20.while.body20_crit_edge

while.body20.while.body20_crit_edge:              ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body20

while.body20.cleanup_crit_edge:                   ; preds = %while.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %while.body20.cleanup_crit_edge, %while.cond18.preheader.cleanup_crit_edge, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %len)
  %cmp = icmp eq i32 %len, 512
  br i1 %cmp, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %dma_usable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dma_usable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_usable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.while.body.lr.ph_crit_edge, label %if.then3

land.lhs.true.while.body.lr.ph_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_do_dma(ptr noundef %1, ptr noundef %buf, i32 noundef 0)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp537 = icmp sgt i32 %len, 3
  br i1 %cmp537, label %if.end4.while.body.lr.ph_crit_edge, label %if.end4.while.cond16.preheader_crit_edge

if.end4.while.cond16.preheader_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond16.preheader

if.end4.while.body.lr.ph_crit_edge:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end4.while.body.lr.ph_crit_edge, %land.lhs.true.while.body.lr.ph_crit_edge
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  br label %while.body

while.cond16.preheader:                           ; preds = %while.body.while.cond16.preheader_crit_edge, %if.end4.while.cond16.preheader_crit_edge
  %buf.addr.0.lcssa = phi ptr [ %buf, %if.end4.while.cond16.preheader_crit_edge ], [ %add.ptr, %while.body.while.cond16.preheader_crit_edge ]
  %len.addr.0.lcssa = phi i32 [ %len, %if.end4.while.cond16.preheader_crit_edge ], [ %sub, %while.body.while.cond16.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0.lcssa)
  %cmp1741 = icmp sgt i32 %len.addr.0.lcssa, 0
  br i1 %cmp1741, label %while.body19.lr.ph, label %while.cond16.preheader.cleanup_crit_edge

while.cond16.preheader.cleanup_crit_edge:         ; preds = %while.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body19.lr.ph:                               ; preds = %while.cond16.preheader
  %mmio.i36 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  br label %while.body19

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %len.addr.039 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %buf.addr.038 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %while.body.while.body_crit_edge ]
  %6 = ptrtoint ptr %buf.addr.038 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.addr.038, align 1
  %conv = zext i8 %7 to i32
  %arrayidx6 = getelementptr i8, ptr %buf.addr.038, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %conv
  %arrayidx8 = getelementptr i8, ptr %buf.addr.038, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %or, %shl10
  %arrayidx12 = getelementptr i8, ptr %buf.addr.038, i32 3
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %13 to i32
  %shl14 = shl nuw i32 %conv13, 24
  %or15 = or i32 %or11, %shl14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %or15) #10, !srcloc !158
  %add.ptr = getelementptr i8, ptr %buf.addr.038, i32 4
  %sub = add nsw i32 %len.addr.039, -4
  %cmp5 = icmp ugt i32 %len.addr.039, 7
  br i1 %cmp5, label %while.body.while.body_crit_edge, label %while.body.while.cond16.preheader_crit_edge

while.body.while.cond16.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond16.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body19:                                     ; preds = %while.body19.while.body19_crit_edge, %while.body19.lr.ph
  %len.addr.143 = phi i32 [ %len.addr.0.lcssa, %while.body19.lr.ph ], [ %dec, %while.body19.while.body19_crit_edge ]
  %buf.addr.142 = phi ptr [ %buf.addr.0.lcssa, %while.body19.lr.ph ], [ %incdec.ptr, %while.body19.while.body19_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.142, i32 1
  %16 = ptrtoint ptr %buf.addr.142 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buf.addr.142, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %mmio.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i36, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %17) #10, !srcloc !154
  %dec = add nsw i32 %len.addr.143, -1
  %cmp17 = icmp ugt i32 %len.addr.143, 1
  br i1 %cmp17, label %while.body19.while.body19_crit_edge, label %while.body19.cleanup_crit_edge

while.body19.cleanup_crit_edge:                   ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body19.while.body19_crit_edge:              ; preds = %while.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body19

cleanup:                                          ; preds = %while.body19.cleanup_crit_edge, %while.cond16.preheader.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_card_detect_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -196
  %irqlock.i = getelementptr i8, ptr %work, i32 124
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #10
  %mmio.i.i = getelementptr i8, ptr %work, i32 -100
  %0 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %3 = lshr i8 %2, 2
  %.lobit.i = and i8 %3, 1
  %4 = zext i8 %.lobit.i to i32
  %card_detected.i = getelementptr i8, ptr %work, i32 108
  %5 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %card_detected.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call2.i) #10
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i14 = getelementptr i8, ptr %7, i32 7
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i14) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %card_unstable.i = getelementptr i8, ptr %work, i32 112
  %9 = ptrtoint ptr %card_unstable.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %card_unstable.i, align 4
  %10 = and i8 %8, 115
  %11 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %cond.i = select i1 %tobool.not.i, i8 8, i8 4
  %13 = or i8 %10, %cond.i
  %or1.i = or i8 %13, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i, i8 %or1.i) #10, !srcloc !154
  %16 = ptrtoint ptr %card_unstable.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %card_unstable.i, align 4
  %17 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %card_detected.i, align 4
  %card_registered = getelementptr i8, ptr %work, i32 104
  %19 = ptrtoint ptr %card_registered to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %card_registered, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp = icmp eq i32 %18, %20
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #10
  %21 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i19 = icmp eq i32 %22, 0
  br i1 %tobool.not.i19, label %do.end7.i, label %if.end.i

do.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #14
  br label %r852_update_media_status.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %24, i32 5
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i21) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %26 = and i8 %25, 2
  %and.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %28, i32 9
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i45.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %conv14.i = zext i8 %29 to i32
  %and15.i = and i32 %conv14.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp ne i32 %and15.i, 0
  %and18.i = and i32 %conv14.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.i = icmp ne i32 %and18.i, 0
  %30 = and i1 %tobool16.not.i, %tobool19.i
  %land.ext.i = zext i1 %30 to i32
  %sm.i = getelementptr i8, ptr %work, i32 120
  %31 = ptrtoint ptr %sm.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %land.ext.i, ptr %sm.i, align 4
  %cond.i22 = select i1 %30, ptr @.str.34, ptr @.str.35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool26.not.i = icmp eq i8 %26, 0
  %cond27.i = select i1 %tobool26.not.i, ptr @.str.37, ptr @.str.36
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %cond.i22, ptr noundef nonnull %cond27.i) #14
  %readonly29.i = getelementptr i8, ptr %work, i32 116
  %32 = ptrtoint ptr %readonly29.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and.i, ptr %readonly29.i, align 4
  br label %r852_update_media_status.exit

r852_update_media_status.exit:                    ; preds = %if.end.i, %do.end7.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call2.i17) #10
  %33 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %r852_update_media_status.exit
  %chip.i = getelementptr i8, ptr %work, i32 -96
  %35 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chip.i, align 4
  %37 = ptrtoint ptr %card_registered to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %card_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i23 = icmp eq i32 %38, 0
  br i1 %tobool.not.i23, label %if.then2.if.end.i24_crit_edge, label %do.end.i, !prof !160

if.then2.if.end.i24_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i24

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 633, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i24

if.end.i24:                                       ; preds = %do.end.i, %if.then2.if.end.i24_crit_edge
  %pci_dev.i = getelementptr i8, ptr %work, i32 -92
  %39 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev.i, align 4
  %dev20.i = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  %dev21.i = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 56
  %parent.i = getelementptr inbounds %struct.mtd_info, ptr %36, i32 0, i32 56, i32 1
  %41 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %dev20.i, ptr %parent.i, align 8
  %readonly.i = getelementptr i8, ptr %work, i32 116
  %42 = ptrtoint ptr %readonly.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %readonly.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool22.not.i = icmp eq i32 %43, 0
  br i1 %tobool22.not.i, label %if.end.i24.if.end25.i_crit_edge, label %if.then23.i

if.end.i24.if.end25.i_crit_edge:                  ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chip.i, align 4
  %options.i = getelementptr inbounds %struct.nand_chip, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options.i, align 8
  %or.i = or i32 %47, 2048
  store i32 %or.i, ptr %options.i, align 8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end.i24.if.end25.i_crit_edge
  tail call fastcc void @r852_engine_enable(ptr noundef %add.ptr) #10
  %sm.i25 = getelementptr i8, ptr %work, i32 120
  %48 = ptrtoint ptr %sm.i25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sm.i25, align 4
  %call26.i = tail call i32 @sm_register_device(ptr noundef %36, i32 noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.error1.i_crit_edge

if.end25.i.error1.i_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error1.i

if.end29.i:                                       ; preds = %if.end25.i
  %call31.i = tail call i32 @device_create_file(ptr noundef %dev21.i, ptr noundef nonnull @dev_attr_media_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end39.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end29.i
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  %50 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chip.i, align 4
  %call44.i = tail call i32 @mtd_device_unregister(ptr noundef %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %do.end36.i.if.end67.i_crit_edge, label %do.end61.i, !prof !160

do.end36.i.if.end67.i_crit_edge:                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.end39.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %card_registered to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %card_registered, align 4
  br label %exit

do.end61.i:                                       ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 653, i32 noundef 9, ptr noundef null) #10
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end61.i, %do.end36.i.if.end67.i_crit_edge
  %53 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip.i, align 4
  tail call void @nand_cleanup(ptr noundef %54) #10
  br label %error1.i

error1.i:                                         ; preds = %if.end67.i, %if.end25.i.error1.i_crit_edge
  %55 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %card_detected.i, align 4
  br label %exit

if.else:                                          ; preds = %r852_update_media_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_unregister_nand_device(ptr noundef %add.ptr)
  br label %exit

exit:                                             ; preds = %if.else, %error1.i, %if.end39.i, %entry.exit_crit_edge
  %56 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %57, i32 7
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i28) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %59 = ptrtoint ptr %card_unstable.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %card_unstable.i, align 4
  %60 = and i8 %58, 115
  %61 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i31 = icmp eq i32 %62, 0
  %cond.i32 = select i1 %tobool.not.i31, i8 8, i8 4
  %63 = or i8 %60, %cond.i32
  %or1.i33 = or i8 %63, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i10.i34 = getelementptr i8, ptr %65, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i34, i8 %or1.i33) #10, !srcloc !154
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_engine_disable(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3, i8 8) #10, !srcloc !154
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_disable_irqs(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 7
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %3 = and i8 %2, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %5, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 %3) #10, !srcloc !154
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 24
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5 = and i32 %8, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %and5) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %12, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 7) #10, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_dma_test(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 9
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %2)
  %cmp = icmp ugt i8 %2, -65
  %conv1 = zext i1 %cmp to i32
  %dma_usable = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 12
  %3 = ptrtoint ptr %dma_usable to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1, ptr %dma_usable, align 4
  br i1 %cmp, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = load i8, ptr @r852_enable_dma, align 1, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %do.end7, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #14
  %5 = ptrtoint ptr %dma_usable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dma_usable, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end7, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_card_update_present(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 20
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %3 = lshr i8 %2, 2
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  %card_detected = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 16
  %5 = ptrtoint ptr %card_detected to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %card_detected, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irqlock = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 20
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 6
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i254 = getelementptr i8, ptr %4, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i254, i8 %2) #10, !srcloc !154
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end36, label %if.then

if.then:                                          ; preds = %entry
  %and2 = lshr i32 %conv, 3
  %and2.lobit = and i32 %and2, 1
  %card_detected = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 16
  %5 = ptrtoint ptr %card_detected to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2.lobit, ptr %card_detected, align 4
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 17
  %6 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %do.end, !prof !160

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 741, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 7
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %11 = and i8 %10, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %13, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %11) #10, !srcloc !154
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5.i = and i32 %16, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %18, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %and5.i) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %20, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 7) #10, !srcloc !158
  %23 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool30.not = icmp eq i32 %24, 0
  br i1 %tobool30.not, label %if.end32, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end32:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %card_unstable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %card_unstable, align 4
  %card_workqueue = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 14
  %26 = ptrtoint ptr %card_workqueue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card_workqueue, align 4
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %card_detect_work, i32 noundef 10) #10
  br label %out

if.end36:                                         ; preds = %entry
  %28 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i256 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %conv39 = and i32 %30, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i258 = getelementptr i8, ptr %32, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258, i32 %conv39) #10, !srcloc !158
  %and41 = and i32 %30, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end155, label %if.then43

if.then43:                                        ; preds = %if.end36
  %and45 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end65, label %if.then47

if.then47:                                        ; preds = %if.then43
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool48.not = icmp eq i32 %33, 0
  br i1 %tobool48.not, label %if.then47.if.end64_crit_edge, label %do.body50

if.then47.if.end64_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.body50:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_irq.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_irq, %if.then60)) #10
          to label %if.end64 [label %if.then60], !srcloc !162

if.then60:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_irq.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.50) #10
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %do.body50, %if.then47.if.end64_crit_edge
  tail call fastcc void @r852_dma_done(ptr noundef %data, i32 noundef -5)
  %dma_done = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %dma_done) #10
  br label %out

if.end65:                                         ; preds = %if.then43
  %dma_stage = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 9
  %34 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp = icmp eq i32 %35, 0
  br i1 %cmp, label %land.rhs, label %if.end65.if.end122_crit_edge

if.end65.if.end122_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

land.rhs:                                         ; preds = %if.end65
  %.b245 = load i1, ptr @r852_irq.__already_done, align 1
  br i1 %.b245, label %land.rhs.out_crit_edge, label %if.end110, !prof !160

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end110:                                        ; preds = %land.rhs
  store i1 true, ptr @r852_irq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 774, i32 noundef 9, ptr noundef null) #10
  %36 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %dma_stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp119 = icmp eq i32 %.pr, 0
  br i1 %cmp119, label %if.end110.out_crit_edge, label %if.end110.if.end122_crit_edge

if.end110.if.end122_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.end110.out_crit_edge:                          ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end122:                                        ; preds = %if.end110.if.end122_crit_edge, %if.end65.if.end122_crit_edge
  %37 = phi i32 [ %.pr, %if.end110.if.end122_crit_edge ], [ %35, %if.end65.if.end122_crit_edge ]
  %dma_state = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 10
  %38 = ptrtoint ptr %dma_state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp123 = icmp ne i32 %39, 0
  %and126 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %or.cond = select i1 %cmp123, i1 true, i1 %tobool127.not
  br i1 %or.cond, label %if.end122.if.end131_crit_edge, label %if.then128

if.end122.if.end131_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then128:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dma_state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %dma_state, align 4
  %inc = add i32 %37, 1
  %41 = ptrtoint ptr %dma_stage to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc, ptr %dma_stage, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then128, %if.end122.if.end131_crit_edge
  %42 = ptrtoint ptr %dma_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp133 = icmp ne i32 %43, 1
  %and137 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  %or.cond246 = select i1 %cmp133, i1 true, i1 %tobool138.not
  br i1 %or.cond246, label %if.end143thread-pre-split, label %if.then139

if.then139:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %dma_state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %dma_state, align 4
  %45 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_stage, align 4
  %inc142 = add i32 %46, 1
  store i32 %inc142, ptr %dma_stage, align 4
  br label %if.end143

if.end143thread-pre-split:                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr263 = load i32, ptr %dma_stage, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.end143thread-pre-split, %if.then139
  %48 = phi i32 [ %.pr263, %if.end143thread-pre-split ], [ %inc142, %if.then139 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp145 = icmp eq i32 %48, 2
  br i1 %cmp145, label %if.then147, label %if.end143.if.end148_crit_edge

if.end143.if.end148_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end148

if.then147:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_dma_enable(ptr noundef %data)
  br label %if.end148

if.end148:                                        ; preds = %if.then147, %if.end143.if.end148_crit_edge
  %49 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dma_stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %50)
  %cmp150 = icmp eq i32 %50, 3
  br i1 %cmp150, label %if.then152, label %if.end148.out_crit_edge

if.end148.out_crit_edge:                          ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then152:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_dma_done(ptr noundef %data, i32 noundef 0)
  %dma_done153 = getelementptr inbounds %struct.r852_device, ptr %data, i32 0, i32 5
  tail call void @complete(ptr noundef %dma_done153) #10
  br label %out

if.end155:                                        ; preds = %if.end36
  %conv38 = trunc i32 %30 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv38)
  %tobool156.not = icmp eq i8 %conv38, 0
  br i1 %tobool156.not, label %if.end155.if.end178_crit_edge, label %if.then157

if.end155.if.end178_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

if.then157:                                       ; preds = %if.end155
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool158.not = icmp eq i32 %51, 0
  br i1 %tobool158.not, label %if.then157.if.end178_crit_edge, label %do.body160

if.then157.if.end178_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end178

do.body160:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_irq.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_irq, %if.then172)) #10
          to label %if.end178 [label %if.then172], !srcloc !162

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_irq.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.52, i32 noundef %conv39) #10
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %do.body160, %if.then157.if.end178_crit_edge, %if.end155.if.end178_crit_edge
  %and180 = and i32 %conv, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.end178.out_crit_edge, label %if.then182

if.end178.out_crit_edge:                          ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then182:                                       ; preds = %if.end178
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool183.not = icmp eq i32 %52, 0
  br i1 %tobool183.not, label %if.then182.out_crit_edge, label %do.body185

if.then182.out_crit_edge:                         ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body185:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_irq.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_irq, %if.then197)) #10
          to label %out [label %if.then197], !srcloc !162

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_irq.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.54, i32 noundef %conv) #10
  br label %out

out:                                              ; preds = %if.then197, %do.body185, %if.then182.out_crit_edge, %if.end178.out_crit_edge, %if.then152, %if.end148.out_crit_edge, %if.end110.out_crit_edge, %land.rhs.out_crit_edge, %if.end64, %if.end32, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 1, %if.end.out_crit_edge ], [ 1, %if.end32 ], [ 1, %if.end64 ], [ 1, %if.end110.out_crit_edge ], [ 1, %if.then152 ], [ 1, %if.end148.out_crit_edge ], [ 0, %if.then197 ], [ 0, %if.then182.out_crit_edge ], [ 0, %if.end178.out_crit_edge ], [ 0, %do.body185 ], [ 1, %land.rhs.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #10
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_status_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_do_dma(ptr noundef %dev, ptr noundef %buf, i32 noundef %do_read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_error = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma_error, align 4
  %dma_dir = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %do_read, ptr %dma_dir, align 4
  %dma_stage = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %dma_stage to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %dma_stage, align 4
  %dma_done = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %dma_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dma_done, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %do.body, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_do_dma.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_do_dma, %if.then3)) #10
          to label %if.end5 [label %if.then3], !srcloc !162

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_read)
  %tobool4.not = icmp eq i32 %do_read, 0
  %cond = select i1 %tobool4.not, ptr @.str.14, ptr @.str.13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_do_dma.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %do.body, %entry.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_read)
  %tobool6.not = icmp eq i32 %do_read, 0
  %cond7 = zext i1 %tobool6.not to i32
  %dma_state = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 10
  %5 = ptrtoint ptr %dma_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond7, ptr %dma_state, align 4
  %6 = ptrtoint ptr %buf to i32
  %and = and i32 %6, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then12, label %if.end5.if.then26_crit_edge

if.end5.if.then26_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then12:                                        ; preds = %if.end5
  %pci_dev = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 3
  %7 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_dev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #10
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then12
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !160

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev13) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #10
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %cond15 = select i1 %tobool6.not, i32 1, i32 2
  tail call void @debug_dma_map_single(ptr noundef %dev13, ptr noundef %buf, i32 noundef 512) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %6, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %6, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev13, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 512, i32 noundef %cond15, i32 noundef 0) #10
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i104 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %phys_dma_addr = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %phys_dma_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i104, ptr %phys_dma_addr, align 4
  %15 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci_dev, align 4
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev18, i32 noundef %retval.0.i104) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i104)
  %cmp.i = icmp eq i32 %retval.0.i104, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then26_crit_edge, label %dma_map_single_attrs.exit.do.body52_crit_edge

dma_map_single_attrs.exit.do.body52_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

dma_map_single_attrs.exit.if.then26_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %dma_map_single_attrs.exit.if.then26_crit_edge, %if.end5.if.then26_crit_edge
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp27 = icmp sgt i32 %17, 1
  br i1 %cmp27, label %do.body29, label %if.then26.if.end45_crit_edge

if.then26.if.end45_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

do.body29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_do_dma.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_do_dma, %if.then41)) #10
          to label %if.end45 [label %if.then41], !srcloc !162

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_do_dma.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.16) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %do.body29, %if.then26.if.end45_crit_edge
  %phys_bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 6
  %18 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys_bounce_buffer, align 4
  %phys_dma_addr46 = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %phys_dma_addr46 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %phys_dma_addr46, align 4
  br i1 %tobool6.not, label %if.then48, label %if.end45.do.body52_crit_edge

if.end45.do.body52_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  %bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 7
  %21 = ptrtoint ptr %bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bounce_buffer, align 4
  %23 = call ptr @memcpy(ptr %22, ptr %buf, i32 512)
  br label %do.body52

do.body52:                                        ; preds = %if.then48, %if.end45.do.body52_crit_edge, %dma_map_single_attrs.exit.do.body52_crit_edge
  %tobool25.not110 = phi i1 [ false, %if.end45.do.body52_crit_edge ], [ false, %if.then48 ], [ true, %dma_map_single_attrs.exit.do.body52_crit_edge ]
  %irqlock = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 20
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #10
  tail call fastcc void @r852_dma_enable(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call56) #10
  %call1.i = tail call i32 @wait_for_completion_timeout(ptr noundef %dma_done, i32 noundef 100) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then.i105, label %if.end65

if.then.i105:                                     ; preds = %do.body52
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i, label %if.then.i105.if.then64_crit_edge, label %do.body.i

if.then.i105.if.then64_crit_edge:                 ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then64

do.body.i:                                        ; preds = %if.then.i105
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_dma_wait.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_do_dma, %if.then8.i)) #10
          to label %if.then64 [label %if.then8.i], !srcloc !162

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_dma_wait.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.21) #10
  br label %if.then64

if.then64:                                        ; preds = %if.then8.i, %do.body.i, %if.then.i105.if.then64_crit_edge
  tail call fastcc void @r852_dma_done(ptr noundef %dev, i32 noundef -110)
  br label %cleanup

if.end65:                                         ; preds = %do.body52
  %brmerge = or i1 %tobool6.not, %tobool25.not110
  br i1 %brmerge, label %if.end65.cleanup_crit_edge, label %if.then68

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  %bounce_buffer69 = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 7
  %25 = ptrtoint ptr %bounce_buffer69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bounce_buffer69, align 4
  %27 = call ptr @memcpy(ptr %buf, ptr %26, i32 512)
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end65.cleanup_crit_edge, %if.then64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_dma_enable(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %3 = trunc i32 %2 to i8
  %conv2 = and i8 %3, -8
  %dma_dir = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %6 = or i8 %conv2, 2
  %spec.select = select i1 %tobool.not, i8 %conv2, i8 %6
  %dma_state = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %dma_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = or i8 %spec.select, 4
  %phys_bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %phys_bounce_buffer, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 %12) #10, !srcloc !158
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = or i8 %spec.select, 1
  %phys_dma_addr = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %phys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_dma_addr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %18) #10, !srcloc !158
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then6
  %dma_reg.1 = phi i8 [ %9, %if.then6 ], [ %15, %if.else ]
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %22, i32 12
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %conv15 = zext i8 %dma_reg.1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %25, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %conv15) #10, !srcloc !158
  %26 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %27, i32 24
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %conv18 = and i32 %28, 248
  %or21 = or i32 %conv18, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %or21) #10, !srcloc !158
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_dma_done(ptr nocapture noundef %dev, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_stage = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %dma_stage to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_stage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !163

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 132, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %4) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #10, !srcloc !158
  %phys_bounce_buffer = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys_bounce_buffer, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %15, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %13) #10, !srcloc !158
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %dma_error = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 11
  %19 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %error, ptr %dma_error, align 4
  %20 = ptrtoint ptr %dma_stage to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dma_stage, align 4
  %phys_dma_addr = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %phys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool21.not = icmp eq i32 %22, 0
  br i1 %tobool21.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %23 = ptrtoint ptr %phys_bounce_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys_bounce_buffer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp24.not = icmp eq i32 %22, %24
  br i1 %cmp24.not, label %land.lhs.true.if.end29_crit_edge, label %if.then25

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %pci_dev = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %dma_dir = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool28.not = icmp eq i32 %28, 0
  %cond = select i1 %tobool28.not, i32 1, i32 2
  tail call void @dma_unmap_page_attrs(ptr noundef %dev26, i32 noundef %22, i32 noundef 512, i32 noundef %cond, i32 noundef 0) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @r852_attach_chip(ptr nocapture noundef %chip) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ecc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %placement = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 1
  %2 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %placement, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 512, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 5
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 7
  %5 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %strength, align 4
  %hwctl = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 13
  %6 = ptrtoint ptr %hwctl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @r852_ecc_hwctl, ptr %hwctl, align 4
  %calculate = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 14
  %7 = ptrtoint ptr %calculate to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @r852_ecc_calculate, ptr %calculate, align 8
  %correct = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 15
  %8 = ptrtoint ptr %correct to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @r852_ecc_correct, ptr %correct, align 4
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 33, i32 24
  %9 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @r852_read_oob, ptr %read_oob, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @r852_ecc_hwctl(ptr nocapture noundef readonly %chip, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %mode, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge28
    i32 2, label %sw.bb9
  ]

if.end.sw.bb_crit_edge28:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge28
  %ctlreg = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctlreg, align 4
  %7 = or i8 %6, 32
  store i8 %7, ptr %ctlreg, align 4
  %8 = or i8 %6, 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %8) #10, !srcloc !154
  %11 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %14 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ctlreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i25, i8 %15) #10, !srcloc !154
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ctlreg10 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %ctlreg10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ctlreg10, align 4
  %20 = and i8 %19, -33
  store i8 %20, ptr %ctlreg10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i26 = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %mmio.i26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i27, i8 %20) #10, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_ecc_calculate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %dat, ptr nocapture noundef writeonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ctlreg = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctlreg, align 4
  %6 = and i8 %5, -33
  store i8 %6, ptr %ctlreg, align 4
  %7 = or i8 %6, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %7) #10, !srcloc !154
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %13 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %conv9 = trunc i32 %12 to i8
  %ecc110 = getelementptr inbounds %struct.sm_oob, ptr %ecc_code, i32 0, i32 6
  %16 = ptrtoint ptr %ecc110 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv9, ptr %ecc110, align 1
  %shr = lshr i32 %12, 8
  %conv12 = trunc i32 %shr to i8
  %arrayidx14 = getelementptr %struct.sm_oob, ptr %ecc_code, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv12, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %12, 16
  %conv17 = trunc i32 %shr15 to i8
  %arrayidx19 = getelementptr %struct.sm_oob, ptr %ecc_code, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv17, ptr %arrayidx19, align 1
  %conv21 = trunc i32 %15 to i8
  %ecc222 = getelementptr inbounds %struct.sm_oob, ptr %ecc_code, i32 0, i32 4
  %19 = ptrtoint ptr %ecc222 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv21, ptr %ecc222, align 1
  %shr24 = lshr i32 %15, 8
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx28 = getelementptr %struct.sm_oob, ptr %ecc_code, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv26, ptr %arrayidx28, align 1
  %shr29 = lshr i32 %15, 16
  %conv31 = trunc i32 %shr29 to i8
  %arrayidx33 = getelementptr %struct.sm_oob, ptr %ecc_code, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv31, ptr %arrayidx33, align 1
  %22 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ctlreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i57, i8 %23) #10, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_ecc_correct(ptr nocapture noundef readonly %chip, ptr nocapture noundef %dat, ptr nocapture noundef readnone %read_ecc, ptr nocapture noundef readnone %calc_ecc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %card_unstable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_unstable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dma_error = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %dma_error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %dma_error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dma_error, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %ctlreg = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ctlreg, align 4
  %9 = or i8 %8, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %9) #10, !srcloc !154
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %15 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ctlreg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 %16) #10, !srcloc !154
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %if.end5
  %dat.addr.0100 = phi ptr [ %dat, %if.end5 ], [ %add.ptr, %if.end57.for.body_crit_edge ]
  %ecc_reg.097 = phi i32 [ %14, %if.end5 ], [ %shr58, %if.end57.for.body_crit_edge ]
  %error.096 = phi i32 [ 0, %if.end5 ], [ %error.1, %if.end57.for.body_crit_edge ]
  %cmp = phi i1 [ true, %if.end5 ], [ false, %if.end57.for.body_crit_edge ]
  %i.093 = phi i32 [ 0, %if.end5 ], [ 1, %if.end57.for.body_crit_edge ]
  %shr = lshr i32 %ecc_reg.097, 8
  %19 = and i32 %ecc_reg.097, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.end24, label %if.then14

if.then14:                                        ; preds = %for.body
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %do.body

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_ecc_correct.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_ecc_correct, %if.then21)) #10
          to label %cleanup [label %if.then21], !srcloc !162

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_ecc_correct.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.25, i32 noundef %i.093) #10
  br label %cleanup

if.end24:                                         ; preds = %for.body
  %21 = and i32 %ecc_reg.097, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not = icmp eq i32 %21, 0
  br i1 %tobool27.not, label %if.end24.if.end57_crit_edge, label %if.then28

if.end24.if.end57_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then28:                                        ; preds = %if.end24
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  br i1 %tobool31.not, label %if.then28.if.end52_crit_edge, label %do.body33

if.then28.if.end52_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.body33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_ecc_correct.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_ecc_correct, %if.then45)) #10
          to label %if.end52 [label %if.then45], !srcloc !162

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %conv46 = and i32 %ecc_reg.097, 255
  %and48 = and i32 %shr, 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_ecc_correct.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.27, i32 noundef %i.093, i32 noundef %conv46, i32 noundef %and48) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then45, %do.body33, %if.then28.if.end52_crit_edge
  %and54 = and i32 %shr, 7
  %shl = shl nuw nsw i32 1, %and54
  %idxprom = and i32 %ecc_reg.097, 255
  %arrayidx = getelementptr i8, ptr %dat.addr.0100, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = trunc i32 %shl to i8
  %conv56 = xor i8 %24, %25
  store i8 %conv56, ptr %arrayidx, align 1
  %inc = add i32 %error.096, 1
  br label %if.end57

if.end57:                                         ; preds = %if.end52, %if.end24.if.end57_crit_edge
  %error.1 = phi i32 [ %inc, %if.end52 ], [ %error.096, %if.end24.if.end57_crit_edge ]
  %add.ptr = getelementptr i8, ptr %dat.addr.0100, i32 256
  %shr58 = lshr i32 %ecc_reg.097, 16
  br i1 %cmp, label %if.end57.for.body_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %if.end57.cleanup_crit_edge, %if.then21, %do.body, %if.then14.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ -74, %if.then21 ], [ -74, %if.then14.cleanup_crit_edge ], [ -74, %do.body ], [ %error.1, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %1, i32 noundef %3) #10
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_unregister_nand_device(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 2
  %card_registered = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %card_registered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card_registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dev1 = getelementptr inbounds %struct.mtd_info, ptr %3, i32 0, i32 56
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_media_type) #10
  %call2 = tail call i32 @mtd_device_unregister(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end18_crit_edge, label %do.end, !prof !160

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 673, i32 noundef 9, ptr noundef null) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  tail call void @nand_cleanup(ptr noundef %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %mmio.i.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 8) #10, !srcloc !154
  %10 = ptrtoint ptr %card_registered to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %card_registered, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @r852_engine_enable(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr inbounds %struct.r852_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmio.i, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i7 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 12) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 1) #10, !srcloc !158
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i11 = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 1) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13, i8 12) #10, !srcloc !154
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @msleep(i32 noundef 300) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15, i8 0) #10, !srcloc !154
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @media_type_show(ptr nocapture noundef readonly %sys_dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr i8, ptr %sys_dev, i32 1912
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 8
  %sm = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %sm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.42, ptr @.str.41
  %call1 = tail call ptr @strcpy(ptr noundef %buf, ptr noundef nonnull %cond) #15
  %4 = select i1 %tobool.not, i32 2, i32 10
  ret i32 %4
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_suspend(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctlreg = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ctlreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctlreg, align 4
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 13
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %card_detect_work) #10
  %mmio.i.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 7
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %8 = and i8 %7, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %10, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %8) #10, !srcloc !154
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %12, i32 24
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5.i = and i32 %13, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %15, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %and5.i) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %16 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %17, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 7) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i7, i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 8) #10, !srcloc !154
  %card_unstable = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %card_unstable to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %card_unstable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @r852_resume(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mmio.i.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 7
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %5 = and i8 %4, -30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %7, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i13.i, i8 %5) #10, !srcloc !154
  %8 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %9, i32 24
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !155
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  %and5.i = and i32 %10, 248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %and5.i) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %14, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19.i, i8 29) #10, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 7) #10, !srcloc !158
  %irqlock.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 20
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock.i) #10
  %17 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %18, i32 5
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i35) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %20 = lshr i8 %19, 2
  %.lobit.i = and i8 %20, 1
  %21 = zext i8 %.lobit.i to i32
  %card_detected.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 16
  %22 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %card_detected.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock.i, i32 noundef %call2.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i37, i32 0) #10, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 8) #10, !srcloc !154
  %27 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %card_detected.i, align 4
  %card_registered = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 15
  %29 = ptrtoint ptr %card_registered to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %card_registered, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.not = icmp eq i32 %28, %30
  br i1 %cmp.not, label %if.end12, label %if.then

if.then:                                          ; preds = %entry
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.then.if.end9_crit_edge, label %do.body

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @r852_resume.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@r852_resume, %if.then6)) #10
          to label %if.end9 [label %if.then6], !srcloc !162

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool8.not = icmp eq i32 %33, 0
  %cond = select i1 %tobool8.not, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @r852_resume.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %do.body, %if.then.if.end9_crit_edge
  %card_workqueue = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 14
  %34 = ptrtoint ptr %card_workqueue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card_workqueue, align 4
  %card_detect_work = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 13
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %card_detect_work, i32 noundef 100) #10
  br label %cleanup

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool14.not = icmp eq i32 %28, 0
  br i1 %tobool14.not, label %if.end12.if.end19_crit_edge, label %if.then15

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @r852_engine_enable(ptr noundef %1)
  %chip = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  tail call void @nand_select_target(ptr noundef %37, i32 noundef 0) #10
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %call17 = tail call i32 @nand_reset_op(ptr noundef %39) #10
  %40 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip, align 4
  tail call void @nand_deselect_target(ptr noundef %41) #10
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end12.if.end19_crit_edge
  %42 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %43, i32 7
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i39) #10, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %card_unstable.i = getelementptr inbounds %struct.r852_device, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %card_unstable.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %card_unstable.i, align 4
  %46 = and i8 %44, 115
  %47 = ptrtoint ptr %card_detected.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %card_detected.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  %cond.i = select i1 %tobool.not.i, i8 8, i8 4
  %49 = or i8 %46, %cond.i
  %or1.i = or i8 %49, -128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %51, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i10.i, i8 %or1.i) #10, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_select_target(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_reset_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_deselect_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !25, !26, !27, !29, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !127, !128, !129, !131, !132, !133, !135, !137, !138, !139, !140, !141}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !{ptr @__param_r852_enable_dma, !1, !"__param_r852_enable_dma", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/r852.c", i32 26, i32 1}
!2 = !{ptr @__UNIQUE_ID_r852_enable_dmatype251, !1, !"__UNIQUE_ID_r852_enable_dmatype251", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_r852_enable_dma252, !4, !"__UNIQUE_ID_r852_enable_dma252", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/r852.c", i32 27, i32 1}
!5 = !{ptr @__param_debug, !6, !"__param_debug", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/r852.c", i32 30, i32 1}
!7 = !{ptr @__UNIQUE_ID_debugtype253, !6, !"__UNIQUE_ID_debugtype253", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_debug254, !9, !"__UNIQUE_ID_debug254", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/r852.c", i32 31, i32 1}
!10 = !{ptr @__initcall__kmod_r852__264_1087_r852_pci_driver_init6, !11, !"__initcall__kmod_r852__264_1087_r852_pci_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1087, i32 1}
!12 = !{ptr @__exitcall_r852_pci_driver_exit, !11, !"__exitcall_r852_pci_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file265, !14, !"__UNIQUE_ID_file265", i1 false, i1 false}
!14 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1089, i32 1}
!15 = !{ptr @__UNIQUE_ID_license266, !14, !"__UNIQUE_ID_license266", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author267, !17, !"__UNIQUE_ID_author267", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1090, i32 1}
!18 = !{ptr @__UNIQUE_ID_description268, !19, !"__UNIQUE_ID_description268", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1091, i32 1}
!20 = !{ptr @debug, !21, !"debug", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/r852.c", i32 29, i32 12}
!22 = !{ptr @__param_str_r852_enable_dma, !1, !"__param_str_r852_enable_dma", i1 false, i1 false}
!23 = !{ptr @r852_enable_dma, !24, !"r852_enable_dma", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/r852.c", i32 25, i32 13}
!25 = !{ptr @__param_str_debug, !6, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @r852_pci_driver, !28, !"r852_pci_driver", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1078, i32 26}
!29 = !{ptr @r852_pci_id_tbl, !30, !"r852_pci_id_tbl", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1068, i32 35}
!31 = !{ptr @.str.1, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/r852.c", i32 918, i32 24}
!33 = !{ptr @r852_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/mtd/nand/raw/r852.c", i32 923, i32 2}
!35 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @r852_probe.__key.3, !34, !"__key", i1 false, i1 false}
!37 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @r852_probe.__key.5, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/r852.c", i32 932, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/r852.c", i32 948, i32 2}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @r852_probe._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @r852_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/r852.c", i32 185, i32 2}
!49 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @r852_do_dma.__UNIQUE_ID_ddebug256, !48, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!51 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/r852.c", i32 204, i32 3}
!56 = !{ptr @r852_do_dma.__UNIQUE_ID_ddebug257, !55, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/nand/raw/r852.c", i32 162, i32 3}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @r852_dma_wait.__UNIQUE_ID_ddebug255, !63, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!66 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @nand_controller_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../include/linux/mtd/rawnand.h", i32 1105, i32 2}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @r852_ops, !71, !"r852_ops", i1 false, i1 false}
!71 = !{!"../drivers/mtd/nand/raw/r852.c", i32 837, i32 41}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/nand/raw/r852.c", i32 489, i32 4}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @r852_ecc_correct.__UNIQUE_ID_ddebug258, !73, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!76 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/nand/raw/r852.c", i32 498, i32 4}
!79 = !{ptr @r852_ecc_correct.__UNIQUE_ID_ddebug259, !78, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!80 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @init_completion.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../include/linux/completion.h", i32 87, i32 2}
!83 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/r852.c", i32 608, i32 3}
!86 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @r852_update_media_status._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @r852_update_media_status._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/nand/raw/r852.c", i32 617, i32 2}
!91 = !{ptr @r852_update_media_status._entry.31, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @r852_update_media_status._entry_ptr.33, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/r852.c", i32 646, i32 3}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @r852_register_nand_device._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @r852_register_nand_device._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/nand/raw/r852.c", i32 596, i32 8}
!104 = !{ptr @dev_attr_media_type, !103, !"dev_attr_media_type", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/nand/raw/r852.c", i32 591, i32 25}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/nand/raw/r852.c", i32 591, i32 40}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/nand/raw/r852.c", i32 77, i32 3}
!111 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @r852_dma_test._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @r852_dma_test._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/r852.c", i32 80, i32 3}
!116 = !{ptr @r852_dma_test._entry.45, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @r852_dma_test._entry_ptr.47, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mtd/nand/raw/r852.c", i32 767, i32 4}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @r852_irq.__UNIQUE_ID_ddebug260, !119, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!122 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../drivers/mtd/nand/raw/r852.c", i32 774, i32 3}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/nand/raw/r852.c", i32 808, i32 3}
!127 = !{ptr @r852_irq.__UNIQUE_ID_ddebug261, !126, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!128 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/nand/raw/r852.c", i32 811, i32 3}
!131 = !{ptr @r852_irq.__UNIQUE_ID_ddebug262, !130, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!132 = !{ptr @.str.54, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @r852_pm_ops, !134, !"r852_pm_ops", i1 false, i1 false}
!134 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1076, i32 8}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/nand/raw/r852.c", i32 1046, i32 3}
!137 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @r852_resume.__UNIQUE_ID_ddebug263, !136, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!139 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 1, !"min_enum_size", i32 4}
!144 = !{i32 8, !"branch-target-enforcement", i32 0}
!145 = !{i32 8, !"sign-return-address", i32 0}
!146 = !{i32 8, !"sign-return-address-all", i32 0}
!147 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!148 = !{i32 7, !"uwtable", i32 1}
!149 = !{i32 7, !"frame-pointer", i32 2}
!150 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!151 = !{i64 4639744}
!152 = !{i64 2154833009}
!153 = !{i64 2154833396}
!154 = !{i64 4639349}
!155 = !{i64 4639964}
!156 = !{i64 2154834719}
!157 = !{i64 2154835278}
!158 = !{i64 4639546}
!159 = !{!"auto-init"}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i8 0, i8 2}
!162 = !{i64 2148715169, i64 2148715174, i64 2148715187, i64 2148715231, i64 2148715265, i64 2148715286}
!163 = !{!"branch_weights", i32 1, i32 2000}
