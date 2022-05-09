; ModuleID = '/llk/IR_all_yes/drivers/mfd/atc260x-core.c_pt.bc'
source_filename = "../drivers/mfd/atc260x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+atc260x_match_device\22, \22a\22\09"
module asm "\09.weak\09__crc_atc260x_match_device\09\09\09\09"
module asm "\09.long\09__crc_atc260x_match_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atc260x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22atc260x_match_device\22\09\09\09\09\09"
module asm "__kstrtabns_atc260x_match_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+atc260x_device_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_atc260x_device_probe\09\09\09\09"
module asm "\09.long\09__crc_atc260x_device_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atc260x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22atc260x_device_probe\22\09\09\09\09\09"
module asm "__kstrtabns_atc260x_device_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.atc260x_init_regs = type { i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atc260x = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr }

@atc2603c_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@atc2603c_mfd_cells = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @atc2603c_onkey_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atc2603c\00", [23 x i8] zeroinitializer }, align 32
@atc2603c_init_regs = internal constant { %struct.atc260x_init_regs, [44 x i8] } { %struct.atc260x_init_regs { i32 193, i32 4, i32 201, i32 214, i32 1 }, [44 x i8] zeroinitializer }, align 32
@atc2609a_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@atc2609a_mfd_cells = internal constant { [3 x %struct.mfd_cell], [88 x i8] } { [3 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.27, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.28, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.29, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @atc2609a_onkey_resources, i8 0, i8 0, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"atc2609a\00", [23 x i8] zeroinitializer }, align 32
@atc2609a_init_regs = internal constant { %struct.atc260x_init_regs, [44 x i8] } { %struct.atc260x_init_regs { i32 193, i32 4, i32 201, i32 214, i32 1 }, [44 x i8] zeroinitializer }, align 32
@atc260x_match_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unsupported ATC260x device type: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atc260x_match_device\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/atc260x-core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atc260x_match_device._entry_ptr = internal global ptr @atc260x_match_device._entry, section ".printk_index", align 4
@atc260x_match_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atc260x->regmap_mutex\00", [42 x i8] zeroinitializer }, align 32
@__kstrtab_atc260x_match_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_atc260x_match_device = external dso_local constant [0 x i8], align 1
@__ksymtab_atc260x_match_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atc260x_match_device to i32), ptr @__kstrtab_atc260x_match_device, ptr @__kstrtabns_atc260x_match_device }, section "___ksymtab_gpl+atc260x_match_device", align 4
@atc260x_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No interrupt support\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atc260x_device_probe\00", [43 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr = internal global ptr @atc260x_device_probe._entry, section ".printk_index", align 4
@atc260x_device_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 274, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get chip revision\0A\00", [35 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr.12 = internal global ptr @atc260x_device_probe._entry.10, section ".printk_index", align 4
@atc260x_device_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown chip revision: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr.15 = internal global ptr @atc260x_device_probe._entry.13, section ".printk_index", align 4
@atc260x_device_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.4, i32 286, ptr @.str.18, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Detected chip type %s rev.%c\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr.19 = internal global ptr @atc260x_device_probe._entry.16, section ".printk_index", align 4
@atc260x_device_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.4, i32 291, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to add IRQ chip: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr.22 = internal global ptr @atc260x_device_probe._entry.20, section ".printk_index", align 4
@atc260x_device_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.4, i32 299, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to add child devices: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atc260x_device_probe._entry_ptr.25 = internal global ptr @atc260x_device_probe._entry.23, section ".printk_index", align 4
@__kstrtab_atc260x_device_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_atc260x_device_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_atc260x_device_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atc260x_device_probe to i32), ptr @__kstrtab_atc260x_device_probe, ptr @__kstrtabns_atc260x_device_probe }, section "___ksymtab_gpl+atc260x_device_probe", align 4
@__UNIQUE_ID_description187 = internal constant [52 x i8] c"atc260x_core.description=ATC260x PMICs Core support\00", section ".modinfo", align 1
@__UNIQUE_ID_author188 = internal constant [77 x i8] c"atc260x_core.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [70 x i8] c"atc260x_core.author=Cristian Ciocaltea <cristian.ciocaltea@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file190 = internal constant [43 x i8] c"atc260x_core.file=drivers/mfd/atc260x-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [25 x i8] c"atc260x_core.license=GPL\00", section ".modinfo", align 1
@atc2603c_regmap_irqs = internal constant { [11 x %struct.regmap_irq], [116 x i8] } { [11 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1024, %struct.regmap_irq_type zeroinitializer }], [116 x i8] zeroinitializer }, align 32
@atc2603c_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str, i32 0, i32 0, ptr null, i32 0, i32 200, i32 201, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 1, ptr @atc2603c_regmap_irqs, i32 11, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atc260x-regulator\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atc260x-pwrc\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atc260x-onkey\00", [18 x i8] zeroinitializer }, align 32
@atc2603c_onkey_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@atc2609a_regmap_irqs = internal constant { [11 x %struct.regmap_irq], [116 x i8] } { [11 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1024, %struct.regmap_irq_type zeroinitializer }], [116 x i8] zeroinitializer }, align 32
@atc2609a_regmap_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.1, i32 0, i32 0, ptr null, i32 0, i32 200, i32 201, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i8 32, i8 0, i32 1, ptr @atc2609a_regmap_irqs, i32 11, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@atc2609a_onkey_resources = internal constant { [1 x %struct.resource], [32 x i8] } { [1 x %struct.resource] [%struct.resource { i32 6, i32 6, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@system_state = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.31 = private unnamed_addr constant [23 x i8] c"atc2603c_regmap_config\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 55, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"atc2603c_mfd_cells\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 125, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 215, i32 24 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"atc2603c_init_regs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 145, i32 39 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"atc2609a_regmap_config\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 62, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"atc2609a_mfd_cells\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 135, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 224, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"atc2609a_init_regs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 153, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 229, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 239, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 265, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 274, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 279, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 285, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 291, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 299, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"atc2603c_regmap_irqs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 69, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"atc2603c_regmap_irq_chip\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 97, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 126, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 127, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 129, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant [25 x i8] c"atc2603c_onkey_resources\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 117, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant [21 x i8] c"atc2609a_regmap_irqs\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 83, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant [25 x i8] c"atc2609a_regmap_irq_chip\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 107, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant [25 x i8] c"atc2609a_onkey_resources\00", align 1
@___asan_gen_.146 = private constant [30 x i8] c"../drivers/mfd/atc260x-core.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 121, i32 30 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description187, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__ksymtab_atc260x_device_probe, ptr @__ksymtab_atc260x_match_device, ptr @atc260x_device_probe._entry, ptr @atc260x_device_probe._entry.10, ptr @atc260x_device_probe._entry.13, ptr @atc260x_device_probe._entry.16, ptr @atc260x_device_probe._entry.20, ptr @atc260x_device_probe._entry.23, ptr @atc260x_device_probe._entry_ptr, ptr @atc260x_device_probe._entry_ptr.12, ptr @atc260x_device_probe._entry_ptr.15, ptr @atc260x_device_probe._entry_ptr.19, ptr @atc260x_device_probe._entry_ptr.22, ptr @atc260x_device_probe._entry_ptr.25, ptr @atc260x_match_device._entry, ptr @atc260x_match_device._entry_ptr, ptr @atc2603c_regmap_config, ptr @atc2603c_mfd_cells, ptr @.str, ptr @atc2603c_init_regs, ptr @atc2609a_regmap_config, ptr @atc2609a_mfd_cells, ptr @.str.1, ptr @atc2609a_init_regs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @atc260x_match_device.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @atc2603c_regmap_irqs, ptr @atc2603c_regmap_irq_chip, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @atc2603c_onkey_resources, ptr @atc2609a_regmap_irqs, ptr @atc2609a_regmap_irq_chip, ptr @atc2609a_onkey_resources], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_mfd_cells to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_init_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_mfd_cells to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_init_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_match_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_match_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc260x_device_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_regmap_irqs to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2603c_onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_regmap_irqs to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atc2609a_onkey_resources to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atc260x_match_device(ptr nocapture noundef %atc260x, ptr nocapture noundef writeonly %regmap_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atc260x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atc260x, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  %ic_type = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 8
  %3 = ptrtoint ptr %ic_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ic_type, align 4
  %4 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = call ptr @memcpy(ptr %regmap_cfg, ptr @atc2603c_regmap_config, i32 172)
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = call ptr @memcpy(ptr %regmap_cfg, ptr @atc2609a_regmap_config, i32 172)
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %2) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb
  %atc2609a_regmap_irq_chip.sink = phi ptr [ @atc2609a_regmap_irq_chip, %sw.bb3 ], [ @atc2603c_regmap_irq_chip, %sw.bb ]
  %atc2609a_mfd_cells.sink = phi ptr [ @atc2609a_mfd_cells, %sw.bb3 ], [ @atc2603c_mfd_cells, %sw.bb ]
  %.str.1.sink = phi ptr [ @.str.1, %sw.bb3 ], [ @.str, %sw.bb ]
  %atc2609a_init_regs.sink = phi ptr [ @atc2609a_init_regs, %sw.bb3 ], [ @atc2603c_init_regs, %sw.bb ]
  %regmap_irq_chip4 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 2
  %7 = ptrtoint ptr %regmap_irq_chip4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %atc2609a_regmap_irq_chip.sink, ptr %regmap_irq_chip4, align 4
  %cells5 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 5
  %8 = ptrtoint ptr %cells5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %atc2609a_mfd_cells.sink, ptr %cells5, align 4
  %nr_cells6 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 6
  %9 = ptrtoint ptr %nr_cells6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %nr_cells6, align 4
  %type_name7 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 10
  %10 = ptrtoint ptr %type_name7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.str.1.sink, ptr %type_name7, align 4
  %rev_reg8 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 11
  %11 = ptrtoint ptr %rev_reg8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 220, ptr %rev_reg8, align 4
  %init_regs9 = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 12
  %12 = ptrtoint ptr %init_regs9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %atc2609a_init_regs.sink, ptr %init_regs9, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 92, i32 noundef 3520) #5
  %regmap_mutex = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 4
  %13 = ptrtoint ptr %regmap_mutex to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %regmap_mutex, align 4
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %sw.epilog.cleanup_crit_edge, label %do.body16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @atc260x_match_device.__key) #5
  %lock = getelementptr inbounds %struct.regmap_config, ptr %regmap_cfg, i32 0, i32 12
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @regmap_lock_mutex, ptr %lock, align 4
  %unlock = getelementptr inbounds %struct.regmap_config, ptr %regmap_cfg, i32 0, i32 13
  %15 = ptrtoint ptr %unlock to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @regmap_unlock_mutex, ptr %unlock, align 4
  %16 = ptrtoint ptr %regmap_mutex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_mutex, align 4
  %lock_arg = getelementptr inbounds %struct.regmap_config, ptr %regmap_cfg, i32 0, i32 14
  %18 = ptrtoint ptr %lock_arg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %lock_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body16, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body16 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_lock_mutex(ptr noundef %__mutex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %0 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %0)
  %cmp = icmp ugt i32 %0, 3
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #5, !srcloc !93
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call i32 @mutex_trylock(ptr noundef %__mutex) #5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %__mutex, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @regmap_unlock_mutex(ptr noundef %__mutex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef %__mutex) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atc260x_device_probe(ptr noundef %atc260x) #0 align 64 {
entry:
  %chip_rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atc260x to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atc260x, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chip_rev) #5
  %2 = ptrtoint ptr %chip_rev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chip_rev, align 4, !annotation !94
  %irq = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 7
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_regs.i = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 12
  %5 = ptrtoint ptr %init_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_regs.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %6, align 4
  %cmu_devrst_ints.i.i = getelementptr inbounds %struct.atc260x_init_regs, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %cmu_devrst_ints.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmu_devrst_ints.i.i, align 4
  %neg.i.i = xor i32 %12, -1
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %neg.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %6, align 4
  %17 = ptrtoint ptr %cmu_devrst_ints.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmu_devrst_ints.i.i, align 4
  %call.i14.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %ints_msk.i = getelementptr inbounds %struct.atc260x_init_regs, ptr %6, i32 0, i32 2
  %21 = ptrtoint ptr %ints_msk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ints_msk.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %20, i32 noundef %22, i32 noundef 0) #5
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %pad_en.i = getelementptr inbounds %struct.atc260x_init_regs, ptr %6, i32 0, i32 3
  %25 = ptrtoint ptr %pad_en.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pad_en.i, align 4
  %pad_en_extirq.i = getelementptr inbounds %struct.atc260x_init_regs, ptr %6, i32 0, i32 4
  %27 = ptrtoint ptr %pad_en_extirq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pad_en_extirq.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %29 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i, align 4
  %rev_reg = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 11
  %31 = ptrtoint ptr %rev_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rev_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %30, i32 noundef %32, ptr noundef nonnull %chip_rev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %33 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %34)
  %cmp = icmp ugt i32 %34, 31
  br i1 %cmp, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.14, i32 noundef %34) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %add = add nuw nsw i32 %34, 1
  %35 = call i32 @llvm.cttz.i32(i32 %add, i1 false) #5, !range !95
  %ic_ver = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 9
  %36 = ptrtoint ptr %ic_ver to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ic_ver, align 4
  %type_name = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 10
  %37 = ptrtoint ptr %type_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %type_name, align 4
  %add18 = add nuw nsw i32 %35, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %38, i32 noundef %add18) #8
  %39 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i, align 4
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  %regmap_irq_chip = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 2
  %43 = ptrtoint ptr %regmap_irq_chip to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap_irq_chip, align 4
  %irq_data = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 3
  %call21 = call i32 @devm_regmap_add_irq_chip(ptr noundef %1, ptr noundef %40, i32 noundef %42, i32 noundef 8192, i32 noundef -1, ptr noundef %44, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %call21) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %cells = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 5
  %45 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cells, align 4
  %nr_cells = getelementptr inbounds %struct.atc260x, ptr %atc260x, i32 0, i32 6
  %47 = ptrtoint ptr %nr_cells to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_cells, align 4
  %49 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq_data, align 4
  %call29 = call ptr @regmap_irq_get_domain(ptr noundef %50) #5
  %call30 = call i32 @devm_mfd_add_devices(ptr noundef %1, i32 noundef -1, ptr noundef %46, i32 noundef %48, ptr noundef null, i32 noundef 0, ptr noundef %call29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %do.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %call30) #8
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %53 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %irq_data, align 4
  call void @regmap_del_irq_chip(i32 noundef %52, ptr noundef %54) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end27.cleanup_crit_edge, %do.end26, %do.end11, %do.end6, %do.end
  %retval.0 = phi i32 [ %call, %do.end6 ], [ -22, %do.end11 ], [ %call21, %do.end26 ], [ -22, %do.end ], [ %call30, %do.end35 ], [ 0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chip_rev) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/atc260x-core.c", i32 215, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mfd/atc260x-core.c", i32 224, i32 24}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mfd/atc260x-core.c", i32 229, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @atc260x_match_device._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @atc260x_match_device._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @atc260x_match_device.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/mfd/atc260x-core.c", i32 239, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__ksymtab_atc260x_match_device, !16, !"__ksymtab_atc260x_match_device", i1 false, i1 false}
!16 = !{!"../drivers/mfd/atc260x-core.c", i32 247, i32 1}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mfd/atc260x-core.c", i32 265, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @atc260x_device_probe._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @atc260x_device_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/atc260x-core.c", i32 274, i32 3}
!24 = !{ptr @atc260x_device_probe._entry.10, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @atc260x_device_probe._entry_ptr.12, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/atc260x-core.c", i32 279, i32 3}
!28 = !{ptr @atc260x_device_probe._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @atc260x_device_probe._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/atc260x-core.c", i32 285, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @atc260x_device_probe._entry.16, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @atc260x_device_probe._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/atc260x-core.c", i32 291, i32 3}
!37 = !{ptr @atc260x_device_probe._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @atc260x_device_probe._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/atc260x-core.c", i32 299, i32 3}
!41 = !{ptr @atc260x_device_probe._entry.23, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @atc260x_device_probe._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @__ksymtab_atc260x_device_probe, !44, !"__ksymtab_atc260x_device_probe", i1 false, i1 false}
!44 = !{!"../drivers/mfd/atc260x-core.c", i32 305, i32 1}
!45 = !{ptr @__UNIQUE_ID_description187, !46, !"__UNIQUE_ID_description187", i1 false, i1 false}
!46 = !{!"../drivers/mfd/atc260x-core.c", i32 307, i32 1}
!47 = !{ptr @__UNIQUE_ID_author188, !48, !"__UNIQUE_ID_author188", i1 false, i1 false}
!48 = !{!"../drivers/mfd/atc260x-core.c", i32 308, i32 1}
!49 = !{ptr @__UNIQUE_ID_author189, !50, !"__UNIQUE_ID_author189", i1 false, i1 false}
!50 = !{!"../drivers/mfd/atc260x-core.c", i32 309, i32 1}
!51 = !{ptr @__UNIQUE_ID_file190, !52, !"__UNIQUE_ID_file190", i1 false, i1 false}
!52 = !{!"../drivers/mfd/atc260x-core.c", i32 310, i32 1}
!53 = !{ptr @__UNIQUE_ID_license191, !52, !"__UNIQUE_ID_license191", i1 false, i1 false}
!54 = !{ptr @atc2603c_regmap_config, !55, !"atc2603c_regmap_config", i1 false, i1 false}
!55 = !{!"../drivers/mfd/atc260x-core.c", i32 55, i32 35}
!56 = !{ptr @atc2603c_regmap_irq_chip, !57, !"atc2603c_regmap_irq_chip", i1 false, i1 false}
!57 = !{!"../drivers/mfd/atc260x-core.c", i32 97, i32 37}
!58 = !{ptr @atc2603c_regmap_irqs, !59, !"atc2603c_regmap_irqs", i1 false, i1 false}
!59 = !{!"../drivers/mfd/atc260x-core.c", i32 69, i32 32}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mfd/atc260x-core.c", i32 126, i32 12}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mfd/atc260x-core.c", i32 127, i32 12}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/atc260x-core.c", i32 129, i32 11}
!66 = !{ptr @atc2603c_mfd_cells, !67, !"atc2603c_mfd_cells", i1 false, i1 false}
!67 = !{!"../drivers/mfd/atc260x-core.c", i32 125, i32 30}
!68 = !{ptr @atc2603c_onkey_resources, !69, !"atc2603c_onkey_resources", i1 false, i1 false}
!69 = !{!"../drivers/mfd/atc260x-core.c", i32 117, i32 30}
!70 = !{ptr @atc2603c_init_regs, !71, !"atc2603c_init_regs", i1 false, i1 false}
!71 = !{!"../drivers/mfd/atc260x-core.c", i32 145, i32 39}
!72 = !{ptr @atc2609a_regmap_config, !73, !"atc2609a_regmap_config", i1 false, i1 false}
!73 = !{!"../drivers/mfd/atc260x-core.c", i32 62, i32 35}
!74 = !{ptr @atc2609a_regmap_irq_chip, !75, !"atc2609a_regmap_irq_chip", i1 false, i1 false}
!75 = !{!"../drivers/mfd/atc260x-core.c", i32 107, i32 37}
!76 = !{ptr @atc2609a_regmap_irqs, !77, !"atc2609a_regmap_irqs", i1 false, i1 false}
!77 = !{!"../drivers/mfd/atc260x-core.c", i32 83, i32 32}
!78 = !{ptr @atc2609a_mfd_cells, !79, !"atc2609a_mfd_cells", i1 false, i1 false}
!79 = !{!"../drivers/mfd/atc260x-core.c", i32 135, i32 30}
!80 = !{ptr @atc2609a_onkey_resources, !81, !"atc2609a_onkey_resources", i1 false, i1 false}
!81 = !{!"../drivers/mfd/atc260x-core.c", i32 121, i32 30}
!82 = !{ptr @atc2609a_init_regs, !83, !"atc2609a_init_regs", i1 false, i1 false}
!83 = !{!"../drivers/mfd/atc260x-core.c", i32 153, i32 39}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 638015}
!94 = !{!"auto-init"}
!95 = !{i32 0, i32 33}
