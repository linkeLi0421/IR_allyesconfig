; ModuleID = '/llk/IR_all_yes/drivers/mfd/mc13xxx-core.c_pt.bc'
source_filename = "../drivers/mfd/mc13xxx-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mc13xxx_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_lock\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_lock\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_unlock\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_reg_read\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_reg_read\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_reg_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_reg_write\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_reg_write\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_reg_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_reg_rmw\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_reg_rmw\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_reg_rmw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_reg_rmw:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_reg_rmw\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_reg_rmw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_irq_mask\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_irq_mask\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_irq_mask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_irq_mask\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_irq_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_irq_unmask\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_irq_unmask\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_irq_unmask\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_irq_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_irq_unmask\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_irq_unmask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_irq_status\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_irq_status\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_irq_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_irq_status:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_irq_status\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_irq_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_irq_request\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_irq_request\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_irq_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_irq_request:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_irq_request\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_irq_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_irq_free\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_irq_free\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_irq_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_irq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_irq_free\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_irq_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_variant_mc13783\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_variant_mc13783\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_variant_mc13783\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_variant_mc13783:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_variant_mc13783\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_variant_mc13783:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_variant_mc13892\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_variant_mc13892\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_variant_mc13892\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_variant_mc13892:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_variant_mc13892\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_variant_mc13892:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_variant_mc34708\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_variant_mc34708\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_variant_mc34708\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_variant_mc34708:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_variant_mc34708\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_variant_mc34708:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+mc13xxx_get_flags\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_get_flags\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_get_flags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_get_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_get_flags\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_get_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_adc_do_conversion\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_adc_do_conversion\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_adc_do_conversion\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_adc_do_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_adc_do_conversion\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_adc_do_conversion:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_common_init\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_common_init\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_common_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_common_init\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mc13xxx_common_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_mc13xxx_common_exit\09\09\09\09"
module asm "\09.long\09__crc_mc13xxx_common_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mc13xxx_common_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22mc13xxx_common_exit\22\09\09\09\09\09"
module asm "__kstrtabns_mc13xxx_common_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mc13xxx_variant = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mc13xxx = type { ptr, ptr, ptr, [48 x %struct.regmap_irq], %struct.regmap_irq_chip, ptr, %struct.mutex, i32, i32, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_irq_chip = type { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i16, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mc13xxx_adcdone_data = type { ptr, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mc13xxx_platform_data = type { i32, %struct.mc13xxx_regulator_platform_data, ptr, ptr, %struct.mc13xxx_ts_platform_data, ptr }
%struct.mc13xxx_regulator_platform_data = type { i32, ptr }
%struct.mc13xxx_ts_platform_data = type { i8, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }

@mc13xxx_lock.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mc13xxx_core\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mc13xxx_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/mc13xxx-core.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wait for %s from %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@mc13xxx_lock.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s from %ps\0A\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_lock to i32), ptr @__kstrtab_mc13xxx_lock, ptr @__kstrtabns_mc13xxx_lock }, section "___ksymtab+mc13xxx_lock", align 4
@mc13xxx_unlock.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.4, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mc13xxx_unlock\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_unlock to i32), ptr @__kstrtab_mc13xxx_unlock, ptr @__kstrtabns_mc13xxx_unlock }, section "___ksymtab+mc13xxx_unlock", align 4
@__kstrtab_mc13xxx_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_reg_read to i32), ptr @__kstrtab_mc13xxx_reg_read, ptr @__kstrtabns_mc13xxx_reg_read }, section "___ksymtab+mc13xxx_reg_read", align 4
@__kstrtab_mc13xxx_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_reg_write to i32), ptr @__kstrtab_mc13xxx_reg_write, ptr @__kstrtabns_mc13xxx_reg_write }, section "___ksymtab+mc13xxx_reg_write", align 4
@__kstrtab_mc13xxx_reg_rmw = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_reg_rmw = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_reg_rmw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_reg_rmw to i32), ptr @__kstrtab_mc13xxx_reg_rmw, ptr @__kstrtabns_mc13xxx_reg_rmw }, section "___ksymtab+mc13xxx_reg_rmw", align 4
@__kstrtab_mc13xxx_irq_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_irq_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_irq_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_irq_mask to i32), ptr @__kstrtab_mc13xxx_irq_mask, ptr @__kstrtabns_mc13xxx_irq_mask }, section "___ksymtab+mc13xxx_irq_mask", align 4
@__kstrtab_mc13xxx_irq_unmask = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_irq_unmask = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_irq_unmask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_irq_unmask to i32), ptr @__kstrtab_mc13xxx_irq_unmask, ptr @__kstrtabns_mc13xxx_irq_unmask }, section "___ksymtab+mc13xxx_irq_unmask", align 4
@__kstrtab_mc13xxx_irq_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_irq_status = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_irq_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_irq_status to i32), ptr @__kstrtab_mc13xxx_irq_status, ptr @__kstrtabns_mc13xxx_irq_status }, section "___ksymtab+mc13xxx_irq_status", align 4
@__kstrtab_mc13xxx_irq_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_irq_request = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_irq_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_irq_request to i32), ptr @__kstrtab_mc13xxx_irq_request, ptr @__kstrtabns_mc13xxx_irq_request }, section "___ksymtab+mc13xxx_irq_request", align 4
@__kstrtab_mc13xxx_irq_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_irq_free = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_irq_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_irq_free to i32), ptr @__kstrtab_mc13xxx_irq_free, ptr @__kstrtabns_mc13xxx_irq_free }, section "___ksymtab+mc13xxx_irq_free", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mc13783\00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_variant_mc13783 = dso_local global { %struct.mc13xxx_variant, [24 x i8] } { %struct.mc13xxx_variant { ptr @.str.6, ptr @mc13xxx_print_revision }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_variant_mc13783 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_variant_mc13783 = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_variant_mc13783 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_variant_mc13783 to i32), ptr @__kstrtab_mc13xxx_variant_mc13783, ptr @__kstrtabns_mc13xxx_variant_mc13783 }, section "___ksymtab_gpl+mc13xxx_variant_mc13783", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mc13892\00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_variant_mc13892 = dso_local global { %struct.mc13xxx_variant, [24 x i8] } { %struct.mc13xxx_variant { ptr @.str.7, ptr @mc13xxx_print_revision }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_variant_mc13892 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_variant_mc13892 = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_variant_mc13892 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_variant_mc13892 to i32), ptr @__kstrtab_mc13xxx_variant_mc13892, ptr @__kstrtabns_mc13xxx_variant_mc13892 }, section "___ksymtab_gpl+mc13xxx_variant_mc13892", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mc34708\00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_variant_mc34708 = dso_local global { %struct.mc13xxx_variant, [24 x i8] } { %struct.mc13xxx_variant { ptr @.str.8, ptr @mc34708_print_revision }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_variant_mc34708 = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_variant_mc34708 = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_variant_mc34708 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_variant_mc34708 to i32), ptr @__kstrtab_mc13xxx_variant_mc34708, ptr @__kstrtabns_mc13xxx_variant_mc34708 }, section "___ksymtab_gpl+mc13xxx_variant_mc34708", align 4
@__kstrtab_mc13xxx_get_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_get_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_get_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_get_flags to i32), ptr @__kstrtab_mc13xxx_get_flags, ptr @__kstrtabns_mc13xxx_get_flags }, section "___ksymtab+mc13xxx_get_flags", align 4
@mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mc13xxx_adc_do_conversion\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug191 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: request irq\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_adc_do_conversion = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_adc_do_conversion = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_adc_do_conversion = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_adc_do_conversion to i32), ptr @__kstrtab_mc13xxx_adc_do_conversion, ptr @__kstrtabns_mc13xxx_adc_do_conversion }, section "___ksymtab_gpl+mc13xxx_adc_do_conversion", align 4
@mc13xxx_common_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mc13xxx->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-regulator\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-led\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s-pwrbutton\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-codec\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-ts\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-adc\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s-rtc\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_mc13xxx_common_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_common_init = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_common_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_common_init to i32), ptr @__kstrtab_mc13xxx_common_init, ptr @__kstrtabns_mc13xxx_common_init }, section "___ksymtab_gpl+mc13xxx_common_init", align 4
@__kstrtab_mc13xxx_common_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_mc13xxx_common_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_mc13xxx_common_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mc13xxx_common_exit to i32), ptr @__kstrtab_mc13xxx_common_exit, ptr @__kstrtabns_mc13xxx_common_exit }, section "___ksymtab_gpl+mc13xxx_common_exit", align 4
@__UNIQUE_ID_description192 = internal constant [64 x i8] c"mc13xxx_core.description=Core driver for Freescale MC13XXX PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [71 x i8] c"mc13xxx_core.author=Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [43 x i8] c"mc13xxx_core.file=drivers/mfd/mc13xxx-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [28 x i8] c"mc13xxx_core.license=GPL v2\00", section ".modinfo", align 1
@mc13xxx_print_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 188, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: rev: %d.%d, fin: %d, fab: %d, icid: %d/%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc13xxx_print_revision\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mc13xxx_print_revision._entry_ptr = internal global ptr @mc13xxx_print_revision._entry, section ".printk_index", align 4
@mc34708_print_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 198, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: rev %d.%d, fin: %d, fab: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc34708_print_revision\00", [41 x i8] zeroinitializer }, align 32
@mc34708_print_revision._entry_ptr = internal global ptr @mc34708_print_revision._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,mc13xxx-uses-adc\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,mc13xxx-uses-codec\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsl,mc13xxx-uses-rtc\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl,mc13xxx-uses-touch\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 17]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 51, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 56, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 63, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 203, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"mc13xxx_variant_mc13783\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 202, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 209, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [24 x i8] c"mc13xxx_variant_mc13892\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 208, i32 24 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 215, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"mc13xxx_variant_mc34708\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 214, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 263, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 325, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 461, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 467, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 469, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 471, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 474, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 477, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 490, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 493, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 180, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 193, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 87, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 399, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 402, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 405, i32 32 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [30 x i8] c"../drivers/mfd/mc13xxx-core.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 408, i32 32 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__ksymtab_mc13xxx_adc_do_conversion, ptr @__ksymtab_mc13xxx_common_exit, ptr @__ksymtab_mc13xxx_common_init, ptr @__ksymtab_mc13xxx_get_flags, ptr @__ksymtab_mc13xxx_irq_free, ptr @__ksymtab_mc13xxx_irq_mask, ptr @__ksymtab_mc13xxx_irq_request, ptr @__ksymtab_mc13xxx_irq_status, ptr @__ksymtab_mc13xxx_irq_unmask, ptr @__ksymtab_mc13xxx_lock, ptr @__ksymtab_mc13xxx_reg_read, ptr @__ksymtab_mc13xxx_reg_rmw, ptr @__ksymtab_mc13xxx_reg_write, ptr @__ksymtab_mc13xxx_unlock, ptr @__ksymtab_mc13xxx_variant_mc13783, ptr @__ksymtab_mc13xxx_variant_mc13892, ptr @__ksymtab_mc13xxx_variant_mc34708, ptr @mc13xxx_print_revision._entry, ptr @mc13xxx_print_revision._entry_ptr, ptr @mc34708_print_revision._entry, ptr @mc34708_print_revision._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mc13xxx_variant_mc13783, ptr @.str.7, ptr @mc13xxx_variant_mc13892, ptr @.str.8, ptr @mc13xxx_variant_mc34708, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mc13xxx_common_init.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @init_completion.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_variant_mc13783 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_variant_mc13892 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_variant_mc34708 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_common_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc13xxx_print_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc34708_print_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc13xxx_lock(ptr noundef %mc13xxx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 6
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_lock, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !121

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug187, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br label %do.body8

do.body8:                                         ; preds = %do.end, %entry.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_lock, %if.then20)) #8
          to label %do.end23 [label %if.then20], !srcloc !121

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev21 = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %3 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev21, align 4
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug188, ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %5) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %do.body8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc13xxx_unlock(ptr noundef %mc13xxx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_unlock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_unlock, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_unlock.__UNIQUE_ID_ddebug189, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_reg_read(ptr nocapture noundef readonly %mc13xxx, i32 noundef %offset, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx, align 4
  %call = tail call i32 @regmap_read(ptr noundef %1, i32 noundef %offset, ptr noundef %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_reg_write(ptr nocapture noundef readonly %mc13xxx, i32 noundef %offset, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %val)
  %cmp = icmp ugt i32 %val, 16777215
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %offset, i32 noundef %val) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_reg_rmw(ptr nocapture noundef readonly %mc13xxx, i32 noundef %offset, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %neg = xor i32 %mask, -1
  %and = and i32 %neg, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !122

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/mc13xxx-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 94, 0\0A.popsection", ""() #8, !srcloc !123
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc13xxx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %offset, i32 noundef %mask, i32 noundef %val, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_irq_mask(ptr nocapture noundef readonly %mc13xxx, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  %call = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #8
  tail call void @disable_irq_nosync(i32 noundef %call) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_irq_unmask(ptr nocapture noundef readonly %mc13xxx, i32 noundef %irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  %call = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #8
  tail call void @enable_irq(i32 noundef %call) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_irq_status(ptr nocapture noundef readonly %mc13xxx, i32 noundef %irq, ptr noundef writeonly %enabled, ptr noundef writeonly %pending) #0 align 64 {
entry:
  %mask = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %irq)
  %cmp = icmp slt i32 %irq, 24
  %cond = select i1 %cmp, i32 1, i32 4
  %cond2 = select i1 %cmp, i32 0, i32 3
  %sub = add i32 %irq, -24
  %cond4 = select i1 %cmp, i32 %irq, i32 %sub
  %shl = shl nuw i32 1, %cond4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %irq)
  %cmp6 = icmp ugt i32 %irq, 47
  br i1 %cmp6, label %entry.cleanup23_crit_edge, label %if.end

entry.cleanup23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %enabled, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mask, align 4, !annotation !124
  %1 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mc13xxx, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %cond, ptr noundef nonnull %mask) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %cleanup23.critedge

if.end10:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask, align 4
  %and = and i32 %4, %shl
  %5 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %enabled, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %pending, null
  br i1 %tobool12.not, label %if.end11.cleanup23_crit_edge, label %if.then13

if.end11.cleanup23_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup23

if.then13:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #8
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %stat, align 4, !annotation !124
  %7 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc13xxx, align 4
  %call.i43 = call i32 @regmap_read(ptr noundef %8, i32 noundef %cond2, ptr noundef nonnull %stat) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool15.not = icmp eq i32 %call.i43, 0
  br i1 %tobool15.not, label %cleanup19.thread, label %cleanup19

cleanup19.thread:                                 ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stat, align 4
  %and18 = and i32 %10, %shl
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and18, ptr %pending, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #8
  br label %cleanup23

cleanup19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #8
  br label %cleanup23

cleanup23.critedge:                               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #8
  br label %cleanup23

cleanup23:                                        ; preds = %cleanup23.critedge, %cleanup19, %cleanup19.thread, %if.end11.cleanup23_crit_edge, %entry.cleanup23_crit_edge
  %retval.3 = phi i32 [ %call.i43, %cleanup19 ], [ -22, %entry.cleanup23_crit_edge ], [ %call.i, %cleanup23.critedge ], [ 0, %cleanup19.thread ], [ 0, %if.end11.cleanup23_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_irq_request(ptr nocapture noundef readonly %mc13xxx, i32 noundef %irq, ptr noundef %handler, ptr noundef %name, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  %call = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #8
  %dev1 = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %call, ptr noundef null, ptr noundef %handler, i32 noundef 8192, ptr noundef %name, ptr noundef %dev) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_irq_free(ptr nocapture noundef readonly %mc13xxx, i32 noundef %irq, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irq_data, align 4
  %call = tail call i32 @regmap_irq_get_virq(ptr noundef %1, i32 noundef %irq) #8
  %dev1 = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void @devm_free_irq(ptr noundef %3, i32 noundef %call, ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc13xxx_print_revision(ptr nocapture noundef readonly %mc13xxx, i32 noundef %revision) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %variant = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 2
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %and = lshr i32 %revision, 3
  %shr = and i32 %and, 3
  %and1 = and i32 %revision, 7
  %and4 = lshr i32 %revision, 9
  %shr6 = and i32 %and4, 3
  %and7 = lshr i32 %revision, 11
  %shr9 = and i32 %and7, 3
  %and10 = lshr i32 %revision, 6
  %shr12 = and i32 %and10, 7
  %and13 = lshr i32 %revision, 13
  %shr15 = and i32 %and13, 63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef %5, i32 noundef %shr, i32 noundef %and1, i32 noundef %shr6, i32 noundef %shr9, i32 noundef %shr12, i32 noundef %shr15) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mc34708_print_revision(ptr nocapture noundef readonly %mc13xxx, i32 noundef %revision) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %variant = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 2
  %2 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %and = lshr i32 %revision, 3
  %shr = and i32 %and, 7
  %and1 = and i32 %revision, 7
  %and4 = lshr i32 %revision, 6
  %shr6 = and i32 %and4, 7
  %and7 = lshr i32 %revision, 9
  %shr9 = and i32 %and7, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %5, i32 noundef %shr, i32 noundef %and1, i32 noundef %shr6, i32 noundef %shr9) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mc13xxx_get_flags(ptr nocapture noundef readonly %mc13xxx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 8
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_adc_do_conversion(ptr noundef %mc13xxx, i32 noundef %mode, i32 noundef %channel, i8 noundef zeroext %ato, i1 noundef zeroext %atox, ptr noundef %sample) #0 align 64 {
entry:
  %old_adc0 = alloca i32, align 4
  %adcdone_data = alloca %struct.mc13xxx_adcdone_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old_adc0) #8
  %0 = ptrtoint ptr %old_adc0 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %old_adc0, align 4, !annotation !124
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %adcdone_data) #8
  %1 = getelementptr inbounds i8, ptr %adcdone_data, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 52)
  %3 = ptrtoint ptr %adcdone_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mc13xxx, ptr %adcdone_data, align 4
  %done = getelementptr inbounds %struct.mc13xxx_adcdone_data, ptr %adcdone_data, i32 0, i32 1
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.mc13xxx_adcdone_data, ptr %adcdone_data, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @init_completion.__key) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !121

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug190, ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 6
  %call.i = call i32 @mutex_trylock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %do.end.do.body8.i_crit_edge

do.end.do.body8.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then5.i)) #8
          to label %do.end.i [label %if.then5.i], !srcloc !121

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug187, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %9) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  br label %do.body8.i

do.body8.i:                                       ; preds = %do.end.i, %do.end.do.body8.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then20.i)) #8
          to label %mc13xxx_lock.exit [label %if.then20.i], !srcloc !121

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev21.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %10 = ptrtoint ptr %dev21.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21.i, align 4
  %12 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug188, ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %12) #8
  br label %mc13xxx_lock.exit

mc13xxx_lock.exit:                                ; preds = %if.then20.i, %do.body8.i
  %adcflags = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 9
  %13 = ptrtoint ptr %adcflags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %adcflags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end7, label %mc13xxx_lock.exit.out_crit_edge

mc13xxx_lock.exit.out_crit_edge:                  ; preds = %mc13xxx_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %mc13xxx_lock.exit
  %or = or i32 %14, 1
  %15 = ptrtoint ptr %adcflags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %adcflags, align 4
  %16 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc13xxx, align 4
  %call.i135 = call i32 @regmap_read(ptr noundef %17, i32 noundef 43, ptr noundef nonnull %old_adc0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool10.not = icmp eq i32 %call.i135, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end12:                                         ; preds = %if.end7
  %18 = and i32 %channel, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %if.end12.if.end25_crit_edge, label %if.else

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else:                                          ; preds = %if.end12
  %20 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %channel, label %if.end25.fold.split [
    i32 16, label %if.else.if.end25_crit_edge
    i32 17, label %if.then21
  ]

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25.fold.split:                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.end25:                                         ; preds = %if.end25.fold.split, %if.then21, %if.else.if.end25_crit_edge, %if.end12.if.end25_crit_edge
  %adc1.0 = phi i32 [ 3145729, %if.then21 ], [ 3145737, %if.end12.if.end25_crit_edge ], [ 3145729, %if.else.if.end25_crit_edge ], [ 3145729, %if.end25.fold.split ]
  %adc0.0 = phi i32 [ 229392, %if.then21 ], [ 229376, %if.end12.if.end25_crit_edge ], [ 229408, %if.else.if.end25_crit_edge ], [ 229376, %if.end25.fold.split ]
  %channel.addr.0 = phi i32 [ 7, %if.then21 ], [ %channel, %if.end12.if.end25_crit_edge ], [ 7, %if.else.if.end25_crit_edge ], [ %channel, %if.end25.fold.split ]
  %21 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %mode, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
    i32 3, label %sw.bb34
  ]

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %or27 = or i32 %adc1.0, 1024
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %old_adc0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old_adc0, align 4
  %and29 = and i32 %23, 28679
  %and31 = shl i32 %channel.addr.0, 5
  %shl = and i32 %and31, 224
  %or32 = or i32 %adc1.0, %shl
  %or33 = or i32 %or32, 2
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %old_adc0 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old_adc0, align 4
  %and35 = and i32 %25, 28679
  %or37 = or i32 %adc1.0, 1024
  br label %sw.epilog

sw.default:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_unlock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %cleanup.sink.split)) #8
          to label %cleanup [label %cleanup.sink.split], !srcloc !121

sw.epilog:                                        ; preds = %sw.bb34, %sw.bb28, %sw.bb
  %adc1.1 = phi i32 [ %or37, %sw.bb34 ], [ %or33, %sw.bb28 ], [ %or27, %sw.bb ]
  %and35.pn = phi i32 [ %and35, %sw.bb34 ], [ %and29, %sw.bb28 ], [ 13312, %sw.bb ]
  %adc0.1 = or i32 %and35.pn, %adc0.0
  %conv = zext i8 %ato to i32
  %shl38 = shl nuw nsw i32 %conv, 11
  %or39 = or i32 %adc1.1, %shl38
  %or42 = or i32 %or39, 524288
  %spec.select = select i1 %atox, i32 %or42, i32 %or39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug191, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then56)) #8
          to label %do.end60 [label %if.then56], !srcloc !121

if.then56:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %26 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev57, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug191, ptr noundef %27, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %sw.epilog
  %irq_data.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %28 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_data.i, align 4
  %call.i139 = call i32 @regmap_irq_get_virq(ptr noundef %29, i32 noundef 0) #8
  %dev1.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %30 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1.i, align 4
  %call2.i = call i32 @devm_request_threaded_irq(ptr noundef %31, i32 noundef %call.i139, ptr noundef null, ptr noundef nonnull @mc13xxx_handler_adcdone, i32 noundef 8192, ptr noundef nonnull @.str.9, ptr noundef nonnull %adcdone_data) #8
  %32 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mc13xxx, align 4
  %call.i140 = call i32 @regmap_write(ptr noundef %33, i32 noundef 43, i32 noundef %adc0.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %spec.select)
  %cmp.i142 = icmp ugt i32 %spec.select, 16777215
  br i1 %cmp.i142, label %do.end60.mc13xxx_reg_write.exit146_crit_edge, label %if.end.i144

do.end60.mc13xxx_reg_write.exit146_crit_edge:     ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc13xxx_reg_write.exit146

if.end.i144:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mc13xxx, align 4
  %call.i143 = call i32 @regmap_write(ptr noundef %35, i32 noundef 44, i32 noundef %spec.select) #8
  br label %mc13xxx_reg_write.exit146

mc13xxx_reg_write.exit146:                        ; preds = %if.end.i144, %do.end60.mc13xxx_reg_write.exit146_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_unlock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then.i148)) #8
          to label %mc13xxx_unlock.exit151 [label %if.then.i148], !srcloc !121

if.then.i148:                                     ; preds = %mc13xxx_reg_write.exit146
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1.i, align 4
  %38 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_unlock.__UNIQUE_ID_ddebug189, ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %38) #8
  br label %mc13xxx_unlock.exit151

mc13xxx_unlock.exit151:                           ; preds = %if.then.i148, %mc13xxx_reg_write.exit146
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %call65 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %done, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %spec.store.select = select i1 %tobool66.not, i32 -110, i32 %call65
  %call.i153 = call i32 @mutex_trylock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool.not.i154 = icmp eq i32 %call.i153, 0
  br i1 %tobool.not.i154, label %do.body.i155, label %mc13xxx_unlock.exit151.do.body8.i159_crit_edge

mc13xxx_unlock.exit151.do.body8.i159_crit_edge:   ; preds = %mc13xxx_unlock.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body8.i159

do.body.i155:                                     ; preds = %mc13xxx_unlock.exit151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then5.i157)) #8
          to label %do.end.i158 [label %if.then5.i157], !srcloc !121

if.then5.i157:                                    ; preds = %do.body.i155
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev1.i, align 4
  %41 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug187, ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %41) #8
  br label %do.end.i158

do.end.i158:                                      ; preds = %if.then5.i157, %do.body.i155
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  br label %do.body8.i159

do.body8.i159:                                    ; preds = %do.end.i158, %mc13xxx_unlock.exit151.do.body8.i159_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_lock.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %if.then20.i161)) #8
          to label %mc13xxx_lock.exit162 [label %if.then20.i161], !srcloc !121

if.then20.i161:                                   ; preds = %do.body8.i159
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1.i, align 4
  %44 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_lock.__UNIQUE_ID_ddebug188, ptr noundef %43, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %44) #8
  br label %mc13xxx_lock.exit162

mc13xxx_lock.exit162:                             ; preds = %if.then20.i161, %do.body8.i159
  %45 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irq_data.i, align 4
  %call.i164 = call i32 @regmap_irq_get_virq(ptr noundef %46, i32 noundef 0) #8
  %47 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1.i, align 4
  call void @devm_free_irq(ptr noundef %48, i32 noundef %call.i164, ptr noundef nonnull %adcdone_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp70 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp70, label %for.body.preheader, label %mc13xxx_lock.exit162.if.end79_crit_edge

mc13xxx_lock.exit162.if.end79_crit_edge:          ; preds = %mc13xxx_lock.exit162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.body.preheader:                               ; preds = %mc13xxx_lock.exit162
  %49 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mc13xxx, align 4
  %call.i166 = call i32 @regmap_read(ptr noundef %50, i32 noundef 45, ptr noundef %sample) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool76.not = icmp eq i32 %call.i166, 0
  br i1 %tobool76.not, label %for.cond, label %for.body.preheader.if.end79_crit_edge

for.body.preheader.if.end79_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.1 = getelementptr i32, ptr %sample, i32 1
  %51 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mc13xxx, align 4
  %call.i166.1 = call i32 @regmap_read(ptr noundef %52, i32 noundef 45, ptr noundef %arrayidx.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.1)
  %tobool76.not.1 = icmp eq i32 %call.i166.1, 0
  br i1 %tobool76.not.1, label %for.cond.1, label %for.cond.if.end79_crit_edge

for.cond.if.end79_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i32, ptr %sample, i32 2
  %53 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mc13xxx, align 4
  %call.i166.2 = call i32 @regmap_read(ptr noundef %54, i32 noundef 45, ptr noundef %arrayidx.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.2)
  %tobool76.not.2 = icmp eq i32 %call.i166.2, 0
  br i1 %tobool76.not.2, label %for.cond.2, label %for.cond.1.if.end79_crit_edge

for.cond.1.if.end79_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.3 = getelementptr i32, ptr %sample, i32 3
  %55 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mc13xxx, align 4
  %call.i166.3 = call i32 @regmap_read(ptr noundef %56, i32 noundef 45, ptr noundef %arrayidx.3) #8
  br label %if.end79

if.end79:                                         ; preds = %for.cond.2, %for.cond.1.if.end79_crit_edge, %for.cond.if.end79_crit_edge, %for.body.preheader.if.end79_crit_edge, %mc13xxx_lock.exit162.if.end79_crit_edge
  %ret.1 = phi i32 [ %spec.store.select, %mc13xxx_lock.exit162.if.end79_crit_edge ], [ %call.i166, %for.body.preheader.if.end79_crit_edge ], [ %call.i166.1, %for.cond.if.end79_crit_edge ], [ %call.i166.2, %for.cond.1.if.end79_crit_edge ], [ %call.i166.3, %for.cond.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp80 = icmp eq i32 %mode, 1
  br i1 %cmp80, label %if.then82, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.then82:                                        ; preds = %if.end79
  %57 = ptrtoint ptr %old_adc0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %old_adc0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %58)
  %cmp.i167 = icmp ugt i32 %58, 16777215
  br i1 %cmp.i167, label %if.then82.if.end84_crit_edge, label %if.end.i169

if.then82.if.end84_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84

if.end.i169:                                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %mc13xxx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mc13xxx, align 4
  %call.i168 = call i32 @regmap_write(ptr noundef %60, i32 noundef 43, i32 noundef %58) #8
  br label %if.end84

if.end84:                                         ; preds = %if.end.i169, %if.then82.if.end84_crit_edge, %if.end79.if.end84_crit_edge
  %61 = ptrtoint ptr %adcflags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %adcflags, align 4
  %and86 = and i32 %62, -2
  store i32 %and86, ptr %adcflags, align 4
  br label %out

out:                                              ; preds = %if.end84, %if.end7.out_crit_edge, %mc13xxx_lock.exit.out_crit_edge
  %ret.2 = phi i32 [ %call.i135, %if.end7.out_crit_edge ], [ %ret.1, %if.end84 ], [ -16, %mc13xxx_lock.exit.out_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mc13xxx_unlock.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mc13xxx_adc_do_conversion, %cleanup.sink.split)) #8
          to label %cleanup [label %cleanup.sink.split], !srcloc !121

cleanup.sink.split:                               ; preds = %out, %sw.default
  %retval.0.ph = phi i32 [ -22, %sw.default ], [ %ret.2, %out ]
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i172 = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %63 = ptrtoint ptr %dev.i172 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i172, align 4
  %65 = call ptr @llvm.returnaddress(i32 0) #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mc13xxx_unlock.__UNIQUE_ID_ddebug189, ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %65) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %out, %sw.default
  %retval.0 = phi i32 [ -22, %sw.default ], [ %ret.2, %out ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %adcdone_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old_adc0) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc13xxx_handler_adcdone(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %done = getelementptr inbounds %struct.mc13xxx_adcdone_data, ptr %data, i32 0, i32 1
  tail call void @complete_all(ptr noundef %done) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc13xxx_common_init(ptr noundef %dev) #0 align 64 {
entry:
  %revision = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %revision) #8
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %revision, align 4, !annotation !124
  %dev2 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev2, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 7, ptr noundef nonnull %revision) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %variant = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 4
  %print_revision = getelementptr inbounds %struct.mc13xxx_variant, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %print_revision to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %print_revision, align 4
  %12 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %revision, align 4
  call void %11(ptr noundef %3, i32 noundef %13) #8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 15, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0159 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %div155.lhs.trunc = trunc i32 %i.0159 to i8
  %div155.lhs.trunc.frozen = freeze i8 %div155.lhs.trunc
  %div155156 = udiv i8 %div155.lhs.trunc.frozen, 24
  %div155.zext = zext i8 %div155156 to i32
  %arrayidx = getelementptr %struct.mc13xxx, ptr %3, i32 0, i32 3, i32 %i.0159
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div155.zext, ptr %arrayidx, align 4
  %17 = mul i8 %div155156, 24
  %rem157158.decomposed = sub i8 %div155.lhs.trunc.frozen, %17
  %rem157.zext = zext i8 %rem157158.decomposed to i32
  %shl = shl nuw nsw i32 1, %rem157.zext
  %mask = getelementptr %struct.mc13xxx, ptr %3, i32 0, i32 3, i32 %i.0159, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %mask, align 4
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, 48
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %for.end.dev_name.exit_crit_edge ]
  %irq_chip = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %irq_chip to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %irq_chip, align 4
  %status_base = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 5
  %24 = ptrtoint ptr %status_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status_base, align 4
  %mask_base = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 6
  %25 = ptrtoint ptr %mask_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %mask_base, align 4
  %ack_base = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 8
  %26 = ptrtoint ptr %ack_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ack_base, align 4
  %irq_reg_stride = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 12
  %27 = ptrtoint ptr %irq_reg_stride to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %irq_reg_stride, align 4
  %init_ack_masked = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 13
  %28 = ptrtoint ptr %init_ack_masked to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load = load i16, ptr %init_ack_masked, align 4
  %bf.set19 = or i16 %bf.load, 20480
  store i16 %bf.set19, ptr %init_ack_masked, align 4
  %num_regs = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 14
  %29 = ptrtoint ptr %num_regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %num_regs, align 4
  %irqs21 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 3
  %irqs23 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 15
  %30 = ptrtoint ptr %irqs23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %irqs21, ptr %irqs23, align 4
  %num_irqs = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 4, i32 16
  %31 = ptrtoint ptr %num_irqs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 48, ptr %num_irqs, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 7
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 5
  %call26 = call i32 @regmap_add_irq_chip(ptr noundef %33, i32 noundef %35, i32 noundef 8192, i32 noundef 0, ptr noundef %irq_chip, ptr noundef %irq_data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %dev_name.exit
  %lock = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 6
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mc13xxx_common_init.__key) #8
  %36 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i146 = icmp eq ptr %39, null
  br i1 %tobool.not.i146, label %mc13xxx_probe_flags_dt.exit, label %if.end.i148

if.end.i148:                                      ; preds = %do.body
  %call.i.i147 = call ptr @of_find_property(ptr noundef nonnull %39, ptr noundef nonnull @.str.27, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i147, null
  br i1 %tobool.i.not.i, label %if.end.i148.if.end2.i_crit_edge, label %if.then1.i

if.end.i148.if.end2.i_crit_edge:                  ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %40 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %41, 4
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i148.if.end2.i_crit_edge
  %call.i26.i = call ptr @of_find_property(ptr noundef nonnull %39, ptr noundef nonnull @.str.28, ptr noundef null) #8
  %tobool.i27.not.i = icmp eq ptr %call.i26.i, null
  br i1 %tobool.i27.not.i, label %if.end2.i.if.end7.i_crit_edge, label %if.then4.i

if.end2.i.if.end7.i_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags5.i = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %42 = ptrtoint ptr %flags5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags5.i, align 4
  %or6.i = or i32 %43, 2
  store i32 %or6.i, ptr %flags5.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then4.i, %if.end2.i.if.end7.i_crit_edge
  %call.i28.i = call ptr @of_find_property(ptr noundef nonnull %39, ptr noundef nonnull @.str.29, ptr noundef null) #8
  %tobool.i29.not.i = icmp eq ptr %call.i28.i, null
  br i1 %tobool.i29.not.i, label %if.end7.i.if.end12.i_crit_edge, label %if.then9.i

if.end7.i.if.end12.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags10.i = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags10.i, align 4
  %or11.i = or i32 %45, 8
  store i32 %or11.i, ptr %flags10.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end12.i_crit_edge
  %call.i30.i = call ptr @of_find_property(ptr noundef nonnull %39, ptr noundef nonnull @.str.30, ptr noundef null) #8
  %tobool.i31.not.i = icmp eq ptr %call.i30.i, null
  br i1 %tobool.i31.not.i, label %if.end12.i.mc13xxx_probe_flags_dt.exit.thread_crit_edge, label %if.then14.i

if.end12.i.mc13xxx_probe_flags_dt.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc13xxx_probe_flags_dt.exit.thread

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags15.i = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %46 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags15.i, align 4
  %or16.i = or i32 %47, 1
  store i32 %or16.i, ptr %flags15.i, align 4
  br label %mc13xxx_probe_flags_dt.exit.thread

mc13xxx_probe_flags_dt.exit.thread:               ; preds = %if.then14.i, %if.end12.i.mc13xxx_probe_flags_dt.exit.thread_crit_edge
  %tobool32.not152 = icmp eq ptr %1, null
  br i1 %tobool32.not152, label %mc13xxx_probe_flags_dt.exit.thread.if.else_crit_edge, label %mc13xxx_probe_flags_dt.exit.thread.if.then37_crit_edge

mc13xxx_probe_flags_dt.exit.thread.if.then37_crit_edge: ; preds = %mc13xxx_probe_flags_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

mc13xxx_probe_flags_dt.exit.thread.if.else_crit_edge: ; preds = %mc13xxx_probe_flags_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

mc13xxx_probe_flags_dt.exit:                      ; preds = %do.body
  %tobool32.not = icmp eq ptr %1, null
  br i1 %tobool32.not, label %mc13xxx_probe_flags_dt.exit.if.else_crit_edge, label %if.then33

mc13xxx_probe_flags_dt.exit.if.else_crit_edge:    ; preds = %mc13xxx_probe_flags_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then33:                                        ; preds = %mc13xxx_probe_flags_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %1, align 4
  %flags34 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %50 = ptrtoint ptr %flags34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %flags34, align 4
  br label %if.then37

if.then37:                                        ; preds = %if.then33, %mc13xxx_probe_flags_dt.exit.thread.if.then37_crit_edge
  %regulators = getelementptr inbounds %struct.mc13xxx_platform_data, ptr %1, i32 0, i32 1
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef %regulators, i32 noundef 8)
  %leds = getelementptr inbounds %struct.mc13xxx_platform_data, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %leds to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %leds, align 4
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef %52, i32 noundef 32)
  %buttons = getelementptr inbounds %struct.mc13xxx_platform_data, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %buttons to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buttons, align 4
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef %54, i32 noundef 24)
  %flags41 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %55 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags41, align 4
  %and = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then37.if.end45_crit_edge, label %if.then43

if.then37.if.end45_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  %codec = getelementptr inbounds %struct.mc13xxx_platform_data, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %codec to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %codec, align 4
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef %58, i32 noundef 8)
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.then37.if.end45_crit_edge
  %59 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags41, align 4
  %and47 = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end45.if.end67_crit_edge, label %if.then49

if.end45.if.end67_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %touch = getelementptr inbounds %struct.mc13xxx_platform_data, ptr %1, i32 0, i32 4
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef %touch, i32 noundef 2)
  br label %if.end67

if.else:                                          ; preds = %mc13xxx_probe_flags_dt.exit.if.else_crit_edge, %mc13xxx_probe_flags_dt.exit.thread.if.else_crit_edge
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0) #8
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0) #8
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0) #8
  %flags55 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %61 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags55, align 4
  %and56 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.else.if.end60_crit_edge, label %if.then58

if.else.if.end60_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.16, ptr noundef null, i32 noundef 0) #8
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.else.if.end60_crit_edge
  %63 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags55, align 4
  %and62 = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end60.if.end67_crit_edge, label %if.then64

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60.if.end67_crit_edge, %if.then49, %if.end45.if.end67_crit_edge
  %flags68 = getelementptr inbounds %struct.mc13xxx, ptr %3, i32 0, i32 8
  %65 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags68, align 4
  %and69 = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.if.end73_crit_edge, label %if.then71

if.end67.if.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end67.if.end73_crit_edge
  %67 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags68, align 4
  %and75 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.cleanup_crit_edge, label %if.then77

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @mc13xxx_add_subdevice_pdata(ptr noundef %3, ptr noundef nonnull @.str.19, ptr noundef null, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %if.end73.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call26, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then77 ], [ 0, %if.end73.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %revision) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mc13xxx_add_subdevice_pdata(ptr nocapture noundef readonly %mc13xxx, ptr nocapture noundef readonly %format, ptr noundef %pdata, i32 noundef %pdata_size) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [30 x i8], align 1
  %cell = alloca %struct.mfd_cell, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %buf) #8
  %variant.i = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 2
  %0 = call ptr @memset(ptr %buf, i32 255, i32 30)
  %1 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %variant.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cell) #8
  %5 = call ptr @memset(ptr %cell, i32 0, i32 88)
  %platform_data = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pdata, ptr %platform_data, align 4
  %pdata_size2 = getelementptr inbounds %struct.mfd_cell, ptr %cell, i32 0, i32 8
  %7 = ptrtoint ptr %pdata_size2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %pdata_size, ptr %pdata_size2, align 8
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 30, ptr noundef %format, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %call3)
  %cmp = icmp ugt i32 %call3, 30
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call i32 @strlen(ptr noundef nonnull %buf) #12
  %add = add i32 %call6, 1
  %call7 = call ptr @kmemdup(ptr noundef nonnull %buf, i32 noundef %add, i32 noundef 3264) #8
  %8 = ptrtoint ptr %cell to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %cell, align 8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %mc13xxx, i32 0, i32 5
  %11 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_data, align 4
  %call12 = call ptr @regmap_irq_get_domain(ptr noundef %12) #8
  %call13 = call i32 @mfd_add_devices(ptr noundef %10, i32 noundef -1, ptr noundef nonnull %cell, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %call12) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cell) #8
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc13xxx_common_exit(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @mfd_remove_devices(ptr noundef %dev) #8
  %irq = getelementptr inbounds %struct.mc13xxx, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.mc13xxx, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %3, ptr noundef %5) #8
  %lock = getelementptr inbounds %struct.mc13xxx, ptr %1, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_irq_get_domain(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !58, !59, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/mc13xxx-core.c", i32 51, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mc13xxx_lock.__UNIQUE_ID_ddebug187, !1, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mfd/mc13xxx-core.c", i32 56, i32 2}
!8 = !{ptr @mc13xxx_lock.__UNIQUE_ID_ddebug188, !7, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!9 = !{ptr @__ksymtab_mc13xxx_lock, !10, !"__ksymtab_mc13xxx_lock", i1 false, i1 false}
!10 = !{!"../drivers/mfd/mc13xxx-core.c", i32 59, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/mc13xxx-core.c", i32 63, i32 2}
!13 = !{ptr @mc13xxx_unlock.__UNIQUE_ID_ddebug189, !12, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!14 = !{ptr @__ksymtab_mc13xxx_unlock, !15, !"__ksymtab_mc13xxx_unlock", i1 false, i1 false}
!15 = !{!"../drivers/mfd/mc13xxx-core.c", i32 67, i32 1}
!16 = !{ptr @__ksymtab_mc13xxx_reg_read, !17, !"__ksymtab_mc13xxx_reg_read", i1 false, i1 false}
!17 = !{!"../drivers/mfd/mc13xxx-core.c", i32 78, i32 1}
!18 = !{ptr @__ksymtab_mc13xxx_reg_write, !19, !"__ksymtab_mc13xxx_reg_write", i1 false, i1 false}
!19 = !{!"../drivers/mfd/mc13xxx-core.c", i32 89, i32 1}
!20 = !{ptr @__ksymtab_mc13xxx_reg_rmw, !21, !"__ksymtab_mc13xxx_reg_rmw", i1 false, i1 false}
!21 = !{!"../drivers/mfd/mc13xxx-core.c", i32 100, i32 1}
!22 = !{ptr @__ksymtab_mc13xxx_irq_mask, !23, !"__ksymtab_mc13xxx_irq_mask", i1 false, i1 false}
!23 = !{!"../drivers/mfd/mc13xxx-core.c", i32 110, i32 1}
!24 = !{ptr @__ksymtab_mc13xxx_irq_unmask, !25, !"__ksymtab_mc13xxx_irq_unmask", i1 false, i1 false}
!25 = !{!"../drivers/mfd/mc13xxx-core.c", i32 120, i32 1}
!26 = !{ptr @__ksymtab_mc13xxx_irq_status, !27, !"__ksymtab_mc13xxx_irq_status", i1 false, i1 false}
!27 = !{!"../drivers/mfd/mc13xxx-core.c", i32 155, i32 1}
!28 = !{ptr @__ksymtab_mc13xxx_irq_request, !29, !"__ksymtab_mc13xxx_irq_request", i1 false, i1 false}
!29 = !{!"../drivers/mfd/mc13xxx-core.c", i32 165, i32 1}
!30 = !{ptr @__ksymtab_mc13xxx_irq_free, !31, !"__ksymtab_mc13xxx_irq_free", i1 false, i1 false}
!31 = !{!"../drivers/mfd/mc13xxx-core.c", i32 175, i32 1}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mfd/mc13xxx-core.c", i32 203, i32 10}
!34 = !{ptr @mc13xxx_variant_mc13783, !35, !"mc13xxx_variant_mc13783", i1 false, i1 false}
!35 = !{!"../drivers/mfd/mc13xxx-core.c", i32 202, i32 24}
!36 = !{ptr @__ksymtab_mc13xxx_variant_mc13783, !37, !"__ksymtab_mc13xxx_variant_mc13783", i1 false, i1 false}
!37 = !{!"../drivers/mfd/mc13xxx-core.c", i32 206, i32 1}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mfd/mc13xxx-core.c", i32 209, i32 10}
!40 = !{ptr @mc13xxx_variant_mc13892, !41, !"mc13xxx_variant_mc13892", i1 false, i1 false}
!41 = !{!"../drivers/mfd/mc13xxx-core.c", i32 208, i32 24}
!42 = !{ptr @__ksymtab_mc13xxx_variant_mc13892, !43, !"__ksymtab_mc13xxx_variant_mc13892", i1 false, i1 false}
!43 = !{!"../drivers/mfd/mc13xxx-core.c", i32 212, i32 1}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/mc13xxx-core.c", i32 215, i32 10}
!46 = !{ptr @mc13xxx_variant_mc34708, !47, !"mc13xxx_variant_mc34708", i1 false, i1 false}
!47 = !{!"../drivers/mfd/mc13xxx-core.c", i32 214, i32 24}
!48 = !{ptr @__ksymtab_mc13xxx_variant_mc34708, !49, !"__ksymtab_mc13xxx_variant_mc34708", i1 false, i1 false}
!49 = !{!"../drivers/mfd/mc13xxx-core.c", i32 218, i32 1}
!50 = !{ptr @__ksymtab_mc13xxx_get_flags, !51, !"__ksymtab_mc13xxx_get_flags", i1 false, i1 false}
!51 = !{!"../drivers/mfd/mc13xxx-core.c", i32 229, i32 1}
!52 = !{ptr @.str.9, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mfd/mc13xxx-core.c", i32 263, i32 2}
!54 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug190, !53, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mfd/mc13xxx-core.c", i32 325, i32 2}
!58 = !{ptr @mc13xxx_adc_do_conversion.__UNIQUE_ID_ddebug191, !57, !"__UNIQUE_ID_ddebug191", i1 false, i1 false}
!59 = !{ptr @__ksymtab_mc13xxx_adc_do_conversion, !60, !"__ksymtab_mc13xxx_adc_do_conversion", i1 false, i1 false}
!60 = !{!"../drivers/mfd/mc13xxx-core.c", i32 361, i32 1}
!61 = !{ptr @mc13xxx_common_init.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/mfd/mc13xxx-core.c", i32 461, i32 2}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.13, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mfd/mc13xxx-core.c", i32 467, i32 40}
!66 = !{ptr @.str.14, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mfd/mc13xxx-core.c", i32 469, i32 40}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mfd/mc13xxx-core.c", i32 471, i32 40}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mfd/mc13xxx-core.c", i32 474, i32 41}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mfd/mc13xxx-core.c", i32 477, i32 41}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mfd/mc13xxx-core.c", i32 490, i32 34}
!76 = !{ptr @.str.19, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mfd/mc13xxx-core.c", i32 493, i32 34}
!78 = !{ptr @__ksymtab_mc13xxx_common_init, !79, !"__ksymtab_mc13xxx_common_init", i1 false, i1 false}
!79 = !{!"../drivers/mfd/mc13xxx-core.c", i32 497, i32 1}
!80 = !{ptr @__ksymtab_mc13xxx_common_exit, !81, !"__ksymtab_mc13xxx_common_exit", i1 false, i1 false}
!81 = !{!"../drivers/mfd/mc13xxx-core.c", i32 507, i32 1}
!82 = !{ptr @__UNIQUE_ID_description192, !83, !"__UNIQUE_ID_description192", i1 false, i1 false}
!83 = !{!"../drivers/mfd/mc13xxx-core.c", i32 509, i32 1}
!84 = !{ptr @__UNIQUE_ID_author193, !85, !"__UNIQUE_ID_author193", i1 false, i1 false}
!85 = !{!"../drivers/mfd/mc13xxx-core.c", i32 510, i32 1}
!86 = !{ptr @__UNIQUE_ID_file194, !87, !"__UNIQUE_ID_file194", i1 false, i1 false}
!87 = !{!"../drivers/mfd/mc13xxx-core.c", i32 511, i32 1}
!88 = !{ptr @__UNIQUE_ID_license195, !87, !"__UNIQUE_ID_license195", i1 false, i1 false}
!89 = !{ptr @.str.20, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mfd/mc13xxx-core.c", i32 180, i32 2}
!91 = !{ptr @.str.21, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mc13xxx_print_revision._entry, !90, !"_entry", i1 false, i1 false}
!95 = !{ptr @mc13xxx_print_revision._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mfd/mc13xxx-core.c", i32 193, i32 2}
!98 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mc34708_print_revision._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mc34708_print_revision._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @init_completion.__key, !102, !"__key", i1 false, i1 false}
!102 = !{!"../include/linux/completion.h", i32 87, i32 2}
!103 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mfd/mc13xxx-core.c", i32 399, i32 32}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mfd/mc13xxx-core.c", i32 402, i32 32}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mfd/mc13xxx-core.c", i32 405, i32 32}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mfd/mc13xxx-core.c", i32 408, i32 32}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148964748, i64 2148964753, i64 2148964766, i64 2148964810, i64 2148964844, i64 2148964865}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{i64 2153247829, i64 2153248319, i64 2153247866, i64 2153247922, i64 2153247956, i64 2153247980, i64 2153248021, i64 2153248042, i64 2153248070, i64 2153248104}
!124 = !{!"auto-init"}
