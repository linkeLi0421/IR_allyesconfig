; ModuleID = '/llk/IR_all_yes/drivers/memory/ti-emif-pm.c_pt.bc'
source_filename = "../drivers/memory/ti-emif-pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ti_emif_copy_pm_function_table\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_emif_copy_pm_function_table\09\09\09\09"
module asm "\09.long\09__crc_ti_emif_copy_pm_function_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_emif_copy_pm_function_table:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_emif_copy_pm_function_table\22\09\09\09\09\09"
module asm "__kstrtabns_ti_emif_copy_pm_function_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ti_emif_get_mem_type\22, \22a\22\09"
module asm "\09.weak\09__crc_ti_emif_get_mem_type\09\09\09\09"
module asm "\09.long\09__crc_ti_emif_get_mem_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ti_emif_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22ti_emif_get_mem_type\22\09\09\09\09\09"
module asm "__kstrtabns_ti_emif_get_mem_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ti_emif_pm_data = type { ptr, i32, i32, ptr, i32, [4 x i8] }
%struct.ti_emif_data = type { i32, i32, i32, i32, ptr, ptr, %struct.ti_emif_pm_data, %struct.ti_emif_pm_functions }
%struct.ti_emif_pm_functions = type { i32, i32, i32, i32, i32, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@emif_instance = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_ti_emif_copy_pm_function_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_emif_copy_pm_function_table = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_emif_copy_pm_function_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_emif_copy_pm_function_table to i32), ptr @__kstrtab_ti_emif_copy_pm_function_table, ptr @__kstrtabns_ti_emif_copy_pm_function_table }, section "___ksymtab_gpl+ti_emif_copy_pm_function_table", align 4
@__kstrtab_ti_emif_get_mem_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_ti_emif_get_mem_type = external dso_local constant [0 x i8], align 1
@__ksymtab_ti_emif_get_mem_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ti_emif_get_mem_type to i32), ptr @__kstrtab_ti_emif_get_mem_type, ptr @__kstrtabns_ti_emif_get_mem_type }, section "___ksymtab_gpl+ti_emif_get_mem_type", align 4
@__initcall__kmod_ti_emif_sram__170_347_ti_emif_driver_init6 = internal global ptr @ti_emif_driver_init, section ".initcall6.init", align 4
@ti_emif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_emif_probe, ptr @ti_emif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_emif_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_emif_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_emif_driver_exit = internal global ptr @ti_emif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [52 x i8] c"ti_emif_sram.author=Dave Gerlach <d-gerlach@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [60 x i8] c"ti_emif_sram.description=Texas Instruments SRAM EMIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"ti_emif_sram.file=drivers/memory/ti-emif-sram\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"ti_emif_sram.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti_emif_sram\00", [19 x i8] zeroinitializer }, align 32
@ti_emif_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-am3352\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,emif-am4372\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_emif_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ti_emif_suspend, ptr @ti_emif_resume, ptr @ti_emif_suspend, ptr @ti_emif_resume, ptr @ti_emif_suspend, ptr @ti_emif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@ti_emif_alloc_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to get sram pool for ocmcram code\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_emif_alloc_sram\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/memory/ti-emif-pm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_emif_alloc_sram._entry_ptr = internal global ptr @ti_emif_alloc_sram._entry, section ".printk_index", align 4
@ti_emif_sram_sz = external dso_local local_unnamed_addr global i32, align 4
@ti_emif_alloc_sram._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 79, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to allocate code memory from ocmcram\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_emif_alloc_sram._entry_ptr.9 = internal global ptr @ti_emif_alloc_sram._entry.7, section ".printk_index", align 4
@ti_emif_alloc_sram._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 91, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to get sram pool for ocmcram data\0A\00", [54 x i8] zeroinitializer }, align 32
@ti_emif_alloc_sram._entry_ptr.12 = internal global ptr @ti_emif_alloc_sram._entry.10, section ".printk_index", align 4
@ti_emif_alloc_sram._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 100, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Unable to allocate data memory from ocmcram\0A\00", [51 x i8] zeroinitializer }, align 32
@ti_emif_alloc_sram._entry_ptr.15 = internal global ptr @ti_emif_alloc_sram._entry.13, section ".printk_index", align 4
@ti_emif_sram = external dso_local global i32, align 4
@ti_emif_push_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot copy emif code to sram\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_emif_push_sram\00", [46 x i8] zeroinitializer }, align 32
@ti_emif_push_sram._entry_ptr = internal global ptr @ti_emif_push_sram._entry, section ".printk_index", align 4
@ti_emif_pm_sram_data = external dso_local global %struct.ti_emif_pm_data, align 8
@ti_emif_push_sram._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot copy emif data to code sram\0A\00", [60 x i8] zeroinitializer }, align 32
@ti_emif_push_sram._entry_ptr.20 = internal global ptr @ti_emif_push_sram._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"emif_instance\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 38, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"ti_emif_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 338, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 342, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"ti_emif_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 238, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"ti_emif_pm_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 334, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 69, i32 50 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 71, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 79, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 91, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 100, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 158, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [31 x i8] c"../drivers/memory/ti-emif-pm.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 169, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ti_emif_driver_exit, ptr @__initcall__kmod_ti_emif_sram__170_347_ti_emif_driver_init6, ptr @__ksymtab_ti_emif_copy_pm_function_table, ptr @__ksymtab_ti_emif_get_mem_type, ptr @ti_emif_alloc_sram._entry, ptr @ti_emif_alloc_sram._entry.10, ptr @ti_emif_alloc_sram._entry.13, ptr @ti_emif_alloc_sram._entry.7, ptr @ti_emif_alloc_sram._entry_ptr, ptr @ti_emif_alloc_sram._entry_ptr.12, ptr @ti_emif_alloc_sram._entry_ptr.15, ptr @ti_emif_alloc_sram._entry_ptr.9, ptr @ti_emif_driver_exit, ptr @ti_emif_push_sram._entry, ptr @ti_emif_push_sram._entry.18, ptr @ti_emif_push_sram._entry_ptr, ptr @ti_emif_push_sram._entry_ptr.20, ptr @emif_instance, ptr @ti_emif_driver, ptr @.str, ptr @ti_emif_of_match, ptr @ti_emif_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_instance to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_alloc_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_alloc_sram._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_alloc_sram._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_alloc_sram._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_push_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_emif_push_sram._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_emif_copy_pm_function_table(ptr noundef %sram_pool, ptr noundef %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @emif_instance, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pm_functions = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 7
  %call = tail call ptr @sram_exec_copy(ptr noundef %sram_pool, ptr noundef %dst, ptr noundef %pm_functions, i32 noundef 24) #5
  %tobool1.not = icmp eq ptr %call, null
  %. = select i1 %tobool1.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sram_exec_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_emif_get_mem_type() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @emif_instance, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pm_data = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 6
  %1 = ptrtoint ptr %pm_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pm_data, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %4 = lshr i32 %3, 5
  %shr = and i32 %4, 7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_emif_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_emif_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_emif_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_emif_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_emif_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @ti_emif_of_match, ptr noundef %dev1) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  %pm_data = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 6
  %ti_emif_sram_config = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %ti_emif_sram_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ti_emif_sram_config, align 8
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #5
  %4 = ptrtoint ptr %pm_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %pm_data, align 8
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %6 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7, align 4
  %ti_emif_base_addr_phys = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %ti_emif_base_addr_phys to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ti_emif_base_addr_phys, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %pm_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pm_data, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1610612736) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %pm_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pm_data, align 8
  %add.ptr5.i = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 -1610612736) #5, !srcloc !67
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node.i, align 8
  %call.i52 = tail call ptr @of_gen_pool_get(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  %sram_pool_code.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i52, ptr %sram_pool_code.i, align 8
  %tobool.not.i = icmp eq ptr %call.i52, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %16 = load i32, ptr @ti_emif_sram_sz, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %call.i52, i32 0, i32 3
  %17 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %call.i52, i32 0, i32 4
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call.i52, i32 noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef null) #5
  %ti_emif_sram_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i.i, ptr %ti_emif_sram_virt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %if.end10.i

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %22 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sram_pool_code.i, align 8
  %call13.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %23, i32 noundef %call.i.i.i) #5
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call13.i, ptr %call.i, align 8
  %call14.i = tail call ptr @of_gen_pool_get(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %sram_pool_data.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 5
  %25 = ptrtoint ptr %sram_pool_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call14.i, ptr %sram_pool_data.i, align 4
  %tobool16.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool16.not.i, label %if.end10.i.err_free_sram_code.i_crit_edge, label %if.end21.i

if.end10.i.err_free_sram_code.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_sram_code.i

if.end21.i:                                       ; preds = %if.end10.i
  %algo.i89.i = getelementptr inbounds %struct.gen_pool, ptr %call14.i, i32 0, i32 3
  %26 = ptrtoint ptr %algo.i89.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %algo.i89.i, align 4
  %data.i90.i = getelementptr inbounds %struct.gen_pool, ptr %call14.i, i32 0, i32 4
  %28 = ptrtoint ptr %data.i90.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i90.i, align 4
  %call.i.i91.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call14.i, i32 noundef 560, ptr noundef %27, ptr noundef %29, ptr noundef null) #5
  %ti_emif_sram_data_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %ti_emif_sram_data_virt.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call.i.i91.i, ptr %ti_emif_sram_data_virt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i91.i)
  %tobool25.not.i = icmp eq i32 %call.i.i91.i, 0
  br i1 %tobool25.not.i, label %if.end21.i.err_free_sram_code.i_crit_edge, label %if.end22

if.end21.i.err_free_sram_code.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_sram_code.i

err_free_sram_code.i:                             ; preds = %if.end21.i.err_free_sram_code.i_crit_edge, %if.end10.i.err_free_sram_code.i_crit_edge
  %.str.14.sink.i = phi ptr [ @.str.11, %if.end10.i.err_free_sram_code.i_crit_edge ], [ @.str.14, %if.end21.i.err_free_sram_code.i_crit_edge ]
  %ret.0.i = phi i32 [ -19, %if.end10.i.err_free_sram_code.i_crit_edge ], [ -12, %if.end21.i.err_free_sram_code.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.14.sink.i) #8
  %31 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sram_pool_code.i, align 8
  %33 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ti_emif_sram_virt.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %35 = load i32, ptr @ti_emif_sram_sz, align 4
  tail call void @gen_pool_free_owner(ptr noundef %32, i32 noundef %34, i32 noundef %35, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end21.i
  %36 = ptrtoint ptr %sram_pool_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sram_pool_data.i, align 4
  %call33.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef %37, i32 noundef %call.i.i91.i) #5
  %ti_emif_sram_data_phys.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %ti_emif_sram_data_phys.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call33.i, ptr %ti_emif_sram_data_phys.i, align 4
  %39 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ti_emif_sram_virt.i, align 8
  %add.i.i = add i32 %40, sub (i32 ptrtoint (ptr @ti_emif_save_context to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %pm_functions.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %pm_functions.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add.i.i, ptr %pm_functions.i, align 8
  %add.i93.i = add i32 %40, sub (i32 ptrtoint (ptr @ti_emif_enter_sr to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %enter_sr.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7, i32 3
  %42 = ptrtoint ptr %enter_sr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add.i93.i, ptr %enter_sr.i, align 4
  %add.i95.i = add i32 %40, sub (i32 ptrtoint (ptr @ti_emif_abort_sr to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %abort_sr.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %abort_sr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add.i95.i, ptr %abort_sr.i, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call.i, align 8
  %add.i96.i = add i32 %45, sub (i32 ptrtoint (ptr @ti_emif_restore_context to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %restore_context.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %restore_context.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add.i96.i, ptr %restore_context.i, align 4
  %add.i97.i = add i32 %45, sub (i32 ptrtoint (ptr @ti_emif_exit_sr to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %exit_sr.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7, i32 4
  %47 = ptrtoint ptr %exit_sr.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i97.i, ptr %exit_sr.i, align 8
  %add.i98.i = add i32 %45, sub (i32 ptrtoint (ptr @ti_emif_run_hw_leveling to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %run_hw_leveling.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %run_hw_leveling.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add.i98.i, ptr %run_hw_leveling.i, align 8
  %49 = ptrtoint ptr %ti_emif_sram_data_virt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ti_emif_sram_data_virt.i, align 4
  %51 = inttoptr i32 %50 to ptr
  %regs_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %regs_virt.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %regs_virt.i, align 4
  %regs_phys.i = getelementptr inbounds %struct.ti_emif_data, ptr %call.i, i32 0, i32 6, i32 4
  %53 = ptrtoint ptr %regs_phys.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call33.i, ptr %regs_phys.i, align 8
  %54 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sram_pool_code.i, align 8
  %56 = inttoptr i32 %40 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %57 = load i32, ptr @ti_emif_sram_sz, align 4
  %call.i55 = tail call ptr @sram_exec_copy(ptr noundef %55, ptr noundef %56, ptr noundef nonnull @ti_emif_sram, i32 noundef %57) #5
  %tobool.not.i56 = icmp eq ptr %call.i55, null
  br i1 %tobool.not.i56, label %if.end22.fail_free_sram_crit_edge, label %if.end.i59

if.end22.fail_free_sram_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_sram

if.end.i59:                                       ; preds = %if.end22
  %58 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ti_emif_sram_virt.i, align 8
  %add.i.i57 = add i32 %59, sub (i32 ptrtoint (ptr @ti_emif_pm_sram_data to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %60 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sram_pool_code.i, align 8
  %62 = inttoptr i32 %add.i.i57 to ptr
  %call3.i = tail call ptr @sram_exec_copy(ptr noundef %61, ptr noundef %62, ptr noundef %pm_data, i32 noundef 24) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i59.fail_free_sram_crit_edge, label %if.end26

if.end.i59.fail_free_sram_crit_edge:              ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail_free_sram

if.end26:                                         ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %call.i, ptr @emif_instance, align 4
  br label %cleanup

fail_free_sram:                                   ; preds = %if.end.i59.fail_free_sram_crit_edge, %if.end22.fail_free_sram_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.16, %if.end22.fail_free_sram_crit_edge ], [ @.str.19, %if.end.i59.fail_free_sram_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.19.sink.i) #8
  %63 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sram_pool_code.i, align 8
  %65 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ti_emif_sram_virt.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %67 = load i32, ptr @ti_emif_sram_sz, align 4
  tail call void @gen_pool_free_owner(ptr noundef %64, i32 noundef %66, i32 noundef %67, ptr noundef null) #5
  %68 = ptrtoint ptr %sram_pool_data.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sram_pool_data.i, align 4
  %70 = ptrtoint ptr %ti_emif_sram_data_virt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ti_emif_sram_data_virt.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %69, i32 noundef %71, i32 noundef 560, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %fail_free_sram, %if.end26, %err_free_sram_code.i, %do.end9.i, %do.end.i, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then13 ], [ -19, %fail_free_sram ], [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %do.end.i ], [ -12, %do.end9.i ], [ %ret.0.i, %err_free_sram_code.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_emif_remove(ptr nocapture noundef readnone %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @emif_instance, align 4
  store ptr null, ptr @emif_instance, align 4
  %sram_pool_code.i = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sram_pool_code.i, align 8
  %ti_emif_sram_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 2
  %3 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ti_emif_sram_virt.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %5 = load i32, ptr @ti_emif_sram_sz, align 4
  tail call void @gen_pool_free_owner(ptr noundef %2, i32 noundef %4, i32 noundef %5, ptr noundef null) #5
  %sram_pool_data.i = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 5
  %6 = ptrtoint ptr %sram_pool_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sram_pool_data.i, align 4
  %ti_emif_sram_data_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 3
  %8 = ptrtoint ptr %ti_emif_sram_data_virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ti_emif_sram_data_virt.i, align 4
  tail call void @gen_pool_free_owner(ptr noundef %7, i32 noundef %9, i32 noundef 560, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_save_context() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_enter_sr() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_abort_sr() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_restore_context() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_exit_sr() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_emif_run_hw_leveling() #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_emif_suspend(ptr nocapture noundef readnone %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_emif_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @emif_instance, align 4
  %ti_emif_sram_virt = getelementptr inbounds %struct.ti_emif_data, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %ti_emif_sram_virt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ti_emif_sram_virt, align 8
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram to i32))
  %5 = load i32, ptr @ti_emif_sram, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp.not = icmp eq i32 %4, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr @emif_instance, align 4
  %sram_pool_code.i = getelementptr inbounds %struct.ti_emif_data, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sram_pool_code.i, align 8
  %ti_emif_sram_virt.i = getelementptr inbounds %struct.ti_emif_data, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ti_emif_sram_virt.i, align 8
  %11 = inttoptr i32 %10 to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_emif_sram_sz to i32))
  %12 = load i32, ptr @ti_emif_sram_sz, align 4
  %call.i = tail call ptr @sram_exec_copy(ptr noundef %8, ptr noundef %11, ptr noundef nonnull @ti_emif_sram, i32 noundef %12) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup.sink.split.i_crit_edge, label %if.end.i

if.then.cleanup.sink.split.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.then
  %13 = ptrtoint ptr %ti_emif_sram_virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ti_emif_sram_virt.i, align 8
  %add.i.i = add i32 %14, sub (i32 ptrtoint (ptr @ti_emif_pm_sram_data to i32), i32 ptrtoint (ptr @ti_emif_sram to i32))
  %15 = ptrtoint ptr %sram_pool_code.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sram_pool_code.i, align 8
  %17 = inttoptr i32 %add.i.i to ptr
  %pm_data.i = getelementptr inbounds %struct.ti_emif_data, ptr %6, i32 0, i32 6
  %call3.i = tail call ptr @sram_exec_copy(ptr noundef %16, ptr noundef %17, ptr noundef %pm_data.i, i32 noundef 24) #5
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.then.cleanup.sink.split.i_crit_edge
  %.str.19.sink.i = phi ptr [ @.str.16, %if.then.cleanup.sink.split.i_crit_edge ], [ @.str.19, %if.end.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.19.sink.i) #8
  br label %if.end

if.end:                                           ; preds = %cleanup.sink.split.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__ksymtab_ti_emif_copy_pm_function_table, !1, !"__ksymtab_ti_emif_copy_pm_function_table", i1 false, i1 false}
!1 = !{!"../drivers/memory/ti-emif-pm.c", i32 216, i32 1}
!2 = !{ptr @__ksymtab_ti_emif_get_mem_type, !3, !"__ksymtab_ti_emif_get_mem_type", i1 false, i1 false}
!3 = !{!"../drivers/memory/ti-emif-pm.c", i32 236, i32 1}
!4 = !{ptr @__initcall__kmod_ti_emif_sram__170_347_ti_emif_driver_init6, !5, !"__initcall__kmod_ti_emif_sram__170_347_ti_emif_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/memory/ti-emif-pm.c", i32 347, i32 1}
!6 = !{ptr @__exitcall_ti_emif_driver_exit, !5, !"__exitcall_ti_emif_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author171, !8, !"__UNIQUE_ID_author171", i1 false, i1 false}
!8 = !{!"../drivers/memory/ti-emif-pm.c", i32 349, i32 1}
!9 = !{ptr @__UNIQUE_ID_description172, !10, !"__UNIQUE_ID_description172", i1 false, i1 false}
!10 = !{!"../drivers/memory/ti-emif-pm.c", i32 350, i32 1}
!11 = !{ptr @__UNIQUE_ID_file173, !12, !"__UNIQUE_ID_file173", i1 false, i1 false}
!12 = !{!"../drivers/memory/ti-emif-pm.c", i32 351, i32 1}
!13 = !{ptr @__UNIQUE_ID_license174, !12, !"__UNIQUE_ID_license174", i1 false, i1 false}
!14 = !{ptr @emif_instance, !15, !"emif_instance", i1 false, i1 false}
!15 = !{!"../drivers/memory/ti-emif-pm.c", i32 38, i32 29}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/memory/ti-emif-pm.c", i32 342, i32 11}
!18 = !{ptr @ti_emif_driver, !19, !"ti_emif_driver", i1 false, i1 false}
!19 = !{!"../drivers/memory/ti-emif-pm.c", i32 338, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/memory/ti-emif-pm.c", i32 69, i32 50}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/memory/ti-emif-pm.c", i32 71, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ti_emif_alloc_sram._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ti_emif_alloc_sram._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/memory/ti-emif-pm.c", i32 79, i32 3}
!32 = !{ptr @ti_emif_alloc_sram._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ti_emif_alloc_sram._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/memory/ti-emif-pm.c", i32 91, i32 3}
!36 = !{ptr @ti_emif_alloc_sram._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ti_emif_alloc_sram._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/memory/ti-emif-pm.c", i32 100, i32 3}
!40 = !{ptr @ti_emif_alloc_sram._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ti_emif_alloc_sram._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/memory/ti-emif-pm.c", i32 158, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ti_emif_push_sram._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @ti_emif_push_sram._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/memory/ti-emif-pm.c", i32 169, i32 3}
!49 = !{ptr @ti_emif_push_sram._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ti_emif_push_sram._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ti_emif_of_match, !52, !"ti_emif_of_match", i1 false, i1 false}
!52 = !{!"../drivers/memory/ti-emif-pm.c", i32 238, i32 34}
!53 = !{ptr @ti_emif_pm_ops, !54, !"ti_emif_pm_ops", i1 false, i1 false}
!54 = !{!"../drivers/memory/ti-emif-pm.c", i32 334, i32 32}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 1122999}
!65 = !{i64 2152569410}
!66 = !{i64 2152566233}
!67 = !{i64 1122581}
!68 = !{i64 2152566720}
