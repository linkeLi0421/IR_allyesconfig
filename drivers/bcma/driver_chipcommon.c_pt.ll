; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_chipcommon.c_pt.bc'
source_filename = "../drivers/bcma/driver_chipcommon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bcma_chipco_get_alp_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_chipco_get_alp_clock\09\09\09\09"
module asm "\09.long\09__crc_bcma_chipco_get_alp_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_get_alp_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_get_alp_clock\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_get_alp_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_chipco_gpio_out\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_chipco_gpio_out\09\09\09\09"
module asm "\09.long\09__crc_bcma_chipco_gpio_out\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_out:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_out\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_chipco_gpio_outen\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_chipco_gpio_outen\09\09\09\09"
module asm "\09.long\09__crc_bcma_chipco_gpio_outen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_outen:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_outen\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_outen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bcma_chipco_gpio_control\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_chipco_gpio_control\09\09\09\09"
module asm "\09.long\09__crc_bcma_chipco_gpio_control\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_chipco_gpio_control\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_chipco_gpio_control:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.67, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.bcm47xx_wdt = type { ptr, ptr, i32, ptr, %struct.watchdog_device, %struct.timer_list, %struct.atomic_t }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.bcma_bus = type { ptr, ptr, ptr, i32, i8, ptr, %struct.bcma_chipinfo, %struct.bcma_boardinfo, ptr, %struct.list_head, i8, i8, %struct.bcma_drv_cc, %struct.bcma_drv_cc_b, [2 x %struct.bcma_drv_pci], %struct.bcma_drv_pcie2, %struct.bcma_drv_mips, %struct.bcma_drv_gmac_cmn, %struct.ssb_sprom }
%struct.bcma_chipinfo = type { i16, i8, i8 }
%struct.bcma_boardinfo = type { i16, i16 }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.73, %struct.anon.74, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.anon.74 = type { %struct.anon.75, %struct.anon.76 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
%struct.anon.76 = type { i8, i8, i8, i8, i8 }
%struct.bcma_device = type { ptr, %struct.bcma_device_id, %struct.device, ptr, i32, i8, i8, i8, i32, [8 x i32], i32, ptr, ptr, ptr, %struct.list_head }
%struct.bcma_device_id = type { i16, i16, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_bcma_chipco_get_alp_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_get_alp_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_get_alp_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_get_alp_clock to i32), ptr @__kstrtab_bcma_chipco_get_alp_clock, ptr @__kstrtabns_bcma_chipco_get_alp_clock }, section "___ksymtab_gpl+bcma_chipco_get_alp_clock", align 4
@bcma_chipco_watchdog_register.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bcma\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bcma_chipco_watchdog_register\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/bcma/driver_chipcommon.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No watchdog on 53573A0 / 53573A1\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bcma: No watchdog on 53573A0 / 53573A1\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bcm47xx-wdt\00", [20 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_early_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&cc->gpio_lock\00", [17 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 218, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bus%d: Power control not implemented!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcma_core_chipcommon_init\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_init._entry_ptr = internal global ptr @bcma_core_chipcommon_init._entry, section ".printk_index", align 4
@__kstrtab_bcma_chipco_gpio_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_out = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_out to i32), ptr @__kstrtab_bcma_chipco_gpio_out, ptr @__kstrtabns_bcma_chipco_gpio_out }, section "___ksymtab_gpl+bcma_chipco_gpio_out", align 4
@__kstrtab_bcma_chipco_gpio_outen = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_outen = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_outen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_outen to i32), ptr @__kstrtab_bcma_chipco_gpio_outen, ptr @__kstrtabns_bcma_chipco_gpio_outen }, section "___ksymtab_gpl+bcma_chipco_gpio_outen", align 4
@__kstrtab_bcma_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_chipco_gpio_control = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_chipco_gpio_control = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_chipco_gpio_control to i32), ptr @__kstrtab_bcma_chipco_gpio_control, ptr @__kstrtabns_bcma_chipco_gpio_control }, section "___ksymtab_gpl+bcma_chipco_gpio_control", align 4
@bcma_chipco_serial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 405, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bus%d: serial not supported on this device ccrev: 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bcma_chipco_serial_init\00", [40 x i8] zeroinitializer }, align 32
@bcma_chipco_serial_init._entry_ptr = internal global ptr @bcma_chipco_serial_init._entry, section ".printk_index", align 4
@bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 37, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bcma_core_chipcommon_flash_detect\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bus%d: Found serial flash\0A\00", [37 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bus%d: Found parallel flash\0A\00", [35 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_flash_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 157, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bus%d: Flash type not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@bcma_core_chipcommon_flash_detect._entry_ptr = internal global ptr @bcma_core_chipcommon_flash_detect._entry, section ".printk_index", align 4
@bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 40, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bus%d: Found NAND flash\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No watchdog available\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 21248, i64 53573]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 1792]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 16, i64 21248, i64 53573]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 53010, i64 53018, i64 53030]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 121, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 131, i32 45 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 176, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 218, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 404, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 149, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 153, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 157, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 163, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [36 x i8] c"../drivers/bcma/driver_chipcommon.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 43, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_bcma_chipco_get_alp_clock, ptr @__ksymtab_bcma_chipco_gpio_control, ptr @__ksymtab_bcma_chipco_gpio_out, ptr @__ksymtab_bcma_chipco_gpio_outen, ptr @bcma_chipco_serial_init._entry, ptr @bcma_chipco_serial_init._entry_ptr, ptr @bcma_core_chipcommon_flash_detect._entry, ptr @bcma_core_chipcommon_flash_detect._entry_ptr, ptr @bcma_core_chipcommon_init._entry, ptr @bcma_core_chipcommon_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @bcma_core_chipcommon_early_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_chipcommon_early_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_chipcommon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_chipco_serial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_chipcommon_flash_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_get_alp_clock(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %0 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capabilities, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %cc) #5
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 20000000, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_alp_clock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_watchdog_register(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %wdt = alloca %struct.bcm47xx_wdt, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %wdt) #5
  %4 = getelementptr inbounds i8, ptr %wdt, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 160)
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chipinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11963, i16 %7)
  %cmp = icmp eq i16 %7, -11963
  br i1 %cmp, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  %rev = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp5 = icmp ult i8 %9, 2
  br i1 %cmp5, label %do.body, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_chipco_watchdog_register.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_chipco_watchdog_register, %cleanup)) #5
          to label %if.then10 [label %cleanup], !srcloc !57

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @bcma_chipco_watchdog_register.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %entry.if.end11_crit_edge
  %driver_data = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 3
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cc, ptr %driver_data, align 4
  %11 = ptrtoint ptr %wdt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @bcma_chipco_watchdog_timer_set_wdt, ptr %wdt, align 4
  %timer_set_ms = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 1
  %12 = ptrtoint ptr %timer_set_ms to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @bcma_chipco_watchdog_timer_set_ms_wdt, ptr %timer_set_ms, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %capabilities.i.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %15 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %16, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end11.if.end19.thread.i_crit_edge, label %if.then.i.i

if.end11.if.end19.thread.i_crit_edge:             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.then.i.i:                                      ; preds = %if.end11
  %chipinfo.i.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %chipinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chipinfo.i.i, align 4
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i16 %18, label %if.else.i [
    i16 -11963, label %if.then3.i.i
    i16 21248, label %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge
  ]

if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_get_max_timer.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  %rev.i.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp6.i.i = icmp ult i8 %21, 2
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.then3.i.i.if.end19.thread.i_crit_edge, !prof !58

if.then3.i.i.if.end19.thread.i_crit_edge:         ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.end19.thread.i

if.else.i:                                        ; preds = %if.then.i.i
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %23)
  %cmp7.i = icmp ult i8 %23, 26
  br i1 %cmp7.i, label %if.else.i.if.end19.thread.i_crit_edge, label %if.else10.i

if.else.i.if.end19.thread.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %23)
  %cmp15.i = icmp ugt i8 %23, 36
  br i1 %cmp15.i, label %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge, label %if.else10.i.if.end19.thread.i_crit_edge

if.else10.i.if.end19.thread.i_crit_edge:          ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_get_max_timer.exit

if.end19.thread.i:                                ; preds = %if.else10.i.if.end19.thread.i_crit_edge, %if.else.i.if.end19.thread.i_crit_edge, %do.end.i.i, %if.then3.i.i.if.end19.thread.i_crit_edge, %if.end11.if.end19.thread.i_crit_edge
  %nb.0.ph.i = phi i32 [ 16, %if.else.i.if.end19.thread.i_crit_edge ], [ 24, %if.else10.i.if.end19.thread.i_crit_edge ], [ 28, %do.end.i.i ], [ 28, %if.then3.i.i.if.end19.thread.i_crit_edge ], [ 28, %if.end11.if.end19.thread.i_crit_edge ]
  %notmask32.i = shl nsw i32 -1, %nb.0.ph.i
  %sub33.i = xor i32 %notmask32.i, -1
  br label %bcma_chipco_watchdog_get_max_timer.exit

bcma_chipco_watchdog_get_max_timer.exit:          ; preds = %if.end19.thread.i, %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge, %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge
  %24 = phi i32 [ %sub33.i, %if.end19.thread.i ], [ -1, %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge ], [ -1, %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge ]
  %ticks_per_ms = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 12
  %25 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ticks_per_ms, align 4
  %div = udiv i32 %24, %26
  %max_timer_ms = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 2
  %27 = ptrtoint ptr %max_timer_ms to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div, ptr %max_timer_ms, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %28 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num, align 1
  %conv13 = zext i8 %29 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %30 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 255, i32 48)
  %32 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %fwnode.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %30, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.5, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv13, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %39 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %wdt, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %40 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 176, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %41 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %cmp.i29 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %if.then16, label %if.end18

if.then16:                                        ; preds = %bcma_chipco_watchdog_get_max_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end18:                                         ; preds = %bcma_chipco_watchdog_get_max_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  %watchdog = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 13
  %44 = ptrtoint ptr %watchdog to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %watchdog, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then10, %do.body
  %retval.0 = phi i32 [ %43, %if.then16 ], [ 0, %if.end18 ], [ 0, %if.then10 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %wdt) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_chipco_watchdog_timer_set_wdt(ptr nocapture noundef readonly %wdt, i32 noundef %ticks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @bcma_chipco_watchdog_timer_set(ptr noundef %1, i32 noundef %ticks)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcma_chipco_watchdog_timer_set_ms_wdt(ptr nocapture noundef readonly %wdt, i32 noundef %ms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.bcm47xx_wdt, ptr %wdt, i32 0, i32 3
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ticks_per_ms = getelementptr inbounds %struct.bcma_drv_cc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ticks_per_ms, align 4
  %mul = mul i32 %3, %ms
  %call1 = tail call i32 @bcma_chipco_watchdog_timer_set(ptr noundef %1, i32 noundef %mul)
  %4 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ticks_per_ms, align 4
  %div = udiv i32 %call1, %5
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_chipcommon_early_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %early_setup_done = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 4
  %4 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %early_setup_done, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %gpio_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @bcma_core_chipcommon_early_init.__key, i16 noundef signext 3) #5
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %7, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %9)
  %cmp = icmp ugt i8 %9, 10
  br i1 %cmp, label %if.then4, label %do.body.if.end7_crit_edge

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %15(ptr noundef %7, i16 noundef zeroext 44) #5
  %status = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 1
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body.if.end7_crit_edge
  %17 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cc, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %ops.i45 = getelementptr inbounds %struct.bcma_bus, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %ops.i45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i45, align 4
  %read32.i46 = getelementptr inbounds %struct.bcma_host_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %read32.i46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read32.i46, align 4
  %call.i47 = tail call i32 %24(ptr noundef %18, i16 noundef zeroext 4) #5
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call.i47, ptr %capabilities, align 4
  %26 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cc, align 4
  %rev12 = getelementptr inbounds %struct.bcma_device, ptr %27, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %rev12 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rev12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 34, i8 %29)
  %cmp14 = icmp ugt i8 %29, 34
  br i1 %cmp14, label %if.then16, label %if.end7.if.end19_crit_edge

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 8
  %ops.i48 = getelementptr inbounds %struct.bcma_bus, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i48, align 4
  %read32.i49 = getelementptr inbounds %struct.bcma_host_ops, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %read32.i49 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %read32.i49, align 4
  %call.i50 = tail call i32 %35(ptr noundef %27, i16 noundef zeroext 172) #5
  %capabilities_ext = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 3
  %36 = ptrtoint ptr %capabilities_ext to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call.i50, ptr %capabilities_ext, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end7.if.end19_crit_edge
  %37 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %capabilities, align 4
  %and = and i32 %38, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end19.if.end23_crit_edge, label %if.then22

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bcma_pmu_early_init(ptr noundef %cc) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end19.if.end23_crit_edge
  %hosttype = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %hosttype to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hosttype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp24 = icmp eq i32 %40, 2
  br i1 %cmp24, label %if.then26, label %if.end23.if.end27_crit_edge

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_chipcommon_flash_detect(ptr noundef %cc)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end23.if.end27_crit_edge
  %41 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load29 = load i8, ptr %early_setup_done, align 4
  %bf.set = or i8 %bf.load29, 64
  store i8 %bf.set, ptr %early_setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_pmu_early_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_core_chipcommon_flash_detect(ptr noundef %cc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 1792
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and, label %do.end31 [
    i32 256, label %entry.do.body_crit_edge
    i32 512, label %entry.do.body_crit_edge94
    i32 1792, label %do.body7
  ]

entry.do.body_crit_edge94:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_chipcommon_flash_detect, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug237, ptr noundef %8, ptr noundef nonnull @.str.14, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call5 = tail call i32 @bcma_sflash_init(ptr noundef %cc) #5
  br label %sw.epilog

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_chipcommon_flash_detect, %do.end27)) #5
          to label %if.then21 [label %do.end27], !srcloc !57

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %num23 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %13 = ptrtoint ptr %num23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num23, align 1
  %conv24 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug238, ptr noundef %12, ptr noundef nonnull @.str.15, i32 noundef %conv24) #5
  br label %do.end27

do.end27:                                         ; preds = %if.then21, %do.body7
  %call28 = tail call i32 @bcma_pflash_init(ptr noundef %cc) #5
  br label %sw.epilog

do.end31:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %num33 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %num33 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num33, align 1
  %conv34 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef %conv34) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end31, %do.end27, %do.end
  %19 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %20, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %22)
  %cmp = icmp eq i8 %22, 38
  br i1 %cmp, label %sw.epilog.if.then42_crit_edge, label %lor.lhs.false

sw.epilog.if.then42_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false:                                    ; preds = %sw.epilog
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %23 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %chipinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %24)
  %cmp40 = icmp eq i16 %24, 21248
  br i1 %cmp40, label %lor.lhs.false.if.then42_crit_edge, label %lor.lhs.false.if.end70_crit_edge

lor.lhs.false.if.end70_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false.if.then42_crit_edge, %sw.epilog.if.then42_crit_edge
  %25 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %tobool45.not = icmp sgt i32 %26, -1
  br i1 %tobool45.not, label %if.then42.if.end70_crit_edge, label %do.body47

if.then42.if.end70_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

do.body47:                                        ; preds = %if.then42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_chipcommon_flash_detect, %do.end67)) #5
          to label %if.then61 [label %do.end67], !srcloc !57

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %num63 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %num63 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num63, align 1
  %conv64 = zext i8 %30 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug239, ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %conv64) #5
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %do.body47
  %call68 = tail call i32 @bcma_nflash_init(ptr noundef %cc) #5
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %if.then42.if.end70_crit_edge, %lor.lhs.false.if.end70_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_chipcommon_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %setup_done = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 4
  %0 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %setup_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @bcma_core_chipcommon_early_init(ptr noundef %cc)
  %1 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %2, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 19, i8 %4)
  %cmp = icmp ugt i8 %4, 19
  br i1 %cmp, label %if.then2, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %chipinfo, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -22394, i16 %8)
  %cmp6 = icmp eq i16 %8, -22394
  %spec.select = select i1 %cmp6, i32 262880, i32 0
  %spec.select79 = select i1 %cmp6, i32 132352, i32 0
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write32.i, align 4
  tail call void %12(ptr noundef %2, i16 noundef zeroext 88, i32 noundef %spec.select) #5
  %13 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cc, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %ops.i80 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i80, align 4
  %write32.i81 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %write32.i81 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write32.i81, align 4
  tail call void %20(ptr noundef %14, i16 noundef zeroext 92, i32 noundef %spec.select79) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then2, %if.end.if.end12_crit_edge
  %capabilities = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %21 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %capabilities, align 4
  %and = and i32 %22, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bcma_pmu_init(ptr noundef %cc) #5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities, align 4
  %and17 = and i32 %24, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end15.if.end25_crit_edge, label %do.end

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cc, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 11
  %31 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num, align 1
  %conv24 = zext i8 %32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.7, i32 noundef %conv24) #8
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end15.if.end25_crit_edge
  %33 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc, align 4
  %rev28 = getelementptr inbounds %struct.bcma_device, ptr %34, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %rev28 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rev28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %36)
  %cmp30 = icmp ugt i8 %36, 15
  br i1 %cmp30, label %if.then32, label %if.end25.if.end56_crit_edge

if.end25.if.end56_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then32:                                        ; preds = %if.end25
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 8
  %leddc_on_time = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 18, i32 18
  %39 = ptrtoint ptr %leddc_on_time to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %leddc_on_time, align 1
  %conv35 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool36.not = icmp eq i8 %40, 0
  br i1 %tobool36.not, label %if.then32.if.end53_crit_edge, label %land.lhs.true

if.then32.if.end53_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

land.lhs.true:                                    ; preds = %if.then32
  %leddc_off_time = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 18, i32 19
  %41 = ptrtoint ptr %leddc_off_time to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %leddc_off_time, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool41.not = icmp eq i8 %42, 0
  br i1 %tobool41.not, label %land.lhs.true.if.end53_crit_edge, label %if.then42

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %conv40 = zext i8 %42 to i32
  %phi.bo = shl nuw nsw i32 %conv35, 16
  br label %if.end53

if.end53:                                         ; preds = %if.then42, %land.lhs.true.if.end53_crit_edge, %if.then32.if.end53_crit_edge
  %leddc_on.0 = phi i32 [ %phi.bo, %if.then42 ], [ 655360, %land.lhs.true.if.end53_crit_edge ], [ 655360, %if.then32.if.end53_crit_edge ]
  %leddc_off.0 = phi i32 [ %conv40, %if.then42 ], [ 90, %land.lhs.true.if.end53_crit_edge ], [ 90, %if.then32.if.end53_crit_edge ]
  %or = or i32 %leddc_off.0, %leddc_on.0
  %ops.i82 = getelementptr inbounds %struct.bcma_bus, ptr %38, i32 0, i32 2
  %43 = ptrtoint ptr %ops.i82 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i82, align 4
  %write32.i83 = getelementptr inbounds %struct.bcma_host_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %write32.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write32.i83, align 4
  tail call void %46(ptr noundef %34, i16 noundef zeroext 136, i32 noundef %or) #5
  br label %if.end56

if.end56:                                         ; preds = %if.end53, %if.end25.if.end56_crit_edge
  %47 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %capabilities, align 4
  %and.i = and i32 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end56.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge, label %if.then.i

if.end56.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge: ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_ticks_per_ms.exit

if.then.i:                                        ; preds = %if.end56
  %49 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cc, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 8
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %chipinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21248, i16 %54)
  %cmp.i = icmp eq i16 %54, 21248
  br i1 %cmp.i, label %bcma_chipco_get_alp_clock.exit.i, label %if.then.i.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge

if.then.i.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_ticks_per_ms.exit

bcma_chipco_get_alp_clock.exit.i:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %cc) #5
  %div.i = udiv i32 %call.i.i, 4000
  br label %bcma_chipco_watchdog_ticks_per_ms.exit

bcma_chipco_watchdog_ticks_per_ms.exit:           ; preds = %bcma_chipco_get_alp_clock.exit.i, %if.then.i.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge, %if.end56.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge
  %retval.0.i = phi i32 [ %div.i, %bcma_chipco_get_alp_clock.exit.i ], [ 32, %if.then.i.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge ], [ 20000, %if.end56.bcma_chipco_watchdog_ticks_per_ms.exit_crit_edge ]
  %ticks_per_ms = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 12
  %55 = ptrtoint ptr %ticks_per_ms to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i, ptr %ticks_per_ms, align 4
  %56 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load58 = load i8, ptr %setup_done, align 4
  %bf.set = or i8 %bf.load58, -128
  store i8 %bf.set, ptr %setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcma_chipco_watchdog_ticks_per_ms.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_pmu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_watchdog_timer_set(ptr nocapture noundef readonly %cc, i32 noundef %ticks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %capabilities.i.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i.i, align 4
  %and.i.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.if.end19.thread.i_crit_edge, label %if.then.i.i

entry.if.end19.thread.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.then.i.i:                                      ; preds = %entry
  %chipinfo.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %chipinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %chipinfo.i.i, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %7, label %if.else.i [
    i16 -11963, label %if.then3.i.i
    i16 21248, label %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge
  ]

if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_get_max_timer.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  %rev.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp6.i.i = icmp ult i8 %10, 2
  br i1 %cmp6.i.i, label %do.end.i.i, label %if.then3.i.i.if.end19.thread.i_crit_edge, !prof !58

if.then3.i.i.if.end19.thread.i_crit_edge:         ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

do.end.i.i:                                       ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.end19.thread.i

if.else.i:                                        ; preds = %if.then.i.i
  %rev.i = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %rev.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %12)
  %cmp7.i = icmp ult i8 %12, 26
  br i1 %cmp7.i, label %if.else.i.if.end19.thread.i_crit_edge, label %if.else10.i

if.else.i.if.end19.thread.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %12)
  %cmp15.i = icmp ugt i8 %12, 36
  br i1 %cmp15.i, label %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge, label %if.else10.i.if.end19.thread.i_crit_edge

if.else10.i.if.end19.thread.i_crit_edge:          ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.thread.i

if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge: ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_watchdog_get_max_timer.exit

if.end19.thread.i:                                ; preds = %if.else10.i.if.end19.thread.i_crit_edge, %if.else.i.if.end19.thread.i_crit_edge, %do.end.i.i, %if.then3.i.i.if.end19.thread.i_crit_edge, %entry.if.end19.thread.i_crit_edge
  %nb.0.ph.i = phi i32 [ 16, %if.else.i.if.end19.thread.i_crit_edge ], [ 24, %if.else10.i.if.end19.thread.i_crit_edge ], [ 28, %do.end.i.i ], [ 28, %if.then3.i.i.if.end19.thread.i_crit_edge ], [ 28, %entry.if.end19.thread.i_crit_edge ]
  %notmask32.i = shl nsw i32 -1, %nb.0.ph.i
  %sub33.i = xor i32 %notmask32.i, -1
  br label %bcma_chipco_watchdog_get_max_timer.exit

bcma_chipco_watchdog_get_max_timer.exit:          ; preds = %if.end19.thread.i, %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge, %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge
  %13 = phi i32 [ %sub33.i, %if.end19.thread.i ], [ -1, %if.else10.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge ], [ -1, %if.then.i.i.bcma_chipco_watchdog_get_max_timer.exit_crit_edge ]
  %14 = ptrtoint ptr %capabilities.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities.i.i, align 4
  %and.i = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %bcma_chipco_watchdog_get_max_timer.exit.if.else6_crit_edge, label %if.then.i49

bcma_chipco_watchdog_get_max_timer.exit.if.else6_crit_edge: ; preds = %bcma_chipco_watchdog_get_max_timer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else6

if.then.i49:                                      ; preds = %bcma_chipco_watchdog_get_max_timer.exit
  %16 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cc, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %chipinfo.i = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %chipinfo.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chipinfo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11963, i16 %21)
  %cmp.i48 = icmp eq i16 %21, -11963
  br i1 %cmp.i48, label %if.then3.i, label %if.then

if.then3.i:                                       ; preds = %if.then.i49
  %rev.i50 = getelementptr inbounds %struct.bcma_bus, ptr %19, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %rev.i50 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rev.i50, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp6.i = icmp ult i8 %23, 2
  br i1 %cmp6.i, label %do.end.i, label %if.then3.i.if.else6_crit_edge, !prof !58

if.then3.i.if.else6_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else6

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 43, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.else6

if.then:                                          ; preds = %if.then.i49
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ticks)
  %cmp = icmp eq i32 %ticks, 1
  %24 = tail call i32 @llvm.umin.i32(i32 %13, i32 %ticks)
  %ticks.addr.0 = select i1 %cmp, i32 2, i32 %24
  %pmu = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 6
  %25 = ptrtoint ptr %pmu to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pmu, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write32.i, align 4
  tail call void %32(ptr noundef %26, i16 noundef zeroext 1588, i32 noundef %ticks.addr.0) #5
  br label %if.end30

if.else6:                                         ; preds = %do.end.i, %if.then3.i.if.else6_crit_edge, %bcma_chipco_watchdog_get_max_timer.exit.if.else6_crit_edge
  %33 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cc, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %chipinfo, align 4
  %39 = zext i16 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %38, label %if.then22 [
    i16 -12526, label %if.else6.if.end24_crit_edge
    i16 -12506, label %if.else6.if.end24_crit_edge54
    i16 -12518, label %if.else6.if.end24_crit_edge55
  ]

if.else6.if.end24_crit_edge55:                    ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else6.if.end24_crit_edge54:                    ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.else6.if.end24_crit_edge:                      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ticks)
  %tobool.not = icmp eq i32 %ticks, 0
  %cond = zext i1 %tobool.not to i32
  tail call void @bcma_core_set_clockmode(ptr noundef %34, i32 noundef %cond) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.else6.if.end24_crit_edge, %if.else6.if.end24_crit_edge54, %if.else6.if.end24_crit_edge55
  %40 = tail call i32 @llvm.umin.i32(i32 %13, i32 %ticks)
  %41 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cc, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %ops.i51 = getelementptr inbounds %struct.bcma_bus, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i51, align 4
  %write32.i52 = getelementptr inbounds %struct.bcma_host_ops, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %write32.i52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write32.i52, align 4
  tail call void %48(ptr noundef %42, i16 noundef zeroext 128, i32 noundef %40) #5
  br label %if.end30

if.end30:                                         ; preds = %if.end24, %if.then
  %ticks.addr.2 = phi i32 [ %ticks.addr.0, %if.then ], [ %40, %if.end24 ]
  ret i32 %ticks.addr.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_core_set_clockmode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_chipco_irq_mask(ptr nocapture noundef readonly %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 36) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 36, i32 noundef %or.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_irq_status(ptr nocapture noundef readonly %cc, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 32) #5
  %and = and i32 %call.i, %mask
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_in(ptr nocapture noundef readonly %cc, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 96) #5
  %and = and i32 %call.i, %mask
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_out(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 100) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 100, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #5
  ret i32 %or.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_outen(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 104) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 104, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #5
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_control(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 108) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 108, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #5
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_intmask(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 116) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 116, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #5
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_polarity(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1, i16 noundef zeroext 112) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %8 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cc, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write32.i.i, align 4
  tail call void %15(ptr noundef %9, i16 noundef zeroext 112, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call2) #5
  ret i32 %or.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_pullup(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp = icmp ult i8 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %5, i16 noundef zeroext 88) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %12 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %13, i16 noundef zeroext 88, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %do.body2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_chipco_gpio_pulldown(ptr noundef %cc, i32 noundef %mask, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp = icmp ult i8 %3, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_lock = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 14
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #5
  %and.i = and i32 %value, %mask
  %4 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i.i, align 4
  %read32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %read32.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read32.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %5, i16 noundef zeroext 92) #5
  %neg.i = xor i32 %mask, -1
  %and1.i = and i32 %call.i.i, %neg.i
  %or.i = or i32 %and1.i, %and.i
  %12 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ops.i9.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i9.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i9.i, align 4
  %write32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i.i, align 4
  tail call void %19(ptr noundef %13, i16 noundef zeroext 92, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call5) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or.i, %do.body2 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_chipco_serial_init(ptr noundef %cc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cc, align 4
  %rev = getelementptr inbounds %struct.bcma_device, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %rev to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rev, align 4
  %serial_ports = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %3)
  %cmp = icmp ult i8 %3, 11
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %3)
  %cmp2.not = icmp eq i8 %3, 15
  %or.cond = or i1 %cmp, %cmp2.not
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %capabilities.i = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 2
  %4 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities.i, align 4
  %and.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.bcma_chipco_get_alp_clock.exit_crit_edge, label %if.then.i

if.then.bcma_chipco_get_alp_clock.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_chipco_get_alp_clock.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @bcma_pmu_get_alp_clock(ptr noundef %cc) #5
  br label %bcma_chipco_get_alp_clock.exit

bcma_chipco_get_alp_clock.exit:                   ; preds = %if.then.i, %if.then.bcma_chipco_get_alp_clock.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ 20000000, %if.then.bcma_chipco_get_alp_clock.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %3)
  %cmp4 = icmp ugt i8 %3, 20
  %6 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cc, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read32.i, align 4
  %call.i73 = tail call i32 %13(ptr noundef %7, i16 noundef zeroext 8) #5
  br i1 %cmp4, label %if.then6, label %if.end25.critedge

if.then6:                                         ; preds = %bcma_chipco_get_alp_clock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call.i73, -9
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  %ops.i74 = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i74, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write32.i, align 4
  tail call void %19(ptr noundef %7, i16 noundef zeroext 8, i32 noundef %and) #5
  %20 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 8
  %ops.i75 = getelementptr inbounds %struct.bcma_bus, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %ops.i75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ops.i75, align 4
  %read32.i76 = getelementptr inbounds %struct.bcma_host_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %read32.i76 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read32.i76, align 4
  %call.i77 = tail call i32 %27(ptr noundef %21, i16 noundef zeroext 8) #5
  %or.c = or i32 %call.i77, 1
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 8
  %ops.i78 = getelementptr inbounds %struct.bcma_bus, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %ops.i78 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i78, align 4
  %write32.i79 = getelementptr inbounds %struct.bcma_host_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %write32.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write32.i79, align 4
  tail call void %33(ptr noundef %21, i16 noundef zeroext 8, i32 noundef %or.c) #5
  %34 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cc, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %ops.i80 = getelementptr inbounds %struct.bcma_bus, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %ops.i80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i80, align 4
  %read32.i81 = getelementptr inbounds %struct.bcma_host_ops, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %read32.i81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %read32.i81, align 4
  %call.i82 = tail call i32 %41(ptr noundef %35, i16 noundef zeroext 8) #5
  %or19 = or i32 %call.i82, 8
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %35, align 8
  %ops.i83 = getelementptr inbounds %struct.bcma_bus, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %ops.i83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i83, align 4
  %write32.i84 = getelementptr inbounds %struct.bcma_host_ops, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %write32.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write32.i84, align 4
  tail call void %47(ptr noundef %35, i16 noundef zeroext 8, i32 noundef %or19) #5
  br label %if.end25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %3 to i32
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %49, i32 0, i32 11
  %52 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num, align 1
  %conv24 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.11, i32 noundef %conv24, i32 noundef %conv) #8
  br label %cleanup

if.end25.critedge:                                ; preds = %bcma_chipco_get_alp_clock.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or.c72 = or i32 %call.i73, 1
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %7, align 8
  %ops.i88 = getelementptr inbounds %struct.bcma_bus, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %ops.i88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i88, align 4
  %write32.i89 = getelementptr inbounds %struct.bcma_host_ops, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %write32.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write32.i89, align 4
  tail call void %59(ptr noundef %7, i16 noundef zeroext 8, i32 noundef %or.c72) #5
  br label %if.end25

if.end25:                                         ; preds = %if.end25.critedge, %if.then6
  %60 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cc, align 4
  %call27 = tail call i32 @bcma_core_irq(ptr noundef %61, i32 noundef 0) #5
  %62 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %capabilities.i, align 4
  %and28 = and i32 %63, 3
  %nr_serial_ports = getelementptr inbounds %struct.bcma_drv_cc, ptr %cc, i32 0, i32 10
  %64 = ptrtoint ptr %nr_serial_ports to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and28, ptr %nr_serial_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %cmp3090.not = icmp eq i32 %and28, 0
  br i1 %cmp3090.not, label %if.end25.cleanup_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.091 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %65 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cc, align 4
  %io_addr = getelementptr inbounds %struct.bcma_device, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %io_addr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_addr, align 4
  %add.ptr = getelementptr i8, ptr %68, i32 768
  %mul = shl i32 %i.091, 8
  %add.ptr33 = getelementptr i8, ptr %add.ptr, i32 %mul
  %arrayidx = getelementptr %struct.bcma_serial_port, ptr %serial_ports, i32 %i.091
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %add.ptr33, ptr %arrayidx, align 4
  %irq35 = getelementptr %struct.bcma_serial_port, ptr %serial_ports, i32 %i.091, i32 2
  %70 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call27, ptr %irq35, align 4
  %baud_base37 = getelementptr %struct.bcma_serial_port, ptr %serial_ports, i32 %i.091, i32 3
  %71 = ptrtoint ptr %baud_base37 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %retval.0.i, ptr %baud_base37, align 4
  %reg_shift = getelementptr %struct.bcma_serial_port, ptr %serial_ports, i32 %i.091, i32 4
  %72 = ptrtoint ptr %reg_shift to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %reg_shift, align 4
  %inc = add nuw i32 %i.091, 1
  %73 = ptrtoint ptr %nr_serial_ports to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_serial_ports, align 4
  %cmp30 = icmp ult i32 %inc, %74
  br i1 %cmp30, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_sflash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pflash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_nflash_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !14, !16, !17, !18, !19, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_bcma_chipco_get_alp_clock, !1, !"__ksymtab_bcma_chipco_get_alp_clock", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_chipcommon.c", i32 35, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/bcma/driver_chipcommon.c", i32 121, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @bcma_chipco_watchdog_register.__UNIQUE_ID_ddebug236, !3, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/bcma/driver_chipcommon.c", i32 131, i32 45}
!11 = !{ptr @bcma_core_chipcommon_early_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/bcma/driver_chipcommon.c", i32 176, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bcma/driver_chipcommon.c", i32 218, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bcma_core_chipcommon_init._entry, !15, !"_entry", i1 false, i1 false}
!20 = !{ptr @bcma_core_chipcommon_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_bcma_chipco_gpio_out, !22, !"__ksymtab_bcma_chipco_gpio_out", i1 false, i1 false}
!22 = !{!"../drivers/bcma/driver_chipcommon.c", i32 290, i32 1}
!23 = !{ptr @__ksymtab_bcma_chipco_gpio_outen, !24, !"__ksymtab_bcma_chipco_gpio_outen", i1 false, i1 false}
!24 = !{!"../drivers/bcma/driver_chipcommon.c", i32 303, i32 1}
!25 = !{ptr @__ksymtab_bcma_chipco_gpio_control, !26, !"__ksymtab_bcma_chipco_gpio_control", i1 false, i1 false}
!26 = !{!"../drivers/bcma/driver_chipcommon.c", i32 320, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bcma/driver_chipcommon.c", i32 404, i32 3}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bcma_chipco_serial_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcma_chipco_serial_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bcma/driver_chipcommon.c", i32 149, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug237, !33, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bcma/driver_chipcommon.c", i32 153, i32 3}
!38 = !{ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug238, !37, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bcma/driver_chipcommon.c", i32 157, i32 3}
!41 = !{ptr @bcma_core_chipcommon_flash_detect._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bcma_core_chipcommon_flash_detect._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bcma/driver_chipcommon.c", i32 163, i32 4}
!45 = !{ptr @bcma_core_chipcommon_flash_detect.__UNIQUE_ID_ddebug239, !44, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bcma/driver_chipcommon.c", i32 43, i32 4}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148515555, i64 2148515560, i64 2148515573, i64 2148515617, i64 2148515651, i64 2148515672}
!58 = !{!"branch_weights", i32 1, i32 2000}
