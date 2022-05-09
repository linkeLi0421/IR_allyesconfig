; ModuleID = '/llk/IR_all_yes/drivers/mfd/sprd-sc27xx-spi.c_pt.bc'
source_filename = "../drivers/mfd/sprd-sc27xx-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sprd_pmic_detect_charger_type\22, \22a\22\09"
module asm "\09.weak\09__crc_sprd_pmic_detect_charger_type\09\09\09\09"
module asm "\09.long\09__crc_sprd_pmic_detect_charger_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sprd_pmic_detect_charger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22sprd_pmic_detect_charger_type\22\09\09\09\09\09"
module asm "__kstrtabns_sprd_pmic_detect_charger_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sprd_pmic_data = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.sprd_pmic = type { ptr, ptr, ptr, %struct.regmap_irq_chip, ptr, ptr, i32 }
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/mfd/sprd-sc27xx-spi.c\00", [34 x i8] zeroinitializer }, align 32
@sprd_pmic_detect_charger_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to detect charger type\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sprd_pmic_detect_charger_type\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_pmic_detect_charger_type._entry_ptr = internal global ptr @sprd_pmic_detect_charger_type._entry, section ".printk_index", align 4
@__kstrtab_sprd_pmic_detect_charger_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_sprd_pmic_detect_charger_type = external dso_local constant [0 x i8], align 1
@__ksymtab_sprd_pmic_detect_charger_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sprd_pmic_detect_charger_type to i32), ptr @__kstrtab_sprd_pmic_detect_charger_type, ptr @__kstrtabns_sprd_pmic_detect_charger_type }, section "___ksymtab_gpl+sprd_pmic_detect_charger_type", align 4
@__initcall__kmod_sprd_sc27xx_spi__234_269_sprd_pmic_init4 = internal global ptr @sprd_pmic_init, section ".initcall4.init", align 4
@sprd_pmic_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @sprd_pmic_spi_ids, ptr @sprd_pmic_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_pmic_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pmic_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sprd_pmic_exit = internal global ptr @sprd_pmic_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [49 x i8] c"sprd_sc27xx_spi.file=drivers/mfd/sprd-sc27xx-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [31 x i8] c"sprd_sc27xx_spi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [59 x i8] c"sprd_sc27xx_spi.description=Spreadtrum SC27xx PMICs driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [64 x i8] c"sprd_sc27xx_spi.author=Baolin Wang <baolin.wang@spreadtrum.com>\00", section ".modinfo", align 1
@sprd_pmic_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"sc2731\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sc2731_data to i32) }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sc27xx-pmic\00", [20 x i8] zeroinitializer }, align 32
@sprd_pmic_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2731\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2731_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc2730\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc2730_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sprd_pmic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sprd_pmic_suspend, ptr @sprd_pmic_resume, ptr @sprd_pmic_suspend, ptr @sprd_pmic_resume, ptr @sprd_pmic_suspend, ptr @sprd_pmic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sc2731_data = internal constant { %struct.sprd_pmic_data, [20 x i8] } { %struct.sprd_pmic_data { i32 320, i32 16, i32 3804 }, [20 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No matching driver data found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sprd_pmic_probe\00", [16 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry_ptr = internal global ptr @sprd_pmic_probe._entry, section ".printk_index", align 4
@sprd_pmic_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sprd_pmic_regmap = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @sprd_pmic_spi_write, ptr null, ptr null, ptr null, ptr null, ptr @sprd_pmic_spi_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sprd_pmic_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sprd_sc27xx_spi:169:(&sprd_pmic_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate register map %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry_ptr.11 = internal global ptr @sprd_pmic_probe._entry.9, section ".printk_index", align 4
@sprd_pmic_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str, i32 204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to add PMIC irq chip %d\0A\00", [32 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry_ptr.14 = internal global ptr @sprd_pmic_probe._entry.12, section ".printk_index", align 4
@sprd_pmic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to populate sub-devices %d\0A\00", [61 x i8] zeroinitializer }, align 32
@sprd_pmic_probe._entry_ptr.17 = internal global ptr @sprd_pmic_probe._entry.15, section ".printk_index", align 4
@sc2730_data = internal constant { %struct.sprd_pmic_data, [20 x i8] } { %struct.sprd_pmic_data { i32 128, i32 10, i32 7068 }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 32, i64 64, i64 128]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 79, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 84, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"sprd_pmic_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 255, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"sprd_pmic_spi_ids\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 249, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 257, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"sprd_pmic_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 242, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"sprd_pmic_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 240, i32 8 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sc2731_data\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 64, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 160, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"sprd_pmic_regmap\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 138, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"sprd_pmic_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 145, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 168, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 172, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 204, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 210, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"sc2730_data\00", align 1
@___asan_gen_.94 = private constant [33 x i8] c"../drivers/mfd/sprd-sc27xx-spi.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 58, i32 36 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_sprd_pmic_exit, ptr @__initcall__kmod_sprd_sc27xx_spi__234_269_sprd_pmic_init4, ptr @__ksymtab_sprd_pmic_detect_charger_type, ptr @sprd_pmic_detect_charger_type._entry, ptr @sprd_pmic_detect_charger_type._entry_ptr, ptr @sprd_pmic_exit, ptr @sprd_pmic_probe._entry, ptr @sprd_pmic_probe._entry.12, ptr @sprd_pmic_probe._entry.15, ptr @sprd_pmic_probe._entry.9, ptr @sprd_pmic_probe._entry_ptr, ptr @sprd_pmic_probe._entry_ptr.11, ptr @sprd_pmic_probe._entry_ptr.14, ptr @sprd_pmic_probe._entry_ptr.17, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sprd_pmic_driver, ptr @sprd_pmic_spi_ids, ptr @.str.5, ptr @sprd_pmic_match, ptr @sprd_pmic_pm_ops, ptr @sc2731_data, ptr @.str.6, ptr @.str.7, ptr @sprd_pmic_probe._key, ptr @sprd_pmic_regmap, ptr @sprd_pmic_config, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @sc2730_data], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_detect_charger_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2731_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_regmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_pmic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc2730_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sprd_pmic_detect_charger_type(ptr noundef %dev) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata2 = getelementptr inbounds %struct.sprd_pmic, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !69
  %call3 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call3, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 82) #6
  %charger_det = getelementptr inbounds %struct.sprd_pmic_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %charger_det to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %charger_det, align 4
  %call1171 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1171)
  %tobool.not72 = icmp eq i32 %call1171, 0
  br i1 %tobool.not72, label %entry.lor.lhs.false_crit_edge, label %entry.do.end37_crit_edge

entry.do.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call16 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call16, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call16, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then25

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 50001, i32 noundef 200000, i32 noundef 2) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %charger_det to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %charger_det, align 4
  %call11 = call i32 @regmap_read(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %val) #6
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.do.end37_crit_edge

if.then25.do.end37_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = ptrtoint ptr %charger_det to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %charger_det, align 4
  %call22 = call i32 @regmap_read(ptr noundef %16, i32 noundef %18, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool27.not = icmp eq i32 %call22, 0
  br i1 %tobool27.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end37_crit_edge

for.end.do.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and28 = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %lor.rhs.do.end37_crit_edge, label %if.end39

lor.rhs.do.end37_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end37:                                         ; preds = %lor.rhs.do.end37_crit_edge, %for.end.do.end37_crit_edge, %if.then25.do.end37_crit_edge, %entry.do.end37_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end39:                                         ; preds = %lor.rhs
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = trunc i32 %22 to i8
  %trunc = and i8 %23, -32
  %24 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 32, label %if.end39.cleanup_crit_edge
    i8 64, label %sw.bb41
    i8 -128, label %sw.bb42
  ]

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb41:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb42:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb42, %sw.bb41, %if.end39.cleanup_crit_edge, %do.end37
  %retval.0 = phi i32 [ 0, %do.end37 ], [ 0, %sw.default ], [ 1, %sw.bb42 ], [ 2, %sw.bb41 ], [ 3, %if.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sprd_pmic_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_pmic_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sprd_pmic_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_probe(ptr noundef %spi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 120, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call9 = tail call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull @sprd_pmic_regmap, ptr noundef %spi, ptr noundef nonnull @sprd_pmic_config, ptr noundef nonnull @sprd_pmic_probe._key, ptr noundef nonnull @.str.8) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %1) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end6
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev21 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %dev21, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %irq22 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %irq22 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq22, align 4
  %pdata23 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %pdata23, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end19.dev_name.exit_crit_edge

if.end19.dev_name.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end19.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.end19.dev_name.exit_crit_edge ]
  %irq_chip = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %irq_chip to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %irq_chip, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call, align 4
  %status_base = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %status_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %status_base, align 4
  %16 = load i32, ptr %call, align 4
  %add28 = add i32 %16, 8
  %mask_base = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 6
  %17 = ptrtoint ptr %mask_base to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add28, ptr %mask_base, align 4
  %ack_base = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %ack_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ack_base, align 4
  %num_regs = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 14
  %19 = ptrtoint ptr %num_regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %num_regs, align 4
  %num_irqs = getelementptr inbounds %struct.sprd_pmic_data, ptr %call, i32 0, i32 1
  %20 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_irqs, align 4
  %num_irqs33 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 16
  %22 = ptrtoint ptr %num_irqs33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_irqs33, align 4
  %mask_invert = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 13
  %23 = ptrtoint ptr %mask_invert to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %mask_invert, align 4
  %bf.set = or i16 %bf.load, 8192
  store i16 %bf.set, ptr %mask_invert, align 4
  %24 = load i32, ptr %num_irqs, align 4
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 36) #6
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !70

devm_kcalloc.exit.thread:                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irqs128 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %irqs128 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %irqs128, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %dev_name.exit
  %28 = extractvalue { i32, i1 } %25, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %28, i32 noundef 3520) #6
  %irqs = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %irqs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i, ptr %irqs, align 4
  %tobool39.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool39.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end41

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %devm_kcalloc.exit
  %irqs44 = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 3, i32 15
  %30 = ptrtoint ptr %irqs44 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %irqs44, align 4
  %31 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp130.not = icmp eq i32 %32, 0
  br i1 %cmp130.not, label %if.end41.for.end_crit_edge, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end41.for.body_crit_edge
  %i.0131 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0131
  %33 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irqs, align 4
  %mask = getelementptr %struct.regmap_irq, ptr %34, i32 %i.0131, i32 1
  %35 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl, ptr %mask, align 4
  %inc = add nuw i32 %i.0131, 1
  %36 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_irqs, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end41.for.end_crit_edge
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %40 = ptrtoint ptr %irq22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq22, align 4
  %irq_data = getelementptr inbounds %struct.sprd_pmic, ptr %call.i, i32 0, i32 4
  %call51 = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %spi, ptr noundef %39, i32 noundef %41, i32 noundef 8192, i32 noundef 0, ptr noundef %irq_chip, ptr noundef %irq_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %call51) #9
  br label %cleanup

if.end58:                                         ; preds = %for.end
  %call60 = tail call i32 @devm_of_platform_populate(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end67, label %do.end65

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %call60) #9
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = tail call i32 @device_init_wakeup(ptr noundef %spi, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %do.end65, %do.end56, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %if.then12 ], [ %call51, %do.end56 ], [ %call60, %do.end65 ], [ 0, %if.end67 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_spi_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %0 = getelementptr inbounds i8, ptr %t.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %count, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_spi_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr nocapture noundef writeonly %val, i32 noundef %val_size) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %rx_buf = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rx_buf) #6
  %0 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rx_buf, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val_size)
  %cmp1.not = icmp eq i32 %val_size, 4
  %or.cond = and i1 %cmp.not, %cmp1.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %reg, align 1
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rx_buf, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %4 = call ptr @memset(ptr %t.i, i32 0, i32 96)
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 1
  %5 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rx_buf, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_read.exit_crit_edge

if.end.spi_read.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_read.exit

spi_read.exit:                                    ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4 = icmp slt i32 %call.i.i, 0
  br i1 %cmp4, label %spi_read.exit.cleanup_crit_edge, label %if.end6

spi_read.exit.cleanup_crit_edge:                  ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %spi_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_buf, align 8
  %19 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %val, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %spi_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %spi_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rx_buf) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sprd_pmic, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_pmic_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.sprd_pmic, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 79, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 84, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sprd_pmic_detect_charger_type._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @sprd_pmic_detect_charger_type._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_sprd_pmic_detect_charger_type, !10, !"__ksymtab_sprd_pmic_detect_charger_type", i1 false, i1 false}
!10 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 105, i32 1}
!11 = !{ptr @__initcall__kmod_sprd_sc27xx_spi__234_269_sprd_pmic_init4, !12, !"__initcall__kmod_sprd_sc27xx_spi__234_269_sprd_pmic_init4", i1 false, i1 false}
!12 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 269, i32 1}
!13 = !{ptr @__exitcall_sprd_pmic_exit, !14, !"__exitcall_sprd_pmic_exit", i1 false, i1 false}
!14 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 275, i32 1}
!15 = !{ptr @__UNIQUE_ID_file235, !16, !"__UNIQUE_ID_file235", i1 false, i1 false}
!16 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 277, i32 1}
!17 = !{ptr @__UNIQUE_ID_license236, !16, !"__UNIQUE_ID_license236", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description237, !19, !"__UNIQUE_ID_description237", i1 false, i1 false}
!19 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 278, i32 1}
!20 = !{ptr @__UNIQUE_ID_author238, !21, !"__UNIQUE_ID_author238", i1 false, i1 false}
!21 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 279, i32 1}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 257, i32 11}
!24 = !{ptr @sprd_pmic_driver, !25, !"sprd_pmic_driver", i1 false, i1 false}
!25 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 255, i32 26}
!26 = !{ptr @sprd_pmic_spi_ids, !27, !"sprd_pmic_spi_ids", i1 false, i1 false}
!27 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 249, i32 35}
!28 = !{ptr @sc2731_data, !29, !"sc2731_data", i1 false, i1 false}
!29 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 64, i32 36}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 160, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @sprd_pmic_probe._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @sprd_pmic_probe._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @sprd_pmic_probe._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 168, i32 18}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 172, i32 3}
!40 = !{ptr @sprd_pmic_probe._entry.9, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sprd_pmic_probe._entry_ptr.11, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 204, i32 3}
!44 = !{ptr @sprd_pmic_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sprd_pmic_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 210, i32 3}
!48 = !{ptr @sprd_pmic_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sprd_pmic_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sprd_pmic_regmap, !51, !"sprd_pmic_regmap", i1 false, i1 false}
!51 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 138, i32 26}
!52 = !{ptr @sprd_pmic_config, !53, !"sprd_pmic_config", i1 false, i1 false}
!53 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 145, i32 35}
!54 = !{ptr @sprd_pmic_match, !55, !"sprd_pmic_match", i1 false, i1 false}
!55 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 242, i32 34}
!56 = !{ptr @sc2730_data, !57, !"sc2730_data", i1 false, i1 false}
!57 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 58, i32 36}
!58 = !{ptr @sprd_pmic_pm_ops, !59, !"sprd_pmic_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/mfd/sprd-sc27xx-spi.c", i32 240, i32 8}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 1, i32 2000}
