; ModuleID = '/llk/IR_all_yes/drivers/bcma/driver_mips.c_pt.bc'
source_filename = "../drivers/bcma/driver_mips.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bcma_cpu_clock\22, \22a\22\09"
module asm "\09.weak\09__crc_bcma_cpu_clock\09\09\09\09"
module asm "\09.long\09__crc_bcma_cpu_clock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcma_cpu_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22bcma_cpu_clock\22\09\09\09\09\09"
module asm "__kstrtabns_bcma_cpu_clock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.bcma_drv_cc_b = type { ptr, i8, ptr }
%struct.bcma_drv_pci = type { ptr, i8 }
%struct.bcma_drv_pcie2 = type { ptr, i16 }
%struct.bcma_drv_mips = type { ptr, i8 }
%struct.bcma_drv_gmac_cmn = type { ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ssb_sprom = type { i8, i8, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, [2 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, [4 x %struct.ssb_sprom_core_pwr_info], %struct.anon.72, %struct.anon.73, [8 x i16], [8 x i16], [8 x i16], [8 x i16], i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8 }
%struct.ssb_sprom_core_pwr_info = type { i8, i8, i8, i8, i8, i8, [4 x i16], [4 x i16], [4 x i16], [4 x i16] }
%struct.anon.72 = type { i8, i8, i8, i8 }
%struct.anon.73 = type { %struct.anon.74, %struct.anon.75 }
%struct.anon.74 = type { i8, i8, i8, i8, i8 }
%struct.anon.75 = type { i8, i8, i8, i8, i8 }
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
%struct.bcma_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@bcma_cpu_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"bus%d: No PMU available, need this to get the cpu clock\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcma_cpu_clock\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/bcma/driver_mips.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcma_cpu_clock._entry_ptr = internal global ptr @bcma_cpu_clock._entry, section ".printk_index", align 4
@__kstrtab_bcma_cpu_clock = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcma_cpu_clock = external dso_local constant [0 x i8], align 1
@__ksymtab_bcma_cpu_clock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcma_cpu_clock to i32), ptr @__kstrtab_bcma_cpu_clock, ptr @__kstrtabns_bcma_cpu_clock }, section "___ksymtab+bcma_cpu_clock", align 4
@bcma_core_mips_init.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bcma\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcma_core_mips_init\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bus%d: Initializing MIPS core...\0A\00", [62 x i8] zeroinitializer }, align 32
@bcma_core_mips_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 354, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"bus%d: Unknown device (0x%x) found, can not configure IRQs\0A\00", [36 x i8] zeroinitializer }, align 32
@bcma_core_mips_init._entry_ptr = internal global ptr @bcma_core_mips_init._entry, section ".printk_index", align 4
@bcma_core_mips_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bus%d: IRQ reconfiguration done\0A\00", [63 x i8] zeroinitializer }, align 32
@bcma_fix_i2s_irqflag.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcma_fix_i2s_irqflag\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bus%d: Moved i2s interrupt to oob line 7 instead of 8\0A\00", [41 x i8] zeroinitializer }, align 32
@bcma_core_mips_set_irq_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 153, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"bus%d: Can not find core (id: 0x%x, unit %i) for IRQ configuration.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcma_core_mips_set_irq_name\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcma_core_mips_set_irq_name._entry_ptr = internal global ptr @bcma_core_mips_set_irq_name._entry, section ".printk_index", align 4
@bcma_core_mips_set_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bcma_core_mips_set_irq\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bus%d: set_irq: core 0x%04x, irq %d => %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2(S)\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"3\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"5\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"6\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"I\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %s%c\00", [26 x i8] zeroinitializer }, align 32
@bcma_core_mips_print_irq.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcma_core_mips_print_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bus%d: core 0x%04x, irq:%s\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 18249, i64 21335, i64 47162]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 16, i64 18198, i64 18248, i64 18249, i64 21248, i64 21334, i64 21335, i64 47162, i64 53572]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 18198, i64 18248]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 16, i64 18249, i64 21335, i64 47162]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 16, i64 18249, i64 21335, i64 47162]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 190, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 308, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 352, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 356, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 294, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 151, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 140, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 43 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 48 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 53 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 58 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 63 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 163, i32 68 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 168, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [30 x i8] c"../drivers/bcma/driver_mips.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 171, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_bcma_cpu_clock, ptr @bcma_core_mips_init._entry, ptr @bcma_core_mips_init._entry_ptr, ptr @bcma_core_mips_set_irq_name._entry, ptr @bcma_core_mips_set_irq_name._entry_ptr, ptr @bcma_cpu_clock._entry, ptr @bcma_cpu_clock._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_cpu_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_mips_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcma_core_mips_set_irq_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_core_mips_irq(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %drv_mips = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %drv_mips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_mips, align 4
  %chipinfo.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chipinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chipinfo.i.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.if.end5.i_crit_edge [
    i16 -18374, label %land.lhs.true.i.i
    i16 21335, label %entry.land.lhs.true.i14.i_crit_edge
    i16 18249, label %entry.land.lhs.true.i14.i_crit_edge18
  ]

entry.land.lhs.true.i14.i_crit_edge18:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i

entry.land.lhs.true.i14.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

land.lhs.true.i.i:                                ; preds = %entry
  %rev.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp5.i.i = icmp eq i8 %8, 0
  br i1 %cmp5.i.i, label %bcma_core_mips_bcm47162a0_quirk.exit.i, label %land.lhs.true.i.i.if.end5.i_crit_edge

land.lhs.true.i.i.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm47162a0_quirk.exit.i:           ; preds = %land.lhs.true.i.i
  %id8.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %id8.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2092, i16 %10)
  %cmp10.i.i = icmp eq i16 %10, 2092
  br i1 %cmp10.i.i, label %bcma_core_mips_bcm47162a0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge, label %bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge

bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge: ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm47162a0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge: ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_irqflag.exit

land.lhs.true.i14.i:                              ; preds = %entry.land.lhs.true.i14.i_crit_edge, %entry.land.lhs.true.i14.i_crit_edge18
  %pkg.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %pkg.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pkg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %12)
  %cmp11.i.i = icmp eq i8 %12, 11
  br i1 %cmp11.i.i, label %bcma_core_mips_bcm5357b0_quirk.exit.i, label %land.lhs.true.i14.i.if.end5.i_crit_edge

land.lhs.true.i14.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm5357b0_quirk.exit.i:            ; preds = %land.lhs.true.i14.i
  %id14.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %id14.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2073, i16 %14)
  %cmp16.i.i = icmp eq i16 %14, 2073
  br i1 %cmp16.i.i, label %bcma_core_mips_bcm5357b0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge, label %bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge

bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge: ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm5357b0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge: ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_irqflag.exit

if.end5.i:                                        ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge, %land.lhs.true.i14.i.if.end5.i_crit_edge, %bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge, %land.lhs.true.i.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 4
  %aread32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %aread32.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %aread32.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %dev, i16 noundef zeroext 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %and.i = and i32 %call.i.i, 31
  br i1 %tobool.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end5.i.for.cond.preheader_crit_edge

if.end5.i.for.cond.preheader_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

bcma_core_mips_irqflag.exit:                      ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge, %bcma_core_mips_bcm47162a0_quirk.exit.i.bcma_core_mips_irqflag.exit_crit_edge
  %core_index.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 6
  %19 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %core_index.i, align 1
  %conv.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %20)
  %cmp = icmp eq i8 %20, 63
  br i1 %cmp, label %bcma_core_mips_irqflag.exit.cleanup_crit_edge, label %bcma_core_mips_irqflag.exit.for.cond.preheader_crit_edge

bcma_core_mips_irqflag.exit.for.cond.preheader_crit_edge: ; preds = %bcma_core_mips_irqflag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

bcma_core_mips_irqflag.exit.cleanup_crit_edge:    ; preds = %bcma_core_mips_irqflag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %bcma_core_mips_irqflag.exit.for.cond.preheader_crit_edge, %if.end5.i.for.cond.preheader_crit_edge
  %retval.0.i17 = phi i32 [ %conv.i, %bcma_core_mips_irqflag.exit.for.cond.preheader_crit_edge ], [ %and.i, %if.end5.i.for.cond.preheader_crit_edge ]
  %shl = shl nuw i32 1, %retval.0.i17
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %26(ptr noundef %3, i16 noundef zeroext 20) #5
  %and = and i32 %call.i, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %ops.i.1 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.1, align 4
  %read32.i.1 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %read32.i.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read32.i.1, align 4
  %call.i.1 = tail call i32 %32(ptr noundef %3, i16 noundef zeroext 24) #5
  %and.1 = and i32 %call.i.1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 8
  %ops.i.2 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops.i.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.2, align 4
  %read32.i.2 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %read32.i.2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %read32.i.2, align 4
  %call.i.2 = tail call i32 %38(ptr noundef %3, i16 noundef zeroext 28) #5
  %and.2 = and i32 %call.i.2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.cleanup_crit_edge

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  %ops.i.3 = getelementptr inbounds %struct.bcma_bus, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %ops.i.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i.3, align 4
  %read32.i.3 = getelementptr inbounds %struct.bcma_host_ops, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %read32.i.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %read32.i.3, align 4
  %call.i.3 = tail call i32 %44(ptr noundef %3, i16 noundef zeroext 32) #5
  %and.3 = and i32 %call.i.3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 8
  %ops.i.4 = getelementptr inbounds %struct.bcma_bus, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %ops.i.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.4, align 4
  %read32.i.4 = getelementptr inbounds %struct.bcma_host_ops, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %read32.i.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %read32.i.4, align 4
  %call.i.4 = tail call i32 %50(ptr noundef %3, i16 noundef zeroext 36) #5
  %and.4 = and i32 %call.i.4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  %spec.select = select i1 %tobool.not.4, i32 5, i32 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %bcma_core_mips_irqflag.exit.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %bcma_core_mips_irqflag.exit.cleanup_crit_edge ], [ 6, %if.end5.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ], [ 2, %for.inc.1.cleanup_crit_edge ], [ 3, %for.inc.2.cleanup_crit_edge ], [ %spec.select, %for.inc.3 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcma_cpu_clock(ptr nocapture noundef readonly %mcore) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcore, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %capabilities = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capabilities, align 4
  %and = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 12
  %call = tail call i32 @bcma_pmu_get_cpu_clock(ptr noundef %drv_cc) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 1
  %conv = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_pmu_get_cpu_clock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_mips_early_init(ptr nocapture noundef %mcore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %early_setup_done = getelementptr inbounds %struct.bcma_drv_mips, ptr %mcore, i32 0, i32 1
  %0 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %early_setup_done, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcore, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %drv_cc = getelementptr inbounds %struct.bcma_bus, ptr %5, i32 0, i32 12
  tail call void @bcma_chipco_serial_init(ptr noundef %drv_cc) #5
  %6 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcore, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %drv_cc.i.i = getelementptr inbounds %struct.bcma_bus, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %drv_cc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv_cc.i.i, align 4
  %rev.i.i = getelementptr inbounds %struct.bcma_device, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %13)
  %cond.i.i = icmp eq i8 %13, 42
  br i1 %cond.i.i, label %if.then.i.i, label %if.end.bcma_core_mips_nvram_init.exit_crit_edge

if.end.bcma_core_mips_nvram_init.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_nvram_init.exit

if.then.i.i:                                      ; preds = %if.end
  %call.i.i.i = tail call ptr @bcma_find_core_unit(ptr noundef %9, i16 noundef zeroext 1288, i8 noundef zeroext 0) #5
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.bcma_core_mips_nvram_init.exit_crit_edge, label %if.then3.i.i

if.then.i.i.bcma_core_mips_nvram_init.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_nvram_init.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i.i.i, align 8
  %ops.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 4
  %aread32.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %aread32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %aread32.i.i.i, align 4
  %call.i1.i.i = tail call i32 %19(ptr noundef nonnull %call.i.i.i, i16 noundef zeroext 1280) #5
  br label %bcma_core_mips_nvram_init.exit

bcma_core_mips_nvram_init.exit:                   ; preds = %if.then3.i.i, %if.then.i.i.bcma_core_mips_nvram_init.exit_crit_edge, %if.end.bcma_core_mips_nvram_init.exit_crit_edge
  %20 = ptrtoint ptr %early_setup_done to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load3 = load i8, ptr %early_setup_done, align 4
  %bf.set = or i8 %bf.load3, 64
  store i8 %bf.set, ptr %early_setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcma_core_mips_nvram_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcma_chipco_serial_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bcma_core_mips_init(ptr nocapture noundef %mcore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcore, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %setup_done = getelementptr inbounds %struct.bcma_drv_mips, ptr %mcore, i32 0, i32 1
  %4 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %setup_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_mips_init.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_mips_init, %do.end)) #5
          to label %if.then7 [label %do.end], !srcloc !67

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num, align 1
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_mips_init.__UNIQUE_ID_ddebug239, ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %9 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %setup_done, align 4
  %10 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.bcma_core_mips_early_init.exit_crit_edge

do.end.bcma_core_mips_early_init.exit_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_early_init.exit

if.end.i:                                         ; preds = %do.end
  %11 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mcore, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %drv_cc.i = getelementptr inbounds %struct.bcma_bus, ptr %14, i32 0, i32 12
  tail call void @bcma_chipco_serial_init(ptr noundef %drv_cc.i) #5
  %15 = ptrtoint ptr %mcore to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mcore, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %drv_cc.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %drv_cc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drv_cc.i.i.i, align 4
  %rev.i.i.i = getelementptr inbounds %struct.bcma_device, ptr %20, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %22)
  %cond.i.i.i = icmp eq i8 %22, 42
  br i1 %cond.i.i.i, label %if.then.i.i.i, label %if.end.i.bcma_core_mips_nvram_init.exit.i_crit_edge

if.end.i.bcma_core_mips_nvram_init.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_nvram_init.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %call.i.i.i.i = tail call ptr @bcma_find_core_unit(ptr noundef %18, i16 noundef zeroext 1288, i8 noundef zeroext 0) #5
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.bcma_core_mips_nvram_init.exit.i_crit_edge, label %if.then3.i.i.i

if.then.i.i.i.bcma_core_mips_nvram_init.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_nvram_init.exit.i

if.then3.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i.i.i.i, align 8
  %ops.i.i.i.i = getelementptr inbounds %struct.bcma_bus, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i.i.i.i, align 4
  %aread32.i.i.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %aread32.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %aread32.i.i.i.i, align 4
  %call.i1.i.i.i = tail call i32 %28(ptr noundef nonnull %call.i.i.i.i, i16 noundef zeroext 1280) #5
  br label %bcma_core_mips_nvram_init.exit.i

bcma_core_mips_nvram_init.exit.i:                 ; preds = %if.then3.i.i.i, %if.then.i.i.i.bcma_core_mips_nvram_init.exit.i_crit_edge, %if.end.i.bcma_core_mips_nvram_init.exit.i_crit_edge
  %29 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load3.i = load i8, ptr %setup_done, align 4
  %bf.set.i = or i8 %bf.load3.i, 64
  store i8 %bf.set.i, ptr %setup_done, align 4
  br label %bcma_core_mips_early_init.exit

bcma_core_mips_early_init.exit:                   ; preds = %bcma_core_mips_nvram_init.exit.i, %do.end.bcma_core_mips_early_init.exit_crit_edge
  tail call fastcc void @bcma_fix_i2s_irqflag(ptr noundef %3)
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %chipinfo, align 4
  %32 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %31, label %sw.default [
    i16 18198, label %bcma_core_mips_early_init.exit.sw.bb_crit_edge
    i16 18248, label %bcma_core_mips_early_init.exit.sw.bb_crit_edge230
    i16 21334, label %bcma_core_mips_early_init.exit.sw.bb10_crit_edge
    i16 -18374, label %bcma_core_mips_early_init.exit.sw.bb10_crit_edge231
    i16 -11964, label %bcma_core_mips_early_init.exit.sw.bb10_crit_edge232
    i16 21335, label %bcma_core_mips_early_init.exit.sw.bb11_crit_edge
    i16 18249, label %bcma_core_mips_early_init.exit.sw.bb11_crit_edge233
    i16 21248, label %sw.bb12
  ]

bcma_core_mips_early_init.exit.sw.bb11_crit_edge233: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

bcma_core_mips_early_init.exit.sw.bb11_crit_edge: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

bcma_core_mips_early_init.exit.sw.bb10_crit_edge232: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

bcma_core_mips_early_init.exit.sw.bb10_crit_edge231: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

bcma_core_mips_early_init.exit.sw.bb10_crit_edge: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

bcma_core_mips_early_init.exit.sw.bb_crit_edge230: ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

bcma_core_mips_early_init.exit.sw.bb_crit_edge:   ; preds = %bcma_core_mips_early_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %bcma_core_mips_early_init.exit.sw.bb_crit_edge, %bcma_core_mips_early_init.exit.sw.bb_crit_edge230
  %call.i = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2066, i8 noundef zeroext 0) #5
  %tobool.not.i96 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i96, label %do.end.i, label %if.end.i97

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %num.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %35 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num.i, align 1
  %conv.i = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.12, i32 noundef %conv.i, i32 noundef 2066, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit

if.end.i97:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i, i32 noundef 1) #5
  br label %bcma_core_mips_set_irq_name.exit

bcma_core_mips_set_irq_name.exit:                 ; preds = %if.end.i97, %do.end.i
  %call.i98 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2093, i8 noundef zeroext 0) #5
  %tobool.not.i99 = icmp eq ptr %call.i98, null
  br i1 %tobool.not.i99, label %do.end.i102, label %if.end.i103

do.end.i102:                                      ; preds = %bcma_core_mips_set_irq_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %num.i100 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %39 = ptrtoint ptr %num.i100 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num.i100, align 1
  %conv.i101 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.12, i32 noundef %conv.i101, i32 noundef 2093, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit104

if.end.i103:                                      ; preds = %bcma_core_mips_set_irq_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i98, i32 noundef 2) #5
  br label %bcma_core_mips_set_irq_name.exit104

bcma_core_mips_set_irq_name.exit104:              ; preds = %if.end.i103, %do.end.i102
  %call.i105 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2073, i8 noundef zeroext 0) #5
  %tobool.not.i106 = icmp eq ptr %call.i105, null
  br i1 %tobool.not.i106, label %do.end.i109, label %if.end.i110

do.end.i109:                                      ; preds = %bcma_core_mips_set_irq_name.exit104
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %num.i107 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %43 = ptrtoint ptr %num.i107 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %num.i107, align 1
  %conv.i108 = zext i8 %44 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef %conv.i108, i32 noundef 2073, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit111

if.end.i110:                                      ; preds = %bcma_core_mips_set_irq_name.exit104
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i105, i32 noundef 3) #5
  br label %bcma_core_mips_set_irq_name.exit111

bcma_core_mips_set_irq_name.exit111:              ; preds = %if.end.i110, %do.end.i109
  %call.i112 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2080, i8 noundef zeroext 0) #5
  %tobool.not.i113 = icmp eq ptr %call.i112, null
  br i1 %tobool.not.i113, label %do.end.i116, label %if.end.i117

do.end.i116:                                      ; preds = %bcma_core_mips_set_irq_name.exit111
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %num.i114 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %47 = ptrtoint ptr %num.i114 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %num.i114, align 1
  %conv.i115 = zext i8 %48 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.12, i32 noundef %conv.i115, i32 noundef 2080, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit118

if.end.i117:                                      ; preds = %bcma_core_mips_set_irq_name.exit111
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i112, i32 noundef 4) #5
  br label %bcma_core_mips_set_irq_name.exit118

bcma_core_mips_set_irq_name.exit118:              ; preds = %if.end.i117, %do.end.i116
  %call.i119 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2048, i8 noundef zeroext 0) #5
  %tobool.not.i120 = icmp eq ptr %call.i119, null
  br i1 %tobool.not.i120, label %do.end.i123, label %if.end.i124

do.end.i123:                                      ; preds = %bcma_core_mips_set_irq_name.exit118
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %num.i121 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %51 = ptrtoint ptr %num.i121 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num.i121, align 1
  %conv.i122 = zext i8 %52 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.12, i32 noundef %conv.i122, i32 noundef 2048, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit125

if.end.i124:                                      ; preds = %bcma_core_mips_set_irq_name.exit118
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i119, i32 noundef 0) #5
  br label %bcma_core_mips_set_irq_name.exit125

bcma_core_mips_set_irq_name.exit125:              ; preds = %if.end.i124, %do.end.i123
  %call.i126 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2100, i8 noundef zeroext 0) #5
  %tobool.not.i127 = icmp eq ptr %call.i126, null
  br i1 %tobool.not.i127, label %do.end.i130, label %if.end.i131

do.end.i130:                                      ; preds = %bcma_core_mips_set_irq_name.exit125
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %num.i128 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %55 = ptrtoint ptr %num.i128 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %num.i128, align 1
  %conv.i129 = zext i8 %56 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.12, i32 noundef %conv.i129, i32 noundef 2100, i32 noundef 0) #8
  br label %do.body33

if.end.i131:                                      ; preds = %bcma_core_mips_set_irq_name.exit125
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i126, i32 noundef 0) #5
  br label %do.body33

sw.bb10:                                          ; preds = %bcma_core_mips_early_init.exit.sw.bb10_crit_edge, %bcma_core_mips_early_init.exit.sw.bb10_crit_edge231, %bcma_core_mips_early_init.exit.sw.bb10_crit_edge232
  %call.i133 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2066, i8 noundef zeroext 0) #5
  %tobool.not.i134 = icmp eq ptr %call.i133, null
  br i1 %tobool.not.i134, label %do.end.i137, label %if.end.i138

do.end.i137:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  %num.i135 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %59 = ptrtoint ptr %num.i135 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %num.i135, align 1
  %conv.i136 = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.12, i32 noundef %conv.i136, i32 noundef 2066, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit139

if.end.i138:                                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i133, i32 noundef 1) #5
  br label %bcma_core_mips_set_irq_name.exit139

bcma_core_mips_set_irq_name.exit139:              ; preds = %if.end.i138, %do.end.i137
  %call.i140 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2093, i8 noundef zeroext 0) #5
  %tobool.not.i141 = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i141, label %do.end.i144, label %if.end.i145

do.end.i144:                                      ; preds = %bcma_core_mips_set_irq_name.exit139
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %3, align 4
  %num.i142 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %63 = ptrtoint ptr %num.i142 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %num.i142, align 1
  %conv.i143 = zext i8 %64 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.12, i32 noundef %conv.i143, i32 noundef 2093, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit146

if.end.i145:                                      ; preds = %bcma_core_mips_set_irq_name.exit139
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i140, i32 noundef 2) #5
  br label %bcma_core_mips_set_irq_name.exit146

bcma_core_mips_set_irq_name.exit146:              ; preds = %if.end.i145, %do.end.i144
  %call.i147 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2048, i8 noundef zeroext 0) #5
  %tobool.not.i148 = icmp eq ptr %call.i147, null
  br i1 %tobool.not.i148, label %do.end.i151, label %if.end.i152

do.end.i151:                                      ; preds = %bcma_core_mips_set_irq_name.exit146
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %num.i149 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %67 = ptrtoint ptr %num.i149 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %num.i149, align 1
  %conv.i150 = zext i8 %68 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.12, i32 noundef %conv.i150, i32 noundef 2048, i32 noundef 0) #8
  br label %do.body33

if.end.i152:                                      ; preds = %bcma_core_mips_set_irq_name.exit146
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i147, i32 noundef 0) #5
  br label %do.body33

sw.bb11:                                          ; preds = %bcma_core_mips_early_init.exit.sw.bb11_crit_edge, %bcma_core_mips_early_init.exit.sw.bb11_crit_edge233
  %call.i154 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2066, i8 noundef zeroext 0) #5
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %do.end.i158, label %if.end.i159

do.end.i158:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %3, align 4
  %num.i156 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %71 = ptrtoint ptr %num.i156 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num.i156, align 1
  %conv.i157 = zext i8 %72 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.12, i32 noundef %conv.i157, i32 noundef 2066, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit160

if.end.i159:                                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i154, i32 noundef 1) #5
  br label %bcma_core_mips_set_irq_name.exit160

bcma_core_mips_set_irq_name.exit160:              ; preds = %if.end.i159, %do.end.i158
  %call.i161 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2093, i8 noundef zeroext 0) #5
  %tobool.not.i162 = icmp eq ptr %call.i161, null
  br i1 %tobool.not.i162, label %do.end.i165, label %if.end.i166

do.end.i165:                                      ; preds = %bcma_core_mips_set_irq_name.exit160
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %num.i163 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %75 = ptrtoint ptr %num.i163 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num.i163, align 1
  %conv.i164 = zext i8 %76 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.12, i32 noundef %conv.i164, i32 noundef 2093, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit167

if.end.i166:                                      ; preds = %bcma_core_mips_set_irq_name.exit160
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i161, i32 noundef 2) #5
  br label %bcma_core_mips_set_irq_name.exit167

bcma_core_mips_set_irq_name.exit167:              ; preds = %if.end.i166, %do.end.i165
  %call.i168 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2073, i8 noundef zeroext 0) #5
  %tobool.not.i169 = icmp eq ptr %call.i168, null
  br i1 %tobool.not.i169, label %do.end.i172, label %if.end.i173

do.end.i172:                                      ; preds = %bcma_core_mips_set_irq_name.exit167
  call void @__sanitizer_cov_trace_pc() #7
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %num.i170 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %79 = ptrtoint ptr %num.i170 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %num.i170, align 1
  %conv.i171 = zext i8 %80 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.12, i32 noundef %conv.i171, i32 noundef 2073, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit174

if.end.i173:                                      ; preds = %bcma_core_mips_set_irq_name.exit167
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i168, i32 noundef 3) #5
  br label %bcma_core_mips_set_irq_name.exit174

bcma_core_mips_set_irq_name.exit174:              ; preds = %if.end.i173, %do.end.i172
  %call.i175 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2048, i8 noundef zeroext 0) #5
  %tobool.not.i176 = icmp eq ptr %call.i175, null
  br i1 %tobool.not.i176, label %do.end.i179, label %if.end.i180

do.end.i179:                                      ; preds = %bcma_core_mips_set_irq_name.exit174
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %3, align 4
  %num.i177 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %83 = ptrtoint ptr %num.i177 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num.i177, align 1
  %conv.i178 = zext i8 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.12, i32 noundef %conv.i178, i32 noundef 2048, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit181

if.end.i180:                                      ; preds = %bcma_core_mips_set_irq_name.exit174
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i175, i32 noundef 0) #5
  br label %bcma_core_mips_set_irq_name.exit181

bcma_core_mips_set_irq_name.exit181:              ; preds = %if.end.i180, %do.end.i179
  %call.i182 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2100, i8 noundef zeroext 0) #5
  %tobool.not.i183 = icmp eq ptr %call.i182, null
  br i1 %tobool.not.i183, label %do.end.i186, label %if.end.i187

do.end.i186:                                      ; preds = %bcma_core_mips_set_irq_name.exit181
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 4
  %num.i184 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %87 = ptrtoint ptr %num.i184 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %num.i184, align 1
  %conv.i185 = zext i8 %88 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %86, ptr noundef nonnull @.str.12, i32 noundef %conv.i185, i32 noundef 2100, i32 noundef 0) #8
  br label %do.body33

if.end.i187:                                      ; preds = %bcma_core_mips_set_irq_name.exit181
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i182, i32 noundef 0) #5
  br label %do.body33

sw.bb12:                                          ; preds = %bcma_core_mips_early_init.exit
  %call.i189 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2080, i8 noundef zeroext 0) #5
  %tobool.not.i190 = icmp eq ptr %call.i189, null
  br i1 %tobool.not.i190, label %do.end.i193, label %if.end.i194

do.end.i193:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %3, align 4
  %num.i191 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %91 = ptrtoint ptr %num.i191 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %num.i191, align 1
  %conv.i192 = zext i8 %92 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.12, i32 noundef %conv.i192, i32 noundef 2080, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit195

if.end.i194:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i189, i32 noundef 1) #5
  br label %bcma_core_mips_set_irq_name.exit195

bcma_core_mips_set_irq_name.exit195:              ; preds = %if.end.i194, %do.end.i193
  %call.i196 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 1325, i8 noundef zeroext 0) #5
  %tobool.not.i197 = icmp eq ptr %call.i196, null
  br i1 %tobool.not.i197, label %do.end.i200, label %if.end.i201

do.end.i200:                                      ; preds = %bcma_core_mips_set_irq_name.exit195
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %3, align 4
  %num.i198 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %95 = ptrtoint ptr %num.i198 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num.i198, align 1
  %conv.i199 = zext i8 %96 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %94, ptr noundef nonnull @.str.12, i32 noundef %conv.i199, i32 noundef 1325, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit202

if.end.i201:                                      ; preds = %bcma_core_mips_set_irq_name.exit195
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i196, i32 noundef 2) #5
  br label %bcma_core_mips_set_irq_name.exit202

bcma_core_mips_set_irq_name.exit202:              ; preds = %if.end.i201, %do.end.i200
  %call.i203 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2080, i8 noundef zeroext 1) #5
  %tobool.not.i204 = icmp eq ptr %call.i203, null
  br i1 %tobool.not.i204, label %do.end.i207, label %if.end.i208

do.end.i207:                                      ; preds = %bcma_core_mips_set_irq_name.exit202
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %3, align 4
  %num.i205 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %99 = ptrtoint ptr %num.i205 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %num.i205, align 1
  %conv.i206 = zext i8 %100 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.12, i32 noundef %conv.i206, i32 noundef 2080, i32 noundef 1) #8
  br label %bcma_core_mips_set_irq_name.exit209

if.end.i208:                                      ; preds = %bcma_core_mips_set_irq_name.exit202
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i203, i32 noundef 3) #5
  br label %bcma_core_mips_set_irq_name.exit209

bcma_core_mips_set_irq_name.exit209:              ; preds = %if.end.i208, %do.end.i207
  %call.i210 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 2073, i8 noundef zeroext 0) #5
  %tobool.not.i211 = icmp eq ptr %call.i210, null
  br i1 %tobool.not.i211, label %do.end.i214, label %if.end.i215

do.end.i214:                                      ; preds = %bcma_core_mips_set_irq_name.exit209
  call void @__sanitizer_cov_trace_pc() #7
  %101 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %3, align 4
  %num.i212 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %103 = ptrtoint ptr %num.i212 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num.i212, align 1
  %conv.i213 = zext i8 %104 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %102, ptr noundef nonnull @.str.12, i32 noundef %conv.i213, i32 noundef 2073, i32 noundef 0) #8
  br label %bcma_core_mips_set_irq_name.exit216

if.end.i215:                                      ; preds = %bcma_core_mips_set_irq_name.exit209
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i210, i32 noundef 4) #5
  br label %bcma_core_mips_set_irq_name.exit216

bcma_core_mips_set_irq_name.exit216:              ; preds = %if.end.i215, %do.end.i214
  %call.i217 = tail call ptr @bcma_find_core_unit(ptr noundef %3, i16 noundef zeroext 1280, i8 noundef zeroext 0) #5
  %tobool.not.i218 = icmp eq ptr %call.i217, null
  br i1 %tobool.not.i218, label %do.end.i221, label %if.end.i222

do.end.i221:                                      ; preds = %bcma_core_mips_set_irq_name.exit216
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %3, align 4
  %num.i219 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %107 = ptrtoint ptr %num.i219 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num.i219, align 1
  %conv.i220 = zext i8 %108 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %106, ptr noundef nonnull @.str.12, i32 noundef %conv.i220, i32 noundef 1280, i32 noundef 0) #8
  br label %do.body33

if.end.i222:                                      ; preds = %bcma_core_mips_set_irq_name.exit216
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef nonnull %call.i217, i32 noundef 0) #5
  br label %do.body33

sw.default:                                       ; preds = %bcma_core_mips_early_init.exit
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 9
  %109 = ptrtoint ptr %cores to i32
  call void @__asan_load4_noabort(i32 %109)
  %.pn227 = load ptr, ptr %cores, align 4
  %cmp.not228 = icmp eq ptr %.pn227, %cores
  br i1 %cmp.not228, label %sw.default.do.end26_crit_edge, label %sw.default.for.body_crit_edge

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

sw.default.do.end26_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

for.body:                                         ; preds = %for.body.for.body_crit_edge, %sw.default.for.body_crit_edge
  %.pn229 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn227, %sw.default.for.body_crit_edge ]
  %core.0 = getelementptr i8, ptr %.pn229, i32 -1008
  %call18 = tail call i32 @bcma_core_irq(ptr noundef %core.0, i32 noundef 0) #5
  %irq = getelementptr i8, ptr %.pn229, i32 -60
  %110 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %call18, ptr %irq, align 4
  %111 = ptrtoint ptr %.pn229 to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn = load ptr, ptr %.pn229, align 4
  %cmp.not = icmp eq ptr %.pn, %cores
  br i1 %cmp.not, label %for.body.do.end26_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.do.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %for.body.do.end26_crit_edge, %sw.default.do.end26_crit_edge
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 4
  %num28 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %114 = ptrtoint ptr %num28 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %num28, align 1
  %conv29 = zext i8 %115 to i32
  %116 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %chipinfo, align 4
  %conv32 = zext i16 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.8, i32 noundef %conv29, i32 noundef %conv32) #8
  br label %do.body33

do.body33:                                        ; preds = %do.end26, %if.end.i222, %do.end.i221, %if.end.i187, %do.end.i186, %if.end.i152, %do.end.i151, %if.end.i131, %do.end.i130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_mips_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_mips_init, %do.end53)) #5
          to label %if.then47 [label %do.end53], !srcloc !67

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %118 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %3, align 4
  %num49 = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 11
  %120 = ptrtoint ptr %num49 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %num49, align 1
  %conv50 = zext i8 %121 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_mips_init.__UNIQUE_ID_ddebug240, ptr noundef %119, ptr noundef nonnull @.str.9, i32 noundef %conv50) #5
  br label %do.end53

do.end53:                                         ; preds = %if.then47, %do.body33
  %cores.i = getelementptr inbounds %struct.bcma_bus, ptr %3, i32 0, i32 9
  %122 = ptrtoint ptr %cores.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn11.i = load ptr, ptr %cores.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %cores.i
  br i1 %cmp.not12.i, label %do.end53.bcma_core_mips_dump_irq.exit_crit_edge, label %do.end53.for.body.i_crit_edge

do.end53.for.body.i_crit_edge:                    ; preds = %do.end53
  br label %for.body.i

do.end53.bcma_core_mips_dump_irq.exit_crit_edge:  ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_dump_irq.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end53.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %do.end53.for.body.i_crit_edge ]
  %core.0.i = getelementptr i8, ptr %.pn13.i, i32 -1008
  %call.i224 = tail call i32 @bcma_core_mips_irq(ptr noundef %core.0.i) #5
  tail call fastcc void @bcma_core_mips_print_irq(ptr noundef %core.0.i, i32 noundef %call.i224) #5
  %123 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cores.i
  br i1 %cmp.not.i, label %for.body.i.bcma_core_mips_dump_irq.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.bcma_core_mips_dump_irq.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %bcma_core_mips_dump_irq.exit

bcma_core_mips_dump_irq.exit:                     ; preds = %for.body.i.bcma_core_mips_dump_irq.exit_crit_edge, %do.end53.bcma_core_mips_dump_irq.exit_crit_edge
  %124 = ptrtoint ptr %setup_done to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load55 = load i8, ptr %setup_done, align 4
  %bf.set = or i8 %bf.load55, -128
  store i8 %bf.set, ptr %setup_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %bcma_core_mips_dump_irq.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_fix_i2s_irqflag(ptr noundef %bus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chipinfo = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 6
  %0 = ptrtoint ptr %chipinfo to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %chipinfo, align 4
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 18198, label %entry.if.end_crit_edge
    i16 18248, label %entry.if.end_crit_edge65
  ]

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge65
  %call.i = tail call ptr @bcma_find_core_unit(ptr noundef %bus, i16 noundef zeroext 2092, i8 noundef zeroext 0) #5
  %call.i50 = tail call ptr @bcma_find_core_unit(ptr noundef %bus, i16 noundef zeroext 2080, i8 noundef zeroext 0) #5
  %call.i51 = tail call ptr @bcma_find_core_unit(ptr noundef %bus, i16 noundef zeroext 2100, i8 noundef zeroext 0) #5
  %tobool.not = icmp eq ptr %call.i, null
  %tobool10.not = icmp eq ptr %call.i50, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  %tobool12.not = icmp eq ptr %call.i51, null
  %or.cond49 = select i1 %or.cond, i1 true, i1 %tobool12.not
  br i1 %or.cond49, label %if.end.cleanup_crit_edge, label %land.lhs.true13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %aread32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %aread32.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %aread32.i, align 4
  %call.i52 = tail call i32 %8(ptr noundef nonnull %call.i, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134612228, i32 %call.i52)
  %cmp15 = icmp eq i32 %call.i52, 134612228
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true17:                                  ; preds = %land.lhs.true13
  %9 = ptrtoint ptr %call.i50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i50, align 8
  %ops.i53 = getelementptr inbounds %struct.bcma_bus, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i53, align 4
  %aread32.i54 = getelementptr inbounds %struct.bcma_host_ops, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %aread32.i54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aread32.i54, align 4
  %call.i55 = tail call i32 %14(ptr noundef nonnull %call.i50, i16 noundef zeroext 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 134612228, i32 %call.i55)
  %cmp19 = icmp eq i32 %call.i55, 134612228
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true17.cleanup_crit_edge

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %15 = ptrtoint ptr %call.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i51, align 8
  %ops.i56 = getelementptr inbounds %struct.bcma_bus, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ops.i56 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i56, align 4
  %aread32.i57 = getelementptr inbounds %struct.bcma_host_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %aread32.i57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aread32.i57, align 4
  %call.i58 = tail call i32 %20(ptr noundef nonnull %call.i51, i16 noundef zeroext 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %call.i58)
  %cmp23 = icmp eq i32 %call.i58, 136
  br i1 %cmp23, label %if.then25, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then25:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 8
  %ops.i59 = getelementptr inbounds %struct.bcma_bus, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %ops.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i59, align 4
  %awrite32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %awrite32.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %awrite32.i, align 4
  tail call void %26(ptr noundef nonnull %call.i, i16 noundef zeroext 4, i32 noundef 117835012) #5
  %27 = ptrtoint ptr %call.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i50, align 8
  %ops.i60 = getelementptr inbounds %struct.bcma_bus, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %ops.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i60, align 4
  %awrite32.i61 = getelementptr inbounds %struct.bcma_host_ops, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %awrite32.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %awrite32.i61, align 4
  tail call void %32(ptr noundef nonnull %call.i50, i16 noundef zeroext 4, i32 noundef 117835012) #5
  %33 = ptrtoint ptr %call.i51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i51, align 8
  %ops.i62 = getelementptr inbounds %struct.bcma_bus, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ops.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i62, align 4
  %awrite32.i63 = getelementptr inbounds %struct.bcma_host_ops, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %awrite32.i63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %awrite32.i63, align 4
  tail call void %38(ptr noundef nonnull %call.i51, i16 noundef zeroext 256, i32 noundef 135) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_fix_i2s_irqflag.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_fix_i2s_irqflag, %cleanup)) #5
          to label %if.then31 [label %cleanup], !srcloc !67

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %bus, i32 0, i32 11
  %41 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num, align 1
  %conv32 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_fix_i2s_irqflag.__UNIQUE_ID_ddebug238, ptr noundef %40, ptr noundef nonnull @.str.11, i32 noundef %conv32) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then25, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcma_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bcma_find_core_unit(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_core_mips_set_irq(ptr noundef %dev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bcma_core_mips_irq(ptr noundef %dev)
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %drv_mips = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %drv_mips to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_mips, align 4
  %chipinfo.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %chipinfo.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chipinfo.i.i, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %5, label %entry.if.end5.i_crit_edge [
    i16 -18374, label %land.lhs.true.i.i
    i16 21335, label %entry.land.lhs.true.i14.i_crit_edge
    i16 18249, label %entry.land.lhs.true.i14.i_crit_edge156
  ]

entry.land.lhs.true.i14.i_crit_edge156:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i

entry.land.lhs.true.i14.i_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

land.lhs.true.i.i:                                ; preds = %entry
  %rev.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rev.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp5.i.i = icmp eq i8 %8, 0
  br i1 %cmp5.i.i, label %bcma_core_mips_bcm47162a0_quirk.exit.i, label %land.lhs.true.i.i.if.end5.i_crit_edge

land.lhs.true.i.i.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm47162a0_quirk.exit.i:           ; preds = %land.lhs.true.i.i
  %id8.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %id8.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id8.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2092, i16 %10)
  %cmp10.i.i = icmp eq i16 %10, 2092
  br i1 %cmp10.i.i, label %if.then.i, label %bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge

bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge: ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then.i:                                        ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %core_index.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 6
  %11 = ptrtoint ptr %core_index.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %core_index.i, align 1
  %conv.i = zext i8 %12 to i32
  br label %bcma_core_mips_irqflag.exit

land.lhs.true.i14.i:                              ; preds = %entry.land.lhs.true.i14.i_crit_edge, %entry.land.lhs.true.i14.i_crit_edge156
  %pkg.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %pkg.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pkg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %14)
  %cmp11.i.i = icmp eq i8 %14, 11
  br i1 %cmp11.i.i, label %bcma_core_mips_bcm5357b0_quirk.exit.i, label %land.lhs.true.i14.i.if.end5.i_crit_edge

land.lhs.true.i14.i.if.end5.i_crit_edge:          ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

bcma_core_mips_bcm5357b0_quirk.exit.i:            ; preds = %land.lhs.true.i14.i
  %id14.i.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %id14.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id14.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2073, i16 %16)
  %cmp16.i.i = icmp eq i16 %16, 2073
  br i1 %cmp16.i.i, label %if.then2.i, label %bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge

bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge: ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

if.then2.i:                                       ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %core_index3.i = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %core_index3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %core_index3.i, align 1
  %conv4.i = zext i8 %18 to i32
  br label %bcma_core_mips_irqflag.exit

if.end5.i:                                        ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i.if.end5.i_crit_edge, %land.lhs.true.i14.i.if.end5.i_crit_edge, %bcma_core_mips_bcm47162a0_quirk.exit.i.if.end5.i_crit_edge, %land.lhs.true.i.i.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %aread32.i.i = getelementptr inbounds %struct.bcma_host_ops, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %aread32.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aread32.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %dev, i16 noundef zeroext 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %and.i = and i32 %call.i.i, 31
  %spec.select.i = select i1 %tobool.not.i, i32 63, i32 %and.i
  br label %bcma_core_mips_irqflag.exit

bcma_core_mips_irqflag.exit:                      ; preds = %if.end5.i, %if.then2.i, %if.then.i
  %retval.0.i107 = phi i32 [ %conv.i, %if.then.i ], [ %conv4.i, %if.then2.i ], [ %spec.select.i, %if.end5.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %do.body4, label %do.end9, !prof !68

do.body4:                                         ; preds = %bcma_core_mips_irqflag.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/bcma/driver_mips.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 102, 0\0A.popsection", ""() #5, !srcloc !69
  unreachable

do.end9:                                          ; preds = %bcma_core_mips_irqflag.exit
  %add = add i32 %irq, 2
  %irq10 = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %irq10, align 4
  %24 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call, label %if.then15 [
    i32 0, label %if.then12
    i32 5, label %do.end9.if.end18_crit_edge
  ]

do.end9.if.end18_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %ops.i = getelementptr inbounds %struct.bcma_bus, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %read32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %read32.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read32.i, align 4
  %call.i = tail call i32 %30(ptr noundef %3, i16 noundef zeroext 20) #5
  %shl = shl nuw i32 1, %retval.0.i107
  %neg = xor i32 %shl, -1
  %and = and i32 %call.i, %neg
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 8
  %ops.i108 = getelementptr inbounds %struct.bcma_bus, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ops.i108 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i108, align 4
  %write32.i = getelementptr inbounds %struct.bcma_host_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %write32.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write32.i, align 4
  tail call void %36(ptr noundef %3, i16 noundef zeroext 20, i32 noundef %and) #5
  br label %if.end18

if.then15:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call.tr = trunc i32 %call to i16
  %37 = shl i16 %call.tr, 2
  %conv = add i16 %37, 20
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 8
  %ops.i109 = getelementptr inbounds %struct.bcma_bus, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %ops.i109 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i109, align 4
  %write32.i110 = getelementptr inbounds %struct.bcma_host_ops, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %write32.i110 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write32.i110, align 4
  tail call void %43(ptr noundef %3, i16 noundef zeroext %conv, i32 noundef 0) #5
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then12, %do.end9.if.end18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp19 = icmp eq i32 %irq, 0
  br i1 %cmp19, label %if.then21, label %if.else24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 8
  %ops.i111 = getelementptr inbounds %struct.bcma_bus, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %ops.i111 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ops.i111, align 4
  %read32.i112 = getelementptr inbounds %struct.bcma_host_ops, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %read32.i112 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %read32.i112, align 4
  %call.i113 = tail call i32 %49(ptr noundef %3, i16 noundef zeroext 20) #5
  %shl23 = shl nuw i32 1, %retval.0.i107
  %or = or i32 %call.i113, %shl23
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %ops.i114 = getelementptr inbounds %struct.bcma_bus, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %ops.i114 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i114, align 4
  %write32.i115 = getelementptr inbounds %struct.bcma_host_ops, ptr %53, i32 0, i32 5
  %54 = ptrtoint ptr %write32.i115 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %write32.i115, align 4
  tail call void %55(ptr noundef %3, i16 noundef zeroext 20, i32 noundef %or) #5
  br label %do.body54

if.else24:                                        ; preds = %if.end18
  %irq.tr = trunc i32 %irq to i16
  %56 = shl i16 %irq.tr, 2
  %conv27 = add i16 %56, 20
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %ops.i116 = getelementptr inbounds %struct.bcma_bus, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %ops.i116 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i116, align 4
  %read32.i117 = getelementptr inbounds %struct.bcma_host_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %read32.i117 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read32.i117, align 4
  %call.i118 = tail call i32 %62(ptr noundef %3, i16 noundef zeroext %conv27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %tobool29.not = icmp eq i32 %call.i118, 0
  br i1 %tobool29.not, label %if.else24.if.end48_crit_edge, label %if.then30

if.else24.if.end48_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then30:                                        ; preds = %if.else24
  %cores = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %bcma_core_mips_irqflag.exit146.for.cond_crit_edge, %if.then30
  %.pn.in = phi ptr [ %cores, %if.then30 ], [ %.pn, %bcma_core_mips_irqflag.exit146.for.cond_crit_edge ]
  %63 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn.in, align 4
  %core31.0 = getelementptr i8, ptr %.pn, i32 -1008
  %cmp33.not = icmp eq ptr %.pn, %cores
  br i1 %cmp33.not, label %for.cond.if.end48_crit_edge, label %for.body

for.cond.if.end48_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

for.body:                                         ; preds = %for.cond
  %64 = ptrtoint ptr %core31.0 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %core31.0, align 8
  %chipinfo.i.i119 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 6
  %66 = ptrtoint ptr %chipinfo.i.i119 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %chipinfo.i.i119, align 4
  %68 = zext i16 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %67, label %for.body.if.end5.i144_crit_edge [
    i16 -18374, label %land.lhs.true.i.i122
    i16 21335, label %for.body.land.lhs.true.i14.i131_crit_edge
    i16 18249, label %for.body.land.lhs.true.i14.i131_crit_edge157
  ]

for.body.land.lhs.true.i14.i131_crit_edge157:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i131

for.body.land.lhs.true.i14.i131_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i14.i131

for.body.if.end5.i144_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i144

land.lhs.true.i.i122:                             ; preds = %for.body
  %rev.i.i120 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %rev.i.i120 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rev.i.i120, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp5.i.i121 = icmp eq i8 %70, 0
  br i1 %cmp5.i.i121, label %bcma_core_mips_bcm47162a0_quirk.exit.i125, label %land.lhs.true.i.i122.if.end5.i144_crit_edge

land.lhs.true.i.i122.if.end5.i144_crit_edge:      ; preds = %land.lhs.true.i.i122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i144

bcma_core_mips_bcm47162a0_quirk.exit.i125:        ; preds = %land.lhs.true.i.i122
  %id8.i.i123 = getelementptr i8, ptr %.pn, i32 -1002
  %71 = ptrtoint ptr %id8.i.i123 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %id8.i.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2092, i16 %72)
  %cmp10.i.i124 = icmp eq i16 %72, 2092
  br i1 %cmp10.i.i124, label %if.then.i128, label %bcma_core_mips_bcm47162a0_quirk.exit.i125.if.end5.i144_crit_edge

bcma_core_mips_bcm47162a0_quirk.exit.i125.if.end5.i144_crit_edge: ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i144

if.then.i128:                                     ; preds = %bcma_core_mips_bcm47162a0_quirk.exit.i125
  call void @__sanitizer_cov_trace_pc() #7
  %core_index.i126 = getelementptr i8, ptr %.pn, i32 -55
  %73 = ptrtoint ptr %core_index.i126 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %core_index.i126, align 1
  %conv.i127 = zext i8 %74 to i32
  br label %bcma_core_mips_irqflag.exit146

land.lhs.true.i14.i131:                           ; preds = %for.body.land.lhs.true.i14.i131_crit_edge, %for.body.land.lhs.true.i14.i131_crit_edge157
  %pkg.i.i129 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 6, i32 2
  %75 = ptrtoint ptr %pkg.i.i129 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pkg.i.i129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %76)
  %cmp11.i.i130 = icmp eq i8 %76, 11
  br i1 %cmp11.i.i130, label %bcma_core_mips_bcm5357b0_quirk.exit.i134, label %land.lhs.true.i14.i131.if.end5.i144_crit_edge

land.lhs.true.i14.i131.if.end5.i144_crit_edge:    ; preds = %land.lhs.true.i14.i131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i144

bcma_core_mips_bcm5357b0_quirk.exit.i134:         ; preds = %land.lhs.true.i14.i131
  %id14.i.i132 = getelementptr i8, ptr %.pn, i32 -1002
  %77 = ptrtoint ptr %id14.i.i132 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %id14.i.i132, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2073, i16 %78)
  %cmp16.i.i133 = icmp eq i16 %78, 2073
  br i1 %cmp16.i.i133, label %if.then2.i137, label %bcma_core_mips_bcm5357b0_quirk.exit.i134.if.end5.i144_crit_edge

bcma_core_mips_bcm5357b0_quirk.exit.i134.if.end5.i144_crit_edge: ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i144

if.then2.i137:                                    ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i134
  call void @__sanitizer_cov_trace_pc() #7
  %core_index3.i135 = getelementptr i8, ptr %.pn, i32 -55
  %79 = ptrtoint ptr %core_index3.i135 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %core_index3.i135, align 1
  %conv4.i136 = zext i8 %80 to i32
  br label %bcma_core_mips_irqflag.exit146

if.end5.i144:                                     ; preds = %bcma_core_mips_bcm5357b0_quirk.exit.i134.if.end5.i144_crit_edge, %land.lhs.true.i14.i131.if.end5.i144_crit_edge, %bcma_core_mips_bcm47162a0_quirk.exit.i125.if.end5.i144_crit_edge, %land.lhs.true.i.i122.if.end5.i144_crit_edge, %for.body.if.end5.i144_crit_edge
  %ops.i.i138 = getelementptr inbounds %struct.bcma_bus, ptr %65, i32 0, i32 2
  %81 = ptrtoint ptr %ops.i.i138 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ops.i.i138, align 4
  %aread32.i.i139 = getelementptr inbounds %struct.bcma_host_ops, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %aread32.i.i139 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %aread32.i.i139, align 4
  %call.i.i140 = tail call i32 %84(ptr noundef %core31.0, i16 noundef zeroext 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool.not.i141 = icmp eq i32 %call.i.i140, 0
  %and.i142 = and i32 %call.i.i140, 31
  %spec.select.i143 = select i1 %tobool.not.i141, i32 63, i32 %and.i142
  br label %bcma_core_mips_irqflag.exit146

bcma_core_mips_irqflag.exit146:                   ; preds = %if.end5.i144, %if.then2.i137, %if.then.i128
  %retval.0.i145 = phi i32 [ %conv.i127, %if.then.i128 ], [ %conv4.i136, %if.then2.i137 ], [ %spec.select.i143, %if.end5.i144 ]
  %shl38 = shl nuw i32 1, %retval.0.i145
  %cmp39 = icmp eq i32 %shl38, %call.i118
  br i1 %cmp39, label %if.then41, label %bcma_core_mips_irqflag.exit146.for.cond_crit_edge

bcma_core_mips_irqflag.exit146.for.cond_crit_edge: ; preds = %bcma_core_mips_irqflag.exit146
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then41:                                        ; preds = %bcma_core_mips_irqflag.exit146
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @bcma_core_mips_set_irq(ptr noundef %core31.0, i32 noundef 0)
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %for.cond.if.end48_crit_edge, %if.else24.if.end48_crit_edge
  %shl52 = shl nuw i32 1, %retval.0.i107
  %85 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %3, align 8
  %ops.i147 = getelementptr inbounds %struct.bcma_bus, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i147, align 4
  %write32.i148 = getelementptr inbounds %struct.bcma_host_ops, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %write32.i148 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write32.i148, align 4
  tail call void %90(ptr noundef %3, i16 noundef zeroext %conv27, i32 noundef %shl52) #5
  br label %do.body54

do.body54:                                        ; preds = %if.end48, %if.then21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_mips_set_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_mips_set_irq, %do.end77)) #5
          to label %if.then66 [label %do.end77], !srcloc !67

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %1, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %1, i32 0, i32 11
  %93 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %num, align 1
  %conv68 = zext i8 %94 to i32
  %id69 = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %id69 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %id69, align 2
  %conv70 = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call)
  %cmp71 = icmp ult i32 %call, 5
  %add73 = add i32 %call, 2
  %spec.select = select i1 %cmp71, i32 %add73, i32 0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_mips_set_irq.__UNIQUE_ID_ddebug236, ptr noundef %92, ptr noundef nonnull @.str.16, i32 noundef %conv68, i32 noundef %conv70, i32 noundef %spec.select, i32 noundef %add) #5
  br label %do.end77

do.end77:                                         ; preds = %if.then66, %do.body54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcma_core_mips_print_irq(ptr nocapture noundef readonly %dev, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  %interrupts = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %interrupts) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp1 = icmp eq i32 %irq, 0
  %cond = select i1 %cmp1, i32 42, i32 32
  %0 = call ptr @memset(ptr %interrupts, i32 255, i32 25)
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %interrupts, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, i32 noundef %cond)
  %add.ptr = getelementptr i8, ptr %interrupts, i32 %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %irq)
  %cmp1.1 = icmp eq i32 %irq, 1
  %cond.1 = select i1 %cmp1.1, i32 42, i32 32
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18, i32 noundef %cond.1)
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %call.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %irq)
  %cmp1.2 = icmp eq i32 %irq, 2
  %cond.2 = select i1 %cmp1.2, i32 42, i32 32
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19, i32 noundef %cond.2)
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %call.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %irq)
  %cmp1.3 = icmp eq i32 %irq, 3
  %cond.3 = select i1 %cmp1.3, i32 42, i32 32
  %call.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.2, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, i32 noundef %cond.3)
  %add.ptr.3 = getelementptr i8, ptr %add.ptr.2, i32 %call.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %irq)
  %cmp1.4 = icmp eq i32 %irq, 4
  %cond.4 = select i1 %cmp1.4, i32 42, i32 32
  %call.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.3, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef %cond.4)
  %add.ptr.4 = getelementptr i8, ptr %add.ptr.3, i32 %call.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %irq)
  %cmp1.5 = icmp eq i32 %irq, 5
  %cond.5 = select i1 %cmp1.5, i32 42, i32 32
  %call.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.4, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %cond.5)
  %add.ptr.5 = getelementptr i8, ptr %add.ptr.4, i32 %call.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %irq)
  %cmp1.6 = icmp eq i32 %irq, 6
  %cond.6 = select i1 %cmp1.6, i32 42, i32 32
  %call.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %cond.6)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcma_core_mips_print_irq.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcma_core_mips_print_irq, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %num = getelementptr inbounds %struct.bcma_bus, ptr %2, i32 0, i32 11
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 1
  %conv = zext i8 %6 to i32
  %id8 = getelementptr inbounds %struct.bcma_device, ptr %dev, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %id8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id8, align 2
  %conv9 = zext i16 %8 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcma_core_mips_print_irq.__UNIQUE_ID_ddebug237, ptr noundef %4, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv9, ptr noundef nonnull %interrupts) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %interrupts) #5
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/bcma/driver_mips.c", i32 190, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @bcma_cpu_clock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @bcma_cpu_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_bcma_cpu_clock, !9, !"__ksymtab_bcma_cpu_clock", i1 false, i1 false}
!9 = !{!"../drivers/bcma/driver_mips.c", i32 193, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bcma/driver_mips.c", i32 308, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @bcma_core_mips_init.__UNIQUE_ID_ddebug239, !11, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bcma/driver_mips.c", i32 352, i32 3}
!17 = !{ptr @bcma_core_mips_init._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @bcma_core_mips_init._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bcma/driver_mips.c", i32 356, i32 2}
!21 = !{ptr @bcma_core_mips_init.__UNIQUE_ID_ddebug240, !20, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bcma/driver_mips.c", i32 294, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @bcma_fix_i2s_irqflag.__UNIQUE_ID_ddebug238, !23, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/bcma/driver_mips.c", i32 151, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bcma_core_mips_set_irq_name._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @bcma_core_mips_set_irq_name._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/bcma/driver_mips.c", i32 140, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @bcma_core_mips_set_irq.__UNIQUE_ID_ddebug236, !33, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 35}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 43}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 48}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 53}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 58}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 63}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 68}
!50 = distinct !{null, !51, !"irq_name", i1 false, i1 false}
!51 = !{!"../drivers/bcma/driver_mips.c", i32 163, i32 21}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/bcma/driver_mips.c", i32 168, i32 25}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/bcma/driver_mips.c", i32 171, i32 2}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @bcma_core_mips_print_irq.__UNIQUE_ID_ddebug237, !55, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148514694, i64 2148514699, i64 2148514712, i64 2148514756, i64 2148514790, i64 2148514811}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2155124619, i64 2155125110, i64 2155124656, i64 2155124712, i64 2155124746, i64 2155124770, i64 2155124811, i64 2155124832, i64 2155124860, i64 2155124894}
