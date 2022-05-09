; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/omap_elm.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/omap_elm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+elm_config\22, \22a\22\09"
module asm "\09.weak\09__crc_elm_config\09\09\09\09"
module asm "\09.long\09__crc_elm_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22elm_config\22\09\09\09\09\09"
module asm "__kstrtabns_elm_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+elm_decode_bch_error_page\22, \22a\22\09"
module asm "\09.weak\09__crc_elm_decode_bch_error_page\09\09\09\09"
module asm "\09.long\09__crc_elm_decode_bch_error_page\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_elm_decode_bch_error_page:\09\09\09\09\09"
module asm "\09.asciz \09\22elm_decode_bch_error_page\22\09\09\09\09\09"
module asm "__kstrtabns_elm_decode_bch_error_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.elm_info = type { ptr, ptr, %struct.completion, %struct.list_head, i32, %struct.elm_registers, i32, i32 }
%struct.elm_registers = type { i32, i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32], [8 x i32] }
%struct.elm_errorvec = type { i8, i8, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@elm_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to configure elm - device not probed?\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"elm_config\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/nand/raw/omap_elm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elm_config._entry_ptr = internal global ptr @elm_config._entry, section ".printk_index", align 4
@elm_config._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 115, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported config ecc-size=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@elm_config._entry_ptr.7 = internal global ptr @elm_config._entry.5, section ".printk_index", align 4
@elm_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 120, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported config ecc-step=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@elm_config._entry_ptr.10 = internal global ptr @elm_config._entry.8, section ".printk_index", align 4
@__kstrtab_elm_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_elm_config = external dso_local constant [0 x i8], align 1
@__ksymtab_elm_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elm_config to i32), ptr @__kstrtab_elm_config, ptr @__kstrtabns_elm_config }, section "___ksymtab+elm_config", align 4
@__kstrtab_elm_decode_bch_error_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_elm_decode_bch_error_page = external dso_local constant [0 x i8], align 1
@__ksymtab_elm_decode_bch_error_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @elm_decode_bch_error_page to i32), ptr @__kstrtab_elm_decode_bch_error_page, ptr @__kstrtabns_elm_decode_bch_error_page }, section "___ksymtab+elm_decode_bch_error_page", align 4
@__initcall__kmod_omap_elm__188_568_elm_driver_init6 = internal global ptr @elm_driver_init, section ".initcall6.init", align 4
@elm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @elm_probe, ptr @elm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @elm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @elm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_elm_driver_exit = internal global ptr @elm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [57 x i8] c"omap_elm.description=ELM driver for BCH error correction\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [34 x i8] c"omap_elm.author=Texas Instruments\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [33 x i8] c"omap_elm.alias=platform:omap-elm\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [44 x i8] c"omap_elm.file=drivers/mtd/nand/raw/omap_elm\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [24 x i8] c"omap_elm.license=GPL v2\00", section ".modinfo", align 1
@elm_load_syndrome._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013invalid config bch_type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elm_load_syndrome\00", [46 x i8] zeroinitializer }, align 32
@elm_load_syndrome._entry_ptr = internal global ptr @elm_load_syndrome._entry, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap-elm\00", [23 x i8] zeroinitializer }, align 32
@elm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-elm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@elm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @elm_suspend, ptr @elm_resume, ptr @elm_suspend, ptr @elm_resume, ptr @elm_suspend, ptr @elm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@elm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failure requesting %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"elm_probe\00", [22 x i8] zeroinitializer }, align 32
@elm_probe._entry_ptr = internal global ptr @elm_probe._entry, section ".printk_index", align 4
@elm_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 416, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"can't enable clock\0A\00", [44 x i8] zeroinitializer }, align 32
@elm_probe._entry_ptr.18 = internal global ptr @elm_probe._entry.16, section ".printk_index", align 4
@elm_devices = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @elm_devices, ptr @elm_devices }, [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 110, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 115, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 120, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"elm_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 558, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 232, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 560, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"elm_of_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 551, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"elm_pm_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 548, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 407, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 416, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"elm_devices\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../drivers/mtd/nand/raw/omap_elm.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 83, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 87, i32 2 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_elm_driver_exit, ptr @__initcall__kmod_omap_elm__188_568_elm_driver_init6, ptr @__ksymtab_elm_config, ptr @__ksymtab_elm_decode_bch_error_page, ptr @elm_config._entry, ptr @elm_config._entry.5, ptr @elm_config._entry.8, ptr @elm_config._entry_ptr, ptr @elm_config._entry_ptr.10, ptr @elm_config._entry_ptr.7, ptr @elm_driver_exit, ptr @elm_load_syndrome._entry, ptr @elm_load_syndrome._entry_ptr, ptr @elm_probe._entry, ptr @elm_probe._entry.16, ptr @elm_probe._entry_ptr, ptr @elm_probe._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @elm_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @elm_of_match, ptr @elm_pm_ops, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @elm_devices, ptr @init_completion.__key, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_config._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_load_syndrome._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elm_devices to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @elm_config(ptr noundef %dev, i32 noundef %bch_type, i32 noundef %ecc_steps, i32 noundef %ecc_step_size, i32 noundef %ecc_syndrome_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ecc_step_size)
  %cmp = icmp sgt i32 %ecc_step_size, 1024
  br i1 %cmp, label %do.end4, label %if.end5

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %ecc_step_size) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %ecc_steps)
  %cmp6 = icmp slt i32 %ecc_steps, 9
  %2 = and i32 %ecc_steps, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool7.not = icmp eq i32 %2, 0
  %or.cond = or i1 %cmp6, %tobool7.not
  br i1 %or.cond, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %ecc_steps) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %bch_type, 3
  %or = or i32 %and, 134152192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %elm_base.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #5, !srcloc !69
  %bch_type13 = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %bch_type13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %bch_type, ptr %bch_type13, align 4
  %ecc_steps14 = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ecc_steps14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ecc_steps, ptr %ecc_steps14, align 4
  %ecc_syndrome_size15 = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ecc_syndrome_size15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %ecc_syndrome_size, ptr %ecc_syndrome_size15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end11, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end4 ], [ -22, %do.end11 ], [ 0, %if.end12 ], [ -517, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @elm_decode_bch_error_page(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ecc_calc, ptr nocapture noundef %err_vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %elm_base.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %and = and i32 %4, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %and) #5, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i18 = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 65536) #5, !srcloc !69
  %ecc_steps.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %ecc_steps.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ecc_steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp122.i = icmp sgt i32 %10, 0
  br i1 %cmp122.i, label %for.body.lr.ph.i, label %entry.elm_start_processing.exit_crit_edge

entry.elm_start_processing.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_start_processing.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %bch_type.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 4
  %ecc_syndrome_size.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ecc.addr.0125.i = phi ptr [ %ecc_calc, %for.body.lr.ph.i ], [ %add.ptr.i19, %if.end.i.for.body.i_crit_edge ]
  %i.0123.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.0123.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %13 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !70
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %shl.i.i = shl nuw i32 1, %i.0123.i
  %or.i.i = or i32 %16, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %18 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %19, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %17) #5, !srcloc !69
  %mul.i = shl i32 %i.0123.i, 6
  %add.i = add i32 %mul.i, 1024
  %20 = ptrtoint ptr %bch_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bch_type.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb8.i
    i32 2, label %sw.bb15.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 9
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  %26 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %25) #5, !srcloc !69
  %add2.i = add i32 %mul.i, 1028
  %arrayidx3.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 5
  %28 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %31 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i99.i = getelementptr i8, ptr %32, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99.i, i32 %30) #5, !srcloc !69
  %add4.i = add i32 %mul.i, 1032
  %arrayidx5.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 1
  %33 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  %36 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i101.i = getelementptr i8, ptr %37, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 %35) #5, !srcloc !69
  %add6.i = add i32 %mul.i, 1036
  %38 = ptrtoint ptr %ecc.addr.0125.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ecc.addr.0125.i, align 1
  %conv.i = zext i8 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %40 = shl nuw i32 %conv.i, 24
  %41 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %42, i32 %add6.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %40) #5, !srcloc !69
  br label %if.end.i

sw.bb8.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 3
  %43 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx10.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 2
  %45 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx10.i, align 1
  %and.i = zext i8 %46 to i32
  %or.i = tail call i32 @llvm.fshl.i32(i32 %and.i, i32 %44, i32 28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %48 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i105.i = getelementptr i8, ptr %49, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105.i, i32 %47) #5, !srcloc !69
  %add12.i = add i32 %mul.i, 1028
  %50 = ptrtoint ptr %ecc.addr.0125.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ecc.addr.0125.i, align 4
  %shr14.i = lshr i32 %51, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %shr14.i) #5
  %53 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i107.i = getelementptr i8, ptr %54, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107.i, i32 %52) #5, !srcloc !69
  br label %if.end.i

sw.bb15.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx16.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 22
  %55 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx16.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %58 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i109.i = getelementptr i8, ptr %59, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109.i, i32 %57) #5, !srcloc !69
  %add17.i = add i32 %mul.i, 1028
  %arrayidx18.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 18
  %60 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %63 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i111.i = getelementptr i8, ptr %64, i32 %add17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111.i, i32 %62) #5, !srcloc !69
  %add19.i = add i32 %mul.i, 1032
  %arrayidx20.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 14
  %65 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx20.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #5
  %68 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i113.i = getelementptr i8, ptr %69, i32 %add19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113.i, i32 %67) #5, !srcloc !69
  %add21.i = add i32 %mul.i, 1036
  %arrayidx22.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 10
  %70 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx22.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #5
  %73 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i115.i = getelementptr i8, ptr %74, i32 %add21.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115.i, i32 %72) #5, !srcloc !69
  %add23.i = add i32 %mul.i, 1040
  %arrayidx24.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 6
  %75 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx24.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #5
  %78 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %79, i32 %add23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117.i, i32 %77) #5, !srcloc !69
  %add25.i = add i32 %mul.i, 1044
  %arrayidx26.i = getelementptr i8, ptr %ecc.addr.0125.i, i32 2
  %80 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx26.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #5
  %83 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i119.i = getelementptr i8, ptr %84, i32 %add25.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119.i, i32 %82) #5, !srcloc !69
  %add27.i = add i32 %mul.i, 1048
  %85 = ptrtoint ptr %ecc.addr.0125.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ecc.addr.0125.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  %88 = shl i32 %87, 16
  %89 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i121.i = getelementptr i8, ptr %90, i32 %add27.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i121.i, i32 %88) #5, !srcloc !69
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb15.i, %sw.bb8.i, %sw.bb.i, %for.body.i.if.end.i_crit_edge
  %91 = ptrtoint ptr %ecc_syndrome_size.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ecc_syndrome_size.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %ecc.addr.0125.i, i32 %92
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %93 = ptrtoint ptr %ecc_steps.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ecc_steps.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %94
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %elm_load_syndrome.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

elm_load_syndrome.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp10.i = icmp sgt i32 %94, 0
  br i1 %cmp10.i, label %elm_load_syndrome.exit.for.body.i24_crit_edge, label %elm_load_syndrome.exit.elm_start_processing.exit_crit_edge

elm_load_syndrome.exit.elm_start_processing.exit_crit_edge: ; preds = %elm_load_syndrome.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_start_processing.exit

elm_load_syndrome.exit.for.body.i24_crit_edge:    ; preds = %elm_load_syndrome.exit
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc.i.for.body.i24_crit_edge, %elm_load_syndrome.exit.for.body.i24_crit_edge
  %i.011.i = phi i32 [ %inc.i29, %for.inc.i.for.body.i24_crit_edge ], [ 0, %elm_load_syndrome.exit.for.body.i24_crit_edge ]
  %arrayidx.i22 = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.011.i
  %95 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i22, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i23 = icmp eq i8 %96, 0
  br i1 %tobool.not.i23, label %for.body.i24.for.inc.i_crit_edge, label %if.then.i28

for.body.i24.for.inc.i_crit_edge:                 ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i28:                                      ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i25 = shl i32 %i.011.i, 6
  %add.i26 = add i32 %mul.i25, 1048
  %97 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %98, i32 %add.i26
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %100 = or i32 %99, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %101 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %102, i32 %add.i26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %100) #5, !srcloc !69
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i28, %for.body.i24.for.inc.i_crit_edge
  %inc.i29 = add nuw nsw i32 %i.011.i, 1
  %103 = ptrtoint ptr %ecc_steps.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ecc_steps.i, align 4
  %cmp.i30 = icmp slt i32 %inc.i29, %104
  br i1 %cmp.i30, label %for.inc.i.for.body.i24_crit_edge, label %for.inc.i.elm_start_processing.exit_crit_edge

for.inc.i.elm_start_processing.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_start_processing.exit

for.inc.i.for.body.i24_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i24

elm_start_processing.exit:                        ; preds = %for.inc.i.elm_start_processing.exit_crit_edge, %elm_load_syndrome.exit.elm_start_processing.exit_crit_edge, %entry.elm_start_processing.exit_crit_edge
  %elm_completion = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %elm_completion) #5
  %105 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %106, i32 28
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %108 = and i32 %107, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %110, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %108) #5, !srcloc !69
  %111 = ptrtoint ptr %ecc_steps.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ecc_steps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp58.i = icmp sgt i32 %112, 0
  br i1 %cmp58.i, label %elm_start_processing.exit.for.body.i40_crit_edge, label %elm_start_processing.exit.elm_error_correction.exit_crit_edge

elm_start_processing.exit.elm_error_correction.exit_crit_edge: ; preds = %elm_start_processing.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_error_correction.exit

elm_start_processing.exit.for.body.i40_crit_edge: ; preds = %elm_start_processing.exit
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.inc22.i.for.body.i40_crit_edge, %elm_start_processing.exit.for.body.i40_crit_edge
  %i.059.i = phi i32 [ %inc23.i, %for.inc22.i.for.body.i40_crit_edge ], [ 0, %elm_start_processing.exit.for.body.i40_crit_edge ]
  %arrayidx.i38 = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.059.i
  %113 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i38, align 4, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i39 = icmp eq i8 %114, 0
  br i1 %tobool.not.i39, label %for.body.i40.for.inc22.i_crit_edge, label %if.then.i45

for.body.i40.for.inc22.i_crit_edge:               ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc22.i

if.then.i45:                                      ; preds = %for.body.i40
  %mul.i41 = shl i32 %i.059.i, 8
  %add.i42 = add i32 %mul.i41, 2048
  %115 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %116, i32 %add.i42
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #5, !srcloc !70
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %and.i44 = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool1.not.i = icmp eq i32 %and.i44, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i45
  %and5.i = and i32 %118, 31
  %error_count.i = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.059.i, i32 2
  %119 = ptrtoint ptr %error_count.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %and5.i, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp1055.not.i = icmp eq i32 %and5.i, 0
  br i1 %cmp1055.not.i, label %if.then2.i.if.end.i51_crit_edge, label %for.body11.preheader.i

if.then2.i.if.end.i51_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

for.body11.preheader.i:                           ; preds = %if.then2.i
  %add4.i46 = add i32 %mul.i41, 2176
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.body11.preheader.i
  %offset.057.i = phi i32 [ %add16.i, %for.body11.i.for.body11.i_crit_edge ], [ %add4.i46, %for.body11.preheader.i ]
  %j.056.i = phi i32 [ %inc.i47, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.body11.preheader.i ]
  %120 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %121, i32 %offset.057.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #5, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %123 = and i32 %122, -14745600
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #5
  %arrayidx15.i = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.059.i, i32 3, i32 %j.056.i
  %125 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %arrayidx15.i, align 4
  %add16.i = add i32 %offset.057.i, 4
  %inc.i47 = add nuw nsw i32 %j.056.i, 1
  %126 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %error_count.i, align 4
  %cmp10.i48 = icmp slt i32 %inc.i47, %127
  br i1 %cmp10.i48, label %for.body11.i.for.body11.i_crit_edge, label %for.body11.i.if.end.i51_crit_edge

for.body11.i.if.end.i51_crit_edge:                ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i51

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.i

if.else.i:                                        ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #7
  %error_uncorrectable.i = getelementptr %struct.elm_errorvec, ptr %err_vec, i32 %i.059.i, i32 1
  %128 = ptrtoint ptr %error_uncorrectable.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %error_uncorrectable.i, align 1
  br label %if.end.i51

if.end.i51:                                       ; preds = %if.else.i, %for.body11.i.if.end.i51_crit_edge, %if.then2.i.if.end.i51_crit_edge
  %shl.i = shl nuw i32 1, %i.059.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %129 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %130 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i54.i = getelementptr i8, ptr %131, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54.i, i32 %129) #5, !srcloc !69
  %132 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %133, i32 128
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i49) #5, !srcloc !70
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %neg.i.i = xor i32 %shl.i, -1
  %and.i.i = and i32 %135, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %136 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %137 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i7.i.i50 = getelementptr i8, ptr %138, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i50, i32 %136) #5, !srcloc !69
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %if.end.i51, %for.body.i40.for.inc22.i_crit_edge
  %inc23.i = add nuw nsw i32 %i.059.i, 1
  %139 = ptrtoint ptr %ecc_steps.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ecc_steps.i, align 4
  %cmp.i52 = icmp slt i32 %inc23.i, %140
  br i1 %cmp.i52, label %for.inc22.i.for.body.i40_crit_edge, label %for.inc22.i.elm_error_correction.exit_crit_edge

for.inc22.i.elm_error_correction.exit_crit_edge:  ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_error_correction.exit

for.inc22.i.for.body.i40_crit_edge:               ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i40

elm_error_correction.exit:                        ; preds = %for.inc22.i.elm_error_correction.exit_crit_edge, %elm_start_processing.exit.elm_error_correction.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @elm_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @elm_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @elm_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 324, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call3 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %elm_base = getelementptr inbounds %struct.elm_info, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %elm_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %elm_base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %call.i62 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef nonnull @elm_isr, ptr noundef null, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool15.not = icmp eq i32 %call.i62, 0
  br i1 %tobool15.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call3) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  %call.i63 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %cmp22 = icmp slt i32 %call.i63, 0
  br i1 %cmp22, label %if.then23, label %if.end31

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call.i64 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %elm_completion = getelementptr inbounds %struct.elm_info, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %elm_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %elm_completion, align 4
  %wait.i = getelementptr inbounds %struct.elm_info, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #5
  %list = getelementptr inbounds %struct.elm_info, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.elm_info, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev.i, align 4
  %8 = load ptr, ptr @elm_devices, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @elm_devices, ptr noundef %8) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.list_add.exit_crit_edge

if.end31.list_add.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %list, align 4
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @elm_devices, ptr %prev.i, align 4
  store volatile ptr %list, ptr @elm_devices, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end31.list_add.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then23, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ %call.i62, %do.end ], [ -22, %if.then23 ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_isr(i32 noundef %this_irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %elm_base.i = getelementptr inbounds %struct.elm_info, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !70
  %3 = lshr i32 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %4 = shl nuw nsw i32 %and, 8
  %5 = ptrtoint ptr %elm_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %elm_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %4) #5, !srcloc !69
  %elm_completion = getelementptr inbounds %struct.elm_info, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %elm_completion) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %elm_regs.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5
  %bch_type1.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bch_type1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bch_type1.i, align 4
  %elm_base.i.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !70
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %8 = ptrtoint ptr %elm_regs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %elm_regs.i, align 4
  %9 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #5, !srcloc !70
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %elm_sysconfig.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %elm_sysconfig.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %elm_sysconfig.i, align 4
  %14 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 32
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !70
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %elm_location_config.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 2
  %18 = ptrtoint ptr %elm_location_config.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %elm_location_config.i, align 4
  %19 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %20, i32 128
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #5, !srcloc !70
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %elm_page_ctrl.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 3
  %23 = ptrtoint ptr %elm_page_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %elm_page_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.i = icmp ult i32 %3, 3
  br i1 %switch.i, label %entry.for.body.i_crit_edge, label %entry.elm_context_save.exit_crit_edge

entry.elm_context_save.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_context_save.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %sw.bb19.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %sw.bb19.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.023.i, 6
  %24 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %for.body.i.sw.bb19.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %for.body.i.sw.bb12.i_crit_edge
  ]

for.body.i.sw.bb12.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

for.body.i.sw.bb19.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb19.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw nsw i32 %mul.i, 1048
  %25 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %26, i32 %add.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #5, !srcloc !70
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 4, i32 %i.023.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i, align 4
  %add6.i = add nuw nsw i32 %mul.i, 1044
  %30 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %31, i32 %add6.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #5, !srcloc !70
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx8.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 5, i32 %i.023.i
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx8.i, align 4
  %add9.i = add nuw nsw i32 %mul.i, 1040
  %35 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %36, i32 %add9.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #5, !srcloc !70
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx11.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 6, i32 %i.023.i
  %39 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx11.i, align 4
  br label %sw.bb12.i

sw.bb12.i:                                        ; preds = %sw.bb.i, %for.body.i.sw.bb12.i_crit_edge
  %add13.i = add nuw nsw i32 %mul.i, 1036
  %40 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %41, i32 %add13.i
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #5, !srcloc !70
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx15.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 7, i32 %i.023.i
  %44 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx15.i, align 4
  %add16.i = add nuw nsw i32 %mul.i, 1032
  %45 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %46, i32 %add16.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16.i) #5, !srcloc !70
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx18.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 8, i32 %i.023.i
  %49 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %arrayidx18.i, align 4
  br label %sw.bb19.i

sw.bb19.i:                                        ; preds = %sw.bb12.i, %for.body.i.sw.bb19.i_crit_edge
  %add20.i = add nuw nsw i32 %mul.i, 1028
  %50 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %51, i32 %add20.i
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #5, !srcloc !70
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx22.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 9, i32 %i.023.i
  %54 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx22.i, align 4
  %add23.i = add nuw nsw i32 %mul.i, 1024
  %55 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %56, i32 %add23.i
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20.i) #5, !srcloc !70
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx25.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 10, i32 %i.023.i
  %59 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx25.i, align 4
  %add26.i = add nuw nsw i32 %mul.i, 1048
  %60 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %61, i32 %add26.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22.i) #5, !srcloc !70
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %arrayidx29.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 4, i32 %i.023.i
  %64 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx29.i, align 4
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sw.bb19.i.elm_context_save.exit_crit_edge, label %sw.bb19.i.for.body.i_crit_edge

sw.bb19.i.for.body.i_crit_edge:                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.bb19.i.elm_context_save.exit_crit_edge:        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_context_save.exit

elm_context_save.exit:                            ; preds = %sw.bb19.i.elm_context_save.exit_crit_edge, %entry.elm_context_save.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elm_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #5
  %elm_regs.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5
  %bch_type1.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bch_type1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bch_type1.i, align 4
  %4 = ptrtoint ptr %elm_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elm_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %elm_base.i.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #5, !srcloc !69
  %elm_sysconfig.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %elm_sysconfig.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %elm_sysconfig.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %12 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %11) #5, !srcloc !69
  %elm_location_config.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %elm_location_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %elm_location_config.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %16) #5, !srcloc !69
  %elm_page_ctrl.i = getelementptr inbounds %struct.elm_info, ptr %1, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %elm_page_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %elm_page_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %23, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %21) #5, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.i = icmp ult i32 %3, 3
  br i1 %switch.i, label %entry.for.body.i_crit_edge, label %entry.elm_context_restore.exit_crit_edge

entry.elm_context_restore.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_context_restore.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %sw.bb11.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.023.i = phi i32 [ %inc.i, %sw.bb11.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %mul.i = shl nuw nsw i32 %i.023.i, 6
  %24 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %for.body.i.sw.bb11.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %for.body.i.sw.bb6.i_crit_edge
  ]

for.body.i.sw.bb6.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb6.i

for.body.i.sw.bb11.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11.i

sw.bb.i:                                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.i = add nuw nsw i32 %mul.i, 1048
  %arrayidx.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 4, i32 %i.023.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %29, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %27) #5, !srcloc !69
  %add2.i = add nuw nsw i32 %mul.i, 1044
  %arrayidx3.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 5, i32 %i.023.i
  %30 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %33 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %34, i32 %add2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %32) #5, !srcloc !69
  %add4.i = add nuw nsw i32 %mul.i, 1040
  %arrayidx5.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 6, i32 %i.023.i
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  %38 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %39, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %37) #5, !srcloc !69
  br label %sw.bb6.i

sw.bb6.i:                                         ; preds = %sw.bb.i, %for.body.i.sw.bb6.i_crit_edge
  %add7.i = add nuw nsw i32 %mul.i, 1036
  %arrayidx8.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 7, i32 %i.023.i
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx8.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  %43 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %44, i32 %add7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %42) #5, !srcloc !69
  %add9.i = add nuw nsw i32 %mul.i, 1032
  %arrayidx10.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 8, i32 %i.023.i
  %45 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx10.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %48 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %49, i32 %add9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 %47) #5, !srcloc !69
  br label %sw.bb11.i

sw.bb11.i:                                        ; preds = %sw.bb6.i, %for.body.i.sw.bb11.i_crit_edge
  %add12.i = add nuw nsw i32 %mul.i, 1028
  %arrayidx13.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 9, i32 %i.023.i
  %50 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx13.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #5
  %53 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %54, i32 %add12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %52) #5, !srcloc !69
  %add14.i = add nuw nsw i32 %mul.i, 1024
  %arrayidx15.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 10, i32 %i.023.i
  %55 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx15.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #5
  %58 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %59, i32 %add14.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 %57) #5, !srcloc !69
  %add16.i = add nuw nsw i32 %mul.i, 1048
  %arrayidx18.i = getelementptr %struct.elm_info, ptr %1, i32 0, i32 5, i32 4, i32 %i.023.i
  %60 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx18.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %and.i = lshr i32 %61, 8
  %62 = and i32 %and.i, 256
  %63 = ptrtoint ptr %elm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %elm_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %64, i32 %add16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %62) #5, !srcloc !69
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %sw.bb11.i.elm_context_restore.exit_crit_edge, label %sw.bb11.i.for.body.i_crit_edge

sw.bb11.i.for.body.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

sw.bb11.i.elm_context_restore.exit_crit_edge:     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %elm_context_restore.exit

elm_context_restore.exit:                         ; preds = %sw.bb11.i.elm_context_restore.exit_crit_edge, %entry.elm_context_restore.exit_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 110, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @elm_config._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @elm_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 115, i32 3}
!10 = !{ptr @elm_config._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @elm_config._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 120, i32 3}
!14 = !{ptr @elm_config._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @elm_config._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_elm_config, !17, !"__ksymtab_elm_config", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 132, i32 1}
!18 = !{ptr @__ksymtab_elm_decode_bch_error_page, !19, !"__ksymtab_elm_decode_bch_error_page", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 364, i32 1}
!20 = !{ptr @__initcall__kmod_omap_elm__188_568_elm_driver_init6, !21, !"__initcall__kmod_omap_elm__188_568_elm_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 568, i32 1}
!22 = !{ptr @__exitcall_elm_driver_exit, !21, !"__exitcall_elm_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description189, !24, !"__UNIQUE_ID_description189", i1 false, i1 false}
!24 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 570, i32 1}
!25 = !{ptr @__UNIQUE_ID_author190, !26, !"__UNIQUE_ID_author190", i1 false, i1 false}
!26 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 571, i32 1}
!27 = !{ptr @__UNIQUE_ID_alias191, !28, !"__UNIQUE_ID_alias191", i1 false, i1 false}
!28 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 572, i32 1}
!29 = !{ptr @__UNIQUE_ID_file192, !30, !"__UNIQUE_ID_file192", i1 false, i1 false}
!30 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 573, i32 1}
!31 = !{ptr @__UNIQUE_ID_license193, !30, !"__UNIQUE_ID_license193", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 232, i32 5}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @elm_load_syndrome._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @elm_load_syndrome._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 560, i32 11}
!39 = !{ptr @elm_driver, !40, !"elm_driver", i1 false, i1 false}
!40 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 558, i32 31}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 407, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @elm_probe._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @elm_probe._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 416, i32 3}
!48 = !{ptr @elm_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @elm_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @init_completion.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/completion.h", i32 87, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @elm_devices, !54, !"elm_devices", i1 false, i1 false}
!54 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 83, i32 8}
!55 = !{ptr @elm_of_match, !56, !"elm_of_match", i1 false, i1 false}
!56 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 551, i32 34}
!57 = !{ptr @elm_pm_ops, !58, !"elm_pm_ops", i1 false, i1 false}
!58 = !{!"../drivers/mtd/nand/raw/omap_elm.c", i32 548, i32 8}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2153120477}
!69 = !{i64 4886128}
!70 = !{i64 4886546}
!71 = !{i64 2153121168}
!72 = !{i8 0, i8 2}
