; ModuleID = '/llk/IR_all_yes/drivers/bcma/core.c_pt.bc'
source_filename = "../drivers/bcma/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_core_is_enabled\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_is_enabled\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_is_enabled\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_core_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_disable\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_disable\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_core_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_enable\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_enable\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_core_set_clockmode\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_set_clockmode\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_set_clockmode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_set_clockmode:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_set_clockmode\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_set_clockmode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_core_pll_ctl\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_pll_ctl\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_pll_ctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_pll_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_pll_ctl\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_pll_ctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bcma_core_dma_translation\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_core_dma_translation\09\09\09\09"
module asm "\09.long\09__crc_bcma_core_dma_translation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_core_dma_translation:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_core_dma_translation\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_core_dma_translation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bcma_drv_cc = type { ptr, i32, i32, i32, i8, i16, %struct.bcma_chipcommon_pmu, %struct.bcma_pflash, %struct.bcma_sflash, %struct.bcma_nflash, i32, [4 x %struct.bcma_serial_port], i32, ptr, %struct.spinlock, %struct.gpio_chip }
%struct.bcma_chipcommon_pmu = type { ptr, i8, i32 }
%struct.bcma_pflash = type { i8 }
%struct.bcma_sflash = type { i8, i32, i16, i32 }
%struct.bcma_nflash = type { i8, i8 }
%struct.bcma_serial_port = type { ptr, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.69, %struct.anon.70, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.69 = type { i8, i8, i8, i8 }
%struct.anon.70 = type { %struct.anon.71, %struct.anon.72 }
%struct.anon.71 = type { i8, i8, i8, i8, i8 }
%struct.anon.72 = type { i8, i8, i8, i8, i8 }
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@__kstrtab_bcma_core_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_is_enabled to i32), ptr @__kstrtab_bcma_core_is_enabled, ptr @__kstrtabns_bcma_core_is_enabled }, section "___ksymtab_gpl+bcma_core_is_enabled", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_bcma_core_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_disable to i32), ptr @__kstrtab_bcma_core_disable, ptr @__kstrtabns_bcma_core_disable }, section "___ksymtab_gpl+bcma_core_disable", align 4
@__kstrtab_bcma_core_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_enable to i32), ptr @__kstrtab_bcma_core_enable, ptr @__kstrtabns_bcma_core_enable }, section "___ksymtab_gpl+bcma_core_enable", align 4
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/bcma/core.c\00", [44 x i8] zeroinitializer }, align 32
@bcma_core_set_clockmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bus%d: HT force timeout\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcma_core_set_clockmode\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_core_set_clockmode._entry_ptr = internal global ptr @bcma_core_set_clockmode._entry, section ".printk_index", align 4
@__kstrtab_bcma_core_set_clockmode = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_set_clockmode = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_set_clockmode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_set_clockmode to i32), ptr @__kstrtab_bcma_core_set_clockmode, ptr @__kstrtabns_bcma_core_set_clockmode }, section "___ksymtab_gpl+bcma_core_set_clockmode", align 4
@bcma_core_pll_ctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bus%d: PLL enable timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcma_core_pll_ctl\00", [46 x i8] zeroinitializer }, align 32
@bcma_core_pll_ctl._entry_ptr = internal global ptr @bcma_core_pll_ctl._entry, section ".printk_index", align 4
@__kstrtab_bcma_core_pll_ctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_pll_ctl = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_pll_ctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_pll_ctl to i32), ptr @__kstrtab_bcma_core_pll_ctl, ptr @__kstrtabns_bcma_core_pll_ctl }, section "___ksymtab_gpl+bcma_core_pll_ctl", align 4
@bcma_core_dma_translation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bus%d: DMA translation unknown for host %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcma_core_dma_translation\00", [38 x i8] zeroinitializer }, align 32
@bcma_core_dma_translation._entry_ptr = internal global ptr @bcma_core_dma_translation._entry, section ".printk_index", align 4
@__kstrtab_bcma_core_dma_translation = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_core_dma_translation = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_core_dma_translation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_core_dma_translation to i32), ptr @__kstrtab_bcma_core_dma_translation, ptr @__kstrtabns_bcma_core_dma_translation }, section "___ksymtab+bcma_core_dma_translation", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcma_core_wait_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 26, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bus%d: Timeout waiting for register 0x%04X!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcma_core_wait_value\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcma_core_wait_value._entry_ptr = internal global ptr @bcma_core_wait_value._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2066, i64 2080]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 83, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 100, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 127, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 151, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [23 x i8] c"../drivers/bcma/core.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 26, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_bcma_core_disable, ptr @__ksymtab_bcma_core_dma_translation, ptr @__ksymtab_bcma_core_enable, ptr @__ksymtab_bcma_core_is_enabled, ptr @__ksymtab_bcma_core_pll_ctl, ptr @__ksymtab_bcma_core_set_clockmode, ptr @bcma_core_dma_translation._entry, ptr @bcma_core_dma_translation._entry_ptr, ptr @bcma_core_pll_ctl._entry, ptr @bcma_core_pll_ctl._entry_ptr, ptr @bcma_core_set_clockmode._entry, ptr @bcma_core_set_clockmode._entry_ptr, ptr @bcma_core_wait_value._entry, ptr @bcma_core_wait_value._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_set_clockmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_pll_ctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_dma_translation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_wait_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bcma_core_is_enabled(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %core, i16 noundef zeroext 1032) #3
  %and = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp.not = icmp eq i32 %and, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %ops.i6 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i6, align 4
  %aread32.i7 = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %aread32.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aread32.i7, align 4
  %call.i8 = tail call i32 %11(ptr noundef %core, i16 noundef zeroext 2048) #3
  %and2 = and i32 %call.i8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_disable(ptr noundef %core, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %5(ptr noundef %core, i16 noundef zeroext 2048) #3
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -300, %6
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %if.end
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i.i, align 4
  %aread32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %aread32.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aread32.i.i, align 4
  %call.i.i = tail call i32 %12(ptr noundef %core, i16 noundef zeroext 2052) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %do.body.i.bcma_core_wait_value.exit_crit_edge, label %do.end.i

do.body.i.bcma_core_wait_value.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %bcma_core_wait_value.exit

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !46
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %14
  %cmp9.i = icmp slt i32 %sub.i, 0
  br i1 %cmp9.i, label %do.end.i.do.body.i_crit_edge, label %do.end13.i

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.end13.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.9, i32 noundef %conv.i, i32 noundef 2052) #6
  br label %bcma_core_wait_value.exit

bcma_core_wait_value.exit:                        ; preds = %do.end13.i, %do.body.i.bcma_core_wait_value.exit_crit_edge
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 8
  %ops.i9 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i9, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %awrite32.i, align 4
  tail call void %26(ptr noundef %core, i16 noundef zeroext 2048, i32 noundef 1) #3
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 8
  %ops.i10 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i10, align 4
  %aread32.i11 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %aread32.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aread32.i11, align 4
  %call.i12 = tail call i32 %32(ptr noundef %core, i16 noundef zeroext 2048) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #3
  %34 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %core, align 8
  %ops.i13 = getelementptr inbounds %struct.bcma_bus, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i13, align 4
  %awrite32.i14 = getelementptr inbounds %struct.bcma_host_ops, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %awrite32.i14 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %awrite32.i14, align 4
  tail call void %39(ptr noundef %core, i16 noundef zeroext 1032, i32 noundef %flags) #3
  %40 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %core, align 8
  %ops.i15 = getelementptr inbounds %struct.bcma_bus, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i15, align 4
  %aread32.i16 = getelementptr inbounds %struct.bcma_host_ops, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %aread32.i16 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aread32.i16, align 4
  %call.i17 = tail call i32 %45(ptr noundef %core, i16 noundef zeroext 1032) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 2147480) #3
  br label %return

return:                                           ; preds = %bcma_core_wait_value.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_core_enable(ptr noundef %core, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bcma_core_disable(ptr noundef %core, i32 noundef %flags)
  %or = or i32 %flags, 3
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %awrite32.i, align 4
  tail call void %5(ptr noundef %core, i16 noundef zeroext 1032, i32 noundef %or) #3
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %ops.i12 = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i12, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %11(ptr noundef %core, i16 noundef zeroext 1032) #3
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %ops.i13 = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i13, align 4
  %awrite32.i14 = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %awrite32.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %awrite32.i14, align 4
  tail call void %17(ptr noundef %core, i16 noundef zeroext 2048, i32 noundef 0) #3
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 8
  %ops.i15 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %ops.i15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i15, align 4
  %aread32.i16 = getelementptr inbounds %struct.bcma_host_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %aread32.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %aread32.i16, align 4
  %call.i17 = tail call i32 %23(ptr noundef %core, i16 noundef zeroext 2048) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #3
  %or2 = or i32 %flags, 1
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 8
  %ops.i18 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i18, align 4
  %awrite32.i19 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %awrite32.i19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %awrite32.i19, align 4
  tail call void %30(ptr noundef %core, i16 noundef zeroext 1032, i32 noundef %or2) #3
  %31 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core, align 8
  %ops.i20 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i20, align 4
  %aread32.i21 = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %aread32.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aread32.i21, align 4
  %call.i22 = tail call i32 %36(ptr noundef %core, i16 noundef zeroext 1032) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_set_clockmode(ptr noundef %core, i32 noundef %clkmode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %id1 = getelementptr inbounds %struct.bcma_device, ptr %core, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %id1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %id1, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %do.end.critedge [
    i16 2048, label %entry.if.end_crit_edge
    i16 2080, label %entry.if.end_crit_edge65
    i16 2066, label %entry.if.end_crit_edge66
  ]

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end.critedge:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end.critedge, %entry.if.end_crit_edge, %entry.if.end_crit_edge65, %entry.if.end_crit_edge66
  %3 = zext i32 %clkmode to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %clkmode, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb45
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %core, i16 noundef zeroext 480) #3
  %or.i = or i32 %call.i.i, 2
  %10 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i1.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %core, i16 noundef zeroext 480, i32 noundef %or.i) #3
  tail call void @usleep_range_state(i32 noundef 64, i32 noundef 300, i32 noundef 2) #3
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %sw.bb
  %i.064 = phi i16 [ 0, %sw.bb ], [ %inc, %if.end36.for.body_crit_edge ]
  %16 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %21(ptr noundef %core, i16 noundef zeroext 480) #3
  %and = and i32 %call.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end36, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end36:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #3
  %inc = add nuw nsw i16 %i.064, 1
  %cmp32 = icmp ult i16 %i.064, 1499
  br i1 %cmp32, label %if.end36.for.body_crit_edge, label %do.end41

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 11
  %27 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num, align 1
  %conv43 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.1, i32 noundef %conv43) #6
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %29 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core, align 8
  %ops.i.i56 = getelementptr inbounds %struct.bcma_bus, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %ops.i.i56 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i56, align 4
  %read32.i.i57 = getelementptr inbounds %struct.bcma_host_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %read32.i.i57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read32.i.i57, align 4
  %call.i.i58 = tail call i32 %34(ptr noundef %core, i16 noundef zeroext 480) #3
  %or.i59 = or i32 %call.i.i58, -3
  %35 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core, align 8
  %ops.i1.i60 = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %ops.i1.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ops.i1.i60, align 4
  %write32.i.i61 = getelementptr inbounds %struct.bcma_host_ops, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %write32.i.i61 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write32.i.i61, align 4
  tail call void %40(ptr noundef %core, i16 noundef zeroext 480, i32 noundef %or.i59) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb45, %do.end41, %for.body.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_pll_ctl(ptr noundef %core, i32 noundef %req, i32 noundef %status, i1 noundef zeroext %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %req, -1793
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !48

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and21 = and i32 %status, -117440513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !48

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #3
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  br i1 %on, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end44
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %core, i16 noundef zeroext 480) #3
  %or.i = or i32 %call.i.i, %req
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 8
  %ops.i1.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i1.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write32.i.i, align 4
  tail call void %11(ptr noundef %core, i16 noundef zeroext 480, i32 noundef %or.i) #3
  br label %for.body

for.body:                                         ; preds = %if.end59.for.body_crit_edge, %if.then53
  %i.093 = phi i16 [ 0, %if.then53 ], [ %inc, %if.end59.for.body_crit_edge ]
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %17(ptr noundef %core, i16 noundef zeroext 480) #3
  %and55 = and i32 %call.i, %status
  call void @__sanitizer_cov_trace_cmp4(i32 %and55, i32 %status)
  %cmp56 = icmp eq i32 %and55, %status
  br i1 %cmp56, label %for.body.if.end69_crit_edge, label %if.end59

for.body.if.end69_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

if.end59:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 2147480) #3
  %inc = add nuw nsw i16 %i.093, 1
  %cmp = icmp ult i16 %i.093, 9999
  br i1 %cmp, label %if.end59.for.body_crit_edge, label %do.end64

if.end59.for.body_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

do.end64:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 11
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num, align 1
  %conv66 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5, i32 noundef %conv66) #6
  br label %if.end69

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i32 %req, -1
  %25 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %core, align 8
  %ops.i.i83 = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i.i83 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i.i83, align 4
  %read32.i.i84 = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read32.i.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i.i84, align 4
  %call.i.i85 = tail call i32 %30(ptr noundef %core, i16 noundef zeroext 480) #3
  %and.i = and i32 %call.i.i85, %neg
  %31 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %core, align 8
  %ops.i1.i86 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i1.i86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i1.i86, align 4
  %write32.i.i87 = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write32.i.i87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i.i87, align 4
  tail call void %36(ptr noundef %core, i16 noundef zeroext 480, i32 noundef %and.i) #3
  %37 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core, align 8
  %ops.i88 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i88, align 4
  %read32.i89 = getelementptr inbounds %struct.bcma_host_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %read32.i89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read32.i89, align 4
  %call.i90 = tail call i32 %42(ptr noundef %core, i16 noundef zeroext 480) #3
  br label %if.end69

if.end69:                                         ; preds = %if.else, %do.end64, %for.body.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_core_dma_translation(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hosttype, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %3, label %do.end [
    i32 2, label %entry.return_crit_edge
    i32 0, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aread32.i, align 4
  %call.i = tail call i32 %8(ptr noundef %core, i16 noundef zeroext 1280) #3
  %and = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1073741824, i32 -2147483648
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num, align 1
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %3) #6
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %entry.return_crit_edge ], [ %., %sw.bb1 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_bcma_core_is_enabled, !1, !"__ksymtab_bcma_core_is_enabled", i1 false, i1 false}
!1 = !{!"../drivers/bcma/core.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_bcma_core_disable, !3, !"__ksymtab_bcma_core_disable", i1 false, i1 false}
!3 = !{!"../drivers/bcma/core.c", i32 57, i32 1}
!4 = !{ptr @__ksymtab_bcma_core_enable, !5, !"__ksymtab_bcma_core_enable", i1 false, i1 false}
!5 = !{!"../drivers/bcma/core.c", i32 76, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/bcma/core.c", i32 83, i32 2}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/bcma/core.c", i32 100, i32 4}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @bcma_core_set_clockmode._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @bcma_core_set_clockmode._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_bcma_core_set_clockmode, !16, !"__ksymtab_bcma_core_set_clockmode", i1 false, i1 false}
!16 = !{!"../drivers/bcma/core.c", i32 107, i32 1}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/bcma/core.c", i32 127, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bcma_core_pll_ctl._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bcma_core_pll_ctl._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_bcma_core_pll_ctl, !23, !"__ksymtab_bcma_core_pll_ctl", i1 false, i1 false}
!23 = !{!"../drivers/bcma/core.c", i32 138, i32 1}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/bcma/core.c", i32 151, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @bcma_core_dma_translation._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcma_core_dma_translation._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_bcma_core_dma_translation, !30, !"__ksymtab_bcma_core_dma_translation", i1 false, i1 false}
!30 = !{!"../drivers/bcma/core.c", i32 156, i32 1}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bcma/core.c", i32 26, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bcma_core_wait_value._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @bcma_core_wait_value._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2154863097}
!47 = !{i64 2154862939}
!48 = !{!"branch_weights", i32 2000, i32 1}
