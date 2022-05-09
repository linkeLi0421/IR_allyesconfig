; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_gemini.c_pt.bc'
source_filename = "../drivers/ata/sata_gemini.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+gemini_sata_bridge_get\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_bridge_get\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_bridge_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_bridge_get:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_bridge_get\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_bridge_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gemini_sata_bridge_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_bridge_enabled\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_bridge_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_bridge_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_bridge_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_bridge_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gemini_sata_get_muxmode\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_get_muxmode\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_get_muxmode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_get_muxmode:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_get_muxmode\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_get_muxmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gemini_sata_start_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_start_bridge\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_start_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_start_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_start_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_start_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gemini_sata_stop_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_stop_bridge\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_stop_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_stop_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_stop_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_stop_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gemini_sata_reset_bridge\22, \22a\22\09"
module asm "\09.weak\09__crc_gemini_sata_reset_bridge\09\09\09\09"
module asm "\09.long\09__crc_gemini_sata_reset_bridge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gemini_sata_reset_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22gemini_sata_reset_bridge\22\09\09\09\09\09"
module asm "__kstrtabns_gemini_sata_reset_bridge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sata_gemini = type { ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr }
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

@sg_singleton = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_gemini_sata_bridge_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_bridge_get = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_bridge_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_bridge_get to i32), ptr @__kstrtab_gemini_sata_bridge_get, ptr @__kstrtabns_gemini_sata_bridge_get }, section "___ksymtab+gemini_sata_bridge_get", align 4
@__kstrtab_gemini_sata_bridge_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_bridge_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_bridge_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_bridge_enabled to i32), ptr @__kstrtab_gemini_sata_bridge_enabled, ptr @__kstrtabns_gemini_sata_bridge_enabled }, section "___ksymtab+gemini_sata_bridge_enabled", align 4
@__kstrtab_gemini_sata_get_muxmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_get_muxmode = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_get_muxmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_get_muxmode to i32), ptr @__kstrtab_gemini_sata_get_muxmode, ptr @__kstrtabns_gemini_sata_get_muxmode }, section "___ksymtab+gemini_sata_get_muxmode", align 4
@__kstrtab_gemini_sata_start_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_start_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_start_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_start_bridge to i32), ptr @__kstrtab_gemini_sata_start_bridge, ptr @__kstrtabns_gemini_sata_start_bridge }, section "___ksymtab+gemini_sata_start_bridge", align 4
@__kstrtab_gemini_sata_stop_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_stop_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_stop_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_stop_bridge to i32), ptr @__kstrtab_gemini_sata_stop_bridge, ptr @__kstrtabns_gemini_sata_stop_bridge }, section "___ksymtab+gemini_sata_stop_bridge", align 4
@__kstrtab_gemini_sata_reset_bridge = external dso_local constant [0 x i8], align 1
@__kstrtabns_gemini_sata_reset_bridge = external dso_local constant [0 x i8], align 1
@__ksymtab_gemini_sata_reset_bridge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gemini_sata_reset_bridge to i32), ptr @__kstrtab_gemini_sata_reset_bridge, ptr @__kstrtabns_gemini_sata_reset_bridge }, section "___ksymtab+gemini_sata_reset_bridge", align 4
@__initcall__kmod_sata_gemini__210_436_gemini_sata_driver_init6 = internal global ptr @gemini_sata_driver_init, section ".initcall6.init", align 4
@gemini_sata_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gemini_sata_probe, ptr @gemini_sata_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gemini_sata_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gemini_sata_driver_exit = internal global ptr @gemini_sata_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [60 x i8] c"sata_gemini.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file212 = internal constant [41 x i8] c"sata_gemini.file=drivers/ata/sata_gemini\00", section ".modinfo", align 1
@__UNIQUE_ID_license213 = internal constant [24 x i8] c"sata_gemini.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias214 = internal constant [46 x i8] c"sata_gemini.alias=platform:gemini_sata_bridge\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@gemini_sata_setup_bridge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SATA%d PHY %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"gemini_sata_setup_bridge\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/ata/sata_gemini.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gemini_sata_setup_bridge._entry_ptr = internal global ptr @gemini_sata_setup_bridge._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ready\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not ready\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gemini_sata_bridge\00", [45 x i8] zeroinitializer }, align 32
@gemini_sata_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,gemini-sata-bridge\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"syscon\00", [25 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 342, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no global syscon\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gemini_sata_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr = internal global ptr @gemini_sata_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cortina,gemini-enable-sata-bridge\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cortina,gemini-enable-ide-pins\00", [33 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 357, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"neither SATA bridge or IDE output enabled\0A\00", [53 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr.16 = internal global ptr @gemini_sata_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cortina,gemini-ata-muxmode\00", [37 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 364, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not parse ATA muxmode\0A\00", [35 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr.20 = internal global ptr @gemini_sata_probe._entry.18, section ".printk_index", align 4
@gemini_sata_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str.2, i32 368, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"illegal muxmode %d\0A\00", [44 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr.23 = internal global ptr @gemini_sata_probe._entry.21, section ".printk_index", align 4
@gemini_sata_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str.2, i32 378, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to set up IDE muxing\0A\00", [35 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr.26 = internal global ptr @gemini_sata_probe._entry.24, section ".printk_index", align 4
@gemini_sata_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str.2, i32 394, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set up the Gemini IDE/SATA nexus\0A\00", [62 x i8] zeroinitializer }, align 32
@gemini_sata_probe._entry_ptr.29 = internal global ptr @gemini_sata_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SATA0_PCLK\00", [21 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 245, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no SATA0 PCLK\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gemini_sata_bridge_init\00", [40 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr = internal global ptr @gemini_sata_bridge_init._entry, section ".printk_index", align 4
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SATA1_PCLK\00", [21 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.2, i32 250, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no SATA1 PCLK\00", [18 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.36 = internal global ptr @gemini_sata_bridge_init._entry.34, section ".printk_index", align 4
@gemini_sata_bridge_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.2, i32 256, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable SATA0 PCLK\0A\00", [35 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.39 = internal global ptr @gemini_sata_bridge_init._entry.37, section ".printk_index", align 4
@gemini_sata_bridge_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.32, ptr @.str.2, i32 261, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable SATA1 PCLK\0A\00", [35 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.42 = internal global ptr @gemini_sata_bridge_init._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sata0\00", [26 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.32, ptr @.str.2, i32 268, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no SATA0 reset controller\0A\00", [37 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.46 = internal global ptr @gemini_sata_bridge_init._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sata1\00", [26 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.32, ptr @.str.2, i32 275, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no SATA1 reset controller\0A\00", [37 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.50 = internal global ptr @gemini_sata_bridge_init._entry.48, section ".printk_index", align 4
@gemini_sata_bridge_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.32, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SATA ID %08x, PHY ID: %08x\0A\00", [36 x i8] zeroinitializer }, align 32
@gemini_sata_bridge_init._entry_ptr.53 = internal global ptr @gemini_sata_bridge_init._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ide\00", [28 x i8] zeroinitializer }, align 32
@gemini_setup_ide_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 308, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not select IDE state\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gemini_setup_ide_pins\00", [42 x i8] zeroinitializer }, align 32
@gemini_setup_ide_pins._entry_ptr = internal global ptr @gemini_setup_ide_pins._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"sg_singleton\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 116, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"gemini_sata_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 428, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 189, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 430, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"gemini_sata_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 421, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 340, i32 44 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 342, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 347, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 353, i32 32 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 357, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 362, i32 33 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 364, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 368, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 378, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 394, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 243, i32 37 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 245, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 248, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 250, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 256, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 261, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 266, i32 58 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 268, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 273, i32 58 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 275, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 287, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 302, i32 38 }
@___asan_gen_.207 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [29 x i8] c"../drivers/ata/sata_gemini.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 308, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias214, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_file212, ptr @__UNIQUE_ID_license213, ptr @__exitcall_gemini_sata_driver_exit, ptr @__initcall__kmod_sata_gemini__210_436_gemini_sata_driver_init6, ptr @__ksymtab_gemini_sata_bridge_enabled, ptr @__ksymtab_gemini_sata_bridge_get, ptr @__ksymtab_gemini_sata_get_muxmode, ptr @__ksymtab_gemini_sata_reset_bridge, ptr @__ksymtab_gemini_sata_start_bridge, ptr @__ksymtab_gemini_sata_stop_bridge, ptr @gemini_sata_bridge_init._entry, ptr @gemini_sata_bridge_init._entry.34, ptr @gemini_sata_bridge_init._entry.37, ptr @gemini_sata_bridge_init._entry.40, ptr @gemini_sata_bridge_init._entry.44, ptr @gemini_sata_bridge_init._entry.48, ptr @gemini_sata_bridge_init._entry.51, ptr @gemini_sata_bridge_init._entry_ptr, ptr @gemini_sata_bridge_init._entry_ptr.36, ptr @gemini_sata_bridge_init._entry_ptr.39, ptr @gemini_sata_bridge_init._entry_ptr.42, ptr @gemini_sata_bridge_init._entry_ptr.46, ptr @gemini_sata_bridge_init._entry_ptr.50, ptr @gemini_sata_bridge_init._entry_ptr.53, ptr @gemini_sata_driver_exit, ptr @gemini_sata_probe._entry, ptr @gemini_sata_probe._entry.14, ptr @gemini_sata_probe._entry.18, ptr @gemini_sata_probe._entry.21, ptr @gemini_sata_probe._entry.24, ptr @gemini_sata_probe._entry.27, ptr @gemini_sata_probe._entry_ptr, ptr @gemini_sata_probe._entry_ptr.16, ptr @gemini_sata_probe._entry_ptr.20, ptr @gemini_sata_probe._entry_ptr.23, ptr @gemini_sata_probe._entry_ptr.26, ptr @gemini_sata_probe._entry_ptr.29, ptr @gemini_sata_setup_bridge._entry, ptr @gemini_sata_setup_bridge._entry_ptr, ptr @gemini_setup_ide_pins._entry, ptr @gemini_setup_ide_pins._entry_ptr, ptr @sg_singleton, ptr @gemini_sata_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gemini_sata_of_match, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_singleton to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_setup_bridge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_sata_bridge_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_setup_ide_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gemini_sata_bridge_get() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sg_singleton, align 4
  %tobool.not = icmp eq ptr %0, null
  %spec.select = select i1 %tobool.not, ptr inttoptr (i32 -517 to ptr), ptr %0
  ret ptr %spec.select
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gemini_sata_bridge_enabled(ptr nocapture noundef readonly %sg, i1 noundef zeroext %is_ata1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sata_bridge = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 4
  %0 = ptrtoint ptr %sata_bridge to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sata_bridge, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %muxmode = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 2
  %2 = ptrtoint ptr %muxmode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %muxmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ne i32 %3, 2
  %brmerge = or i1 %cmp, %is_ata1
  br i1 %brmerge, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp5 = icmp ne i32 %3, 3
  %is_ata1.not = xor i1 %is_ata1, true
  %brmerge13 = or i1 %cmp5, %is_ata1.not
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ %brmerge13, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @gemini_sata_get_muxmode(ptr nocapture noundef readonly %sg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %muxmode = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %muxmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %muxmode, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gemini_sata_start_bridge(ptr nocapture noundef readonly %sg, i32 noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bridge)
  %cmp = icmp eq i32 %bridge, 0
  %sata0_pclk = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 7
  %sata1_pclk = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 8
  %pclk.0.in = select i1 %cmp, ptr %sata0_pclk, ptr %sata1_pclk
  %0 = ptrtoint ptr %pclk.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pclk.0 = load ptr, ptr %pclk.0.in, align 4
  %call = tail call i32 @clk_enable(ptr noundef %pclk.0) #8
  tail call void @msleep(i32 noundef 10) #8
  %call1 = tail call fastcc i32 @gemini_sata_setup_bridge(ptr noundef %sg, i32 noundef %bridge)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then2

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef %pclk.0) #8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry.if.end3_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gemini_sata_setup_bridge(ptr nocapture noundef readonly %sg, i32 noundef %bridge) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bridge)
  %cmp = icmp eq i32 %bridge, 0
  %muxmode = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 2
  %1 = ptrtoint ptr %muxmode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %muxmode, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp1 = icmp eq i32 %2, 2
  %spec.select = select i1 %cmp1, i32 318767104, i32 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %spec.select) #8, !srcloc !129
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp4 = icmp eq i32 %2, 3
  %spec.select57 = select i1 %cmp4, i32 318767104, i32 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %base11 = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 1
  %5 = ptrtoint ptr %base11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base11, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %spec.select57) #8, !srcloc !129
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then
  tail call void @msleep(i32 noundef 10) #8
  %base23 = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 1
  %add.neg = sub i32 -100, %0
  br label %do.body14

do.body14:                                        ; preds = %do.cond31.do.body14_crit_edge, %if.end13
  tail call void @msleep(i32 noundef 100) #8
  %7 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base23, align 4
  br i1 %cmp, label %if.then16, label %if.else20

if.then16:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18 = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #8, !srcloc !131
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  br label %if.end28

if.else20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr24 = getelementptr i8, ptr %8, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #8, !srcloc !131
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  br label %if.end28

if.end28:                                         ; preds = %if.else20, %if.then16
  %val.2 = phi i32 [ %10, %if.then16 ], [ %12, %if.else20 ]
  %and = and i32 %val.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond31, label %if.end28.do.end33_crit_edge

if.end28.do.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

do.cond31:                                        ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %13
  %cmp32 = icmp slt i32 %sub, 0
  br i1 %cmp32, label %do.cond31.do.body14_crit_edge, label %do.cond31.do.end33_crit_edge

do.cond31.do.end33_crit_edge:                     ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

do.cond31.do.body14_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body14

do.end33:                                         ; preds = %do.cond31.do.end33_crit_edge, %if.end28.do.end33_crit_edge
  %cond42 = phi i32 [ 0, %if.end28.do.end33_crit_edge ], [ -19, %do.cond31.do.end33_crit_edge ]
  %cond = phi ptr [ @.str.5, %if.end28.do.end33_crit_edge ], [ @.str.6, %do.cond31.do.end33_crit_edge ]
  %14 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %bridge, ptr noundef nonnull %cond) #11
  ret i32 %cond42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gemini_sata_stop_bridge(ptr nocapture noundef readonly %sg, i32 noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bridge to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bridge, label %entry.if.end3_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sata0_pclk = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 7
  br label %if.end3.sink.split

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sata1_pclk = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 8
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %if.then
  %sata1_pclk.sink = phi ptr [ %sata1_pclk, %if.then2 ], [ %sata0_pclk, %if.then ]
  %1 = ptrtoint ptr %sata1_pclk.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sata1_pclk.sink, align 4
  tail call void @clk_disable(ptr noundef %2) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gemini_sata_reset_bridge(ptr nocapture noundef readonly %sg, i32 noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bridge)
  %cmp = icmp eq i32 %bridge, 0
  %sata1_reset = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 6
  %sata0_reset = getelementptr inbounds %struct.sata_gemini, ptr %sg, i32 0, i32 5
  %sata1_reset.sink = select i1 %cmp, ptr %sata0_reset, ptr %sata1_reset
  %0 = ptrtoint ptr %sata1_reset.sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sata1_reset.sink, align 4
  %call1 = tail call i32 @reset_control_reset(ptr noundef %1) #8
  tail call void @msleep(i32 noundef 10) #8
  %call2 = tail call fastcc i32 @gemini_sata_setup_bridge(ptr noundef %sg, i32 noundef %bridge)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_sata_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gemini_sata_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gemini_sata_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @gemini_sata_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_sata_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %muxmode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %muxmode) #8
  %2 = ptrtoint ptr %muxmode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %muxmode, align 4, !annotation !134
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call3) #8
  %base = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.8) #8
  %cmp.i119 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  %6 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call.i120 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i120, null
  br i1 %tobool.i.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %call.i121 = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.30) #8
  %sata0_pclk.i = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %sata0_pclk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i121, ptr %sata0_pclk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  %call4.i = tail call ptr @devm_clk_get(ptr noundef %8, ptr noundef nonnull @.str.33) #8
  %sata1_pclk.i = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %sata1_pclk.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call4.i, ptr %sata1_pclk.i, align 4
  %cmp.i104.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104.i, label %do.end10.i, label %if.end11.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %sata0_pclk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sata0_pclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.i.do.end17.i_crit_edge

if.end11.i.do.end17.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17.i

if.end.i.i:                                       ; preds = %if.end11.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end18.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %12) #8
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then3.i.i, %if.end11.i.do.end17.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end11.i.do.end17.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.38) #11
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i.i
  %13 = ptrtoint ptr %sata1_pclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sata1_pclk.i, align 4
  %call.i105.i = tail call i32 @clk_prepare(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call.i105.i, 0
  br i1 %tobool.not.i106.i, label %if.end.i109.i, label %if.end18.i.do.end25.i_crit_edge

if.end18.i.do.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25.i

if.end.i109.i:                                    ; preds = %if.end18.i
  %call1.i107.i = tail call i32 @clk_enable(ptr noundef %14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i107.i)
  %tobool2.not.i108.i = icmp eq i32 %call1.i107.i, 0
  br i1 %tobool2.not.i108.i, label %if.end27.i, label %if.then3.i110.i

if.then3.i110.i:                                  ; preds = %if.end.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %14) #8
  br label %do.end25.i

do.end25.i:                                       ; preds = %if.then3.i110.i, %if.end18.i.do.end25.i_crit_edge
  %retval.0.i111.ph.i = phi i32 [ %call1.i107.i, %if.then3.i110.i ], [ %call.i105.i, %if.end18.i.do.end25.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.41) #11
  %15 = ptrtoint ptr %sata0_pclk.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sata0_pclk.i, align 4
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %cleanup

if.end27.i:                                       ; preds = %if.end.i109.i
  %call.i113.i = tail call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef nonnull @.str.43, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %sata0_reset.i = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %sata0_reset.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i113.i, ptr %sata0_reset.i, align 4
  %cmp.i114.i = icmp ugt ptr %call.i113.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114.i, label %if.end27.i.gemini_sata_bridge_init.exit_crit_edge, label %if.end39.i

if.end27.i.gemini_sata_bridge_init.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gemini_sata_bridge_init.exit

if.end39.i:                                       ; preds = %if.end27.i
  %call.i115.i = tail call ptr @__devm_reset_control_get(ptr noundef %8, ptr noundef nonnull @.str.47, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %sata1_reset.i = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %sata1_reset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i115.i, ptr %sata1_reset.i, align 4
  %cmp.i116.i = icmp ugt ptr %call.i115.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116.i, label %if.end39.i.gemini_sata_bridge_init.exit_crit_edge, label %gemini_sata_bridge_init.exit.thread133

if.end39.i.gemini_sata_bridge_init.exit_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gemini_sata_bridge_init.exit

gemini_sata_bridge_init.exit.thread133:           ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !131
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %add.ptr57.i = getelementptr i8, ptr %20, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i) #8, !srcloc !131
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %sata_bridge.i = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %sata_bridge.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %sata_bridge.i, align 1
  %26 = ptrtoint ptr %sata0_pclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sata0_pclk.i, align 4
  tail call void @clk_disable(ptr noundef %27) #8
  %28 = ptrtoint ptr %sata1_pclk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sata1_pclk.i, align 4
  tail call void @clk_disable(ptr noundef %29) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef %22, i32 noundef %24) #11
  br label %if.end25

gemini_sata_bridge_init.exit:                     ; preds = %if.end39.i.gemini_sata_bridge_init.exit_crit_edge, %if.end27.i.gemini_sata_bridge_init.exit_crit_edge
  %.str.45.sink = phi ptr [ @.str.45, %if.end27.i.gemini_sata_bridge_init.exit_crit_edge ], [ @.str.49, %if.end39.i.gemini_sata_bridge_init.exit_crit_edge ]
  %retval.0.i.in.in = phi ptr [ %sata0_reset.i, %if.end27.i.gemini_sata_bridge_init.exit_crit_edge ], [ %sata1_reset.i, %if.end39.i.gemini_sata_bridge_init.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull %.str.45.sink) #11
  %30 = ptrtoint ptr %sata1_pclk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sata1_pclk.i, align 4
  tail call void @clk_disable(ptr noundef %31) #8
  tail call void @clk_unprepare(ptr noundef %31) #8
  %32 = ptrtoint ptr %sata0_pclk.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sata0_pclk.i, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  %34 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %34)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool22.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool22.not, label %gemini_sata_bridge_init.exit.if.end25_crit_edge, label %gemini_sata_bridge_init.exit.cleanup_crit_edge

gemini_sata_bridge_init.exit.cleanup_crit_edge:   ; preds = %gemini_sata_bridge_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gemini_sata_bridge_init.exit.if.end25_crit_edge:  ; preds = %gemini_sata_bridge_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %gemini_sata_bridge_init.exit.if.end25_crit_edge, %gemini_sata_bridge_init.exit.thread133, %if.end18.if.end25_crit_edge
  %call.i122 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool.i123.not = icmp eq ptr %call.i122, null
  br i1 %tobool.i123.not, label %if.end25.if.end28_crit_edge, label %if.then27

if.end25.if.end28_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %ide_pins = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %ide_pins to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %ide_pins, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end25.if.end28_crit_edge
  %sata_bridge = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %sata_bridge to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sata_bridge, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool29.not = icmp eq i8 %37, 0
  br i1 %tobool29.not, label %land.lhs.true, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end28
  %ide_pins30 = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %ide_pins30 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ide_pins30, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not = icmp eq i8 %39, 0
  br i1 %tobool31.not, label %do.end35, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.end35:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %out_unprep_clk

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %call.i.i124 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %muxmode, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i124)
  %tobool38.not = icmp sgt i32 %call.i.i124, -1
  br i1 %tobool38.not, label %if.end43, label %do.end42

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #11
  br label %out_unprep_clk

if.end43:                                         ; preds = %if.end36
  %40 = ptrtoint ptr %muxmode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %muxmode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp = icmp ugt i32 %41, 3
  br i1 %cmp, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %41) #11
  br label %out_unprep_clk

if.end48:                                         ; preds = %if.end43
  %muxmode49 = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %muxmode49 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %muxmode49, align 4
  %shl = shl nuw nsw i32 %41, 24
  %call.i125 = call i32 @regmap_update_bits_base(ptr noundef %call14, i32 noundef 48, i32 noundef 117440512, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool51.not = icmp eq i32 %call.i125, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %out_unprep_clk

if.end56:                                         ; preds = %if.end48
  %ide_pins57 = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %ide_pins57 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ide_pins57, align 4, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool58.not = icmp eq i8 %44, 0
  br i1 %tobool58.not, label %if.end56.do.end67_crit_edge, label %if.then59

if.end56.do.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then59:                                        ; preds = %if.end56
  %call.i126 = call ptr @devm_pinctrl_get(ptr noundef %dev1) #8
  %cmp.i.i127 = icmp ugt ptr %call.i126, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i127, label %if.then59.gemini_setup_ide_pins.exit_crit_edge, label %if.end.i128

if.then59.gemini_setup_ide_pins.exit_crit_edge:   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %gemini_setup_ide_pins.exit

if.end.i128:                                      ; preds = %if.then59
  %call3.i = call ptr @pinctrl_lookup_state(ptr noundef %call.i126, ptr noundef nonnull @.str.54) #8
  %cmp.i20.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20.i, label %if.end.i128.gemini_setup_ide_pins.exit_crit_edge, label %if.end7.i

if.end.i128.gemini_setup_ide_pins.exit_crit_edge: ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %gemini_setup_ide_pins.exit

if.end7.i:                                        ; preds = %if.end.i128
  %call8.i = call i32 @pinctrl_select_state(ptr noundef %call.i126, ptr noundef %call3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end7.i.do.end67_crit_edge, label %gemini_setup_ide_pins.exit.thread138

if.end7.i.do.end67_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

gemini_setup_ide_pins.exit.thread138:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55) #11
  br label %cleanup

gemini_setup_ide_pins.exit:                       ; preds = %if.end.i128.gemini_setup_ide_pins.exit_crit_edge, %if.then59.gemini_setup_ide_pins.exit_crit_edge
  %retval.0.i130.in = phi ptr [ %call.i126, %if.then59.gemini_setup_ide_pins.exit_crit_edge ], [ %call3.i, %if.end.i128.gemini_setup_ide_pins.exit_crit_edge ]
  %retval.0.i130 = ptrtoint ptr %retval.0.i130.in to i32
  br label %cleanup

do.end67:                                         ; preds = %if.end7.i.do.end67_crit_edge, %if.end56.do.end67_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  store ptr %call.i, ptr @sg_singleton, align 4
  br label %cleanup

out_unprep_clk:                                   ; preds = %do.end55, %do.end47, %do.end42, %do.end35
  %ret.0 = phi i32 [ %call.i.i124, %do.end42 ], [ -22, %do.end47 ], [ -19, %do.end55 ], [ -22, %do.end35 ]
  %46 = ptrtoint ptr %sata_bridge to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sata_bridge, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool69.not = icmp eq i8 %47, 0
  br i1 %tobool69.not, label %out_unprep_clk.cleanup_crit_edge, label %if.then70

out_unprep_clk.cleanup_crit_edge:                 ; preds = %out_unprep_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then70:                                        ; preds = %out_unprep_clk
  call void @__sanitizer_cov_trace_pc() #10
  %sata1_pclk = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %sata1_pclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sata1_pclk, align 4
  call void @clk_unprepare(ptr noundef %49) #8
  %sata0_pclk = getelementptr inbounds %struct.sata_gemini, ptr %call.i, i32 0, i32 7
  %50 = ptrtoint ptr %sata0_pclk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sata0_pclk, align 4
  call void @clk_unprepare(ptr noundef %51) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %out_unprep_clk.cleanup_crit_edge, %do.end67, %gemini_setup_ide_pins.exit, %gemini_setup_ide_pins.exit.thread138, %gemini_sata_bridge_init.exit.cleanup_crit_edge, %do.end25.i, %do.end17.i, %do.end10.i, %do.end.i, %do.end, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ %6, %do.end ], [ 0, %do.end67 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.i, %gemini_sata_bridge_init.exit.cleanup_crit_edge ], [ %retval.0.i130, %gemini_setup_ide_pins.exit ], [ %ret.0, %if.then70 ], [ %ret.0, %out_unprep_clk.cleanup_crit_edge ], [ %call8.i, %gemini_setup_ide_pins.exit.thread138 ], [ %retval.0.i111.ph.i, %do.end25.i ], [ %retval.0.i.ph.i, %do.end17.i ], [ -19, %do.end10.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %muxmode) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_sata_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sata_bridge = getelementptr inbounds %struct.sata_gemini, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sata_bridge to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sata_bridge, align 1, !range !127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sata1_pclk = getelementptr inbounds %struct.sata_gemini, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %sata1_pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sata1_pclk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #8
  %sata0_pclk = getelementptr inbounds %struct.sata_gemini, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %sata0_pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sata0_pclk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  store ptr null, ptr @sg_singleton, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !116}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__ksymtab_gemini_sata_bridge_get, !1, !"__ksymtab_gemini_sata_bridge_get", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_gemini.c", i32 124, i32 1}
!2 = !{ptr @__ksymtab_gemini_sata_bridge_enabled, !3, !"__ksymtab_gemini_sata_bridge_enabled", i1 false, i1 false}
!3 = !{!"../drivers/ata/sata_gemini.c", i32 143, i32 1}
!4 = !{ptr @__ksymtab_gemini_sata_get_muxmode, !5, !"__ksymtab_gemini_sata_get_muxmode", i1 false, i1 false}
!5 = !{!"../drivers/ata/sata_gemini.c", i32 149, i32 1}
!6 = !{ptr @__ksymtab_gemini_sata_start_bridge, !7, !"__ksymtab_gemini_sata_start_bridge", i1 false, i1 false}
!7 = !{!"../drivers/ata/sata_gemini.c", i32 214, i32 1}
!8 = !{ptr @__ksymtab_gemini_sata_stop_bridge, !9, !"__ksymtab_gemini_sata_stop_bridge", i1 false, i1 false}
!9 = !{!"../drivers/ata/sata_gemini.c", i32 223, i32 1}
!10 = !{ptr @__ksymtab_gemini_sata_reset_bridge, !11, !"__ksymtab_gemini_sata_reset_bridge", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_gemini.c", i32 235, i32 1}
!12 = !{ptr @__initcall__kmod_sata_gemini__210_436_gemini_sata_driver_init6, !13, !"__initcall__kmod_sata_gemini__210_436_gemini_sata_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/ata/sata_gemini.c", i32 436, i32 1}
!14 = !{ptr @__exitcall_gemini_sata_driver_exit, !13, !"__exitcall_gemini_sata_driver_exit", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_author211, !16, !"__UNIQUE_ID_author211", i1 false, i1 false}
!16 = !{!"../drivers/ata/sata_gemini.c", i32 438, i32 1}
!17 = !{ptr @__UNIQUE_ID_file212, !18, !"__UNIQUE_ID_file212", i1 false, i1 false}
!18 = !{!"../drivers/ata/sata_gemini.c", i32 439, i32 1}
!19 = !{ptr @__UNIQUE_ID_license213, !18, !"__UNIQUE_ID_license213", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias214, !21, !"__UNIQUE_ID_alias214", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_gemini.c", i32 440, i32 1}
!22 = !{ptr @sg_singleton, !23, !"sg_singleton", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_gemini.c", i32 116, i32 28}
!24 = !{ptr @.str, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/sata_gemini.c", i32 189, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @gemini_sata_setup_bridge._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @gemini_sata_setup_bridge._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_gemini.c", i32 430, i32 11}
!36 = !{ptr @gemini_sata_driver, !37, !"gemini_sata_driver", i1 false, i1 false}
!37 = !{!"../drivers/ata/sata_gemini.c", i32 428, i32 31}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/sata_gemini.c", i32 340, i32 44}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/sata_gemini.c", i32 342, i32 3}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gemini_sata_probe._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @gemini_sata_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/sata_gemini.c", i32 347, i32 32}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/sata_gemini.c", i32 353, i32 32}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/sata_gemini.c", i32 357, i32 3}
!52 = !{ptr @gemini_sata_probe._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gemini_sata_probe._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/sata_gemini.c", i32 362, i32 33}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/sata_gemini.c", i32 364, i32 3}
!58 = !{ptr @gemini_sata_probe._entry.18, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @gemini_sata_probe._entry_ptr.20, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/sata_gemini.c", i32 368, i32 3}
!62 = !{ptr @gemini_sata_probe._entry.21, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @gemini_sata_probe._entry_ptr.23, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/sata_gemini.c", i32 378, i32 3}
!66 = !{ptr @gemini_sata_probe._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @gemini_sata_probe._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/sata_gemini.c", i32 394, i32 2}
!70 = !{ptr @gemini_sata_probe._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @gemini_sata_probe._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/sata_gemini.c", i32 243, i32 37}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/sata_gemini.c", i32 245, i32 3}
!76 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @gemini_sata_bridge_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @gemini_sata_bridge_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/sata_gemini.c", i32 248, i32 37}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ata/sata_gemini.c", i32 250, i32 3}
!83 = !{ptr @gemini_sata_bridge_init._entry.34, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @gemini_sata_bridge_init._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/ata/sata_gemini.c", i32 256, i32 3}
!87 = !{ptr @gemini_sata_bridge_init._entry.37, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @gemini_sata_bridge_init._entry_ptr.39, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/ata/sata_gemini.c", i32 261, i32 3}
!91 = !{ptr @gemini_sata_bridge_init._entry.40, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @gemini_sata_bridge_init._entry_ptr.42, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/ata/sata_gemini.c", i32 266, i32 58}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/ata/sata_gemini.c", i32 268, i32 3}
!97 = !{ptr @gemini_sata_bridge_init._entry.44, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @gemini_sata_bridge_init._entry_ptr.46, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/ata/sata_gemini.c", i32 273, i32 58}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/ata/sata_gemini.c", i32 275, i32 3}
!103 = !{ptr @gemini_sata_bridge_init._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @gemini_sata_bridge_init._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/ata/sata_gemini.c", i32 287, i32 2}
!107 = !{ptr @gemini_sata_bridge_init._entry.51, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @gemini_sata_bridge_init._entry_ptr.53, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/ata/sata_gemini.c", i32 302, i32 38}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/ata/sata_gemini.c", i32 308, i32 3}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @gemini_setup_ide_pins._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @gemini_setup_ide_pins._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @gemini_sata_of_match, !117, !"gemini_sata_of_match", i1 false, i1 false}
!117 = !{!"../drivers/ata/sata_gemini.c", i32 421, i32 34}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i8 0, i8 2}
!128 = !{i64 2153431702}
!129 = !{i64 4876118}
!130 = !{i64 2153432338}
!131 = !{i64 4876536}
!132 = !{i64 2153432994}
!133 = !{i64 2153433477}
!134 = !{!"auto-init"}
!135 = !{i64 2153454500}
!136 = !{i64 2153454983}
