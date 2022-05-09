; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/cafe_nand.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/cafe_nand.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtd_ooblayout_ops = type { ptr, ptr }
%struct.nand_bbt_descr = type { i32, [8 x i32], i32, i32, [8 x i8], i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.75, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.75 = type { ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.74 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.74 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.81, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
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
%struct.cafe_priv = type { %struct.nand_chip, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.rs_codec = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.list_head }
%struct.mtd_oob_region = type { i32, i32 }

@__param_str_usedma = internal constant [17 x i8] c"cafe_nand.usedma\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@usedma = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_usedma = internal constant %struct.kernel_param { ptr @__param_str_usedma, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @usedma } }, section "__param", align 4
@__UNIQUE_ID_usedmatype251 = internal constant [30 x i8] c"cafe_nand.parmtype=usedma:int\00", section ".modinfo", align 1
@__param_str_skipbbt = internal constant [18 x i8] c"cafe_nand.skipbbt\00", align 1
@skipbbt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_skipbbt = internal constant %struct.kernel_param { ptr @__param_str_skipbbt, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @skipbbt } }, section "__param", align 4
@__UNIQUE_ID_skipbbttype252 = internal constant [31 x i8] c"cafe_nand.parmtype=skipbbt:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [16 x i8] c"cafe_nand.debug\00", align 1
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype253 = internal constant [29 x i8] c"cafe_nand.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_regdebug = internal constant [19 x i8] c"cafe_nand.regdebug\00", align 1
@regdebug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_regdebug = internal constant %struct.kernel_param { ptr @__param_str_regdebug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @regdebug } }, section "__param", align 4
@__UNIQUE_ID_regdebugtype254 = internal constant [32 x i8] c"cafe_nand.parmtype=regdebug:int\00", section ".modinfo", align 1
@__param_str_checkecc = internal constant [19 x i8] c"cafe_nand.checkecc\00", align 1
@checkecc = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_checkecc = internal constant %struct.kernel_param { ptr @__param_str_checkecc, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @checkecc } }, section "__param", align 4
@__UNIQUE_ID_checkecctype255 = internal constant [32 x i8] c"cafe_nand.parmtype=checkecc:int\00", section ".modinfo", align 1
@__param_str_timing = internal constant [17 x i8] c"cafe_nand.timing\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_timing = internal constant %struct.kparam_array { i32 3, i32 4, ptr @numtimings, ptr @param_ops_int, ptr @timing }, align 4
@__param_timing = internal constant %struct.kernel_param { ptr @__param_str_timing, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @__param_arr_timing } }, section "__param", align 4
@__UNIQUE_ID_timingtype256 = internal constant [39 x i8] c"cafe_nand.parmtype=timing:array of int\00", section ".modinfo", align 1
@__initcall__kmod_cafe_nand__278_883_cafe_nand_pci_driver_init6 = internal global ptr @cafe_nand_pci_driver_init, section ".initcall6.init", align 4
@cafe_nand_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @cafe_nand_tbl, ptr @cafe_nand_probe, ptr @cafe_nand_remove, ptr null, ptr @cafe_nand_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cafe_nand_pci_driver_exit = internal global ptr @cafe_nand_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file279 = internal constant [46 x i8] c"cafe_nand.file=drivers/mtd/nand/raw/cafe_nand\00", section ".modinfo", align 1
@__UNIQUE_ID_license280 = internal constant [22 x i8] c"cafe_nand.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author281 = internal constant [55 x i8] c"cafe_nand.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description282 = internal constant [60 x i8] c"cafe_nand.description=NAND flash driver for OLPC CAF\C3\89 chip\00", section ".modinfo", align 1
@numtimings = internal global { i32, [28 x i8] } zeroinitializer, align 32
@timing = internal global { [3 x i32], [20 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cafe_nand\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CAF\C3\89 NAND\00", [21 x i8] zeroinitializer }, align 32
@cafe_nand_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4523, i32 16640, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 692, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"failed to iomap\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cafe_nand_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/cafe_nand.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry_ptr = internal global ptr @cafe_nand_probe._entry, section ".printk_index", align 4
@cafe_nand_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%d timing register values ignored; precisely three are required\0A\00", [63 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry_ptr.9 = internal global ptr @cafe_nand_probe._entry.7, section ".printk_index", align 4
@cafe_nand_probe.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Using provided timings (%08x %08x %08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@cafe_nand_probe.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.11, i8 0, i8 -73, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Timing registers already set (%08x %08x %08x)\0A\00", [49 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Timing registers unset; using most conservative defaults\0A\00", [38 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry_ptr.14 = internal global ptr @cafe_nand_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CAFE NAND\00", [22 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 753, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not register IRQ %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cafe_nand_probe._entry_ptr.18 = internal global ptr @cafe_nand_probe._entry.16, section ".printk_index", align 4
@cafe_nand_probe.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.19, i8 0, i8 -63, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Control %x, IRQ mask %x\0A\00", [39 x i8] zeroinitializer }, align 32
@cafe_nand_controller_ops = internal constant { %struct.nand_controller_ops, [16 x i8] } { %struct.nand_controller_ops { ptr @cafe_nand_attach_chip, ptr @cafe_nand_detach_chip, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@part_probes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.52, ptr @.str.53, ptr null], [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cafe_nand_cmdfunc\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmdfunc %02x, 0x%x, 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 44, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Continue command, ctl1 %08x, #data %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.23, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Setup for delayed command, ctl1 %08x, dlen %x\0A\00", [49 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.24, i8 0, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlen %x, ctl1 %x, ctl2 %x\0A\00", [37 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.4, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"About to write command %08x to register 0\0A\00", [53 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc._entry_ptr = internal global ptr @cafe_nand_cmdfunc._entry, section ".printk_index", align 4
@cafe_nand_cmdfunc._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Register %x: %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc._entry_ptr.28 = internal global ptr @cafe_nand_cmdfunc._entry.26, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.29, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Wait for ready, IRQ %x\0A\00", [40 x i8] zeroinitializer }, align 32
@cafe_nand_cmdfunc.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.4, ptr @.str.30, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Command %x completed after %d usec, irqs %x (%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@cafe_device_ready.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.4, ptr @.str.32, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cafe_device_ready\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NAND device is%s ready, IRQ %x (%x) (%x,%x)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@cafe_read_byte.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 38, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cafe_read_byte\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Read %02x\0A\00", [21 x i8] zeroinitializer }, align 32
@cafe_read_buf.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cafe_read_buf\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Copy 0x%x bytes from position 0x%x in read buffer.\0A\00", [44 x i8] zeroinitializer }, align 32
@cafe_write_buf.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cafe_write_buf\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Copy 0x%x bytes to write buffer. datalen 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@cafe_select_chip.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cafe_select_chip\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"select_chip %d\0A\00", [16 x i8] zeroinitializer }, align 32
@cafe_nand_interrupt.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cafe_nand_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irq, bits %x (%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@cafe_nand_attach_chip.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 -105, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cafe_nand_attach_chip\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Set DMA address to %x (virt %p)\0A\00", [63 x i8] zeroinitializer }, align 32
@cafe_ooblayout_ops = internal constant { %struct.mtd_ooblayout_ops, [24 x i8] } { %struct.mtd_ooblayout_ops { ptr @cafe_ooblayout_ecc, ptr @cafe_ooblayout_free }, [24 x i8] zeroinitializer }, align 32
@cafe_bbt_main_descr_2048 = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 14, i32 18, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @cafe_bbt_pattern_2048 }, [60 x i8] zeroinitializer }, align 32
@cafe_bbt_mirror_descr_2048 = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 14, i32 18, [8 x i8] zeroinitializer, i32 4, i32 4, i32 0, ptr @cafe_mirror_pattern_2048 }, [60 x i8] zeroinitializer }, align 32
@cafe_bbt_main_descr_512 = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 14, i32 15, [8 x i8] zeroinitializer, i32 1, i32 4, i32 0, ptr @cafe_bbt_pattern_512 }, [60 x i8] zeroinitializer }, align 32
@cafe_bbt_mirror_descr_512 = internal global { %struct.nand_bbt_descr, [60 x i8] } { %struct.nand_bbt_descr { i32 8978, [8 x i32] zeroinitializer, i32 14, i32 15, [8 x i8] zeroinitializer, i32 1, i32 4, i32 0, ptr @cafe_mirror_pattern_512 }, [60 x i8] zeroinitializer }, align 32
@cafe_nand_attach_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unexpected NAND flash writesize %d. Aborting\0A\00", [50 x i8] zeroinitializer }, align 32
@cafe_nand_attach_chip._entry_ptr = internal global ptr @cafe_nand_attach_chip._entry, section ".printk_index", align 4
@cafe_bbt_pattern_2048 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"Bbt0", [28 x i8] zeroinitializer }, align 32
@cafe_mirror_pattern_2048 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"1tbB", [28 x i8] zeroinitializer }, align 32
@cafe_bbt_pattern_512 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\BB", [31 x i8] zeroinitializer }, align 32
@cafe_mirror_pattern_512 = internal global { [1 x i8], [31 x i8] } { [1 x i8] c"\BC", [31 x i8] zeroinitializer }, align 32
@cafe_nand_read_page.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.4, ptr @.str.49, i8 0, i8 94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cafe_nand_read_page\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ECC result %08x SYN1,2 %08x\0A\00", [35 x i8] zeroinitializer }, align 32
@cafe_nand_read_page.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.4, ptr @.str.50, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to correct ECC at %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@cafe_nand_read_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.48, ptr @.str.4, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cafe_nand_read_page._entry_ptr = internal global ptr @cafe_nand_read_page._entry, section ".printk_index", align 4
@cafe_nand_read_page.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.4, ptr @.str.51, i8 0, i8 110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Corrected %d symbol errors\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RedBoot\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 208]
@__sancov_gen_cov_switch_values.55 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 5, i64 80, i64 112, i64 128, i64 144]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 96, i64 128]
@__sancov_gen_cov_switch_values.57 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 16, i64 21, i64 96, i64 112, i64 128, i64 133, i64 208]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 512, i64 2048]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1365]
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"usedma\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 76, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"skipbbt\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 79, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 82, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"regdebug\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 85, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"checkecc\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 88, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [21 x i8] c"cafe_nand_pci_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 875, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [11 x i8] c"numtimings\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 91, i32 21 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"timing\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 92, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 883, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 876, i32 10 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"cafe_nand_tbl\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 827, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 692, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 721, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 725, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 733, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 736, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 751, i32 6 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 753, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 770, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [25 x i8] c"cafe_nand_controller_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 657, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"part_probes\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 95, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 169, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 177, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 237, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 248, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 270, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 272, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 290, i32 5 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 294, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 112, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 155, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 144, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 131, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 321, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 341, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 606, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"cafe_ooblayout_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 478, i32 39 }
@___asan_gen_.231 = private unnamed_addr constant [25 x i8] c"cafe_bbt_main_descr_2048\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 492, i32 30 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"cafe_bbt_mirror_descr_2048\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 502, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant [24 x i8] c"cafe_bbt_main_descr_512\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 512, i32 30 }
@___asan_gen_.240 = private unnamed_addr constant [26 x i8] c"cafe_bbt_mirror_descr_512\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 522, i32 30 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 625, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [22 x i8] c"cafe_bbt_pattern_2048\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 485, i32 16 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"cafe_mirror_pattern_2048\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 486, i32 16 }
@___asan_gen_.255 = private unnamed_addr constant [21 x i8] c"cafe_bbt_pattern_512\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 488, i32 16 }
@___asan_gen_.258 = private unnamed_addr constant [24 x i8] c"cafe_mirror_pattern_512\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 489, i32 16 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 377, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 435, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 438, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 441, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 95, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private constant [36 x i8] c"../drivers/mtd/nand/raw/cafe_nand.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 95, i32 53 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author281, ptr @__UNIQUE_ID_checkecctype255, ptr @__UNIQUE_ID_debugtype253, ptr @__UNIQUE_ID_description282, ptr @__UNIQUE_ID_file279, ptr @__UNIQUE_ID_license280, ptr @__UNIQUE_ID_regdebugtype254, ptr @__UNIQUE_ID_skipbbttype252, ptr @__UNIQUE_ID_timingtype256, ptr @__UNIQUE_ID_usedmatype251, ptr @__exitcall_cafe_nand_pci_driver_exit, ptr @__initcall__kmod_cafe_nand__278_883_cafe_nand_pci_driver_init6, ptr @__param_checkecc, ptr @__param_debug, ptr @__param_regdebug, ptr @__param_skipbbt, ptr @__param_timing, ptr @__param_usedma, ptr @cafe_nand_attach_chip._entry, ptr @cafe_nand_attach_chip._entry_ptr, ptr @cafe_nand_cmdfunc._entry, ptr @cafe_nand_cmdfunc._entry.26, ptr @cafe_nand_cmdfunc._entry_ptr, ptr @cafe_nand_cmdfunc._entry_ptr.28, ptr @cafe_nand_pci_driver_exit, ptr @cafe_nand_probe._entry, ptr @cafe_nand_probe._entry.12, ptr @cafe_nand_probe._entry.16, ptr @cafe_nand_probe._entry.7, ptr @cafe_nand_probe._entry_ptr, ptr @cafe_nand_probe._entry_ptr.14, ptr @cafe_nand_probe._entry_ptr.18, ptr @cafe_nand_probe._entry_ptr.9, ptr @cafe_nand_read_page._entry, ptr @cafe_nand_read_page._entry_ptr, ptr @usedma, ptr @skipbbt, ptr @debug, ptr @regdebug, ptr @checkecc, ptr @cafe_nand_pci_driver, ptr @numtimings, ptr @timing, ptr @.str, ptr @.str.1, ptr @cafe_nand_tbl, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @cafe_nand_controller_ops, ptr @part_probes, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @cafe_ooblayout_ops, ptr @cafe_bbt_main_descr_2048, ptr @cafe_bbt_mirror_descr_2048, ptr @cafe_bbt_main_descr_512, ptr @cafe_bbt_mirror_descr_512, ptr @.str.47, ptr @cafe_bbt_pattern_2048, ptr @cafe_mirror_pattern_2048, ptr @cafe_bbt_pattern_512, ptr @cafe_mirror_pattern_512, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usedma to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skipbbt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regdebug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @checkecc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @numtimings to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timing to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_controller_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_probes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_cmdfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_cmdfunc._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_ooblayout_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_main_descr_2048 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_mirror_descr_2048 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_main_descr_512 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_mirror_descr_512 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_attach_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_pattern_2048 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_mirror_pattern_2048 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_bbt_pattern_512 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_mirror_pattern_512 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cafe_nand_read_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cafe_nand_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cafe_nand_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @cafe_nand_pci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %class = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %0 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %class, align 8
  %shr.mask = and i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 327936, i32 %shr.mask)
  %cmp.not = icmp eq i32 %shr.mask, 327936
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 2216) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end2.cleanup_crit_edge, label %if.end6

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 56, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 8
  %priv1.i = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 34
  %4 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %priv1.i, align 8
  %pdev10 = getelementptr inbounds %struct.cafe_priv, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pdev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pdev, ptr %pdev10, align 8
  %call11 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #9
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call11, ptr %mmio, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %out_free_mtd

if.end16:                                         ; preds = %if.end6
  %call17 = tail call ptr @init_rs_non_canonical(i32 noundef 12, ptr noundef nonnull @cafe_mul, i32 noundef 0, i32 noundef 1, i32 noundef 8) #9
  %rs = getelementptr inbounds %struct.cafe_priv, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %rs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %rs, align 8
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %if.end16.out_ior_crit_edge, label %if.end21

if.end16.out_ior_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ior

if.end21:                                         ; preds = %if.end16
  %cmdfunc = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 8
  %8 = ptrtoint ptr %cmdfunc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cafe_nand_cmdfunc, ptr %cmdfunc, align 8
  %dev_ready = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 9
  %9 = ptrtoint ptr %dev_ready to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cafe_device_ready, ptr %dev_ready, align 4
  %read_byte = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %read_byte to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cafe_read_byte, ptr %read_byte, align 4
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 6
  %11 = ptrtoint ptr %read_buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cafe_read_buf, ptr %read_buf, align 8
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 5
  %12 = ptrtoint ptr %write_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cafe_write_buf, ptr %write_buf, align 4
  %select_chip = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %select_chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cafe_select_chip, ptr %select_chip, align 8
  %set_features = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 13
  %14 = ptrtoint ptr %set_features to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nand_get_set_features_notsupp, ptr %set_features, align 4
  %get_features = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 14
  %15 = ptrtoint ptr %get_features to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nand_get_set_features_notsupp, ptr %get_features, align 8
  %chip_delay = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 15
  %16 = ptrtoint ptr %chip_delay to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %chip_delay, align 4
  %bbt_options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %bbt_options to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 131072, ptr %bbt_options, align 8
  %18 = load i32, ptr @skipbbt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool40.not = icmp eq i32 %18, 0
  br i1 %tobool40.not, label %if.end21.if.end43_crit_edge, label %if.then41

if.end21.if.end43_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %options = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %options, align 8
  %or = or i32 %20, 134283264
  store i32 %or, ptr %options, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end21.if.end43_crit_edge
  %21 = load i32, ptr @numtimings, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end49 [
    i32 0, label %if.end43.if.end52_crit_edge
    i32 3, label %if.end43.if.end52_crit_edge366
  ]

if.end43.if.end52_crit_edge366:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev10, align 8
  %dev51 = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev51, ptr noundef nonnull @.str.8, i32 noundef %21) #13
  %.pr = load i32, ptr @numtimings, align 4
  br label %if.end52

if.end52:                                         ; preds = %do.end49, %if.end43.if.end52_crit_edge, %if.end43.if.end52_crit_edge366
  %25 = phi i32 [ %21, %if.end43.if.end52_crit_edge ], [ %21, %if.end43.if.end52_crit_edge366 ], [ %.pr, %do.end49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp53 = icmp eq i32 %25, 3
  br i1 %cmp53, label %do.body55, label %if.else

do.body55:                                        ; preds = %if.end52
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool56.not = icmp eq i32 %26, 0
  br i1 %tobool56.not, label %do.body55.do.body129_crit_edge, label %do.body58

do.body55.do.body129_crit_edge:                   ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

do.body58:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_probe.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_probe, %do.body129)) #9
          to label %if.then64 [label %do.body129], !srcloc !196

if.then64:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev10, align 8
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = load i32, ptr @timing, align 4
  %30 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %31 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_probe.__UNIQUE_ID_ddebug275, ptr noundef %dev66, ptr noundef nonnull @.str.10, i32 noundef %29, i32 noundef %30, i32 noundef %31) #9
  br label %do.body129

if.else:                                          ; preds = %if.end52
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 36
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !198
  store i32 %35, ptr @timing, align 4
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr80 = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #9, !srcloc !197
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  store i32 %39, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %40 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio, align 4
  %add.ptr87 = getelementptr i8, ptr %41, i32 44
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #9, !srcloc !197
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  store i32 %43, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  %44 = load i32, ptr @timing, align 4
  %45 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %or91 = or i32 %44, %43
  %or92 = or i32 %or91, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or92)
  %tobool93.not = icmp eq i32 %or92, 0
  br i1 %tobool93.not, label %do.end124, label %do.body95

do.body95:                                        ; preds = %if.else
  %46 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool96.not = icmp eq i32 %46, 0
  br i1 %tobool96.not, label %do.body95.do.body129_crit_edge, label %do.body98

do.body95.do.body129_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

do.body98:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_probe.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_probe, %do.body129)) #9
          to label %if.then112 [label %do.body129], !srcloc !196

if.then112:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev10, align 8
  %dev114 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = load i32, ptr @timing, align 4
  %50 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %51 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_probe.__UNIQUE_ID_ddebug276, ptr noundef %dev114, ptr noundef nonnull @.str.11, i32 noundef %49, i32 noundef %50, i32 noundef %51) #9
  br label %do.body129

do.end124:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev10, align 8
  %dev126 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev126, ptr noundef nonnull @.str.13) #13
  store i32 -1, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  store i32 -1, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  store i32 -1, ptr @timing, align 4
  br label %do.body129

do.body129:                                       ; preds = %do.end124, %if.then112, %do.body98, %do.body95.do.body129_crit_edge, %if.then64, %do.body58, %do.body55.do.body129_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mmio, align 4
  %add.ptr133 = getelementptr i8, ptr %55, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133, i32 16777216) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %56 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio, align 4
  %add.ptr138 = getelementptr i8, ptr %57, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 0) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  tail call void @arm_heavy_mb() #9
  %58 = load i32, ptr @timing, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mmio, align 4
  %add.ptr143 = getelementptr i8, ptr %61, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 %59) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %62 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio, align 4
  %add.ptr148 = getelementptr i8, ptr %65, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %63) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  tail call void @arm_heavy_mb() #9
  %66 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio, align 4
  %add.ptr153 = getelementptr i8, ptr %69, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %67) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !207
  tail call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mmio, align 4
  %add.ptr158 = getelementptr i8, ptr %71, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 -1) #9, !srcloc !202
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %72 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %73, ptr noundef nonnull @cafe_nand_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.15, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool160.not = icmp eq i32 %call.i, 0
  br i1 %tobool160.not, label %if.end167, label %do.end164

do.end164:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %75) #13
  br label %out_free_rs

if.end167:                                        ; preds = %do.body129
  %76 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio, align 4
  %add.ptr171 = getelementptr i8, ptr %77, i32 12292
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr171) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !208
  %79 = and i32 %78, -258998273
  %80 = or i32 %79, 7340032
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @arm_heavy_mb() #9
  %or179 = or i32 %81, 5
  %82 = tail call i32 @llvm.bswap.i32(i32 %or179)
  %83 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mmio, align 4
  %add.ptr181 = getelementptr i8, ptr %84, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr181, i32 %82) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !210
  tail call void @arm_heavy_mb() #9
  %or185 = or i32 %81, 10
  %85 = tail call i32 @llvm.bswap.i32(i32 %or185)
  %86 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio, align 4
  %add.ptr187 = getelementptr i8, ptr %87, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187, i32 %85) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !211
  tail call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio, align 4
  %add.ptr192 = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 0) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !212
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mmio, align 4
  %add.ptr197 = getelementptr i8, ptr %91, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 108003328) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !213
  tail call void @arm_heavy_mb() #9
  %92 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mmio, align 4
  %add.ptr202 = getelementptr i8, ptr %93, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr202, i32 175112192) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %94 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio, align 4
  %add.ptr207 = getelementptr i8, ptr %95, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 117440640) #9, !srcloc !202
  %96 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool209.not = icmp eq i32 %96, 0
  br i1 %tobool209.not, label %if.end167.do.end247_crit_edge, label %do.body211

if.end167.do.end247_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end247

do.body211:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_probe.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_probe, %do.end247)) #9
          to label %if.then225 [label %do.end247], !srcloc !196

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %pdev10 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pdev10, align 8
  %dev227 = getelementptr inbounds %struct.pci_dev, ptr %98, i32 0, i32 44
  %99 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio, align 4
  %add.ptr231 = getelementptr i8, ptr %100, i32 12292
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #9, !srcloc !197
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %103 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio, align 4
  %add.ptr238 = getelementptr i8, ptr %104, i32 12300
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr238) #9, !srcloc !197
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_probe.__UNIQUE_ID_ddebug277, ptr noundef %dev227, ptr noundef nonnull @.str.19, i32 noundef %102, i32 noundef %106) #9
  br label %do.end247

do.end247:                                        ; preds = %if.then225, %do.body211, %if.end167.do.end247_crit_edge
  %usedma = getelementptr inbounds %struct.cafe_priv, ptr %call7.i.i, i32 0, i32 10
  %107 = ptrtoint ptr %usedma to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 0, ptr %usedma, align 4
  %ops = getelementptr inbounds %struct.nand_chip, ptr %call7.i.i, i32 0, i32 5, i32 16, i32 1
  %108 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr @cafe_nand_controller_ops, ptr %ops, align 4
  %call.i362 = tail call i32 @nand_scan_with_ids(ptr noundef nonnull %call7.i.i, i32 noundef 2, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %tobool252.not = icmp eq i32 %call.i362, 0
  br i1 %tobool252.not, label %if.end254, label %do.end247.do.body260_crit_edge

do.end247.do.body260_crit_edge:                   ; preds = %do.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body260

if.end254:                                        ; preds = %do.end247
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %109 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.mtd_info, ptr %call7.i.i, i32 0, i32 13
  %110 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @.str, ptr %name, align 8
  %call255 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @part_probes, ptr noundef null, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call255)
  %tobool256.not = icmp eq i32 %call255, 0
  br i1 %tobool256.not, label %if.end254.cleanup_crit_edge, label %out_cleanup_nand

if.end254.cleanup_crit_edge:                      ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_cleanup_nand:                                 ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nand_cleanup(ptr noundef nonnull %call7.i.i) #9
  br label %do.body260

do.body260:                                       ; preds = %out_cleanup_nand, %do.end247.do.body260_crit_edge
  %err.0 = phi i32 [ %call.i362, %do.end247.do.body260_crit_edge ], [ %call255, %out_cleanup_nand ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %111 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mmio, align 4
  %add.ptr266 = getelementptr i8, ptr %112, i32 12300
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr266) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  %114 = and i32 %113, -16777217
  %115 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mmio, align 4
  %add.ptr272 = getelementptr i8, ptr %116, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr272, i32 %114) #9, !srcloc !202
  %117 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq, align 4
  %call274 = tail call ptr @free_irq(i32 noundef %118, ptr noundef nonnull %call7.i.i) #9
  br label %out_free_rs

out_free_rs:                                      ; preds = %do.body260, %do.end164
  %err.1 = phi i32 [ %call.i, %do.end164 ], [ %err.0, %do.body260 ]
  %119 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rs, align 8
  tail call void @free_rs(ptr noundef %120) #9
  br label %out_ior

out_ior:                                          ; preds = %out_free_rs, %if.end16.out_ior_crit_edge
  %err.2 = phi i32 [ %err.1, %out_free_rs ], [ -12, %if.end16.out_ior_crit_edge ]
  %121 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %122) #9
  br label %out_free_mtd

out_free_mtd:                                     ; preds = %out_ior, %do.end
  %err.3 = phi i32 [ %err.2, %out_ior ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_mtd, %if.end254.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ], [ %err.3, %out_free_mtd ], [ 0, %if.end254.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_nand_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12300
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %7) #9, !srcloc !202
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #9
  %call8 = tail call i32 @mtd_device_unregister(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end19, !prof !221

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end19:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 819, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end19, %entry.if.end_crit_edge
  tail call void @nand_cleanup(ptr noundef %1) #9
  %rs = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rs, align 8
  tail call void @free_rs(ptr noundef %13) #9
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %15) #9
  %pdev33 = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev33, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %dmabuf = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 12
  %18 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dmabuf, align 4
  %dmaaddr = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dmaaddr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2112, ptr noundef %19, i32 noundef %21, i32 noundef 0) #9
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 12340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 -1) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %10 = load i32, ptr @timing, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  tail call void @arm_heavy_mb() #9
  %14 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 1), align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %add.ptr22 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %15) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %18 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @timing, i32 0, i32 2), align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %19) #9, !srcloc !202
  %22 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio, align 4
  %add.ptr29 = getelementptr i8, ptr %23, i32 12292
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %25 = and i32 %24, -258998273
  %26 = or i32 %25, 7340032
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %or35 = or i32 %27, 5
  %28 = tail call i32 @llvm.bswap.i32(i32 %or35)
  %29 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio, align 4
  %add.ptr37 = getelementptr i8, ptr %30, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %28) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  tail call void @arm_heavy_mb() #9
  %or41 = or i32 %27, 10
  %31 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %32 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio, align 4
  %add.ptr43 = getelementptr i8, ptr %33, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %31) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio, align 4
  %add.ptr48 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  tail call void @arm_heavy_mb() #9
  %36 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio, align 4
  %add.ptr53 = getelementptr i8, ptr %37, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 108003328) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !233
  tail call void @arm_heavy_mb() #9
  %38 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mmio, align 4
  %add.ptr58 = getelementptr i8, ptr %39, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 175112192) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !234
  tail call void @arm_heavy_mb() #9
  %dmaaddr = getelementptr inbounds %struct.cafe_priv, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dmaaddr, align 8
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio, align 4
  %add.ptr64 = getelementptr i8, ptr %44, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %42) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !235
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio, align 4
  %add.ptr69 = getelementptr i8, ptr %46, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !236
  tail call void @arm_heavy_mb() #9
  %47 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio, align 4
  %add.ptr74 = getelementptr i8, ptr %48, i32 12300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 117440640) #9, !srcloc !202
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_non_canonical(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cafe_mul(i32 noundef %x) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x)
  %cmp = icmp eq i32 %x, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %x to i16
  %0 = lshr i32 %x, 6
  %conv1.i = trunc i32 %0 to i8
  %1 = trunc i32 %x to i8
  %conv3.i = and i8 %1, 63
  %xor.i = xor i8 %conv3.i, %conv1.i
  %2 = and i8 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  %xor24.i.i = select i1 %tobool.not.i.i, i8 0, i8 57
  %3 = and i8 %xor.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.1.i.i = icmp eq i8 %3, 0
  %xor24.1.i.i = select i1 %tobool.not.1.i.i, i8 0, i8 49
  %4 = and i8 %xor.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.2.i.i = icmp eq i8 %4, 0
  %xor24.2.i.i = select i1 %tobool.not.2.i.i, i8 0, i8 33
  %5 = lshr i8 %xor.i, 3
  %.lobit.i = and i8 %5, 1
  %spec.select.1.i.i = xor i8 %xor24.i.i, %.lobit.i
  %spec.select.2.i.i = xor i8 %spec.select.1.i.i, %xor24.1.i.i
  %spec.select.3.i.i = xor i8 %spec.select.2.i.i, %xor24.2.i.i
  %spec.select.4.i76.i = and i8 %5, 6
  %spec.select.5.i77.i = or i8 %spec.select.3.i.i, %spec.select.4.i76.i
  %conv17.i.i = zext i8 %spec.select.5.i77.i to i16
  %conv17.i21.i = and i16 %conv, 63
  %xor201.i = xor i16 %conv17.i21.i, %conv17.i.i
  %6 = and i8 %conv1.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i22.i = icmp eq i8 %6, 0
  %xor24.i23.i = select i1 %tobool.not.i22.i, i8 0, i8 56
  %7 = and i8 %conv1.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.1.i24.i = icmp eq i8 %7, 0
  %xor24.1.i25.i = select i1 %tobool.not.1.i24.i, i8 0, i8 51
  %spec.select.1.i26.i = xor i8 %xor24.1.i25.i, %xor24.i23.i
  %8 = and i8 %conv1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.2.i27.i = icmp eq i8 %8, 0
  %xor24.2.i28.i = select i1 %tobool.not.2.i27.i, i8 0, i8 37
  %spec.select.2.i29.i = xor i8 %spec.select.1.i26.i, %xor24.2.i28.i
  %9 = and i8 %conv1.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.3.i30.i = icmp eq i8 %9, 0
  %xor24.3.i31.i = select i1 %tobool.not.3.i30.i, i8 0, i8 9
  %spec.select.3.i32.i = xor i8 %spec.select.2.i29.i, %xor24.3.i31.i
  %10 = and i8 %conv1.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.4.i33.i = icmp eq i8 %10, 0
  %xor24.4.i34.i = select i1 %tobool.not.4.i33.i, i8 0, i8 18
  %spec.select.4.i35.i = xor i8 %spec.select.3.i32.i, %xor24.4.i34.i
  %11 = and i8 %conv1.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.5.i36.i = icmp eq i8 %11, 0
  %xor24.5.i37.i = select i1 %tobool.not.5.i36.i, i8 0, i8 36
  %spec.select.5.i38.i = xor i8 %spec.select.4.i35.i, %xor24.5.i37.i
  %12 = and i8 %spec.select.3.i32.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i40.i = icmp eq i8 %12, 0
  %xor24.i41.i = select i1 %tobool.not.i40.i, i8 0, i8 33
  %13 = lshr i8 %spec.select.4.i35.i, 1
  %.lobit78.i = and i8 %13, 1
  %spec.select.1.i44.i = xor i8 %.lobit78.i, %xor24.i41.i
  %14 = lshr i8 %spec.select.5.i38.i, 1
  %15 = and i8 %14, 2
  %16 = lshr i8 %spec.select.3.i32.i, 1
  %17 = and i8 %16, 4
  %18 = and i8 %13, 8
  %19 = and i8 %14, 16
  %spec.select.2.i4779.i = or i8 %18, %17
  %spec.select.3.i5080.i = or i8 %spec.select.2.i4779.i, %spec.select.1.i44.i
  %spec.select.4.i5381.i = or i8 %spec.select.3.i5080.i, %15
  %spec.select.5.i5682.i = or i8 %spec.select.4.i5381.i, %19
  %conv17.i57.i = zext i8 %spec.select.5.i5682.i to i16
  %20 = shl nuw nsw i16 %xor201.i, 6
  %xor28283.i = or i16 %20, %conv17.i21.i
  %xor323.i = xor i16 %xor28283.i, %conv17.i57.i
  %conv1 = zext i16 %xor323.i to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %conv1, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_nand_cmdfunc(ptr noundef %chip, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.body2

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %do.end11)) #9
          to label %if.then8 [label %do.end11], !srcloc !196

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %command, i32 noundef %column, i32 noundef %page_addr) #9
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %do.body2, %entry.do.end11_crit_edge
  %5 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %command, label %do.body48 [
    i32 208, label %do.end11.do.body14_crit_edge
    i32 16, label %do.end11.do.body14_crit_edge583
  ]

do.end11.do.body14_crit_edge583:                  ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.end11.do.body14_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.body14:                                        ; preds = %do.end11.do.body14_crit_edge, %do.end11.do.body14_crit_edge583
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !237
  tail call void @arm_heavy_mb() #9
  %ctl2 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ctl2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctl2, align 8
  %or = or i32 %7, %command
  %or17 = or i32 %or, 256
  %8 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #9, !srcloc !202
  %ctl118 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %ctl118 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctl118, align 4
  %13 = ptrtoint ptr %ctl2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctl2, align 8
  %and = and i32 %14, -1073741825
  store i32 %and, ptr %ctl2, align 8
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %do.body14.do.body230_crit_edge, label %do.body23

do.body14.do.body230_crit_edge:                   ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body230

do.body23:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %do.body198)) #9
          to label %if.then37 [label %do.body198], !srcloc !196

if.then37:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %pdev38 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev38, align 8
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %ctl118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl118, align 4
  %nr_data = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %nr_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug262, ptr noundef %dev39, ptr noundef nonnull @.str.22, i32 noundef %19, i32 noundef %21) #9
  br label %do.body198

do.body48:                                        ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !238
  tail call void @arm_heavy_mb() #9
  %mmio51 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio51, align 4
  %add.ptr52 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #9, !srcloc !202
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %24 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %25)
  %cmp53 = icmp ugt i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %command)
  %cmp54 = icmp eq i32 %command, 80
  %or.cond = and i1 %cmp54, %cmp53
  %add = select i1 %or.cond, i32 %25, i32 0
  %column.addr.0 = add i32 %add, %column
  %command.addr.0 = select i1 %or.cond, i32 0, i32 %command
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %column.addr.0)
  %cmp58.not = icmp eq i32 %column.addr.0, -1
  br i1 %cmp58.not, label %if.else, label %do.body60

do.body60:                                        ; preds = %do.body48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !239
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %column.addr.0)
  %27 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio51, align 4
  %add.ptr64 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %26) #9, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp65.not = icmp eq i32 %page_addr, -1
  br i1 %cmp65.not, label %do.body60.if.end88_crit_edge, label %do.body60.do.body76_crit_edge

do.body60.do.body76_crit_edge:                    ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body76

do.body60.if.end88_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.else:                                          ; preds = %do.body48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %page_addr)
  %cmp68.not = icmp eq i32 %page_addr, -1
  br i1 %cmp68.not, label %if.else.if.end88_crit_edge, label %do.body70

if.else.if.end88_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

do.body70:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !240
  tail call void @arm_heavy_mb() #9
  %and73 = and i32 %page_addr, 65535
  %29 = tail call i32 @llvm.bswap.i32(i32 %and73)
  %30 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mmio51, align 4
  %add.ptr75 = getelementptr i8, ptr %31, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %29) #9, !srcloc !202
  %shr = ashr i32 %page_addr, 16
  br label %do.body76

do.body76:                                        ; preds = %do.body70, %do.body60.do.body76_crit_edge
  %adrbytes.0 = phi i32 [ 4, %do.body60.do.body76_crit_edge ], [ 2, %do.body70 ]
  %page_addr.addr.0 = phi i32 [ %page_addr, %do.body60.do.body76_crit_edge ], [ %shr, %do.body70 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !241
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %page_addr.addr.0)
  %33 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio51, align 4
  %add.ptr80 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %32) #9, !srcloc !202
  %size = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 2
  %35 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %size, align 8
  %37 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %writesize, align 4
  %shl = shl i32 %38, 16
  %conv = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %conv)
  %cmp83 = icmp ugt i64 %36, %conv
  %inc = zext i1 %cmp83 to i32
  %spec.select = or i32 %adrbytes.0, %inc
  br label %if.end88

if.end88:                                         ; preds = %do.body76, %if.else.if.end88_crit_edge, %do.body60.if.end88_crit_edge
  %adrbytes.1 = phi i32 [ 2, %do.body60.if.end88_crit_edge ], [ 0, %if.else.if.end88_crit_edge ], [ %spec.select, %do.body76 ]
  %datalen = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %datalen, align 4
  %data_pos = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %data_pos to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %data_pos, align 4
  %ctl190 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %ctl190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctl190, align 4
  %and91 = and i32 %42, 524288
  %or89 = or i32 %and91, %command.addr.0
  %or92 = or i32 %or89, -2147483648
  %43 = zext i32 %command.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %command.addr.0, label %if.end88.if.end125_crit_edge [
    i32 144, label %if.end88.if.end125.thread_crit_edge
    i32 112, label %if.end88.if.end125.thread_crit_edge584
    i32 0, label %if.end88.if.then113_crit_edge
    i32 1, label %if.end88.if.then113_crit_edge585
    i32 80, label %if.end88.if.then113_crit_edge586
    i32 5, label %if.end88.if.then113_crit_edge587
    i32 128, label %if.then121
  ]

if.end88.if.then113_crit_edge587:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.end88.if.then113_crit_edge586:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.end88.if.then113_crit_edge585:                 ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.end88.if.then113_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then113

if.end88.if.end125.thread_crit_edge584:           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125.thread

if.end88.if.end125.thread_crit_edge:              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125.thread

if.end88.if.end125_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.end125.thread:                                 ; preds = %if.end88.if.end125.thread_crit_edge, %if.end88.if.end125.thread_crit_edge584
  %44 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %datalen, align 4
  %or131567 = or i32 %or89, -1006632960
  br label %50

if.then113:                                       ; preds = %if.end88.if.then113_crit_edge, %if.end88.if.then113_crit_edge585, %if.end88.if.then113_crit_edge586, %if.end88.if.then113_crit_edge587
  %or114 = or i32 %or89, -2080374784
  %45 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %writesize, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %oobsize, align 4
  %add116 = sub i32 %46, %column.addr.0
  %sub = add i32 %add116, %48
  %49 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %datalen, align 4
  br label %if.end125

if.then121:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %or122 = or i32 %or89, -2113929216
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.then113, %if.end88.if.end125_crit_edge
  %ctl1.0 = phi i32 [ %or114, %if.then113 ], [ %or122, %if.then121 ], [ %or92, %if.end88.if.end125_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adrbytes.1)
  %tobool126.not = icmp eq i32 %adrbytes.1, 0
  %sub128 = shl nsw i32 %adrbytes.1, 27
  %or129 = add nsw i32 %sub128, -134217728
  %shl130 = or i32 %or129, 1073741824
  %or131 = select i1 %tobool126.not, i32 0, i32 %shl130
  %spec.select580 = or i32 %ctl1.0, %or131
  br label %50

50:                                               ; preds = %if.end125, %if.end125.thread
  %51 = phi i32 [ %or131567, %if.end125.thread ], [ %spec.select580, %if.end125 ]
  %52 = zext i32 %command.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %command.addr.0, label %.do.body198_crit_edge [
    i32 128, label %.if.then138_crit_edge
    i32 96, label %.if.then138_crit_edge588
    i32 5, label %do.body172
    i32 0, label %land.lhs.true183
  ]

.if.then138_crit_edge588:                         ; preds = %50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then138

.if.then138_crit_edge:                            ; preds = %50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then138

.do.body198_crit_edge:                            ; preds = %50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body198

if.then138:                                       ; preds = %.if.then138_crit_edge, %.if.then138_crit_edge588
  %53 = ptrtoint ptr %ctl190 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %ctl190, align 4
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool141.not = icmp eq i32 %54, 0
  br i1 %tobool141.not, label %if.then138.cleanup_crit_edge, label %do.body143

if.then138.cleanup_crit_edge:                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body143:                                       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %cleanup)) #9
          to label %if.then157 [label %cleanup], !srcloc !196

if.then157:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #11
  %pdev158 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %pdev158 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev158, align 8
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %ctl190 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ctl190, align 4
  %59 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %datalen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug263, ptr noundef %dev159, ptr noundef nonnull @.str.23, i32 noundef %58, i32 noundef %60) #9
  br label %cleanup

do.body172:                                       ; preds = %50
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !242
  tail call void @arm_heavy_mb() #9
  %ctl2175 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %ctl2175 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ctl2175, align 8
  %or177 = or i32 %62, 480
  %63 = tail call i32 @llvm.bswap.i32(i32 %or177)
  %64 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mmio51, align 4
  %add.ptr179 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %63) #9, !srcloc !202
  br label %do.body198

land.lhs.true183:                                 ; preds = %50
  %66 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %67)
  %cmp185 = icmp ugt i32 %67, 512
  br i1 %cmp185, label %do.body188, label %land.lhs.true183.do.body198_crit_edge

land.lhs.true183.do.body198_crit_edge:            ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body198

do.body188:                                       ; preds = %land.lhs.true183
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !243
  tail call void @arm_heavy_mb() #9
  %ctl2191 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %68 = ptrtoint ptr %ctl2191 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ctl2191, align 8
  %or193 = or i32 %69, 304
  %70 = tail call i32 @llvm.bswap.i32(i32 %or193)
  %71 = ptrtoint ptr %mmio51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mmio51, align 4
  %add.ptr195 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 %70) #9, !srcloc !202
  br label %do.body198

do.body198:                                       ; preds = %do.body188, %land.lhs.true183.do.body198_crit_edge, %do.body172, %.do.body198_crit_edge, %if.then37, %do.body23
  %ctl1.2.ph = phi i32 [ %51, %.do.body198_crit_edge ], [ %51, %land.lhs.true183.do.body198_crit_edge ], [ %51, %do.body188 ], [ %51, %do.body172 ], [ %12, %if.then37 ], [ %12, %do.body23 ]
  %command.addr.1.ph = phi i32 [ %command, %.do.body198_crit_edge ], [ 0, %land.lhs.true183.do.body198_crit_edge ], [ 0, %do.body188 ], [ 5, %do.body172 ], [ %command, %if.then37 ], [ %command, %do.body23 ]
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool199.not = icmp eq i32 %.pr, 0
  br i1 %tobool199.not, label %do.body198.do.body230_crit_edge, label %do.body201

do.body198.do.body230_crit_edge:                  ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body230

do.body201:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %do.body230)) #9
          to label %if.then215 [label %do.body230], !srcloc !196

if.then215:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #11
  %pdev216 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %pdev216 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdev216, align 8
  %dev217 = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %datalen218 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %75 = ptrtoint ptr %datalen218 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %datalen218, align 4
  %mmio219 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %77 = ptrtoint ptr %mmio219 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mmio219, align 4
  %add.ptr220 = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #9, !srcloc !197
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !244
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug264, ptr noundef %dev217, ptr noundef nonnull @.str.24, i32 noundef %76, i32 noundef %ctl1.2.ph, i32 noundef %80) #9
  br label %do.body230

do.body230:                                       ; preds = %if.then215, %do.body201, %do.body198.do.body230_crit_edge, %do.body14.do.body230_crit_edge
  %command.addr.1575 = phi i32 [ %command.addr.1.ph, %do.body198.do.body230_crit_edge ], [ %command.addr.1.ph, %if.then215 ], [ %command, %do.body14.do.body230_crit_edge ], [ %command.addr.1.ph, %do.body201 ]
  %ctl1.2572 = phi i32 [ %ctl1.2.ph, %do.body198.do.body230_crit_edge ], [ %ctl1.2.ph, %if.then215 ], [ %12, %do.body14.do.body230_crit_edge ], [ %ctl1.2.ph, %do.body201 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !245
  tail call void @arm_heavy_mb() #9
  %datalen233 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %81 = ptrtoint ptr %datalen233 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %datalen233, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %mmio234 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %84 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmio234, align 4
  %add.ptr235 = getelementptr i8, ptr %85, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr235, i32 %83) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !246
  tail call void @arm_heavy_mb() #9
  %86 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mmio234, align 4
  %add.ptr240 = getelementptr i8, ptr %87, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr240, i32 144) #9, !srcloc !202
  %usedma = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 10
  %88 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %usedma, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool241.not = icmp eq i8 %89, 0
  %and244 = and i32 %ctl1.2572, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  %or.cond541 = select i1 %tobool241.not, i1 true, i1 %tobool245.not
  br i1 %or.cond541, label %do.body230.if.end259_crit_edge, label %if.then246

do.body230.if.end259_crit_edge:                   ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end259

if.then246:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %datalen233 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %datalen233, align 4
  %add248 = add i32 %91, -1073741824
  %and249 = and i32 %ctl1.2572, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  %92 = shl nuw nsw i32 %and249, 3
  %93 = or i32 %add248, %92
  %spec.select543 = select i1 %tobool250.not, i32 -2147483648, i32 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !248
  tail call void @arm_heavy_mb() #9
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %95 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio234, align 4
  %add.ptr258 = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr258, i32 %94) #9, !srcloc !202
  br label %if.end259

if.end259:                                        ; preds = %if.then246, %do.body230.if.end259_crit_edge
  %doneint.1 = phi i32 [ %spec.select543, %if.then246 ], [ -2147483648, %do.body230.if.end259_crit_edge ]
  %97 = ptrtoint ptr %datalen233 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %datalen233, align 4
  %98 = load i32, ptr @regdebug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool261.not = icmp eq i32 %98, 0
  br i1 %tobool261.not, label %if.end259.do.body290_crit_edge, label %if.then268, !prof !221

if.end259.do.body290_crit_edge:                   ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body290

if.then268:                                       ; preds = %if.end259
  %call273 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %ctl1.2572) #13
  br label %do.end278

do.end278:                                        ; preds = %do.end278.do.end278_crit_edge, %if.then268
  %i.0581 = phi i32 [ 4, %if.then268 ], [ %add288, %do.end278.do.end278_crit_edge ]
  %99 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mmio234, align 4
  %add.ptr283 = getelementptr i8, ptr %100, i32 %i.0581
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr283) #9, !srcloc !197
  %102 = tail call i32 @llvm.bswap.i32(i32 %101)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !249
  %call287 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.0581, i32 noundef %102) #13
  %add288 = add nuw nsw i32 %i.0581, 4
  %cmp274 = icmp ult i32 %i.0581, 88
  br i1 %cmp274, label %do.end278.do.end278_crit_edge, label %do.end278.do.body290_crit_edge

do.end278.do.body290_crit_edge:                   ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body290

do.end278.do.end278_crit_edge:                    ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end278

do.body290:                                       ; preds = %do.end278.do.body290_crit_edge, %if.end259.do.body290_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  tail call void @arm_heavy_mb() #9
  %103 = tail call i32 @llvm.bswap.i32(i32 %ctl1.2572)
  %104 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio234, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 %103) #9, !srcloc !202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748) #9
  %pdev330 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  br label %for.body298

for.body298:                                      ; preds = %do.end343.for.body298_crit_edge, %do.body290
  %c.0582 = phi i32 [ 500000, %do.body290 ], [ %dec, %do.end343.for.body298_crit_edge ]
  %107 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mmio234, align 4
  %add.ptr302 = getelementptr i8, ptr %108, i32 16
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr302) #9, !srcloc !197
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !251
  %and306 = and i32 %110, %doneint.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306)
  %tobool307.not = icmp eq i32 %and306, 0
  br i1 %tobool307.not, label %if.end309, label %for.body298.do.body350_crit_edge

for.body298.do.body350_crit_edge:                 ; preds = %for.body298
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body350

if.end309:                                        ; preds = %for.body298
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %111(i32 noundef 214748) #9
  %rem.urem = urem i32 %c.0582, 100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem)
  %tobool310.not = icmp eq i32 %rem.urem, 0
  br i1 %tobool310.not, label %do.body312, label %if.end309.do.end343_crit_edge

if.end309.do.end343_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end343

do.body312:                                       ; preds = %if.end309
  %112 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool313.not = icmp eq i32 %112, 0
  br i1 %tobool313.not, label %do.body312.do.end343_crit_edge, label %do.body315

do.body312.do.end343_crit_edge:                   ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end343

do.body315:                                       ; preds = %do.body312
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %do.end343)) #9
          to label %if.then329 [label %do.end343], !srcloc !196

if.then329:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %pdev330 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pdev330, align 8
  %dev331 = getelementptr inbounds %struct.pci_dev, ptr %114, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug265, ptr noundef %dev331, ptr noundef nonnull @.str.29, i32 noundef %110) #9
  br label %do.end343

do.end343:                                        ; preds = %if.then329, %do.body315, %do.body312.do.end343_crit_edge, %if.end309.do.end343_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !252
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !253
  %dec = add nsw i32 %c.0582, -1
  %cmp296.not = icmp eq i32 %dec, 0
  br i1 %cmp296.not, label %do.end343.do.body350_crit_edge, label %do.end343.for.body298_crit_edge

do.end343.for.body298_crit_edge:                  ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body298

do.end343.do.body350_crit_edge:                   ; preds = %do.end343
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body350

do.body350:                                       ; preds = %do.end343.do.body350_crit_edge, %for.body298.do.body350_crit_edge
  %c.0.lcssa = phi i32 [ 0, %do.end343.do.body350_crit_edge ], [ %c.0582, %for.body298.do.body350_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !254
  tail call void @arm_heavy_mb() #9
  %115 = lshr exact i32 %doneint.1, 24
  %116 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mmio234, align 4
  %add.ptr354 = getelementptr i8, ptr %117, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr354, i32 %115) #9, !srcloc !202
  %118 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool356.not = icmp eq i32 %118, 0
  br i1 %tobool356.not, label %do.body350.do.end388_crit_edge, label %do.body358

do.body350.do.end388_crit_edge:                   ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end388

do.body358:                                       ; preds = %do.body350
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_cmdfunc, %do.end388)) #9
          to label %if.then372 [label %do.end388], !srcloc !196

if.then372:                                       ; preds = %do.body358
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %pdev330 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %pdev330, align 8
  %dev374 = getelementptr inbounds %struct.pci_dev, ptr %120, i32 0, i32 44
  %sub375 = sub i32 500000, %c.0.lcssa
  %121 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mmio234, align 4
  %add.ptr379 = getelementptr i8, ptr %122, i32 16
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr379) #9, !srcloc !197
  %124 = tail call i32 @llvm.bswap.i32(i32 %123)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug266, ptr noundef %dev374, ptr noundef nonnull @.str.30, i32 noundef %command.addr.1575, i32 noundef %sub375, i32 noundef %110, i32 noundef %124) #9
  br label %do.end388

do.end388:                                        ; preds = %if.then372, %do.body358, %do.body350.do.end388_crit_edge
  %ctl2389 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %125 = ptrtoint ptr %ctl2389 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ctl2389, align 8
  %and390 = and i32 %126, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  br i1 %tobool391.not, label %do.end388.if.end413_crit_edge, label %do.end407, !prof !221

do.end388.if.end413_crit_edge:                    ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end413

do.end407:                                        ; preds = %do.end388
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 298, i32 noundef 9, ptr noundef null) #9
  br label %if.end413

if.end413:                                        ; preds = %do.end407, %do.end388.if.end413_crit_edge
  %127 = zext i32 %command.addr.1575 to i64
  call void @__sanitizer_cov_trace_switch(i64 %127, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %command.addr.1575, label %sw.epilog [
    i32 21, label %if.end413.do.body421_crit_edge
    i32 16, label %if.end413.do.body421_crit_edge589
    i32 96, label %if.end413.do.body421_crit_edge590
    i32 208, label %if.end413.do.body421_crit_edge591
    i32 128, label %if.end413.do.body421_crit_edge592
    i32 133, label %if.end413.do.body421_crit_edge593
    i32 112, label %if.end413.do.body421_crit_edge594
    i32 5, label %if.end413.do.body421_crit_edge595
  ]

if.end413.do.body421_crit_edge595:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge594:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge593:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge592:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge591:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge590:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge589:                ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

if.end413.do.body421_crit_edge:                   ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body421

do.body421:                                       ; preds = %if.end413.do.body421_crit_edge, %if.end413.do.body421_crit_edge589, %if.end413.do.body421_crit_edge590, %if.end413.do.body421_crit_edge591, %if.end413.do.body421_crit_edge592, %if.end413.do.body421_crit_edge593, %if.end413.do.body421_crit_edge594, %if.end413.do.body421_crit_edge595
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !256
  tail call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %ctl2389 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ctl2389, align 8
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %131 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %mmio234, align 4
  %add.ptr426 = getelementptr i8, ptr %132, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr426, i32 %130) #9, !srcloc !202
  br label %cleanup

sw.epilog:                                        ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nand_wait_ready(ptr noundef %chip) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !257
  tail call void @arm_heavy_mb() #9
  %133 = ptrtoint ptr %ctl2389 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ctl2389, align 8
  %135 = tail call i32 @llvm.bswap.i32(i32 %134)
  %136 = ptrtoint ptr %mmio234 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mmio234, align 4
  %add.ptr432 = getelementptr i8, ptr %137, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr432, i32 %135) #9, !srcloc !202
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.body421, %if.then157, %do.body143, %if.then138.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_device_ready(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !258
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %6 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #9, !srcloc !197
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !259
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #9, !srcloc !202
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %entry.do.end53_crit_edge, label %do.body15

entry.do.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end53

do.body15:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_device_ready.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_device_ready, %do.end53)) #9
          to label %if.then26 [label %do.end53], !srcloc !196

if.then26:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %cond = select i1 %tobool.not, ptr @.str.34, ptr @.str.33
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr31 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #9, !srcloc !197
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !261
  %19 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio, align 4
  %add.ptr38 = getelementptr i8, ptr %20, i32 12296
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #9, !srcloc !197
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !262
  %23 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio, align 4
  %add.ptr45 = getelementptr i8, ptr %24, i32 12300
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #9, !srcloc !197
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_device_ready.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.32, ptr noundef nonnull %cond, i32 noundef %9, i32 noundef %18, i32 noundef %22, i32 noundef %26) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then26, %do.body15, %entry.do.end53_crit_edge
  %.lobit = lshr exact i32 %5, 6
  ret i32 %.lobit
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cafe_read_byte(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  %d = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #9
  %2 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %d, align 1, !annotation !264
  %usedma.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %usedma.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %usedma.i, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmabuf.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %dmabuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmabuf.i, align 4
  %datalen.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %datalen.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datalen.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i, align 1
  %11 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %d, align 1
  br label %do.body.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %13, i32 4096
  %datalen2.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %datalen2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %datalen2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr1.i, i32 %15
  call void @mmiocpy(ptr noundef nonnull %d, ptr noundef %add.ptr3.i, i32 noundef 1) #9
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i, label %do.body.i.cafe_read_buf.exit_crit_edge, label %do.body6.i

do.body.i.cafe_read_buf.exit_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cafe_read_buf.exit

do.body6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_read_buf.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_read_byte, %cafe_read_buf.exit)) #9
          to label %if.then12.i [label %cafe_read_buf.exit], !srcloc !196

if.then12.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  %pdev.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %datalen13.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %datalen13.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %datalen13.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_read_buf.__UNIQUE_ID_ddebug259, ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef 1, i32 noundef %20) #9
  br label %cafe_read_buf.exit

cafe_read_buf.exit:                               ; preds = %if.then12.i, %do.body6.i, %do.body.i.cafe_read_buf.exit_crit_edge
  %datalen18.i = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %datalen18.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %datalen18.i, align 4
  %add.i = add i32 %22, 1
  store i32 %add.i, ptr %datalen18.i, align 4
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %cafe_read_buf.exit.do.end10_crit_edge, label %do.body1

cafe_read_buf.exit.do.end10_crit_edge:            ; preds = %cafe_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %cafe_read_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_read_byte.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_read_byte, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !196

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %d, align 1
  %conv = zext i8 %27 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_read_byte.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %conv) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %cafe_read_buf.exit.do.end10_crit_edge
  %28 = ptrtoint ptr %d to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %d, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #9
  ret i8 %29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_read_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %usedma = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usedma, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmabuf = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmabuf, align 4
  %datalen = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datalen, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %do.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr1 = getelementptr i8, ptr %10, i32 4096
  %datalen2 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %datalen2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen2, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %12
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr3, i32 noundef %len) #9
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool4.not = icmp eq i32 %13, 0
  br i1 %tobool4.not, label %do.body.do.end17_crit_edge, label %do.body6

do.body.do.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_read_buf.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_read_buf, %do.end17)) #9
          to label %if.then12 [label %do.end17], !srcloc !196

if.then12:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %datalen13 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %datalen13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %datalen13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_read_buf.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %len, i32 noundef %17) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then12, %do.body6, %do.body.do.end17_crit_edge
  %datalen18 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %datalen18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datalen18, align 4
  %add = add i32 %19, %len
  store i32 %add, ptr %datalen18, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_write_buf(ptr nocapture noundef readonly %chip, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %usedma = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %usedma to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usedma, align 4, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dmabuf = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmabuf, align 4
  %datalen = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %datalen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %datalen, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %len)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr1 = getelementptr i8, ptr %10, i32 8192
  %datalen2 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %datalen2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datalen2, align 4
  %add.ptr3 = getelementptr i8, ptr %add.ptr1, i32 %12
  tail call void @mmiocpy(ptr noundef %add.ptr3, ptr noundef %buf, i32 noundef %len) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %datalen4 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %datalen4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %datalen4, align 4
  %add = add i32 %14, %len
  store i32 %add, ptr %datalen4, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end.do.end18_crit_edge, label %do.body7

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.body7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_write_buf.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_write_buf, %do.end18)) #9
          to label %if.then13 [label %do.end18], !srcloc !196

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %datalen4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %datalen4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_write_buf.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %len, i32 noundef %19) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then13, %do.body7, %if.end.do.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_select_chip(ptr nocapture noundef readonly %chip, i32 noundef %chipnr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.body1

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end10

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_select_chip.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_select_chip, %do.end10)) #9
          to label %if.then7 [label %do.end10], !srcloc !196

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_select_chip.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %chipnr) #9
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body1, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chipnr)
  %tobool11.not = icmp eq i32 %chipnr, 0
  %ctl113 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ctl113 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctl113, align 4
  %and = and i32 %6, -524289
  %masksel = select i1 %tobool11.not, i32 0, i32 524288
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %ctl113, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_get_set_features_notsupp(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %id, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  %and = and i32 %5, 1879048191
  %6 = tail call i32 @llvm.bswap.i32(i32 %and)
  %7 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #9, !srcloc !202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %entry
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %do.body6.cleanup_crit_edge, label %do.body9

do.body6.cleanup_crit_edge:                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body9:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_interrupt.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_interrupt, %cleanup)) #9
          to label %if.then16 [label %cleanup], !srcloc !196

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !197
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_interrupt.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %5, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body9, %do.body6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then16 ], [ 1, %do.body6.cleanup_crit_edge ], [ 1, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_wait_ready(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_attach_chip(ptr nocapture noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dmaaddr = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 2112, ptr noundef %dmaaddr, i32 noundef 3264, i32 noundef 0) #9
  %dmabuf = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dmabuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %dmabuf, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dmaaddr, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #9, !srcloc !202
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr11 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #9, !srcloc !202
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %do.body.do.end35_crit_edge, label %do.body15

do.body.do.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end35

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_attach_chip.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_attach_chip, %do.end35)) #9
          to label %if.then21 [label %do.end35], !srcloc !196

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev, align 8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !197
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !270
  %19 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmabuf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_attach_chip.__UNIQUE_ID_ddebug274, ptr noundef %dev23, ptr noundef nonnull @.str.46, i32 noundef %18, ptr noundef %20) #9
  br label %do.end35

do.end35:                                         ; preds = %if.then21, %do.body15, %do.body.do.end35_crit_edge
  %21 = load i32, ptr @usedma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool36 = icmp ne i32 %21, 0
  %usedma = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 10
  %frombool37 = zext i1 %tobool36 to i8
  %22 = ptrtoint ptr %usedma to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool37, ptr %usedma, align 4
  %ctl2 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %ctl2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 134217728, ptr %ctl2, align 8
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %24 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %writesize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %cmp = icmp eq i32 %25, 2048
  %spec.store.select = select i1 %cmp, i32 671088640, i32 134217728
  %26 = ptrtoint ptr %ctl2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select, ptr %ctl2, align 8
  %ooblayout1.i = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 15
  %27 = ptrtoint ptr %ooblayout1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cafe_ooblayout_ops, ptr %ooblayout1.i, align 8
  %28 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %writesize, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %29, label %do.end55 [
    i32 2048, label %do.end35.if.end60_crit_edge
    i32 512, label %if.then47
  ]

do.end35.if.end60_crit_edge:                      ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then47:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.end55:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev57 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev57, ptr noundef nonnull @.str.47, i32 noundef %29) #13
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %dev80 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dmabuf, align 4
  %37 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dmaaddr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev80, i32 noundef 2112, ptr noundef %36, i32 noundef %38, i32 noundef 0) #9
  br label %cleanup

if.end60:                                         ; preds = %if.then47, %do.end35.if.end60_crit_edge
  %cafe_bbt_main_descr_512.sink = phi ptr [ @cafe_bbt_main_descr_512, %if.then47 ], [ @cafe_bbt_main_descr_2048, %do.end35.if.end60_crit_edge ]
  %cafe_bbt_mirror_descr_512.sink = phi ptr [ @cafe_bbt_mirror_descr_512, %if.then47 ], [ @cafe_bbt_mirror_descr_2048, %do.end35.if.end60_crit_edge ]
  %bbt_td49 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %bbt_td49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %cafe_bbt_main_descr_512.sink, ptr %bbt_td49, align 4
  %bbt_md51 = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 14
  %40 = ptrtoint ptr %bbt_md51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cafe_bbt_mirror_descr_512.sink, ptr %bbt_md51, align 8
  %ecc = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33
  %41 = ptrtoint ptr %ecc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %ecc, align 8
  %placement = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 1
  %42 = ptrtoint ptr %placement to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %placement, align 4
  %43 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %writesize, align 4
  %size = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 4
  %45 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %size, align 8
  %bytes = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 5
  %46 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 14, ptr %bytes, align 4
  %strength = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 7
  %47 = ptrtoint ptr %strength to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %strength, align 4
  %write_page = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 21
  %48 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @cafe_nand_write_page_lowlevel, ptr %write_page, align 4
  %write_oob = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 25
  %49 = ptrtoint ptr %write_oob to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cafe_nand_write_oob, ptr %write_oob, align 4
  %read_page = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 18
  %50 = ptrtoint ptr %read_page to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @cafe_nand_read_page, ptr %read_page, align 8
  %read_oob = getelementptr inbounds %struct.nand_chip, ptr %1, i32 0, i32 33, i32 24
  %51 = ptrtoint ptr %read_oob to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @cafe_nand_read_oob, ptr %read_oob, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -524, %do.end55 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cafe_nand_detach_chip(ptr nocapture noundef readonly %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dmabuf = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %dmabuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dmabuf, align 4
  %dmaaddr = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dmaaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmaaddr, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 2112, ptr noundef %5, i32 noundef %7, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_write_page_lowlevel(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
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
  %call2 = tail call i32 @nand_prog_page_begin_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %3) #9
  %write_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_buf, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %6 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %8 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oobsize, align 4
  tail call void %5(ptr noundef %chip, ptr noundef %7, i32 noundef %9) #9
  %ctl2 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %ctl2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctl2, align 8
  %or = or i32 %11, 1073741824
  store i32 %or, ptr %ctl2, align 8
  %call3 = tail call i32 @nand_prog_page_end_op(ptr noundef %chip) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_write_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %0 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %writesize, align 4
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %2 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oobsize, align 4
  %call1 = tail call i32 @nand_prog_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef %1, ptr noundef %3, i32 noundef %5) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_read_page(ptr noundef %chip, ptr noundef %buf, i32 noundef %oob_required, i32 noundef %page) #2 align 64 {
entry:
  %syn = alloca [8 x i16], align 2
  %pat = alloca [4 x i16], align 8
  %pos = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 34
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body2

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_read_page, %do.end21)) #9
          to label %if.then8 [label %do.end21], !srcloc !196

if.then8:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  %pdev = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %mmio = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 60
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !197
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  %9 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mmio, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 80
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #9, !srcloc !197
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_read_page.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %8, i32 noundef %12) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then8, %do.body2, %entry.do.end21_crit_edge
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %call22 = tail call i32 @nand_read_page_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %buf, i32 noundef %14) #9
  %read_buf = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_buf, align 8
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %17 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %19 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oobsize, align 4
  tail call void %16(ptr noundef %chip, ptr noundef %18, i32 noundef %20) #9
  %21 = load i32, ptr @checkecc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool23.not = icmp eq i32 %21, 0
  br i1 %tobool23.not, label %do.end21.if.end267_crit_edge, label %land.lhs.true

do.end21.if.end267_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end267

land.lhs.true:                                    ; preds = %do.end21
  %mmio26 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mmio26, align 4
  %add.ptr27 = getelementptr i8, ptr %23, i32 60
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #9, !srcloc !197
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  %25 = and i32 %24, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  br i1 %tobool31.not, label %land.lhs.true.if.end267_crit_edge, label %if.then32

land.lhs.true.if.end267_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end267

if.then32:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %syn) #9
  %26 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 1
  %27 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 2
  %28 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 3
  %29 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 4
  %30 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 5
  %31 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 6
  %32 = getelementptr inbounds [8 x i16], ptr %syn, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pat) #9
  %33 = ptrtoint ptr %pat to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 -1, ptr %pat, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pos) #9
  %34 = call ptr @memset(ptr %pos, i32 255, i32 16)
  %35 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %oob_poi, align 4
  %rs = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 3
  %37 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio26, align 4
  %add.ptr38 = getelementptr i8, ptr %38, i32 80
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #9, !srcloc !197
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %41 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rs, align 8
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %index_of = getelementptr inbounds %struct.rs_codec, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %index_of to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %index_of, align 4
  %and43 = and i32 %40, 4095
  %arrayidx = getelementptr i16, ptr %46, i32 %and43
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx, align 2
  %49 = ptrtoint ptr %syn to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %syn, align 2
  %50 = load ptr, ptr %42, align 4
  %index_of47 = getelementptr inbounds %struct.rs_codec, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %index_of47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %index_of47, align 4
  %shr = lshr i32 %40, 16
  %and48 = and i32 %shr, 4095
  %arrayidx49 = getelementptr i16, ptr %52, i32 %and48
  %53 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx49, align 2
  %55 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %26, align 2
  %56 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio26, align 4
  %add.ptr39.1 = getelementptr i8, ptr %57, i32 84
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.1) #9, !srcloc !197
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %60 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rs, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %index_of.1 = getelementptr inbounds %struct.rs_codec, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %index_of.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %index_of.1, align 4
  %and43.1 = and i32 %59, 4095
  %arrayidx.1 = getelementptr i16, ptr %65, i32 %and43.1
  %66 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx.1, align 2
  %68 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %27, align 2
  %69 = load ptr, ptr %61, align 4
  %index_of47.1 = getelementptr inbounds %struct.rs_codec, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %index_of47.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %index_of47.1, align 4
  %shr.1 = lshr i32 %59, 16
  %and48.1 = and i32 %shr.1, 4095
  %arrayidx49.1 = getelementptr i16, ptr %71, i32 %and48.1
  %72 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %arrayidx49.1, align 2
  %74 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %28, align 2
  %75 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mmio26, align 4
  %add.ptr39.2 = getelementptr i8, ptr %76, i32 88
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.2) #9, !srcloc !197
  %78 = tail call i32 @llvm.bswap.i32(i32 %77)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %79 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rs, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %index_of.2 = getelementptr inbounds %struct.rs_codec, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %index_of.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %index_of.2, align 4
  %and43.2 = and i32 %78, 4095
  %arrayidx.2 = getelementptr i16, ptr %84, i32 %and43.2
  %85 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx.2, align 2
  %87 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %86, ptr %29, align 2
  %88 = load ptr, ptr %80, align 4
  %index_of47.2 = getelementptr inbounds %struct.rs_codec, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %index_of47.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %index_of47.2, align 4
  %shr.2 = lshr i32 %78, 16
  %and48.2 = and i32 %shr.2, 4095
  %arrayidx49.2 = getelementptr i16, ptr %90, i32 %and48.2
  %91 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %arrayidx49.2, align 2
  %93 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %92, ptr %30, align 2
  %94 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio26, align 4
  %add.ptr39.3 = getelementptr i8, ptr %95, i32 92
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.3) #9, !srcloc !197
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  %98 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rs, align 8
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %index_of.3 = getelementptr inbounds %struct.rs_codec, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %index_of.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %index_of.3, align 4
  %and43.3 = and i32 %97, 4095
  %arrayidx.3 = getelementptr i16, ptr %103, i32 %and43.3
  %104 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx.3, align 2
  %106 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %31, align 2
  %107 = load ptr, ptr %99, align 4
  %index_of47.3 = getelementptr inbounds %struct.rs_codec, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %index_of47.3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %index_of47.3, align 4
  %shr.3 = lshr i32 %97, 16
  %and48.3 = and i32 %shr.3, 4095
  %arrayidx49.3 = getelementptr i16, ptr %109, i32 %and48.3
  %110 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %arrayidx49.3, align 2
  %112 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %32, align 2
  %call55 = call i32 @decode_rs16(ptr noundef %99, ptr noundef null, ptr noundef null, i32 noundef 1367, ptr noundef nonnull %syn, i32 noundef 0, ptr noundef nonnull %pos, i16 noundef zeroext 0, ptr noundef nonnull %pat) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp57358 = icmp sgt i32 %call55, 0
  br i1 %cmp57358, label %for.body58.lr.ph, label %if.then32.for.end188_crit_edge

if.then32.for.end188_crit_edge:                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end188

for.body58.lr.ph:                                 ; preds = %if.then32
  %arrayidx82 = getelementptr i8, ptr %buf, i32 2047
  br label %for.body58

for.body58:                                       ; preds = %if.end186.for.body58_crit_edge, %for.body58.lr.ph
  %i.1360 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc, %if.end186.for.body58_crit_edge ]
  %n.0359 = phi i32 [ %call55, %for.body58.lr.ph ], [ %n.1, %if.end186.for.body58_crit_edge ]
  %arrayidx59 = getelementptr [4 x i32], ptr %pos, i32 0, i32 %i.1360
  %113 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1374, i32 %114)
  %cmp60 = icmp sgt i32 %114, 1374
  br i1 %cmp60, label %for.body58.if.end186_crit_edge, label %if.else

for.body58.if.end186_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.else:                                          ; preds = %for.body58
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %114, label %if.else92 [
    i32 0, label %if.then63
    i32 1365, label %if.then78
  ]

if.then63:                                        ; preds = %if.else
  %arrayidx64 = getelementptr [4 x i16], ptr %pat, i32 0, i32 %i.1360
  %116 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %117)
  %cmp65 = icmp ugt i16 %117, 255
  br i1 %cmp65, label %if.then63.if.end186_crit_edge, label %if.else68

if.then63.if.end186_crit_edge:                    ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end186

if.else68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i16 %117 to i8
  %118 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %buf, align 1
  br label %if.end186.sink.split

if.then78:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx79 = getelementptr [4 x i16], ptr %pat, i32 0, i32 %i.1360
  %120 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx79, align 2
  %122 = lshr i16 %121, 4
  %123 = trunc i16 %122 to i8
  %124 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx82, align 1
  %xor84 = xor i8 %125, %123
  store i8 %xor84, ptr %arrayidx82, align 1
  %conv87 = trunc i16 %121 to i8
  %shl = shl i8 %conv87, 4
  %126 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %36, align 1
  br label %if.end186.sink.split

if.else92:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1365, i32 %114)
  %cmp93 = icmp sgt i32 %114, 1365
  %and96 = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %cmp97.not = icmp eq i32 %and96, 0
  %arrayidx119 = getelementptr [4 x i16], ptr %pat, i32 0, i32 %i.1360
  %128 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx119, align 2
  br i1 %cmp93, label %if.then95, label %if.else139

if.then95:                                        ; preds = %if.else92
  br i1 %cmp97.not, label %if.else118, label %if.then99

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %130 = lshr i16 %129, 4
  %131 = trunc i16 %130 to i8
  %div353.lhs.trunc = mul nuw nsw i32 %114, 3
  %div353354355 = lshr i32 %div353.lhs.trunc, 1
  %sub = add nsw i32 %div353354355, -2048
  %arrayidx104 = getelementptr i8, ptr %36, i32 %sub
  %132 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx104, align 1
  %xor106 = xor i8 %133, %131
  store i8 %xor106, ptr %arrayidx104, align 1
  %134 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx119, align 2
  %conv109 = trunc i16 %135 to i8
  %shl110 = shl i8 %conv109, 4
  %sub113 = add nsw i32 %div353354355, -2047
  %arrayidx114 = getelementptr i8, ptr %36, i32 %sub113
  %136 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx114, align 1
  br label %if.end186.sink.split

if.else118:                                       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  %138 = lshr i16 %129, 8
  %139 = trunc i16 %138 to i8
  %div123351.lhs.trunc = mul nuw nsw i32 %114, 3
  %div123351352356 = lshr i32 %div123351.lhs.trunc, 1
  %sub124 = add nsw i32 %div123351352356, -2049
  %arrayidx125 = getelementptr i8, ptr %36, i32 %sub124
  %140 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx125, align 1
  %xor127 = xor i8 %141, %139
  store i8 %xor127, ptr %arrayidx125, align 1
  %142 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx119, align 2
  %conv130 = trunc i16 %143 to i8
  %sub133 = add nsw i32 %div123351352356, -2048
  %arrayidx134 = getelementptr i8, ptr %36, i32 %sub133
  %144 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx134, align 1
  br label %if.end186.sink.split

if.else139:                                       ; preds = %if.else92
  br i1 %cmp97.not, label %if.else163, label %if.then143

if.then143:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  %146 = lshr i16 %129, 4
  %147 = trunc i16 %146 to i8
  %mul147 = mul i32 %114, 3
  %div148 = sdiv i32 %mul147, 2
  %arrayidx149 = getelementptr i8, ptr %buf, i32 %div148
  %148 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx149, align 1
  %xor151 = xor i8 %149, %147
  store i8 %xor151, ptr %arrayidx149, align 1
  %conv154 = trunc i16 %129 to i8
  %shl155 = shl i8 %conv154, 4
  %add158 = add nsw i32 %div148, 1
  %arrayidx159 = getelementptr i8, ptr %buf, i32 %add158
  %150 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx159, align 1
  br label %if.end186.sink.split

if.else163:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  %152 = lshr i16 %129, 8
  %153 = trunc i16 %152 to i8
  %mul167 = mul i32 %114, 3
  %div168 = sdiv i32 %mul167, 2
  %sub169 = add nsw i32 %div168, -1
  %arrayidx170 = getelementptr i8, ptr %buf, i32 %sub169
  %154 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx170, align 1
  %xor172 = xor i8 %155, %153
  store i8 %xor172, ptr %arrayidx170, align 1
  %conv175 = trunc i16 %129 to i8
  %arrayidx178 = getelementptr i8, ptr %buf, i32 %div168
  %156 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx178, align 1
  br label %if.end186.sink.split

if.end186.sink.split:                             ; preds = %if.else163, %if.then143, %if.else118, %if.then99, %if.then78, %if.else68
  %conv.sink = phi i8 [ %conv, %if.else68 ], [ %conv130, %if.else118 ], [ %137, %if.then99 ], [ %conv175, %if.else163 ], [ %shl155, %if.then143 ], [ %shl, %if.then78 ]
  %.sink = phi i8 [ %119, %if.else68 ], [ %145, %if.else118 ], [ %shl110, %if.then99 ], [ %157, %if.else163 ], [ %151, %if.then143 ], [ %127, %if.then78 ]
  %buf.sink = phi ptr [ %buf, %if.else68 ], [ %arrayidx134, %if.else118 ], [ %arrayidx114, %if.then99 ], [ %arrayidx178, %if.else163 ], [ %arrayidx159, %if.then143 ], [ %36, %if.then78 ]
  %xor = xor i8 %.sink, %conv.sink
  %158 = ptrtoint ptr %buf.sink to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %xor, ptr %buf.sink, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.end186.sink.split, %if.then63.if.end186_crit_edge, %for.body58.if.end186_crit_edge
  %n.1 = phi i32 [ -1374, %for.body58.if.end186_crit_edge ], [ -2048, %if.then63.if.end186_crit_edge ], [ %n.0359, %if.end186.sink.split ]
  %inc = add nuw nsw i32 %i.1360, 1
  %cmp57 = icmp slt i32 %inc, %n.1
  br i1 %cmp57, label %if.end186.for.body58_crit_edge, label %if.end186.for.end188_crit_edge

if.end186.for.end188_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end188

if.end186.for.body58_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58

for.end188:                                       ; preds = %if.end186.for.end188_crit_edge, %if.then32.for.end188_crit_edge
  %n.0.lcssa = phi i32 [ %call55, %if.then32.for.end188_crit_edge ], [ %n.1, %if.end186.for.end188_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.0.lcssa)
  %cmp189 = icmp slt i32 %n.0.lcssa, 0
  br i1 %cmp189, label %do.body192, label %do.body241

do.body192:                                       ; preds = %for.end188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_read_page, %do.end226)) #9
          to label %if.then206 [label %do.end226], !srcloc !196

if.then206:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #11
  %pdev207 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %159 = ptrtoint ptr %pdev207 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %pdev207, align 8
  %dev208 = getelementptr inbounds %struct.pci_dev, ptr %160, i32 0, i32 44
  %161 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mmio26, align 4
  %add.ptr212 = getelementptr i8, ptr %162, i32 32
  %163 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #9, !srcloc !197
  %164 = call i32 @llvm.bswap.i32(i32 %163)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  %mul216 = shl i32 %164, 11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_read_page.__UNIQUE_ID_ddebug270, ptr noundef %dev208, ptr noundef nonnull @.str.50, i32 noundef %mul216) #9
  br label %do.end226

do.end226:                                        ; preds = %do.end226.do.end226_crit_edge, %if.then206, %do.body192
  %i.2361 = phi i32 [ %add237, %do.end226.do.end226_crit_edge ], [ 0, %do.body192 ], [ 0, %if.then206 ]
  %165 = ptrtoint ptr %mmio26 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio26, align 4
  %add.ptr231 = getelementptr i8, ptr %166, i32 %i.2361
  %167 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #9, !srcloc !197
  %168 = call i32 @llvm.bswap.i32(i32 %167)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %i.2361, i32 noundef %168) #13
  %add237 = add nuw nsw i32 %i.2361, 4
  %cmp221 = icmp ult i32 %i.2361, 88
  br i1 %cmp221, label %do.end226.do.end226_crit_edge, label %for.end238

do.end226.do.end226_crit_edge:                    ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end226

for.end238:                                       ; preds = %do.end226
  call void @__sanitizer_cov_trace_pc() #11
  %failed = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52, i32 1
  br label %if.end266

do.body241:                                       ; preds = %for.end188
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cafe_nand_read_page, %do.end260)) #9
          to label %if.then255 [label %do.end260], !srcloc !196

if.then255:                                       ; preds = %do.body241
  call void @__sanitizer_cov_trace_pc() #11
  %pdev256 = getelementptr inbounds %struct.cafe_priv, ptr %1, i32 0, i32 1
  %169 = ptrtoint ptr %pdev256 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pdev256, align 8
  %dev257 = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cafe_nand_read_page.__UNIQUE_ID_ddebug271, ptr noundef %dev257, ptr noundef nonnull @.str.51, i32 noundef %n.0.lcssa) #9
  br label %do.end260

do.end260:                                        ; preds = %if.then255, %do.body241
  %ecc_stats261 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 52
  br label %if.end266

if.end266:                                        ; preds = %do.end260, %for.end238
  %ecc_stats261.sink363 = phi ptr [ %ecc_stats261, %do.end260 ], [ %failed, %for.end238 ]
  %n.0.lcssa.sink = phi i32 [ %n.0.lcssa, %do.end260 ], [ 1, %for.end238 ]
  %max_bitflips.0 = phi i32 [ %n.0.lcssa, %do.end260 ], [ 0, %for.end238 ]
  %171 = ptrtoint ptr %ecc_stats261.sink363 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ecc_stats261.sink363, align 4
  %add262 = add i32 %172, %n.0.lcssa.sink
  store i32 %add262, ptr %ecc_stats261.sink363, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pos) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pat) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %syn) #9
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %land.lhs.true.if.end267_crit_edge, %do.end21.if.end267_crit_edge
  %max_bitflips.1 = phi i32 [ %max_bitflips.0, %if.end266 ], [ 0, %land.lhs.true.if.end267_crit_edge ], [ 0, %do.end21.if.end267_crit_edge ]
  ret i32 %max_bitflips.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cafe_nand_read_oob(ptr noundef %chip, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %oob_poi = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %oob_poi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %oob_poi, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oobsize, align 4
  %call1 = tail call i32 @nand_read_oob_op(ptr noundef %chip, i32 noundef %page, i32 noundef 0, ptr noundef %1, i32 noundef %3) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cafe_ooblayout_ecc(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  store i32 0, ptr %oobregion, align 4
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
define internal i32 @cafe_ooblayout_free(ptr nocapture noundef readonly %mtd, i32 noundef %section, ptr nocapture noundef writeonly %oobregion) #8 align 64 {
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
  %total = getelementptr inbounds %struct.nand_chip, ptr %mtd, i32 0, i32 33, i32 6
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 8
  %2 = ptrtoint ptr %oobregion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %oobregion, align 4
  %oobsize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 6
  %3 = ptrtoint ptr %oobsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %oobsize, align 4
  %5 = load i32, ptr %total, align 8
  %sub = sub i32 %4, %5
  %length = getelementptr inbounds %struct.mtd_oob_region, ptr %oobregion, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %length, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_begin_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_end_op(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_prog_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_page_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs16(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_oob_op(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_scan_with_ids(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !45, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !144, !145, !146, !148, !149, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__param_usedma, !1, !"__param_usedma", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_usedmatype251, !1, !"__UNIQUE_ID_usedmatype251", i1 false, i1 false}
!3 = !{ptr @__param_skipbbt, !4, !"__param_skipbbt", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 80, i32 1}
!5 = !{ptr @__UNIQUE_ID_skipbbttype252, !4, !"__UNIQUE_ID_skipbbttype252", i1 false, i1 false}
!6 = !{ptr @__param_debug, !7, !"__param_debug", i1 false, i1 false}
!7 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 83, i32 1}
!8 = !{ptr @__UNIQUE_ID_debugtype253, !7, !"__UNIQUE_ID_debugtype253", i1 false, i1 false}
!9 = !{ptr @__param_regdebug, !10, !"__param_regdebug", i1 false, i1 false}
!10 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 86, i32 1}
!11 = !{ptr @__UNIQUE_ID_regdebugtype254, !10, !"__UNIQUE_ID_regdebugtype254", i1 false, i1 false}
!12 = !{ptr @__param_checkecc, !13, !"__param_checkecc", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 89, i32 1}
!14 = !{ptr @__UNIQUE_ID_checkecctype255, !13, !"__UNIQUE_ID_checkecctype255", i1 false, i1 false}
!15 = !{ptr @__param_timing, !16, !"__param_timing", i1 false, i1 false}
!16 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 93, i32 1}
!17 = !{ptr @__UNIQUE_ID_timingtype256, !16, !"__UNIQUE_ID_timingtype256", i1 false, i1 false}
!18 = !{ptr @__initcall__kmod_cafe_nand__278_883_cafe_nand_pci_driver_init6, !19, !"__initcall__kmod_cafe_nand__278_883_cafe_nand_pci_driver_init6", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 883, i32 1}
!20 = !{ptr @__exitcall_cafe_nand_pci_driver_exit, !19, !"__exitcall_cafe_nand_pci_driver_exit", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_file279, !22, !"__UNIQUE_ID_file279", i1 false, i1 false}
!22 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 885, i32 1}
!23 = !{ptr @__UNIQUE_ID_license280, !22, !"__UNIQUE_ID_license280", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_author281, !25, !"__UNIQUE_ID_author281", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 886, i32 1}
!26 = !{ptr @__UNIQUE_ID_description282, !27, !"__UNIQUE_ID_description282", i1 false, i1 false}
!27 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 887, i32 1}
!28 = !{ptr @__param_str_usedma, !1, !"__param_str_usedma", i1 false, i1 false}
!29 = !{ptr @usedma, !30, !"usedma", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 76, i32 12}
!31 = !{ptr @__param_str_skipbbt, !4, !"__param_str_skipbbt", i1 false, i1 false}
!32 = !{ptr @skipbbt, !33, !"skipbbt", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 79, i32 12}
!34 = !{ptr @__param_str_debug, !7, !"__param_str_debug", i1 false, i1 false}
!35 = !{ptr @debug, !36, !"debug", i1 false, i1 false}
!36 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 82, i32 12}
!37 = !{ptr @__param_str_regdebug, !10, !"__param_str_regdebug", i1 false, i1 false}
!38 = !{ptr @regdebug, !39, !"regdebug", i1 false, i1 false}
!39 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 85, i32 12}
!40 = !{ptr @__param_str_checkecc, !13, !"__param_str_checkecc", i1 false, i1 false}
!41 = !{ptr @checkecc, !42, !"checkecc", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 88, i32 12}
!43 = !{ptr @__param_str_timing, !16, !"__param_str_timing", i1 false, i1 false}
!44 = !{ptr @__param_arr_timing, !16, !"__param_arr_timing", i1 false, i1 false}
!45 = !{ptr @numtimings, !46, !"numtimings", i1 false, i1 false}
!46 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 91, i32 21}
!47 = !{ptr @timing, !48, !"timing", i1 false, i1 false}
!48 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 92, i32 12}
!49 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.1, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 876, i32 10}
!52 = !{ptr @cafe_nand_pci_driver, !53, !"cafe_nand_pci_driver", i1 false, i1 false}
!53 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 875, i32 26}
!54 = !{ptr @cafe_nand_tbl, !55, !"cafe_nand_tbl", i1 false, i1 false}
!55 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 827, i32 35}
!56 = !{ptr @.str.2, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 692, i32 3}
!58 = !{ptr @.str.3, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.4, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cafe_nand_probe._entry, !57, !"_entry", i1 false, i1 false}
!63 = !{ptr @cafe_nand_probe._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.8, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 721, i32 3}
!66 = !{ptr @cafe_nand_probe._entry.7, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cafe_nand_probe._entry_ptr.9, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.10, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 725, i32 3}
!70 = !{ptr @cafe_nand_probe.__UNIQUE_ID_ddebug275, !69, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!71 = !{ptr @.str.11, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 733, i32 4}
!73 = !{ptr @cafe_nand_probe.__UNIQUE_ID_ddebug276, !72, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!74 = !{ptr @.str.13, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 736, i32 4}
!76 = !{ptr @cafe_nand_probe._entry.12, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cafe_nand_probe._entry_ptr.14, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 751, i32 6}
!80 = !{ptr @.str.17, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 753, i32 3}
!82 = !{ptr @cafe_nand_probe._entry.16, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @cafe_nand_probe._entry_ptr.18, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.19, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 770, i32 2}
!86 = !{ptr @cafe_nand_probe.__UNIQUE_ID_ddebug277, !85, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!87 = !{ptr @.str.20, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 169, i32 2}
!89 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug261, !88, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!91 = !{ptr @.str.22, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 177, i32 3}
!93 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug262, !92, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 237, i32 3}
!96 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug263, !95, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!97 = !{ptr @.str.24, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 248, i32 2}
!99 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug264, !98, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 270, i32 3}
!102 = !{ptr @cafe_nand_cmdfunc._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cafe_nand_cmdfunc._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 272, i32 4}
!106 = !{ptr @cafe_nand_cmdfunc._entry.26, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cafe_nand_cmdfunc._entry_ptr.28, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 290, i32 5}
!110 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug265, !109, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 294, i32 3}
!113 = !{ptr @cafe_nand_cmdfunc.__UNIQUE_ID_ddebug266, !112, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 112, i32 2}
!116 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @cafe_device_ready.__UNIQUE_ID_ddebug257, !115, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!118 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.34, !115, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 155, i32 2}
!122 = !{ptr @.str.36, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @cafe_read_byte.__UNIQUE_ID_ddebug260, !121, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 144, i32 2}
!126 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @cafe_read_buf.__UNIQUE_ID_ddebug259, !125, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 131, i32 2}
!130 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @cafe_write_buf.__UNIQUE_ID_ddebug258, !129, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 321, i32 2}
!134 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cafe_select_chip.__UNIQUE_ID_ddebug267, !133, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 341, i32 2}
!138 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @cafe_nand_interrupt.__UNIQUE_ID_ddebug268, !137, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!140 = !{ptr @cafe_nand_controller_ops, !141, !"cafe_nand_controller_ops", i1 false, i1 false}
!141 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 657, i32 41}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 606, i32 2}
!144 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @cafe_nand_attach_chip.__UNIQUE_ID_ddebug274, !143, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!146 = !{ptr @.str.47, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 625, i32 3}
!148 = !{ptr @cafe_nand_attach_chip._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @cafe_nand_attach_chip._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @cafe_ooblayout_ops, !151, !"cafe_ooblayout_ops", i1 false, i1 false}
!151 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 478, i32 39}
!152 = !{ptr @cafe_bbt_main_descr_2048, !153, !"cafe_bbt_main_descr_2048", i1 false, i1 false}
!153 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 492, i32 30}
!154 = !{ptr @cafe_bbt_pattern_2048, !155, !"cafe_bbt_pattern_2048", i1 false, i1 false}
!155 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 485, i32 16}
!156 = !{ptr @cafe_bbt_mirror_descr_2048, !157, !"cafe_bbt_mirror_descr_2048", i1 false, i1 false}
!157 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 502, i32 30}
!158 = !{ptr @cafe_mirror_pattern_2048, !159, !"cafe_mirror_pattern_2048", i1 false, i1 false}
!159 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 486, i32 16}
!160 = !{ptr @cafe_bbt_main_descr_512, !161, !"cafe_bbt_main_descr_512", i1 false, i1 false}
!161 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 512, i32 30}
!162 = !{ptr @cafe_bbt_pattern_512, !163, !"cafe_bbt_pattern_512", i1 false, i1 false}
!163 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 488, i32 16}
!164 = !{ptr @cafe_bbt_mirror_descr_512, !165, !"cafe_bbt_mirror_descr_512", i1 false, i1 false}
!165 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 522, i32 30}
!166 = !{ptr @cafe_mirror_pattern_512, !167, !"cafe_mirror_pattern_512", i1 false, i1 false}
!167 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 489, i32 16}
!168 = !{ptr @.str.48, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 377, i32 2}
!170 = !{ptr @.str.49, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug269, !169, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!172 = !{ptr @.str.50, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 435, i32 4}
!174 = !{ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug270, !173, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!175 = !{ptr @cafe_nand_read_page._entry, !176, !"_entry", i1 false, i1 false}
!176 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 438, i32 5}
!177 = !{ptr @cafe_nand_read_page._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.51, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 441, i32 4}
!180 = !{ptr @cafe_nand_read_page.__UNIQUE_ID_ddebug271, !179, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!181 = !{ptr @.str.52, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 95, i32 38}
!183 = !{ptr @.str.53, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 95, i32 53}
!185 = !{ptr @part_probes, !186, !"part_probes", i1 false, i1 false}
!186 = !{!"../drivers/mtd/nand/raw/cafe_nand.c", i32 95, i32 20}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{i64 2148300403, i64 2148300408, i64 2148300421, i64 2148300465, i64 2148300499, i64 2148300520}
!197 = !{i64 5386877}
!198 = !{i64 2154924720}
!199 = !{i64 2154925297}
!200 = !{i64 2154925874}
!201 = !{i64 2154930894}
!202 = !{i64 5386459}
!203 = !{i64 2154931370}
!204 = !{i64 2154931862}
!205 = !{i64 2154932376}
!206 = !{i64 2154932890}
!207 = !{i64 2154933408}
!208 = !{i64 2154935857}
!209 = !{i64 2154936180}
!210 = !{i64 2154936708}
!211 = !{i64 2154937216}
!212 = !{i64 2154937702}
!213 = !{i64 2154938205}
!214 = !{i64 2154938724}
!215 = !{i64 2154942254}
!216 = !{i64 2154942847}
!217 = !{i64 2154944289}
!218 = !{i64 2154945223}
!219 = !{i64 2154946665}
!220 = !{i64 2154947599}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i64 2154948447}
!223 = !{i64 2154948923}
!224 = !{i64 2154949419}
!225 = !{i64 2154949936}
!226 = !{i64 2154950450}
!227 = !{i64 2154950964}
!228 = !{i64 2154951746}
!229 = !{i64 2154952069}
!230 = !{i64 2154952597}
!231 = !{i64 2154953105}
!232 = !{i64 2154953591}
!233 = !{i64 2154954094}
!234 = !{i64 2154954639}
!235 = !{i64 2154955800}
!236 = !{i64 2154956302}
!237 = !{i64 2154858408}
!238 = !{i64 2154861640}
!239 = !{i64 2154862127}
!240 = !{i64 2154862646}
!241 = !{i64 2154863183}
!242 = !{i64 2154866537}
!243 = !{i64 2154867134}
!244 = !{i64 2154870630}
!245 = !{i64 2154870957}
!246 = !{i64 2154871477}
!247 = !{i8 0, i8 2}
!248 = !{i64 2154871990}
!249 = !{i64 2154875494}
!250 = !{i64 2154875797}
!251 = !{i64 2154876562}
!252 = !{i64 2154879794}
!253 = !{i64 2154879636}
!254 = !{i64 2154880099}
!255 = !{i64 2154883784}
!256 = !{i64 2154884652}
!257 = !{i64 2154885167}
!258 = !{i64 2154841568}
!259 = !{i64 2154842137}
!260 = !{i64 2154842436}
!261 = !{i64 2154846385}
!262 = !{i64 2154846968}
!263 = !{i64 2154847561}
!264 = !{!"auto-init"}
!265 = !{i64 2154888303}
!266 = !{i64 2154888630}
!267 = !{i64 2154891934}
!268 = !{i64 2154911166}
!269 = !{i64 2154911877}
!270 = !{i64 2154915476}
!271 = !{i64 2154895345}
!272 = !{i64 2154895926}
!273 = !{i64 2154896509}
!274 = !{i64 2154897130}
!275 = !{i64 2154900236}
!276 = !{i64 2154902061}
