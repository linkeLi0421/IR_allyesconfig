; ModuleID = '/llk/IR_all_yes/drivers/regulator/mc13xxx-regulator-core.c_pt.bc'
source_filename = "../drivers/regulator/mc13xxx-regulator-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_regulator_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_regulator_ops\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_regulator_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_regulator_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_regulator_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_regulator_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_fixed_regulator_set_voltage\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_fixed_regulator_set_voltage\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_fixed_regulator_set_voltage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_fixed_regulator_set_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_fixed_regulator_set_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_fixed_regulator_set_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_fixed_regulator_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_fixed_regulator_ops\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_fixed_regulator_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_fixed_regulator_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_fixed_regulator_ops\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_fixed_regulator_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_get_num_regulators_dt\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_get_num_regulators_dt\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_get_num_regulators_dt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_get_num_regulators_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_get_num_regulators_dt\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_get_num_regulators_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_parse_regulators_dt\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_parse_regulators_dt\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_parse_regulators_dt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_parse_regulators_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_parse_regulators_dt\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_parse_regulators_dt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mc13xxx_regulator_priv = type { ptr, i32, ptr, i32, [0 x ptr] }
%struct.mc13xxx_regulator = type { %struct.regulator_desc, i32, i32, i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mc13xxx_regulator_init_data = type { i32, ptr, ptr }

@mc13xxx_regulator_ops = dso_local constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @mc13xxx_regulator_set_voltage_sel, ptr @mc13xxx_regulator_get_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc13xxx_regulator_enable, ptr @mc13xxx_regulator_disable, ptr @mc13xxx_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_regulator_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_regulator_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_regulator_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_regulator_ops to i32), ptr @__kstrtab_mc13xxx_regulator_ops, ptr @__kstrtabns_mc13xxx_regulator_ops }, section "___ksymtab_gpl+mc13xxx_regulator_ops", align 4
@mc13xxx_fixed_regulator_set_voltage.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc13xxx_regulator_core\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mc13xxx_fixed_regulator_set_voltage\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/regulator/mc13xxx-regulator-core.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s id: %d min_uV: %d max_uV: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_fixed_regulator_set_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_fixed_regulator_set_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_fixed_regulator_set_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_fixed_regulator_set_voltage to i32), ptr @__kstrtab_mc13xxx_fixed_regulator_set_voltage, ptr @__kstrtabns_mc13xxx_fixed_regulator_set_voltage }, section "___ksymtab_gpl+mc13xxx_fixed_regulator_set_voltage", align 4
@mc13xxx_fixed_regulator_ops = dso_local constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr @mc13xxx_fixed_regulator_set_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mc13xxx_regulator_enable, ptr @mc13xxx_regulator_disable, ptr @mc13xxx_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_fixed_regulator_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_fixed_regulator_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_fixed_regulator_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_fixed_regulator_ops to i32), ptr @__kstrtab_mc13xxx_fixed_regulator_ops, ptr @__kstrtabns_mc13xxx_fixed_regulator_ops }, section "___ksymtab_gpl+mc13xxx_fixed_regulator_ops", align 4
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_get_num_regulators_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_get_num_regulators_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_get_num_regulators_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_get_num_regulators_dt to i32), ptr @__kstrtab_mc13xxx_get_num_regulators_dt, ptr @__kstrtabns_mc13xxx_get_num_regulators_dt }, section "___ksymtab_gpl+mc13xxx_get_num_regulators_dt", align 4
@mc13xxx_parse_regulators_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 206, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown regulator: %pOFn\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mc13xxx_parse_regulators_dt\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_parse_regulators_dt._entry_ptr = internal global ptr @mc13xxx_parse_regulators_dt._entry, section ".printk_index", align 4
@__kstrtab_mc13xxx_parse_regulators_dt = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_parse_regulators_dt = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_parse_regulators_dt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_parse_regulators_dt to i32), ptr @__kstrtab_mc13xxx_parse_regulators_dt, ptr @__kstrtabns_mc13xxx_parse_regulators_dt }, section "___ksymtab_gpl+mc13xxx_parse_regulators_dt", align 4
@__UNIQUE_ID_file293 = internal constant [69 x i8] c"mc13xxx_regulator_core.file=drivers/regulator/mc13xxx-regulator-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [38 x i8] c"mc13xxx_regulator_core.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [63 x i8] c"mc13xxx_regulator_core.author=Yong Shen <yong.shen@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [79 x i8] c"mc13xxx_regulator_core.description=Regulator Driver for Freescale MC13xxx PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [52 x i8] c"mc13xxx_regulator_core.alias=mc13xxx-regulator-core\00", section ".modinfo", align 1
@mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 21, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mc13xxx_regulator_get_voltage\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s id: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 23, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s id: %d val: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@mc13xxx_regulator_enable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.10, i8 0, i8 8, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mc13xxx_regulator_enable\00", [39 x i8] zeroinitializer }, align 32
@mc13xxx_regulator_disable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.10, i8 0, i8 11, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mc13xxx_regulator_disable\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"mc13xxx_regulator_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 102, i32 28 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 117, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [28 x i8] c"mc13xxx_fixed_regulator_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 130, i32 28 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 148, i32 59 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 205, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 85, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 95, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 33, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [46 x i8] c"../drivers/regulator/mc13xxx-regulator-core.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 46, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__ksymtab_mc13xxx_fixed_regulator_ops, ptr @__ksymtab_mc13xxx_fixed_regulator_set_voltage, ptr @__ksymtab_mc13xxx_get_num_regulators_dt, ptr @__ksymtab_mc13xxx_parse_regulators_dt, ptr @__ksymtab_mc13xxx_regulator_ops, ptr @mc13xxx_parse_regulators_dt._entry, ptr @mc13xxx_parse_regulators_dt._entry_ptr, ptr @mc13xxx_regulator_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mc13xxx_fixed_regulator_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_fixed_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_parse_regulators_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_regulator_set_voltage_sel(ptr noundef %rdev, i32 noundef %selector) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %vsel_reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 3
  %4 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vsel_reg, align 4
  %vsel_mask = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 5
  %6 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vsel_mask, align 4
  %vsel_shift = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 4
  %8 = ptrtoint ptr %vsel_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vsel_shift, align 4
  %shl = shl i32 %selector, %9
  %call5 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %shl) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_regulator_get_voltage(ptr noundef %rdev) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_regulator_get_voltage, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug290, ptr noundef %call7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %call2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %vsel_reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 3
  %5 = ptrtoint ptr %vsel_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vsel_reg, align 4
  %call8 = call i32 @mc13xxx_reg_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %vsel_mask = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 5
  %9 = ptrtoint ptr %vsel_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vsel_mask, align 4
  %and = and i32 %10, %8
  %vsel_shift = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 4
  %11 = ptrtoint ptr %vsel_shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vsel_shift, align 4
  %shr = lshr i32 %and, %12
  store i32 %shr, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_regulator_get_voltage, %do.body33)) #5
          to label %if.then28 [label %do.body33], !srcloc !61

if.then28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call29 = call ptr @rdev_get_dev(ptr noundef %rdev) #5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug291, ptr noundef %call29, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %call2, i32 noundef %14) #5
  br label %do.body33

do.body33:                                        ; preds = %if.then28, %if.end11
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %n_voltages = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 0, i32 8
  %17 = ptrtoint ptr %n_voltages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_voltages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp.not = icmp ult i32 %16, %18
  br i1 %cmp.not, label %do.end50, label %do.body42, !prof !62

do.body42:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/mc13xxx-regulator-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 97, 0\0A.popsection", ""() #5, !srcloc !63
  unreachable

do.end50:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rdev, align 8
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %volt_table, align 4
  %arrayidx52 = getelementptr i32, ptr %22, i32 %16
  %23 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx52, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %do.end50 ], [ %call8, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_regulator_enable(ptr noundef %rdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_regulator_enable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_regulator_enable, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_regulator_enable.__UNIQUE_ID_ddebug288, ptr noundef %call7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12, i32 noundef %call2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %6 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_bit, align 4
  %call11 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %7) #5
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_regulator_disable(ptr noundef %rdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_regulator_disable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_regulator_disable, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_regulator_disable.__UNIQUE_ID_ddebug289, ptr noundef %call7, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef %call2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 1
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %6 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable_bit, align 4
  %call9 = tail call i32 @mc13xxx_reg_rmw(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 0) #5
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_regulator_is_enabled(ptr noundef %rdev) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #5
  %mc13xxx_regulators1 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %mc13xxx_regulators1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx_regulators1, align 4
  %call2 = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !60
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %reg = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 1
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %call3 = call i32 @mc13xxx_reg_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %enable_bit = getelementptr %struct.mc13xxx_regulator, ptr %1, i32 %call2, i32 2
  %9 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %enable_bit, align 4
  %and = and i32 %10, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_fixed_regulator_set_voltage(ptr noundef %rdev, i32 noundef %min_uV, i32 noundef %max_uV, ptr nocapture noundef writeonly %selector) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdev_get_id(ptr noundef %rdev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_fixed_regulator_set_voltage.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mc13xxx_fixed_regulator_set_voltage, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @rdev_get_dev(ptr noundef %rdev) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_fixed_regulator_set_voltage.__UNIQUE_ID_ddebug292, ptr noundef %call5, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call, i32 noundef %min_uV, i32 noundef %max_uV) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %volt_table, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %min_uV)
  %cmp.not = icmp ult i32 %5, %min_uV
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %max_uV)
  %cmp9.not = icmp ugt i32 %5, %max_uV
  %or.cond = or i1 %cmp.not, %cmp9.not
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.then10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %selector to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %selector, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_get_num_regulators_dt(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_get_child_by_name(ptr noundef nonnull %3, ptr noundef nonnull @.str.4) #5
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #5
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end7.of_get_child_count.exit_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.of_get_child_count.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end7.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end7.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %child.06.i) #5
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %for.body.i.of_get_child_count.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.of_get_child_count.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %for.body.i.of_get_child_count.exit_crit_edge, %if.end7.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %if.end7.of_get_child_count.exit_crit_edge ], [ %inc.i, %for.body.i.of_get_child_count.exit_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %of_get_child_count.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num.0.lcssa.i, %of_get_child_count.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mc13xxx_parse_regulators_dt(ptr noundef %pdev, ptr noundef %regulators, i32 noundef %num_regulators) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %5, ptr noundef nonnull @.str.4) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_regulators10 = getelementptr inbounds %struct.mc13xxx_regulator_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %num_regulators10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_regulators10, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 12) #5
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end8.if.then13_crit_edge, label %devm_kcalloc.exit, !prof !64

if.end8.if.then13_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

devm_kcalloc.exit:                                ; preds = %if.end8
  %10 = extractvalue { i32, i1 } %8, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %10, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool12.not, label %devm_kcalloc.exit.if.then13_crit_edge, label %if.end14

devm_kcalloc.exit.if.then13_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %devm_kcalloc.exit.if.then13_crit_edge, %if.end8.if.then13_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call5) #5
  br label %cleanup

if.end14:                                         ; preds = %devm_kcalloc.exit
  %call15 = tail call ptr @of_get_next_child(ptr noundef nonnull %call5, ptr noundef null) #5
  %cmp.not86 = icmp eq ptr %call15, null
  br i1 %cmp.not86, label %if.end14.for.end39_crit_edge, label %for.cond16.preheader.lr.ph

if.end14.for.end39_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.cond16.preheader.lr.ph:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_regulators)
  %cmp1783 = icmp sgt i32 %num_regulators, 0
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end36.for.cond16.preheader_crit_edge, %for.cond16.preheader.lr.ph
  %parsed.091 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %parsed.181, %if.end36.for.cond16.preheader_crit_edge ]
  %child.088 = phi ptr [ %call15, %for.cond16.preheader.lr.ph ], [ %call38, %if.end36.for.cond16.preheader_crit_edge ]
  %p.087 = phi ptr [ %call5.i.i, %for.cond16.preheader.lr.ph ], [ %p.180, %if.end36.for.cond16.preheader_crit_edge ]
  br i1 %cmp1783, label %for.cond16.preheader.for.body18_crit_edge, label %for.cond16.preheader.do.end_crit_edge

for.cond16.preheader.do.end_crit_edge:            ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.cond16.preheader.for.body18_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.cond16.preheader.for.body18_crit_edge
  %i.084 = phi i32 [ %inc32, %for.inc.for.body18_crit_edge ], [ 0, %for.cond16.preheader.for.body18_crit_edge ]
  %arrayidx = getelementptr %struct.mc13xxx_regulator, ptr %regulators, i32 %i.084
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %for.body18.for.inc_crit_edge, label %if.end21

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end21:                                         ; preds = %for.body18
  %call25 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.088, ptr noundef nonnull %12) #5
  br i1 %call25, label %for.end.thread, label %if.end21.for.inc_crit_edge

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.end.thread:                                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %p.087 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.084, ptr %p.087, align 4
  %call30 = tail call ptr @of_get_regulator_init_data(ptr noundef %dev, ptr noundef nonnull %child.088, ptr noundef %arrayidx) #5
  %init_data = getelementptr inbounds %struct.mc13xxx_regulator_init_data, ptr %p.087, i32 0, i32 1
  %14 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call30, ptr %init_data, align 4
  %node = getelementptr inbounds %struct.mc13xxx_regulator_init_data, ptr %p.087, i32 0, i32 2
  %15 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %child.088, ptr %node, align 4
  %incdec.ptr = getelementptr %struct.mc13xxx_regulator_init_data, ptr %p.087, i32 1
  %inc = add i32 %parsed.091, 1
  br label %if.end36

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %for.body18.for.inc_crit_edge
  %inc32 = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc32, %num_regulators
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body18

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %for.cond16.preheader.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull %child.088) #8
  br label %if.end36

if.end36:                                         ; preds = %do.end, %for.end.thread
  %parsed.181 = phi i32 [ %inc, %for.end.thread ], [ %parsed.091, %do.end ]
  %p.180 = phi ptr [ %incdec.ptr, %for.end.thread ], [ %p.087, %do.end ]
  %call38 = tail call ptr @of_get_next_child(ptr noundef nonnull %call5, ptr noundef nonnull %child.088) #5
  %cmp.not = icmp eq ptr %call38, null
  br i1 %cmp.not, label %if.end36.for.end39_crit_edge, label %if.end36.for.cond16.preheader_crit_edge

if.end36.for.cond16.preheader_crit_edge:          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond16.preheader

if.end36.for.end39_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.end39:                                        ; preds = %if.end36.for.end39_crit_edge, %if.end14.for.end39_crit_edge
  %parsed.0.lcssa = phi i32 [ 0, %if.end14.for.end39_crit_edge ], [ %parsed.181, %if.end36.for.end39_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call5) #5
  %16 = ptrtoint ptr %num_regulators10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parsed.0.lcssa, ptr %num_regulators10, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5.i.i, %for.end39 ], [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_rmw(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mc13xxx_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @mc13xxx_regulator_ops, !1, !"mc13xxx_regulator_ops", i1 false, i1 false}
!1 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 102, i32 28}
!2 = !{ptr @__ksymtab_mc13xxx_regulator_ops, !3, !"__ksymtab_mc13xxx_regulator_ops", i1 false, i1 false}
!3 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 110, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 117, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mc13xxx_fixed_regulator_set_voltage.__UNIQUE_ID_ddebug292, !5, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mc13xxx_fixed_regulator_set_voltage, !11, !"__ksymtab_mc13xxx_fixed_regulator_set_voltage", i1 false, i1 false}
!11 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 128, i32 1}
!12 = !{ptr @mc13xxx_fixed_regulator_ops, !13, !"mc13xxx_fixed_regulator_ops", i1 false, i1 false}
!13 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 130, i32 28}
!14 = !{ptr @__ksymtab_mc13xxx_fixed_regulator_ops, !15, !"__ksymtab_mc13xxx_fixed_regulator_ops", i1 false, i1 false}
!15 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 137, i32 1}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 148, i32 59}
!18 = !{ptr @__ksymtab_mc13xxx_get_num_regulators_dt, !19, !"__ksymtab_mc13xxx_get_num_regulators_dt", i1 false, i1 false}
!19 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 156, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 205, i32 4}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mc13xxx_parse_regulators_dt._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @mc13xxx_parse_regulators_dt._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_mc13xxx_parse_regulators_dt, !28, !"__ksymtab_mc13xxx_parse_regulators_dt", i1 false, i1 false}
!28 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 214, i32 1}
!29 = !{ptr @__UNIQUE_ID_file293, !30, !"__UNIQUE_ID_file293", i1 false, i1 false}
!30 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 217, i32 1}
!31 = !{ptr @__UNIQUE_ID_license294, !30, !"__UNIQUE_ID_license294", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_author295, !33, !"__UNIQUE_ID_author295", i1 false, i1 false}
!33 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 218, i32 1}
!34 = !{ptr @__UNIQUE_ID_description296, !35, !"__UNIQUE_ID_description296", i1 false, i1 false}
!35 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 219, i32 1}
!36 = !{ptr @__UNIQUE_ID_alias297, !37, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!37 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 220, i32 1}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 85, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug290, !39, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 95, i32 2}
!44 = !{ptr @mc13xxx_regulator_get_voltage.__UNIQUE_ID_ddebug291, !43, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 33, i32 2}
!47 = !{ptr @mc13xxx_regulator_enable.__UNIQUE_ID_ddebug288, !46, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/regulator/mc13xxx-regulator-core.c", i32 46, i32 2}
!50 = !{ptr @mc13xxx_regulator_disable.__UNIQUE_ID_ddebug289, !49, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i64 2148729323, i64 2148729328, i64 2148729341, i64 2148729385, i64 2148729419, i64 2148729440}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2155027393, i64 2155027899, i64 2155027430, i64 2155027486, i64 2155027520, i64 2155027544, i64 2155027585, i64 2155027606, i64 2155027634, i64 2155027668}
!64 = !{!"branch_weights", i32 1, i32 2000}
