; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_onfi.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_onfi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_controller_ops = type { ptr, ptr, ptr, ptr }
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i8, i8, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_manufacturer_desc = type { i32, ptr, ptr }
%struct.nand_manufacturer_ops = type { ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }
%struct.onfi_ext_param_page = type { i16, [4 x i8], [10 x i8], [8 x %struct.onfi_ext_section] }
%struct.onfi_ext_section = type { i8, i8 }
%struct.onfi_ext_ecc_info = type { i8, i8, i16, i16, [2 x i8] }

@nand_onfi_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014Could not find a valid ONFI parameter page, trying bit-wise majority to recover it\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nand_onfi_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/mtd/nand/raw/nand_onfi.c\00", [63 x i8] zeroinitializer }, align 32
@nand_onfi_detect._entry_ptr = internal global ptr @nand_onfi_detect._entry, section ".printk_index", align 4
@nand_onfi_detect._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ONFI parameter recovery failed, aborting\0A\00", [52 x i8] zeroinitializer }, align 32
@nand_onfi_detect._entry_ptr.6 = internal global ptr @nand_onfi_detect._entry.4, section ".printk_index", align 4
@nand_onfi_detect._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016unsupported ONFI version: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nand_onfi_detect._entry_ptr.9 = internal global ptr @nand_onfi_detect._entry.7, section ".printk_index", align 4
@nand_onfi_detect._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Failed to detect ONFI extended param page\0A\00", [51 x i8] zeroinitializer }, align 32
@nand_onfi_detect._entry_ptr.12 = internal global ptr @nand_onfi_detect._entry.10, section ".printk_index", align 4
@nand_onfi_detect._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014Could not retrieve ONFI ECC requirements\0A\00", [52 x i8] zeroinitializer }, align 32
@nand_onfi_detect._entry_ptr.15 = internal global ptr @nand_onfi_detect._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nand\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nand_flash_detect_ext_param_page\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fail in the CRC.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EPPS\00", [27 x i8] zeroinitializer }, align 32
@nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.20, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"The signature is invalid.\0A\00", [37 x i8] zeroinitializer }, align 32
@nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.21, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"We can not find the ECC section.\0A\00", [62 x i8] zeroinitializer }, align 32
@nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.3, ptr @.str.22, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid codeword size\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 203, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 209, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 233, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 293, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 295, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 65, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 73, i32 23 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 74, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 87, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [36 x i8] c"../drivers/mtd/nand/raw/nand_onfi.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 95, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @nand_onfi_detect._entry, ptr @nand_onfi_detect._entry.10, ptr @nand_onfi_detect._entry.13, ptr @nand_onfi_detect._entry.4, ptr @nand_onfi_detect._entry.7, ptr @nand_onfi_detect._entry_ptr, ptr @nand_onfi_detect._entry_ptr.12, ptr @nand_onfi_detect._entry_ptr.15, ptr @nand_onfi_detect._entry_ptr.6, ptr @nand_onfi_detect._entry_ptr.9, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_onfi_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_onfi_detect._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_onfi_detect._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_onfi_detect._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nand_onfi_detect._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @onfi_crc16(i16 noundef zeroext %crc, ptr nocapture noundef readonly %p, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not17 = icmp eq i32 %len, 0
  br i1 %tobool.not17, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %dec20.in = phi i32 [ %dec20, %while.body.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %p.addr.019 = phi ptr [ %incdec.ptr, %while.body.while.body_crit_edge ], [ %p, %entry.while.body_crit_edge ]
  %crc.addr.018 = phi i16 [ %xor8.7, %while.body.while.body_crit_edge ], [ %crc, %entry.while.body_crit_edge ]
  %dec20 = add i32 %dec20.in, -1
  %0 = ptrtoint ptr %p.addr.019 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.addr.019, align 1
  %conv = zext i8 %1 to i16
  %shl = shl nuw i16 %conv, 8
  %xor = xor i16 %shl, %crc.addr.018
  %shl5 = shl i16 %xor, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor)
  %tobool7.not.inv = icmp slt i16 %xor, 0
  %cond = select i1 %tobool7.not.inv, i16 -32763, i16 0
  %xor8 = xor i16 %cond, %shl5
  %shl5.1 = shl i16 %xor8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8)
  %tobool7.not.inv.1 = icmp slt i16 %xor8, 0
  %cond.1 = select i1 %tobool7.not.inv.1, i16 -32763, i16 0
  %xor8.1 = xor i16 %cond.1, %shl5.1
  %shl5.2 = shl i16 %xor8.1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.1)
  %tobool7.not.inv.2 = icmp slt i16 %xor8.1, 0
  %cond.2 = select i1 %tobool7.not.inv.2, i16 -32763, i16 0
  %xor8.2 = xor i16 %cond.2, %shl5.2
  %shl5.3 = shl i16 %xor8.2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.2)
  %tobool7.not.inv.3 = icmp slt i16 %xor8.2, 0
  %cond.3 = select i1 %tobool7.not.inv.3, i16 -32763, i16 0
  %xor8.3 = xor i16 %cond.3, %shl5.3
  %shl5.4 = shl i16 %xor8.3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.3)
  %tobool7.not.inv.4 = icmp slt i16 %xor8.3, 0
  %cond.4 = select i1 %tobool7.not.inv.4, i16 -32763, i16 0
  %xor8.4 = xor i16 %cond.4, %shl5.4
  %shl5.5 = shl i16 %xor8.4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.4)
  %tobool7.not.inv.5 = icmp slt i16 %xor8.4, 0
  %cond.5 = select i1 %tobool7.not.inv.5, i16 -32763, i16 0
  %xor8.5 = xor i16 %cond.5, %shl5.5
  %shl5.6 = shl i16 %xor8.5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.5)
  %tobool7.not.inv.6 = icmp slt i16 %xor8.5, 0
  %cond.6 = select i1 %tobool7.not.inv.6, i16 -32763, i16 0
  %xor8.6 = xor i16 %cond.6, %shl5.6
  %shl5.7 = shl i16 %xor8.6, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.6)
  %tobool7.not.inv.7 = icmp slt i16 %xor8.6, 0
  %cond.7 = select i1 %tobool7.not.inv.7, i16 -32763, i16 0
  %xor8.7 = xor i16 %cond.7, %shl5.7
  %incdec.ptr = getelementptr i8, ptr %p.addr.019, i32 1
  %tobool.not = icmp eq i32 %dec20, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %crc.addr.0.lcssa = phi i16 [ %crc, %entry.while.end_crit_edge ], [ %xor8.7, %while.body.while.end_crit_edge ]
  ret i16 %crc.addr.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nand_onfi_detect(ptr noundef %chip) local_unnamed_addr #2 align 64 {
entry:
  %id = alloca [4 x i8], align 4
  %srcbufs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #10
  %memorg.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4
  %call4 = call i32 @nand_readid_op(ptr noundef %chip, i8 noundef zeroext 32, ptr noundef nonnull %id, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup220_crit_edge

entry.cleanup220_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup220

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %lhsv = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330529865, i32 %lhsv)
  %.not = icmp eq i32 %lhsv, 1330529865
  br i1 %.not, label %if.end, label %lor.lhs.false.cleanup220_crit_edge

lor.lhs.false.cleanup220_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup220

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 768) #13
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end.cleanup220_crit_edge, label %if.end11

if.end.cleanup220_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup220

if.end11:                                         ; preds = %if.end
  %controller.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 32
  %3 = ptrtoint ptr %controller.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %controller.i, align 4
  %tobool.not.i352 = icmp eq ptr %4, null
  br i1 %tobool.not.i352, label %if.end11.if.then16_crit_edge, label %lor.lhs.false.i

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false.i:                                  ; preds = %if.end11
  %ops.i = getelementptr inbounds %struct.nand_controller, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %tobool2.not.i = icmp eq ptr %6, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then16_crit_edge, label %nand_has_exec_op.exit

lor.lhs.false.i.if.then16_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

nand_has_exec_op.exit:                            ; preds = %lor.lhs.false.i
  %exec_op.i = getelementptr inbounds %struct.nand_controller_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %exec_op.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %exec_op.i, align 4
  %tobool6.not.i.not = icmp eq ptr %8, null
  br i1 %tobool6.not.i.not, label %nand_has_exec_op.exit.if.then16_crit_edge, label %lor.lhs.false13

nand_has_exec_op.exit.if.then16_crit_edge:        ; preds = %nand_has_exec_op.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

lor.lhs.false13:                                  ; preds = %nand_has_exec_op.exit
  %call14 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef nonnull %call7.i.i, i32 noundef 256, i1 noundef zeroext true, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %lor.lhs.false13.if.then16_crit_edge, label %lor.lhs.false13.if.end17_crit_edge

lor.lhs.false13.if.end17_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

lor.lhs.false13.if.then16_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false13.if.then16_crit_edge, %nand_has_exec_op.exit.if.then16_crit_edge, %lor.lhs.false.i.if.then16_crit_edge, %if.end11.if.then16_crit_edge
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %lor.lhs.false13.if.end17_crit_edge
  %use_datain.0.off0 = phi i1 [ false, %lor.lhs.false13.if.end17_crit_edge ], [ true, %if.then16 ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17
  %i.0365 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0365)
  %tobool18.not = icmp eq i32 %i.0365, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call21 = call i32 @nand_read_param_page_op(ptr noundef %chip, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 256) #10
  br label %if.end30

if.else:                                          ; preds = %for.body
  br i1 %use_datain.0.off0, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx24 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 %i.0365
  %call25 = call i32 @nand_read_data_op(ptr noundef %chip, ptr noundef %arrayidx24, i32 noundef 256, i1 noundef zeroext true, i1 noundef zeroext false) #10
  br label %if.end30

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul = shl i32 %i.0365, 8
  %arrayidx27 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 %i.0365
  %call28 = call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul, ptr noundef %arrayidx27, i32 noundef 256, i1 noundef zeroext true) #10
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then23, %if.then19
  %ret.1 = phi i32 [ %call25, %if.then23 ], [ %call28, %if.else26 ], [ %call21, %if.then19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool31.not = icmp eq i32 %ret.1, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup220.sink.split_crit_edge

if.end30.cleanup220.sink.split_crit_edge:         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup220.sink.split

if.end33:                                         ; preds = %if.end30
  %arrayidx34 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 %i.0365
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end33
  %dec20.in.i = phi i32 [ %dec20.i, %while.body.i.while.body.i_crit_edge ], [ 254, %if.end33 ]
  %p.addr.019.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %arrayidx34, %if.end33 ]
  %crc.addr.018.i = phi i16 [ %xor8.7.i, %while.body.i.while.body.i_crit_edge ], [ 20302, %if.end33 ]
  %dec20.i = add nsw i32 %dec20.in.i, -1
  %9 = ptrtoint ptr %p.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %p.addr.019.i, align 1
  %conv.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %xor.i = xor i16 %shl.i, %crc.addr.018.i
  %shl5.i = shl i16 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor.i)
  %tobool7.not.inv.i = icmp slt i16 %xor.i, 0
  %cond.i353 = select i1 %tobool7.not.inv.i, i16 -32763, i16 0
  %xor8.i = xor i16 %cond.i353, %shl5.i
  %shl5.1.i = shl i16 %xor8.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.i)
  %tobool7.not.inv.1.i = icmp slt i16 %xor8.i, 0
  %cond.1.i = select i1 %tobool7.not.inv.1.i, i16 -32763, i16 0
  %xor8.1.i = xor i16 %cond.1.i, %shl5.1.i
  %shl5.2.i = shl i16 %xor8.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.1.i)
  %tobool7.not.inv.2.i = icmp slt i16 %xor8.1.i, 0
  %cond.2.i = select i1 %tobool7.not.inv.2.i, i16 -32763, i16 0
  %xor8.2.i = xor i16 %cond.2.i, %shl5.2.i
  %shl5.3.i = shl i16 %xor8.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.2.i)
  %tobool7.not.inv.3.i = icmp slt i16 %xor8.2.i, 0
  %cond.3.i = select i1 %tobool7.not.inv.3.i, i16 -32763, i16 0
  %xor8.3.i = xor i16 %cond.3.i, %shl5.3.i
  %shl5.4.i = shl i16 %xor8.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.3.i)
  %tobool7.not.inv.4.i = icmp slt i16 %xor8.3.i, 0
  %cond.4.i = select i1 %tobool7.not.inv.4.i, i16 -32763, i16 0
  %xor8.4.i = xor i16 %cond.4.i, %shl5.4.i
  %shl5.5.i = shl i16 %xor8.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.4.i)
  %tobool7.not.inv.5.i = icmp slt i16 %xor8.4.i, 0
  %cond.5.i = select i1 %tobool7.not.inv.5.i, i16 -32763, i16 0
  %xor8.5.i = xor i16 %cond.5.i, %shl5.5.i
  %shl5.6.i = shl i16 %xor8.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.5.i)
  %tobool7.not.inv.6.i = icmp slt i16 %xor8.5.i, 0
  %cond.6.i = select i1 %tobool7.not.inv.6.i, i16 -32763, i16 0
  %xor8.6.i = xor i16 %cond.6.i, %shl5.6.i
  %shl5.7.i = shl i16 %xor8.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.6.i)
  %tobool7.not.inv.7.i = icmp slt i16 %xor8.6.i, 0
  %cond.7.i = select i1 %tobool7.not.inv.7.i, i16 -32763, i16 0
  %xor8.7.i = xor i16 %cond.7.i, %shl5.7.i
  %incdec.ptr.i = getelementptr i8, ptr %p.addr.019.i, i32 1
  %tobool.not.i354 = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i354, label %onfi_crc16.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

onfi_crc16.exit:                                  ; preds = %while.body.i
  %crc37 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 %i.0365, i32 52
  %11 = ptrtoint ptr %crc37 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crc37, align 2
  %13 = call i16 @llvm.bswap.i16(i16 %12)
  call void @__sanitizer_cov_trace_cmp2(i16 %xor8.7.i, i16 %13)
  %cmp39 = icmp eq i16 %xor8.7.i, %13
  br i1 %cmp39, label %for.end, label %for.inc

for.inc:                                          ; preds = %onfi_crc16.exit
  %inc = add nuw nsw i32 %i.0365, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.if.then46_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then46_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

for.end:                                          ; preds = %onfi_crc16.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0365)
  %cmp44 = icmp eq i32 %i.0365, 3
  br i1 %cmp44, label %for.end.if.then46_crit_edge, label %for.end.if.end71_crit_edge

for.end.if.end71_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

for.end.if.then46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then46:                                        ; preds = %for.end.if.then46_crit_edge, %for.inc.if.then46_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %srcbufs) #10
  %14 = getelementptr inbounds [3 x ptr], ptr %srcbufs, i32 0, i32 1
  %15 = getelementptr inbounds [3 x ptr], ptr %srcbufs, i32 0, i32 2
  %16 = ptrtoint ptr %srcbufs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %srcbufs, align 4
  %add.ptr.1 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 1
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.1, ptr %14, align 4
  %add.ptr.2 = getelementptr %struct.nand_onfi_params, ptr %call7.i.i, i32 2
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.2, ptr %15, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  call fastcc void @nand_bit_wise_majority(ptr noundef nonnull %srcbufs, ptr noundef nonnull %call7.i.i)
  %call57 = call zeroext i16 @onfi_crc16(i16 noundef zeroext 20302, ptr noundef nonnull %call7.i.i, i32 noundef 254)
  %crc59 = getelementptr inbounds %struct.nand_onfi_params, ptr %call7.i.i, i32 0, i32 52
  %19 = ptrtoint ptr %crc59 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crc59, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  call void @__sanitizer_cov_trace_cmp2(i16 %call57, i16 %21)
  %cmp61.not = icmp eq i16 %call57, %21
  br i1 %cmp61.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %srcbufs) #10
  br label %if.end71

cleanup:                                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #12
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %srcbufs) #10
  br label %cleanup220.sink.split

if.end71:                                         ; preds = %cleanup.thread, %for.end.if.end71_crit_edge
  %p.2 = phi ptr [ %arrayidx34, %for.end.if.end71_crit_edge ], [ %call7.i.i, %cleanup.thread ]
  %manufacturer = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %manufacturer, align 8
  %tobool72.not = icmp eq ptr %23, null
  br i1 %tobool72.not, label %if.end71.if.end86_crit_edge, label %land.lhs.true

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true:                                    ; preds = %if.end71
  %ops = getelementptr inbounds %struct.nand_manufacturer_desc, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops, align 4
  %tobool75.not = icmp eq ptr %25, null
  br i1 %tobool75.not, label %land.lhs.true.if.end86_crit_edge, label %land.lhs.true76

land.lhs.true.if.end86_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

land.lhs.true76:                                  ; preds = %land.lhs.true
  %fixup_onfi_param_page = getelementptr inbounds %struct.nand_manufacturer_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %fixup_onfi_param_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fixup_onfi_param_page, align 4
  %tobool80.not = icmp eq ptr %27, null
  br i1 %tobool80.not, label %land.lhs.true76.if.end86_crit_edge, label %if.then81

land.lhs.true76.if.end86_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end86

if.then81:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  call void %27(ptr noundef %chip, ptr noundef %p.2) #10
  br label %if.end86

if.end86:                                         ; preds = %if.then81, %land.lhs.true76.if.end86_crit_edge, %land.lhs.true.if.end86_crit_edge, %if.end71.if.end86_crit_edge
  %revision = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 1
  %28 = ptrtoint ptr %revision to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %revision, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29)
  %conv87 = zext i16 %30 to i32
  %and = and i32 %conv87, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool88.not = icmp eq i32 %and, 0
  br i1 %tobool88.not, label %if.else90, label %if.end86.if.end118_crit_edge

if.end86.if.end118_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.else90:                                        ; preds = %if.end86
  %and91 = and i32 %conv87, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.else94, label %if.else90.if.end118_crit_edge

if.else90.if.end118_crit_edge:                    ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.else94:                                        ; preds = %if.else90
  %and95 = and i32 %conv87, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else98, label %if.else94.if.end118_crit_edge

if.else94.if.end118_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.else98:                                        ; preds = %if.else94
  %and99 = and i32 %conv87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.end110, label %if.else98.if.end118_crit_edge

if.else98.if.end118_crit_edge:                    ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.end110:                                        ; preds = %if.else98
  %and103 = and i32 %conv87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.end115, label %if.end110.if.end118_crit_edge

if.end110.if.end118_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

do.end115:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %call117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv87) #14
  br label %cleanup220.sink.split

if.end118:                                        ; preds = %if.end110.if.end118_crit_edge, %if.else98.if.end118_crit_edge, %if.else94.if.end118_crit_edge, %if.else90.if.end118_crit_edge, %if.end86.if.end118_crit_edge
  %onfi_version.0363 = phi i32 [ 10, %if.end110.if.end118_crit_edge ], [ 20, %if.else98.if.end118_crit_edge ], [ 21, %if.else94.if.end118_crit_edge ], [ 22, %if.else90.if.end118_crit_edge ], [ 23, %if.end86.if.end118_crit_edge ]
  %cmp160362 = phi i1 [ false, %if.end110.if.end118_crit_edge ], [ false, %if.else98.if.end118_crit_edge ], [ true, %if.else94.if.end118_crit_edge ], [ true, %if.else90.if.end118_crit_edge ], [ true, %if.end86.if.end118_crit_edge ]
  %manufacturer119 = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 8
  call void @sanitize_string(ptr noundef %manufacturer119, i32 noundef 12) #10
  %model = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 9
  call void @sanitize_string(ptr noundef %model, i32 noundef 20) #10
  %call124 = call noalias ptr @kstrdup(ptr noundef %model, i32 noundef 3264) #10
  %parameters = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2
  %31 = ptrtoint ptr %parameters to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call124, ptr %parameters, align 4
  %tobool128.not = icmp eq ptr %call124, null
  br i1 %tobool128.not, label %if.end118.cleanup220.sink.split_crit_edge, label %if.end130

if.end118.cleanup220.sink.split_crit_edge:        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup220.sink.split

if.end130:                                        ; preds = %if.end118
  %byte_per_page = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 13
  %32 = ptrtoint ptr %byte_per_page to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load i32, ptr %byte_per_page, align 1
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %pagesize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %pagesize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %pagesize, align 4
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 4
  %36 = ptrtoint ptr %writesize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %writesize, align 4
  %pages_per_block = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 17
  %37 = ptrtoint ptr %pages_per_block to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %38 = load i32, ptr %pages_per_block, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  %40 = call i32 @llvm.ctlz.i32(i32 %39, i1 true) #10, !range !49
  %sub.i.op = xor i32 %40, 31
  %sub = select i1 %tobool.not.i, i32 -1, i32 %sub.i.op
  %shl = shl nuw i32 1, %sub
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 3
  %41 = ptrtoint ptr %pages_per_eraseblock to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %shl, ptr %pages_per_eraseblock, align 4
  %mul135 = shl i32 %34, %sub
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 3
  %42 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul135, ptr %erasesize, align 8
  %spare_bytes_per_page = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 14
  %43 = ptrtoint ptr %spare_bytes_per_page to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %spare_bytes_per_page, align 1
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv136 = zext i16 %45 to i32
  %oobsize = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %oobsize to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv136, ptr %oobsize, align 4
  %oobsize138 = getelementptr inbounds %struct.mtd_info, ptr %chip, i32 0, i32 6
  %47 = ptrtoint ptr %oobsize138 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv136, ptr %oobsize138, align 4
  %lun_count = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 19
  %48 = ptrtoint ptr %lun_count to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %lun_count, align 1
  %conv139 = zext i8 %49 to i32
  %luns_per_target = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 7
  %50 = ptrtoint ptr %luns_per_target to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv139, ptr %luns_per_target, align 4
  %interleaved_bits = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 29
  %51 = ptrtoint ptr %interleaved_bits to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %interleaved_bits, align 1
  %conv140 = zext i8 %52 to i32
  %shl141 = shl nuw i32 1, %conv140
  %planes_per_lun = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 6
  %53 = ptrtoint ptr %planes_per_lun to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl141, ptr %planes_per_lun, align 4
  %blocks_per_lun = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 18
  %54 = ptrtoint ptr %blocks_per_lun to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %blocks_per_lun, align 1
  %56 = call i32 @llvm.bswap.i32(i32 %55)
  %57 = call i32 @llvm.ctlz.i32(i32 %56, i1 true) #10, !range !49
  %sub.i349.op = xor i32 %57, 31
  %sub.i349.op.op = shl nuw i32 1, %sub.i349.op
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %eraseblocks_per_lun to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i349.op.op, ptr %eraseblocks_per_lun, align 4
  %59 = ptrtoint ptr %blocks_per_lun to i32
  call void @__asan_loadN_noabort(i32 %59, i32 4)
  %60 = load i32, ptr %blocks_per_lun, align 1
  %61 = call i32 @llvm.bswap.i32(i32 %60)
  %max_bad_eraseblocks_per_lun = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 1, i32 5
  %62 = ptrtoint ptr %max_bad_eraseblocks_per_lun to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_bad_eraseblocks_per_lun, align 4
  %bits_per_cell = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 21
  %63 = ptrtoint ptr %bits_per_cell to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bits_per_cell, align 1
  %conv146 = zext i8 %64 to i32
  %65 = ptrtoint ptr %memorg.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv146, ptr %memorg.i, align 4
  %features = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 2
  %66 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %features, align 1
  %68 = and i16 %67, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool150.not = icmp eq i16 %68, 0
  br i1 %tobool150.not, label %if.end130.if.end152_crit_edge, label %if.then151

if.end130.if.end152_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

if.then151:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  %options = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 6
  %69 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %options, align 8
  %or = or i32 %70, 2
  store i32 %or, ptr %options, align 8
  br label %if.end152

if.end152:                                        ; preds = %if.then151, %if.end130.if.end152_crit_edge
  %ecc_bits = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 28
  %71 = ptrtoint ptr %ecc_bits to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ecc_bits, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp154.not = icmp eq i8 %72, -1
  br i1 %cmp154.not, label %if.else159, label %if.then156

if.then156:                                       ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %conv158 = zext i8 %72 to i32
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %requirements.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %requirements.i, align 4
  %requirements.sroa.5.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 1
  %74 = ptrtoint ptr %requirements.sroa.5.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %requirements.sroa.5.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.7.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 2
  %75 = ptrtoint ptr %requirements.sroa.7.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %requirements.sroa.7.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.9.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %76 = ptrtoint ptr %requirements.sroa.9.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv158, ptr %requirements.sroa.9.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.11.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %77 = ptrtoint ptr %requirements.sroa.11.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 512, ptr %requirements.sroa.11.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.13.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %78 = ptrtoint ptr %requirements.sroa.13.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %requirements.sroa.13.0.requirements.i.sroa_idx, align 4
  br label %if.end184

if.else159:                                       ; preds = %if.end152
  br i1 %cmp160362, label %land.lhs.true162, label %if.else159.do.end180_crit_edge

if.else159.do.end180_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end180

land.lhs.true162:                                 ; preds = %if.else159
  %79 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %features, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %80)
  %tobool166.not = icmp sgt i16 %80, -1
  br i1 %tobool166.not, label %land.lhs.true162.do.end180_crit_edge, label %if.then167

land.lhs.true162.do.end180_crit_edge:             ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end180

if.then167:                                       ; preds = %land.lhs.true162
  call void @nand_legacy_adjust_cmdfunc(ptr noundef %chip) #10
  %call168 = call fastcc i32 @nand_flash_detect_ext_param_page(ptr noundef %chip, ptr noundef %p.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then167.if.end184_crit_edge, label %do.end173

if.then167.if.end184_crit_edge:                   ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

do.end173:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #12
  %call175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  br label %if.end184

do.end180:                                        ; preds = %land.lhs.true162.do.end180_crit_edge, %if.else159.do.end180_crit_edge
  %call182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %if.end184

if.end184:                                        ; preds = %do.end180, %do.end173, %if.then167.if.end184_crit_edge, %if.then156
  %opt_cmd = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 3
  %81 = ptrtoint ptr %opt_cmd to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %opt_cmd, align 1
  %83 = and i16 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool187.not = icmp eq i16 %83, 0
  br i1 %tobool187.not, label %if.end184.if.end194_crit_edge, label %if.then188

if.end184.if.end194_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then188:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  %supports_set_get_features = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 1
  %84 = ptrtoint ptr %supports_set_get_features to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %supports_set_get_features, align 4
  %get_feature_list = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 3
  %85 = ptrtoint ptr %get_feature_list to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %get_feature_list, align 4
  %or.i.i = or i32 %86, 2
  store i32 %or.i.i, ptr %get_feature_list, align 4
  %set_feature_list = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 2
  %87 = ptrtoint ptr %set_feature_list to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %set_feature_list, align 4
  %or.i.i351 = or i32 %88, 2
  store i32 %or.i.i351, ptr %set_feature_list, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then188, %if.end184.if.end194_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %89 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i355 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %89, i32 noundef 3520, i32 noundef 108) #13
  %tobool196.not = icmp eq ptr %call7.i.i355, null
  br i1 %tobool196.not, label %if.then197, label %if.end198

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %parameters to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %parameters, align 4
  call void @kfree(ptr noundef %91) #10
  br label %cleanup220.sink.split

if.end198:                                        ; preds = %if.end194
  %92 = ptrtoint ptr %call7.i.i355 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %onfi_version.0363, ptr %call7.i.i355, align 8
  %t_prog = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 35
  %93 = ptrtoint ptr %t_prog to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %t_prog, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94)
  %tPROG = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 1
  %96 = ptrtoint ptr %tPROG to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %tPROG, align 4
  %t_bers = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 36
  %97 = ptrtoint ptr %t_bers to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %t_bers, align 1
  %99 = call i16 @llvm.bswap.i16(i16 %98)
  %tBERS = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 2
  %100 = ptrtoint ptr %tBERS to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %99, ptr %tBERS, align 2
  %t_r = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 37
  %101 = ptrtoint ptr %t_r to i32
  call void @__asan_loadN_noabort(i32 %101, i32 2)
  %102 = load i16, ptr %t_r, align 1
  %103 = call i16 @llvm.bswap.i16(i16 %102)
  %tR = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 3
  %104 = ptrtoint ptr %tR to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %tR, align 8
  %t_ccs = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 38
  %105 = ptrtoint ptr %t_ccs to i32
  call void @__asan_loadN_noabort(i32 %105, i32 2)
  %106 = load i16, ptr %t_ccs, align 1
  %107 = call i16 @llvm.bswap.i16(i16 %106)
  %tCCS = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 4
  %108 = ptrtoint ptr %tCCS to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %tCCS, align 2
  %fast_tCAD = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 5
  %109 = ptrtoint ptr %fast_tCAD to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %fast_tCAD, align 4
  %sdr_timing_modes = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 33
  %110 = ptrtoint ptr %sdr_timing_modes to i32
  call void @__asan_loadN_noabort(i32 %110, i32 2)
  %111 = load i16, ptr %sdr_timing_modes, align 1
  %112 = call i16 @llvm.bswap.i16(i16 %111)
  %sdr_timing_modes203 = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 6
  %113 = ptrtoint ptr %sdr_timing_modes203 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %sdr_timing_modes203, align 2
  %114 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %114, i32 2)
  %115 = load i16, ptr %features, align 1
  %116 = and i16 %115, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool207.not = icmp eq i16 %116, 0
  br i1 %tobool207.not, label %if.end198.if.end211_crit_edge, label %if.then208

if.end198.if.end211_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then208:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  %nvddr_timing_modes = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 39
  %117 = ptrtoint ptr %nvddr_timing_modes to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %nvddr_timing_modes, align 1
  %conv209 = zext i8 %118 to i16
  %119 = shl nuw i16 %conv209, 8
  %nvddr_timing_modes210 = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 7
  %120 = ptrtoint ptr %nvddr_timing_modes210 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %119, ptr %nvddr_timing_modes210, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then208, %if.end198.if.end211_crit_edge
  %vendor_revision = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 50
  %121 = ptrtoint ptr %vendor_revision to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %vendor_revision, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122)
  %vendor_revision212 = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 8
  %124 = ptrtoint ptr %vendor_revision212 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %123, ptr %vendor_revision212, align 2
  %vendor = getelementptr inbounds %struct.onfi_params, ptr %call7.i.i355, i32 0, i32 9
  %vendor214 = getelementptr inbounds %struct.nand_onfi_params, ptr %p.2, i32 0, i32 51
  %125 = call ptr @memcpy(ptr %vendor, ptr %vendor214, i32 88)
  %onfi217 = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 4
  %126 = ptrtoint ptr %onfi217 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call7.i.i355, ptr %onfi217, align 4
  br label %cleanup220.sink.split

cleanup220.sink.split:                            ; preds = %if.end211, %if.then197, %if.end118.cleanup220.sink.split_crit_edge, %do.end115, %cleanup, %if.end30.cleanup220.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 1, %if.end211 ], [ 0, %cleanup ], [ -12, %if.then197 ], [ 0, %do.end115 ], [ -12, %if.end118.cleanup220.sink.split_crit_edge ], [ 0, %if.end30.cleanup220.sink.split_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup220

cleanup220:                                       ; preds = %cleanup220.sink.split, %if.end.cleanup220_crit_edge, %lor.lhs.false.cleanup220_crit_edge, %entry.cleanup220_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup220_crit_edge ], [ 0, %entry.cleanup220_crit_edge ], [ -12, %if.end.cleanup220_crit_edge ], [ %retval.0.ph, %cleanup220.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_readid_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_data_op(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_read_param_page_op(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nand_change_read_column_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nand_bit_wise_majority(ptr nocapture noundef readonly %srcbufs, ptr nocapture noundef writeonly %dstbuf) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.1 = getelementptr ptr, ptr %srcbufs, i32 1
  %arrayidx.2 = getelementptr ptr, ptr %srcbufs, i32 2
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.for.cond1.preheader_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc21, %for.cond1.preheader.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %srcbufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srcbufs, align 4
  %arrayidx7 = getelementptr i8, ptr %1, i32 %i.05
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7, align 1
  %conv = zext i8 %3 to i32
  %4 = and i32 %conv, 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 4
  %arrayidx7.1 = getelementptr i8, ptr %6, i32 %i.05
  %7 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.1, align 1
  %conv.1 = zext i8 %8 to i32
  %9 = and i32 %conv.1, 1
  %spec.select.1 = add nuw nsw i32 %9, %4
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %arrayidx7.2 = getelementptr i8, ptr %11, i32 %i.05
  %12 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.2, align 1
  %conv.2 = zext i8 %13 to i32
  %14 = and i32 %conv.2, 1
  %spec.select.2 = add nuw nsw i32 %14, %spec.select.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2)
  %cmp9 = icmp ugt i32 %spec.select.2, 1
  %conv14 = zext i1 %cmp9 to i8
  %15 = lshr i32 %conv, 1
  %16 = and i32 %15, 1
  %17 = lshr i32 %conv.1, 1
  %18 = and i32 %17, 1
  %spec.select.1.1 = add nuw nsw i32 %18, %16
  %19 = lshr i32 %conv.2, 1
  %20 = and i32 %19, 1
  %spec.select.2.1 = add nuw nsw i32 %20, %spec.select.1.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.1)
  %cmp9.1 = icmp ugt i32 %spec.select.2.1, 1
  %conv14.1 = select i1 %cmp9.1, i8 2, i8 0
  %val.1.1 = or i8 %conv14.1, %conv14
  %21 = lshr i32 %conv, 2
  %22 = and i32 %21, 1
  %23 = lshr i32 %conv.1, 2
  %24 = and i32 %23, 1
  %spec.select.1.2 = add nuw nsw i32 %24, %22
  %25 = lshr i32 %conv.2, 2
  %26 = and i32 %25, 1
  %spec.select.2.2 = add nuw nsw i32 %26, %spec.select.1.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.2)
  %cmp9.2 = icmp ugt i32 %spec.select.2.2, 1
  %conv14.2 = select i1 %cmp9.2, i8 4, i8 0
  %val.1.2 = or i8 %conv14.2, %val.1.1
  %27 = lshr i32 %conv, 3
  %28 = and i32 %27, 1
  %29 = lshr i32 %conv.1, 3
  %30 = and i32 %29, 1
  %spec.select.1.3 = add nuw nsw i32 %30, %28
  %31 = lshr i32 %conv.2, 3
  %32 = and i32 %31, 1
  %spec.select.2.3 = add nuw nsw i32 %32, %spec.select.1.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.3)
  %cmp9.3 = icmp ugt i32 %spec.select.2.3, 1
  %conv14.3 = select i1 %cmp9.3, i8 8, i8 0
  %val.1.3 = or i8 %conv14.3, %val.1.2
  %33 = lshr i32 %conv, 4
  %34 = and i32 %33, 1
  %35 = lshr i32 %conv.1, 4
  %36 = and i32 %35, 1
  %spec.select.1.4 = add nuw nsw i32 %36, %34
  %37 = lshr i32 %conv.2, 4
  %38 = and i32 %37, 1
  %spec.select.2.4 = add nuw nsw i32 %38, %spec.select.1.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.4)
  %cmp9.4 = icmp ugt i32 %spec.select.2.4, 1
  %conv14.4 = select i1 %cmp9.4, i8 16, i8 0
  %val.1.4 = or i8 %conv14.4, %val.1.3
  %39 = lshr i32 %conv, 5
  %40 = and i32 %39, 1
  %41 = lshr i32 %conv.1, 5
  %42 = and i32 %41, 1
  %spec.select.1.5 = add nuw nsw i32 %42, %40
  %43 = lshr i32 %conv.2, 5
  %44 = and i32 %43, 1
  %spec.select.2.5 = add nuw nsw i32 %44, %spec.select.1.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.5)
  %cmp9.5 = icmp ugt i32 %spec.select.2.5, 1
  %conv14.5 = select i1 %cmp9.5, i8 32, i8 0
  %val.1.5 = or i8 %conv14.5, %val.1.4
  %45 = lshr i32 %conv, 6
  %46 = and i32 %45, 1
  %47 = lshr i32 %conv.1, 6
  %48 = and i32 %47, 1
  %spec.select.1.6 = add nuw nsw i32 %48, %46
  %49 = lshr i32 %conv.2, 6
  %50 = and i32 %49, 1
  %spec.select.2.6 = add nuw nsw i32 %50, %spec.select.1.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.6)
  %cmp9.6 = icmp ugt i32 %spec.select.2.6, 1
  %conv14.6 = select i1 %cmp9.6, i8 64, i8 0
  %val.1.6 = or i8 %conv14.6, %val.1.5
  %51 = lshr i32 %conv, 7
  %52 = lshr i32 %conv.1, 7
  %spec.select.1.7 = add nuw nsw i32 %52, %51
  %53 = lshr i32 %conv.2, 7
  %spec.select.2.7 = add nuw nsw i32 %53, %spec.select.1.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.2.7)
  %cmp9.7 = icmp ugt i32 %spec.select.2.7, 1
  %conv14.7 = select i1 %cmp9.7, i8 -128, i8 0
  %val.1.7 = or i8 %conv14.7, %val.1.6
  %arrayidx19 = getelementptr i8, ptr %dstbuf, i32 %i.05
  %54 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %val.1.7, ptr %arrayidx19, align 1
  %inc21 = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc21, 256
  br i1 %exitcond.not, label %for.end22, label %for.cond1.preheader.for.cond1.preheader_crit_edge

for.cond1.preheader.for.cond1.preheader_crit_edge: ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond1.preheader

for.end22:                                        ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sanitize_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nand_legacy_adjust_cmdfunc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nand_flash_detect_ext_param_page(ptr noundef %chip, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ext_param_page_length = getelementptr inbounds %struct.nand_onfi_params, ptr %p, i32 0, i32 5
  %0 = ptrtoint ptr %ext_param_page_length to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ext_param_page_length, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_of_param_pages = getelementptr inbounds %struct.nand_onfi_params, ptr %p, i32 0, i32 6
  %3 = ptrtoint ptr %num_of_param_pages to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %num_of_param_pages, align 1
  %conv2 = zext i8 %4 to i32
  %mul3 = shl nuw nsw i32 %conv2, 8
  %call4 = tail call i32 @nand_change_read_column_op(ptr noundef %chip, i32 noundef %mul3, ptr noundef nonnull %call9.i, i32 noundef %mul, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.ext_out_crit_edge

if.end.ext_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ext_out

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call9.i, i32 2
  %sub = add nsw i32 %mul, -2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end7
  %dec20.in.i = phi i32 [ %dec20.i, %while.body.i.while.body.i_crit_edge ], [ %sub, %if.end7 ]
  %p.addr.019.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr, %if.end7 ]
  %crc.addr.018.i = phi i16 [ %xor8.7.i, %while.body.i.while.body.i_crit_edge ], [ 20302, %if.end7 ]
  %dec20.i = add i32 %dec20.in.i, -1
  %5 = ptrtoint ptr %p.addr.019.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %p.addr.019.i, align 1
  %conv.i = zext i8 %6 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %xor.i = xor i16 %shl.i, %crc.addr.018.i
  %shl5.i = shl i16 %xor.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor.i)
  %tobool7.not.inv.i = icmp slt i16 %xor.i, 0
  %cond.i = select i1 %tobool7.not.inv.i, i16 -32763, i16 0
  %xor8.i = xor i16 %cond.i, %shl5.i
  %shl5.1.i = shl i16 %xor8.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.i)
  %tobool7.not.inv.1.i = icmp slt i16 %xor8.i, 0
  %cond.1.i = select i1 %tobool7.not.inv.1.i, i16 -32763, i16 0
  %xor8.1.i = xor i16 %cond.1.i, %shl5.1.i
  %shl5.2.i = shl i16 %xor8.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.1.i)
  %tobool7.not.inv.2.i = icmp slt i16 %xor8.1.i, 0
  %cond.2.i = select i1 %tobool7.not.inv.2.i, i16 -32763, i16 0
  %xor8.2.i = xor i16 %cond.2.i, %shl5.2.i
  %shl5.3.i = shl i16 %xor8.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.2.i)
  %tobool7.not.inv.3.i = icmp slt i16 %xor8.2.i, 0
  %cond.3.i = select i1 %tobool7.not.inv.3.i, i16 -32763, i16 0
  %xor8.3.i = xor i16 %cond.3.i, %shl5.3.i
  %shl5.4.i = shl i16 %xor8.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.3.i)
  %tobool7.not.inv.4.i = icmp slt i16 %xor8.3.i, 0
  %cond.4.i = select i1 %tobool7.not.inv.4.i, i16 -32763, i16 0
  %xor8.4.i = xor i16 %cond.4.i, %shl5.4.i
  %shl5.5.i = shl i16 %xor8.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.4.i)
  %tobool7.not.inv.5.i = icmp slt i16 %xor8.4.i, 0
  %cond.5.i = select i1 %tobool7.not.inv.5.i, i16 -32763, i16 0
  %xor8.5.i = xor i16 %cond.5.i, %shl5.5.i
  %shl5.6.i = shl i16 %xor8.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.5.i)
  %tobool7.not.inv.6.i = icmp slt i16 %xor8.5.i, 0
  %cond.6.i = select i1 %tobool7.not.inv.6.i, i16 -32763, i16 0
  %xor8.6.i = xor i16 %cond.6.i, %shl5.6.i
  %shl5.7.i = shl i16 %xor8.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor8.6.i)
  %tobool7.not.inv.7.i = icmp slt i16 %xor8.6.i, 0
  %cond.7.i = select i1 %tobool7.not.inv.7.i, i16 -32763, i16 0
  %xor8.7.i = xor i16 %cond.7.i, %shl5.7.i
  %incdec.ptr.i = getelementptr i8, ptr %p.addr.019.i, i32 1
  %tobool.not.i = icmp eq i32 %dec20.i, 0
  br i1 %tobool.not.i, label %onfi_crc16.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

onfi_crc16.exit:                                  ; preds = %while.body.i
  %7 = ptrtoint ptr %call9.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %call9.i, align 128
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_cmp2(i16 %xor8.7.i, i16 %9)
  %cmp.not = icmp eq i16 %xor8.7.i, %9
  br i1 %cmp.not, label %if.end19, label %do.body

do.body:                                          ; preds = %onfi_crc16.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_flash_detect_ext_param_page, %if.then17)) #10
          to label %ext_out [label %if.then17], !srcloc !50

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug198, ptr noundef nonnull @.str.18) #10
  br label %ext_out

if.end19:                                         ; preds = %onfi_crc16.exit
  %call20 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.19, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end39, label %do.body23

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_flash_detect_ext_param_page, %if.then35)) #10
          to label %ext_out [label %if.then35], !srcloc !50

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug199, ptr noundef nonnull @.str.20) #10
  br label %ext_out

if.end39:                                         ; preds = %if.end19
  %add.ptr40 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 1
  %sections = getelementptr inbounds %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3
  %10 = ptrtoint ptr %sections to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sections, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp46 = icmp eq i8 %11, 2
  br i1 %cmp46, label %if.end39.if.end72_crit_edge, label %if.end49

if.end39.if.end72_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49:                                         ; preds = %if.end39
  %length = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %length, align 1
  %conv50 = zext i8 %13 to i32
  %mul51 = shl nuw nsw i32 %conv50, 4
  %add.ptr52 = getelementptr i8, ptr %add.ptr40, i32 %mul51
  %add.ptr44.1 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %add.ptr44.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr44.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp46.1 = icmp eq i8 %15, 2
  br i1 %cmp46.1, label %if.end49.if.end72_crit_edge, label %if.end49.1

if.end49.if.end72_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.1:                                       ; preds = %if.end49
  %length.1 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 1, i32 1
  %16 = ptrtoint ptr %length.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %length.1, align 1
  %conv50.1 = zext i8 %17 to i32
  %mul51.1 = shl nuw nsw i32 %conv50.1, 4
  %add.ptr52.1 = getelementptr i8, ptr %add.ptr52, i32 %mul51.1
  %add.ptr44.2 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %add.ptr44.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr44.2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp46.2 = icmp eq i8 %19, 2
  br i1 %cmp46.2, label %if.end49.1.if.end72_crit_edge, label %if.end49.2

if.end49.1.if.end72_crit_edge:                    ; preds = %if.end49.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.2:                                       ; preds = %if.end49.1
  %length.2 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 2, i32 1
  %20 = ptrtoint ptr %length.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %length.2, align 1
  %conv50.2 = zext i8 %21 to i32
  %mul51.2 = shl nuw nsw i32 %conv50.2, 4
  %add.ptr52.2 = getelementptr i8, ptr %add.ptr52.1, i32 %mul51.2
  %add.ptr44.3 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %add.ptr44.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr44.3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp46.3 = icmp eq i8 %23, 2
  br i1 %cmp46.3, label %if.end49.2.if.end72_crit_edge, label %if.end49.3

if.end49.2.if.end72_crit_edge:                    ; preds = %if.end49.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.3:                                       ; preds = %if.end49.2
  %length.3 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 3, i32 1
  %24 = ptrtoint ptr %length.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %length.3, align 1
  %conv50.3 = zext i8 %25 to i32
  %mul51.3 = shl nuw nsw i32 %conv50.3, 4
  %add.ptr52.3 = getelementptr i8, ptr %add.ptr52.2, i32 %mul51.3
  %add.ptr44.4 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %add.ptr44.4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr44.4, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %27)
  %cmp46.4 = icmp eq i8 %27, 2
  br i1 %cmp46.4, label %if.end49.3.if.end72_crit_edge, label %if.end49.4

if.end49.3.if.end72_crit_edge:                    ; preds = %if.end49.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.4:                                       ; preds = %if.end49.3
  %length.4 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 4, i32 1
  %28 = ptrtoint ptr %length.4 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %length.4, align 1
  %conv50.4 = zext i8 %29 to i32
  %mul51.4 = shl nuw nsw i32 %conv50.4, 4
  %add.ptr52.4 = getelementptr i8, ptr %add.ptr52.3, i32 %mul51.4
  %add.ptr44.5 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 5
  %30 = ptrtoint ptr %add.ptr44.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr44.5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp46.5 = icmp eq i8 %31, 2
  br i1 %cmp46.5, label %if.end49.4.if.end72_crit_edge, label %if.end49.5

if.end49.4.if.end72_crit_edge:                    ; preds = %if.end49.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.5:                                       ; preds = %if.end49.4
  %length.5 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 5, i32 1
  %32 = ptrtoint ptr %length.5 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %length.5, align 1
  %conv50.5 = zext i8 %33 to i32
  %mul51.5 = shl nuw nsw i32 %conv50.5, 4
  %add.ptr52.5 = getelementptr i8, ptr %add.ptr52.4, i32 %mul51.5
  %add.ptr44.6 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 6
  %34 = ptrtoint ptr %add.ptr44.6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr44.6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp46.6 = icmp eq i8 %35, 2
  br i1 %cmp46.6, label %if.end49.5.if.end72_crit_edge, label %if.end49.6

if.end49.5.if.end72_crit_edge:                    ; preds = %if.end49.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end49.6:                                       ; preds = %if.end49.5
  %length.6 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 6, i32 1
  %36 = ptrtoint ptr %length.6 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %length.6, align 1
  %conv50.6 = zext i8 %37 to i32
  %mul51.6 = shl nuw nsw i32 %conv50.6, 4
  %add.ptr52.6 = getelementptr i8, ptr %add.ptr52.5, i32 %mul51.6
  %add.ptr44.7 = getelementptr %struct.onfi_ext_param_page, ptr %call9.i, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %add.ptr44.7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr44.7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp46.7 = icmp eq i8 %39, 2
  br i1 %cmp46.7, label %if.end49.6.if.end72_crit_edge, label %do.body56

if.end49.6.if.end72_crit_edge:                    ; preds = %if.end49.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.body56:                                        ; preds = %if.end49.6
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_flash_detect_ext_param_page, %if.then68)) #10
          to label %ext_out [label %if.then68], !srcloc !50

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug200, ptr noundef nonnull @.str.21) #10
  br label %ext_out

if.end72:                                         ; preds = %if.end49.6.if.end72_crit_edge, %if.end49.5.if.end72_crit_edge, %if.end49.4.if.end72_crit_edge, %if.end49.3.if.end72_crit_edge, %if.end49.2.if.end72_crit_edge, %if.end49.1.if.end72_crit_edge, %if.end49.if.end72_crit_edge, %if.end39.if.end72_crit_edge
  %cursor.0143.lcssa = phi ptr [ %add.ptr40, %if.end39.if.end72_crit_edge ], [ %add.ptr52, %if.end49.if.end72_crit_edge ], [ %add.ptr52.1, %if.end49.1.if.end72_crit_edge ], [ %add.ptr52.2, %if.end49.2.if.end72_crit_edge ], [ %add.ptr52.3, %if.end49.3.if.end72_crit_edge ], [ %add.ptr52.4, %if.end49.4.if.end72_crit_edge ], [ %add.ptr52.5, %if.end49.5.if.end72_crit_edge ], [ %add.ptr52.6, %if.end49.6.if.end72_crit_edge ]
  %codeword_size = getelementptr inbounds %struct.onfi_ext_ecc_info, ptr %cursor.0143.lcssa, i32 0, i32 1
  %40 = ptrtoint ptr %codeword_size to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %codeword_size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool73.not = icmp eq i8 %41, 0
  br i1 %tobool73.not, label %do.body75, label %if.end91

do.body75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nand_flash_detect_ext_param_page, %if.then87)) #10
          to label %ext_out [label %if.then87], !srcloc !50

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug201, ptr noundef nonnull @.str.22) #10
  br label %ext_out

if.end91:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %cursor.0143.lcssa to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cursor.0143.lcssa, align 1
  %conv92 = zext i8 %43 to i32
  %conv94 = zext i8 %41 to i32
  %shl = shl nuw i32 1, %conv94
  %requirements.i = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %requirements.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %requirements.i, align 4
  %requirements.sroa.4.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 1
  %45 = ptrtoint ptr %requirements.sroa.4.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %requirements.sroa.4.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.5.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 2
  %46 = ptrtoint ptr %requirements.sroa.5.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %requirements.sroa.5.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.6.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 3
  %47 = ptrtoint ptr %requirements.sroa.6.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv92, ptr %requirements.sroa.6.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.8.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 4
  %48 = ptrtoint ptr %requirements.sroa.8.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl, ptr %requirements.sroa.8.0.requirements.i.sroa_idx, align 4
  %requirements.sroa.10.0.requirements.i.sroa_idx = getelementptr inbounds %struct.nand_device, ptr %chip, i32 0, i32 2, i32 1, i32 5
  %49 = ptrtoint ptr %requirements.sroa.10.0.requirements.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %requirements.sroa.10.0.requirements.i.sroa_idx, align 4
  br label %ext_out

ext_out:                                          ; preds = %if.end91, %if.then87, %do.body75, %if.then68, %do.body56, %if.then35, %do.body23, %if.then17, %do.body, %if.end.ext_out_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.ext_out_crit_edge ], [ -22, %if.then17 ], [ -22, %if.then35 ], [ -22, %if.then68 ], [ 0, %if.end91 ], [ -22, %if.then87 ], [ -22, %do.body ], [ -22, %do.body23 ], [ -22, %do.body56 ], [ -22, %do.body75 ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #10
  br label %cleanup

cleanup:                                          ; preds = %ext_out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ext_out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !36, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 161, i32 25}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 203, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nand_onfi_detect._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @nand_onfi_detect._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 209, i32 4}
!10 = !{ptr @nand_onfi_detect._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nand_onfi_detect._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 233, i32 3}
!14 = !{ptr @nand_onfi_detect._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nand_onfi_detect._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 293, i32 4}
!18 = !{ptr @nand_onfi_detect._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nand_onfi_detect._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 295, i32 3}
!22 = !{ptr @nand_onfi_detect._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @nand_onfi_detect._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 65, i32 3}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug198, !25, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 73, i32 23}
!31 = !{ptr @.str.20, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 74, i32 3}
!33 = !{ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug199, !32, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 87, i32 3}
!36 = !{ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug200, !35, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/nand_onfi.c", i32 95, i32 3}
!39 = !{ptr @nand_flash_detect_ext_param_page.__UNIQUE_ID_ddebug201, !38, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i32 0, i32 33}
!50 = !{i64 2148208022, i64 2148208027, i64 2148208040, i64 2148208084, i64 2148208118, i64 2148208139}
