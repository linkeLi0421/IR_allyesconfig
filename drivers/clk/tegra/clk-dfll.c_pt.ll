; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-dfll.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-dfll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tegra_dfll_runtime_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_runtime_resume\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_runtime_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_runtime_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_runtime_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_dfll_runtime_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_runtime_suspend\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_runtime_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_runtime_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_runtime_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_dfll_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_suspend\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_dfll_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_resume\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_resume\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_dfll_register\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_register\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_register:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_register\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra_dfll_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra_dfll_unregister\09\09\09\09"
module asm "\09.long\09__crc_tegra_dfll_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra_dfll_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra_dfll_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_tegra_dfll_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tegra_dfll = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.clk_hw, ptr, %struct.dfll_rate_req, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [33 x i32], [33 x i32], i32, i8, i8, i8, i8, i32, i32, ptr, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.dfll_rate_req = type { i32, i32, i32, i8, i8 }
%struct.tegra_dfll_soc_data = type { ptr, i32, ptr, %struct.rail_alignment, ptr, ptr, ptr }
%struct.rail_alignment = type { i32, i32 }
%struct.cvb_table = type { i32, i32, i32, i32, i32, i32, [40 x %struct.cvb_table_freq_entry], %struct.cvb_cpu_dfll_data }
%struct.cvb_table_freq_entry = type { i32, %struct.cvb_coefficients }
%struct.cvb_coefficients = type { i32, i32, i32 }
%struct.cvb_cpu_dfll_data = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@tegra_dfll_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not enable ref clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_dfll_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/tegra/clk-dfll.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dfll_runtime_resume._entry_ptr = internal global ptr @tegra_dfll_runtime_resume._entry, section ".printk_index", align 4
@tegra_dfll_runtime_resume._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not enable register clock: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_dfll_runtime_resume._entry_ptr.7 = internal global ptr @tegra_dfll_runtime_resume._entry.5, section ".printk_index", align 4
@tegra_dfll_runtime_resume._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 408, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not enable i2c clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dfll_runtime_resume._entry_ptr.10 = internal global ptr @tegra_dfll_runtime_resume._entry.8, section ".printk_index", align 4
@__kstrtab_tegra_dfll_runtime_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_runtime_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_runtime_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_runtime_resume to i32), ptr @__kstrtab_tegra_dfll_runtime_resume, ptr @__kstrtabns_tegra_dfll_runtime_resume }, section "___ksymtab+tegra_dfll_runtime_resume", align 4
@__kstrtab_tegra_dfll_runtime_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_runtime_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_runtime_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_runtime_suspend to i32), ptr @__kstrtab_tegra_dfll_runtime_suspend, ptr @__kstrtabns_tegra_dfll_runtime_suspend }, section "___ksymtab+tegra_dfll_runtime_suspend", align 4
@tegra_dfll_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1528, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DFLL still enabled while suspending\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dfll_suspend\00", [45 x i8] zeroinitializer }, align 32
@tegra_dfll_suspend._entry_ptr = internal global ptr @tegra_dfll_suspend._entry, section ".printk_index", align 4
@__kstrtab_tegra_dfll_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_suspend to i32), ptr @__kstrtab_tegra_dfll_suspend, ptr @__kstrtabns_tegra_dfll_suspend }, section "___ksymtab+tegra_dfll_suspend", align 4
@__kstrtab_tegra_dfll_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_resume to i32), ptr @__kstrtab_tegra_dfll_resume, ptr @__kstrtabns_tegra_dfll_resume }, section "___ksymtab+tegra_dfll_resume", align 4
@tegra_dfll_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1942, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no tegra_dfll_soc_data provided\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_dfll_register\00", [44 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr = internal global ptr @tegra_dfll_register._entry, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvco\00", [27 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 1956, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get dvco reset\0A\00", [39 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.18 = internal global ptr @tegra_dfll_register._entry.16, section ".printk_index", align 4
@tegra_dfll_register._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.2, i32 1962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"couldn't parse device tree parameters\0A\00", [57 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.21 = internal global ptr @tegra_dfll_register._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,pwm-to-pmic\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-cpu\00", [24 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 1972, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't get vdd_cpu regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.26 = internal global ptr @tegra_dfll_register._entry.24, section ".printk_index", align 4
@tegra_dfll_register._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 1983, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't build LUT\0A\00", [44 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.29 = internal global ptr @tegra_dfll_register._entry.27, section ".printk_index", align 4
@tegra_dfll_register._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.2, i32 1989, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no control register resource\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.32 = internal global ptr @tegra_dfll_register._entry.30, section ".printk_index", align 4
@tegra_dfll_register._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.14, ptr @.str.2, i32 1995, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't ioremap DFLL control registers\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.35 = internal global ptr @tegra_dfll_register._entry.33, section ".printk_index", align 4
@tegra_dfll_register._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.2, i32 2001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no i2c_base resource\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.38 = internal global ptr @tegra_dfll_register._entry.36, section ".printk_index", align 4
@tegra_dfll_register._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.2, i32 2007, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't ioremap i2c_base resource\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.41 = internal global ptr @tegra_dfll_register._entry.39, section ".printk_index", align 4
@tegra_dfll_register._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.2, i32 2013, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no i2c_controller_base resource\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.44 = internal global ptr @tegra_dfll_register._entry.42, section ".printk_index", align 4
@tegra_dfll_register._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.14, ptr @.str.2, i32 2021, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"couldn't ioremap i2c_controller_base resource\0A\00", [49 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.47 = internal global ptr @tegra_dfll_register._entry.45, section ".printk_index", align 4
@tegra_dfll_register._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.14, ptr @.str.2, i32 2027, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no lut_base resource\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.50 = internal global ptr @tegra_dfll_register._entry.48, section ".printk_index", align 4
@tegra_dfll_register._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.14, ptr @.str.2, i32 2034, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't ioremap lut_base resource\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.53 = internal global ptr @tegra_dfll_register._entry.51, section ".printk_index", align 4
@tegra_dfll_register._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.14, ptr @.str.2, i32 2040, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DFLL clock init error\0A\00", [41 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.56 = internal global ptr @tegra_dfll_register._entry.54, section ".printk_index", align 4
@tegra_dfll_register._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.14, ptr @.str.2, i32 2051, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DFLL clk registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dfll_register._entry_ptr.59 = internal global ptr @tegra_dfll_register._entry.57, section ".printk_index", align 4
@__kstrtab_tegra_dfll_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_register = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_register to i32), ptr @__kstrtab_tegra_dfll_register, ptr @__kstrtabns_tegra_dfll_register }, section "___ksymtab+tegra_dfll_register", align 4
@tegra_dfll_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 2076, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"must disable DFLL before removing driver\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_dfll_unregister\00", [42 x i8] zeroinitializer }, align 32
@tegra_dfll_unregister._entry_ptr = internal global ptr @tegra_dfll_unregister._entry, section ".printk_index", align 4
@__kstrtab_tegra_dfll_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra_dfll_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra_dfll_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra_dfll_unregister to i32), ptr @__kstrtab_tegra_dfll_unregister, ptr @__kstrtabns_tegra_dfll_unregister }, section "___ksymtab+tegra_dfll_unregister", align 4
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,droop-ctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,sample-rate\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,force-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia,cf\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia,ci\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nvidia,cg\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,cg-scale\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@dfll_fetch_common_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 1914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"missing clock-output-names property\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dfll_fetch_common_params\00", [39 x i8] zeroinitializer }, align 32
@dfll_fetch_common_params._entry_ptr = internal global ptr @dfll_fetch_common_params._entry, section ".printk_index", align 4
@read_dt_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1796, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read DT parameter %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_dt_param\00", [18 x i8] zeroinitializer }, align 32
@read_dt_param._entry_ptr = internal global ptr @read_dt_param._entry, section ".printk_index", align 4
@dfll_fetch_pwm_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 1848, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Missing step or alignment info for PWM regulator\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dfll_fetch_pwm_params\00", [42 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr = internal global ptr @dfll_fetch_pwm_params._entry, section ".printk_index", align 4
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvidia,pwm-tristate-microvolts\00", [33 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.75, ptr @.str.2, i32 1858, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"couldn't get initialized voltage\0A\00", [62 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr.79 = internal global ptr @dfll_fetch_pwm_params._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvidia,pwm-period-nanoseconds\00", [34 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.75, ptr @.str.2, i32 1864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get PWM period\0A\00", [39 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr.83 = internal global ptr @dfll_fetch_pwm_params._entry.81, section ".printk_index", align 4
@dfll_fetch_pwm_params._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.75, ptr @.str.2, i32 1871, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DT: missing pinctrl device\0A\00", [36 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr.86 = internal global ptr @dfll_fetch_pwm_params._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvfs_pwm_enable\00", [16 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.2, i32 1878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DT: missing pwm enabled state\0A\00", [33 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr.90 = internal global ptr @dfll_fetch_pwm_params._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvfs_pwm_disable\00", [47 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.75, ptr @.str.2, i32 1885, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DT: missing pwm disabled state\0A\00", [32 x i8] zeroinitializer }, align 32
@dfll_fetch_pwm_params._entry_ptr.94 = internal global ptr @dfll_fetch_pwm_params._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,i2c-fs-rate\00", [45 x i8] zeroinitializer }, align 32
@dfll_fetch_i2c_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1833, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"regulator unsuitable for DFLL I2C operation\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dfll_fetch_i2c_params\00", [42 x i8] zeroinitializer }, align 32
@dfll_fetch_i2c_params._entry_ptr = internal global ptr @dfll_fetch_i2c_params._entry, section ".printk_index", align 4
@dfll_build_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.2, i32 1768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't get vmax opp, empty opp table?\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfll_build_lut\00", [17 x i8] zeroinitializer }, align 32
@dfll_build_lut._entry_ptr = internal global ptr @dfll_build_lut._entry, section ".printk_index", align 4
@dfll_build_pwm_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 1665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"no voltage above DFLL minimum %d mV\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dfll_build_pwm_lut\00", [45 x i8] zeroinitializer }, align 32
@dfll_build_pwm_lut._entry_ptr = internal global ptr @dfll_build_pwm_lut._entry, section ".printk_index", align 4
@dfll_build_pwm_lut._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 1674, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no opp below DFLL minimum voltage %d mV\0A\00", [55 x i8] zeroinitializer }, align 32
@dfll_build_pwm_lut._entry_ptr.104 = internal global ptr @dfll_build_pwm_lut._entry.102, section ".printk_index", align 4
@dfll_build_i2c_lut._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1747, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"no opp above DFLL minimum voltage %d mV\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dfll_build_i2c_lut\00", [45 x i8] zeroinitializer }, align 32
@dfll_build_i2c_lut._entry_ptr = internal global ptr @dfll_build_i2c_lut._entry, section ".printk_index", align 4
@find_vdd_map_entry_exact._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 1599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no voltage map entry for %d uV\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"find_vdd_map_entry_exact\00", [39 x i8] zeroinitializer }, align 32
@find_vdd_map_entry_exact._entry_ptr = internal global ptr @find_vdd_map_entry_exact._entry, section ".printk_index", align 4
@find_vdd_map_entry_min._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.2, i32 1627, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no voltage map entry rounding to %d uV\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"find_vdd_map_entry_min\00", [41 x i8] zeroinitializer }, align 32
@find_vdd_map_entry_min._entry_ptr = internal global ptr @find_vdd_map_entry_min._entry, section ".printk_index", align 4
@.str.111 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 1427, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing ref clock\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dfll_init_clks\00", [17 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry_ptr = internal global ptr @dfll_init_clks._entry, section ".printk_index", align 4
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"soc\00", [28 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.113, ptr @.str.2, i32 1433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing soc clock\0A\00", [45 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry_ptr.117 = internal global ptr @dfll_init_clks._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.113, ptr @.str.2, i32 1439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"missing i2c clock\0A\00", [45 x i8] zeroinitializer }, align 32
@dfll_init_clks._entry_ptr.121 = internal global ptr @dfll_init_clks._entry.119, section ".printk_index", align 4
@dfll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.2, i32 1463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unexpected ref clk rate %lu, expecting %lu\00", [53 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dfll_init\00", [22 x i8] zeroinitializer }, align 32
@dfll_init._entry_ptr = internal global ptr @dfll_init._entry, section ".printk_index", align 4
@dfll_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1471, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to prepare ref_clk\0A\00", [37 x i8] zeroinitializer }, align 32
@dfll_init._entry_ptr.126 = internal global ptr @dfll_init._entry.124, section ".printk_index", align 4
@dfll_init._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 1477, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to prepare soc_clk\0A\00", [37 x i8] zeroinitializer }, align 32
@dfll_init._entry_ptr.129 = internal global ptr @dfll_init._entry.127, section ".printk_index", align 4
@dfll_init._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.123, ptr @.str.2, i32 1483, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to prepare i2c_clk\0A\00", [37 x i8] zeroinitializer }, align 32
@dfll_init._entry_ptr.132 = internal global ptr @dfll_init._entry.130, section ".printk_index", align 4
@dfll_clk_init_data = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr null, ptr @dfll_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dfll_register_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.2, i32 1188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DFLL clock registration error\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dfll_register_clk\00", [46 x i8] zeroinitializer }, align 32
@dfll_register_clk._entry_ptr = internal global ptr @dfll_register_clk._entry, section ".printk_index", align 4
@dfll_register_clk._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 1195, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"of_clk_add_provider() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@dfll_register_clk._entry_ptr.137 = internal global ptr @dfll_register_clk._entry.135, section ".printk_index", align 4
@dfll_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @dfll_clk_enable, ptr @dfll_clk_disable, ptr @dfll_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dfll_clk_recalc_rate, ptr null, ptr @dfll_clk_determine_rate, ptr null, ptr null, ptr @dfll_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dfll_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot enable DFLL in %s mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfll_enable\00", [20 x i8] zeroinitializer }, align 32
@dfll_enable._entry_ptr = internal global ptr @dfll_enable._entry, section ".printk_index", align 4
@mode_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"uninitialized\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"open_loop\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"closed_loop\00", [20 x i8] zeroinitializer }, align 32
@dfll_lock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 1026, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Cannot lock DFLL at rate 0\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dfll_lock\00", [22 x i8] zeroinitializer }, align 32
@dfll_lock._entry_ptr = internal global ptr @dfll_lock._entry, section ".printk_index", align 4
@dfll_lock._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 1043, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Cannot lock DFLL in %s mode\0A\00", [63 x i8] zeroinitializer }, align 32
@dfll_lock._entry_ptr.148 = internal global ptr @dfll_lock._entry.146, section ".printk_index", align 4
@dfll_pwm_set_output_enabled._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"setting enable state failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dfll_pwm_set_output_enabled\00", [36 x i8] zeroinitializer }, align 32
@dfll_pwm_set_output_enabled._entry_ptr = internal global ptr @dfll_pwm_set_output_enabled._entry, section ".printk_index", align 4
@dfll_pwm_set_output_enabled._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.2, i32 595, ptr @.str.153, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting disable state failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dfll_pwm_set_output_enabled._entry_ptr.154 = internal global ptr @dfll_pwm_set_output_enabled._entry.151, section ".printk_index", align 4
@dfll_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 950, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot disable DFLL in %s mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dfll_disable\00", [19 x i8] zeroinitializer }, align 32
@dfll_disable._entry_ptr = internal global ptr @dfll_disable._entry, section ".printk_index", align 4
@dfll_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.158, ptr @.str.2, i32 1073, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Cannot unlock DFLL in %s mode\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfll_unlock\00", [20 x i8] zeroinitializer }, align 32
@dfll_unlock._entry_ptr = internal global ptr @dfll_unlock._entry, section ".printk_index", align 4
@dfll_calculate_rate_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.2, i32 846, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Rate %lu is too low\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dfll_calculate_rate_request\00", [36 x i8] zeroinitializer }, align 32
@dfll_calculate_rate_request._entry_ptr = internal global ptr @dfll_calculate_rate_request._entry, section ".printk_index", align 4
@dfll_calculate_rate_request._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Rate %lu is above dfll range\0A\00", [62 x i8] zeroinitializer }, align 32
@dfll_calculate_rate_request._entry_ptr.163 = internal global ptr @dfll_calculate_rate_request._entry.161, section ".printk_index", align 4
@dfll_request_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str.2, i32 918, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Cannot set DFLL rate in %s mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dfll_request_rate\00", [46 x i8] zeroinitializer }, align 32
@dfll_request_rate._entry_ptr = internal global ptr @dfll_request_rate._entry, section ".printk_index", align 4
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_dfll_fcpu\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @enable_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@lock_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @lock_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@rate_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rate_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@attr_registers_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @attr_registers_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CONTROL REGISTERS:\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[0x%02x] = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0AI2C and INTR REGISTERS:\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\0AINTEGRATED I2C CONTROLLER REGISTERS:\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0ALUT:\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 395, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 401, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 408, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1528, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1942, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1954, i32 49 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1956, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1962, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1966, i32 46 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1970, i32 45 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1972, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1983, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1989, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1995, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2001, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2007, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2013, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2020, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2027, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2033, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2040, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2051, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 2075, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1903, i32 26 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1904, i32 26 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1905, i32 26 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1906, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1907, i32 26 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1908, i32 26 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1910, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1912, i32 48 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1914, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1795, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1847, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1855, i32 26 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1858, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1862, i32 26 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1864, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1871, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1876, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1878, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1883, i32 12 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1885, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1819, i32 25 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1832, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1768, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1664, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1673, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1746, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1599, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1627, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1425, i32 38 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1427, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1431, i32 38 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1433, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1437, i32 38 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1439, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1462, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1471, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1477, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1483, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant [19 x i8] c"dfll_clk_init_data\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1166, i32 29 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1188, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1195, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant [13 x i8] c"dfll_clk_ops\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1157, i32 29 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 970, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant [10 x i8] c"mode_name\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 319, i32 27 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 320, i32 25 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 321, i32 20 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 322, i32 21 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 323, i32 23 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1025, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1042, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 578, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 595, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 949, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1072, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 845, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 856, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 917, i32 3 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1369, i32 28 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1372, i32 29 }
@___asan_gen_.667 = private unnamed_addr constant [12 x i8] c"enable_fops\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1374, i32 29 }
@___asan_gen_.673 = private unnamed_addr constant [10 x i8] c"lock_fops\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1304, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1375, i32 29 }
@___asan_gen_.679 = private unnamed_addr constant [10 x i8] c"rate_fops\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1321, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1376, i32 22 }
@___asan_gen_.685 = private unnamed_addr constant [20 x i8] c"attr_registers_fops\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1360, i32 1 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1287, i32 1 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1328, i32 14 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1334, i32 17 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1337, i32 14 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1346, i32 15 }
@___asan_gen_.703 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.704 = private constant [32 x i8] c"../drivers/clk/tegra/clk-dfll.c\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.704, i32 1351, i32 15 }
@llvm.compiler.used = appending global [236 x ptr] [ptr @__ksymtab_tegra_dfll_register, ptr @__ksymtab_tegra_dfll_resume, ptr @__ksymtab_tegra_dfll_runtime_resume, ptr @__ksymtab_tegra_dfll_runtime_suspend, ptr @__ksymtab_tegra_dfll_suspend, ptr @__ksymtab_tegra_dfll_unregister, ptr @dfll_build_i2c_lut._entry, ptr @dfll_build_i2c_lut._entry_ptr, ptr @dfll_build_lut._entry, ptr @dfll_build_lut._entry_ptr, ptr @dfll_build_pwm_lut._entry, ptr @dfll_build_pwm_lut._entry.102, ptr @dfll_build_pwm_lut._entry_ptr, ptr @dfll_build_pwm_lut._entry_ptr.104, ptr @dfll_calculate_rate_request._entry, ptr @dfll_calculate_rate_request._entry.161, ptr @dfll_calculate_rate_request._entry_ptr, ptr @dfll_calculate_rate_request._entry_ptr.163, ptr @dfll_disable._entry, ptr @dfll_disable._entry_ptr, ptr @dfll_enable._entry, ptr @dfll_enable._entry_ptr, ptr @dfll_fetch_common_params._entry, ptr @dfll_fetch_common_params._entry_ptr, ptr @dfll_fetch_i2c_params._entry, ptr @dfll_fetch_i2c_params._entry_ptr, ptr @dfll_fetch_pwm_params._entry, ptr @dfll_fetch_pwm_params._entry.77, ptr @dfll_fetch_pwm_params._entry.81, ptr @dfll_fetch_pwm_params._entry.84, ptr @dfll_fetch_pwm_params._entry.88, ptr @dfll_fetch_pwm_params._entry.92, ptr @dfll_fetch_pwm_params._entry_ptr, ptr @dfll_fetch_pwm_params._entry_ptr.79, ptr @dfll_fetch_pwm_params._entry_ptr.83, ptr @dfll_fetch_pwm_params._entry_ptr.86, ptr @dfll_fetch_pwm_params._entry_ptr.90, ptr @dfll_fetch_pwm_params._entry_ptr.94, ptr @dfll_init._entry, ptr @dfll_init._entry.124, ptr @dfll_init._entry.127, ptr @dfll_init._entry.130, ptr @dfll_init._entry_ptr, ptr @dfll_init._entry_ptr.126, ptr @dfll_init._entry_ptr.129, ptr @dfll_init._entry_ptr.132, ptr @dfll_init_clks._entry, ptr @dfll_init_clks._entry.115, ptr @dfll_init_clks._entry.119, ptr @dfll_init_clks._entry_ptr, ptr @dfll_init_clks._entry_ptr.117, ptr @dfll_init_clks._entry_ptr.121, ptr @dfll_lock._entry, ptr @dfll_lock._entry.146, ptr @dfll_lock._entry_ptr, ptr @dfll_lock._entry_ptr.148, ptr @dfll_pwm_set_output_enabled._entry, ptr @dfll_pwm_set_output_enabled._entry.151, ptr @dfll_pwm_set_output_enabled._entry_ptr, ptr @dfll_pwm_set_output_enabled._entry_ptr.154, ptr @dfll_register_clk._entry, ptr @dfll_register_clk._entry.135, ptr @dfll_register_clk._entry_ptr, ptr @dfll_register_clk._entry_ptr.137, ptr @dfll_request_rate._entry, ptr @dfll_request_rate._entry_ptr, ptr @dfll_unlock._entry, ptr @dfll_unlock._entry_ptr, ptr @find_vdd_map_entry_exact._entry, ptr @find_vdd_map_entry_exact._entry_ptr, ptr @find_vdd_map_entry_min._entry, ptr @find_vdd_map_entry_min._entry_ptr, ptr @read_dt_param._entry, ptr @read_dt_param._entry_ptr, ptr @tegra_dfll_register._entry, ptr @tegra_dfll_register._entry.16, ptr @tegra_dfll_register._entry.19, ptr @tegra_dfll_register._entry.24, ptr @tegra_dfll_register._entry.27, ptr @tegra_dfll_register._entry.30, ptr @tegra_dfll_register._entry.33, ptr @tegra_dfll_register._entry.36, ptr @tegra_dfll_register._entry.39, ptr @tegra_dfll_register._entry.42, ptr @tegra_dfll_register._entry.45, ptr @tegra_dfll_register._entry.48, ptr @tegra_dfll_register._entry.51, ptr @tegra_dfll_register._entry.54, ptr @tegra_dfll_register._entry.57, ptr @tegra_dfll_register._entry_ptr, ptr @tegra_dfll_register._entry_ptr.18, ptr @tegra_dfll_register._entry_ptr.21, ptr @tegra_dfll_register._entry_ptr.26, ptr @tegra_dfll_register._entry_ptr.29, ptr @tegra_dfll_register._entry_ptr.32, ptr @tegra_dfll_register._entry_ptr.35, ptr @tegra_dfll_register._entry_ptr.38, ptr @tegra_dfll_register._entry_ptr.41, ptr @tegra_dfll_register._entry_ptr.44, ptr @tegra_dfll_register._entry_ptr.47, ptr @tegra_dfll_register._entry_ptr.50, ptr @tegra_dfll_register._entry_ptr.53, ptr @tegra_dfll_register._entry_ptr.56, ptr @tegra_dfll_register._entry_ptr.59, ptr @tegra_dfll_runtime_resume._entry, ptr @tegra_dfll_runtime_resume._entry.5, ptr @tegra_dfll_runtime_resume._entry.8, ptr @tegra_dfll_runtime_resume._entry_ptr, ptr @tegra_dfll_runtime_resume._entry_ptr.10, ptr @tegra_dfll_runtime_resume._entry_ptr.7, ptr @tegra_dfll_suspend._entry, ptr @tegra_dfll_suspend._entry_ptr, ptr @tegra_dfll_unregister._entry, ptr @tegra_dfll_unregister._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @dfll_clk_init_data, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @dfll_clk_ops, ptr @.str.138, ptr @.str.139, ptr @mode_name, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @enable_fops, ptr @.str.168, ptr @lock_fops, ptr @.str.169, ptr @rate_fops, ptr @.str.170, ptr @attr_registers_fops, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], section "llvm.metadata"
@0 = internal global [176 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_runtime_resume._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_runtime_resume._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_register._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dfll_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_common_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_dt_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_pwm_params._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_fetch_i2c_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_build_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_build_pwm_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_build_pwm_lut._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_build_i2c_lut._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_vdd_map_entry_exact._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_vdd_map_entry_min._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init_clks._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init_clks._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_init._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_clk_init_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_register_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_register_clk._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_lock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_lock._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_pwm_set_output_enabled._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_pwm_set_output_enabled._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_calculate_rate_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_calculate_rate_request._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfll_request_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attr_registers_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %soc_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %soc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call2) #10
  %6 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %i2c_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_clk, align 4
  %call10 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %do.end15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call10) #10
  %10 = ptrtoint ptr %soc_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  %12 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call2, %do.end7 ], [ %call10, %do.end15 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ref_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  %soc_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %soc_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  %i2c_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dvco_rst = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvco_rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dvco_rst = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvco_rst, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #7
  %mode1.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %mode1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode1.i, align 4
  %base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !345
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !346
  tail call fastcc void @dfll_set_default_params(ptr noundef %1)
  %soc = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %init_clock_trimmers = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %init_clock_trimmers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_clock_trimmers, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15() #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tune_range.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %tune_range.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tune_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 1
  br i1 %cmp.not.i, label %if.end.dfll_set_open_loop_config.exit_crit_edge, label %if.then.i

if.end.dfll_set_open_loop_config.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_set_open_loop_config.exit

if.then.i:                                        ; preds = %if.end
  %18 = ptrtoint ptr %tune_range.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tune_range.i, align 4
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 4
  %cvb.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cvb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cvb.i.i, align 4
  %cpu_dfll_data.i.i = getelementptr inbounds %struct.cvb_table, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %cpu_dfll_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu_dfll_data.i.i, align 4
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %24) #7, !srcloc !345
  %27 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc, align 4
  %cvb2.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %cvb2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cvb2.i.i, align 4
  %tune1.i.i = getelementptr inbounds %struct.cvb_table, ptr %30, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %tune1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tune1.i.i, align 4
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %32) #7, !srcloc !345
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !346
  %38 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc, align 4
  %set_clock_trimmers_low.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %set_clock_trimmers_low.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_clock_trimmers_low.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.then.i.dfll_set_open_loop_config.exit_crit_edge, label %if.then.i.i

if.then.i.dfll_set_open_loop_config.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_set_open_loop_config.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %41() #7
  br label %dfll_set_open_loop_config.exit

dfll_set_open_loop_config.exit:                   ; preds = %if.then.i.i, %if.then.i.dfll_set_open_loop_config.exit_crit_edge, %if.end.dfll_set_open_loop_config.exit_crit_edge
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !346
  %or.i = and i32 %44, -268500737
  %and.i = or i32 %or.i, 65280
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %and.i) #7, !srcloc !345
  %47 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #7, !srcloc !346
  tail call fastcc void @dfll_init_out_if(ptr noundef %1)
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %call.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dfll_set_default_params(ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_rate = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 12
  %0 = ptrtoint ptr %ref_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ref_rate, align 4
  %sample_rate = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 23
  %2 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sample_rate, align 4
  %mul = shl i32 %3, 5
  %add = add i32 %1, -1
  %sub = add i32 %add, %mul
  %div = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div)
  %cmp = icmp ugt i32 %div, 255
  br i1 %cmp, label %do.body4, label %do.end9, !prof !347

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1400, 0\0A.popsection", ""() #7, !srcloc !348
  unreachable

do.end9:                                          ; preds = %entry
  %base.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %div) #7, !srcloc !345
  %force_mode = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 24
  %6 = ptrtoint ptr %force_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force_mode, align 4
  %shl = shl i32 %7, 22
  %cf = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 25
  %8 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cf, align 4
  %shl10 = shl i32 %9, 16
  %or = or i32 %shl10, %shl
  %ci = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 26
  %10 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ci, align 4
  %shl11 = shl i32 %11, 8
  %or12 = or i32 %or, %shl11
  %cg = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 27
  %12 = ptrtoint ptr %cg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cg, align 4
  %or14 = or i32 %or12, %13
  %cg_scale = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 28
  %14 = ptrtoint ptr %cg_scale to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cg_scale, align 4, !range !349
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool15.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool15.not, i32 0, i32 16777216
  %or16 = or i32 %or14, %cond
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %or16) #7, !srcloc !345
  %tune_range.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 16
  %18 = ptrtoint ptr %tune_range.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %tune_range.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 1
  %19 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc.i, align 4
  %cvb.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %cvb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cvb.i, align 4
  %cpu_dfll_data.i = getelementptr inbounds %struct.cvb_table, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %cpu_dfll_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu_dfll_data.i, align 4
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !345
  %27 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %soc.i, align 4
  %cvb2.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %cvb2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cvb2.i, align 4
  %tune1.i = getelementptr inbounds %struct.cvb_table, ptr %30, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %tune1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tune1.i, align 4
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %34, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %32) #7, !srcloc !345
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !346
  %38 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %soc.i, align 4
  %set_clock_trimmers_low.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %set_clock_trimmers_low.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_clock_trimmers_low.i, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %do.end9.dfll_tune_low.exit_crit_edge, label %if.then.i

do.end9.dfll_tune_low.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_tune_low.exit

if.then.i:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %41() #7
  br label %dfll_tune_low.exit

dfll_tune_low.exit:                               ; preds = %if.then.i, %do.end9.dfll_tune_low.exit_crit_edge
  %droop_ctrl = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 22
  %42 = ptrtoint ptr %droop_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %droop_ctrl, align 4
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %45, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %43) #7, !srcloc !345
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 6) #7, !srcloc !345
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dfll_init_out_if(ptr noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lut_bottom = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 35
  %0 = ptrtoint ptr %lut_bottom to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lut_bottom, align 4
  %lut_min = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 36
  %2 = ptrtoint ptr %lut_min to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %lut_min, align 1
  %lut_size = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 34
  %3 = ptrtoint ptr %lut_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %lut_size, align 4
  %5 = trunc i32 %4 to i8
  %conv = add i8 %5, -1
  %lut_max = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 37
  %6 = ptrtoint ptr %lut_max to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %lut_max, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %conv)
  %cmp = icmp ult i8 %1, %conv
  %cond = zext i1 %cmp to i8
  %add = add i8 %1, %cond
  %lut_safe = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 38
  %7 = ptrtoint ptr %lut_safe to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %add, ptr %lut_safe, align 1
  %base.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !345
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #7, !srcloc !346
  %13 = ptrtoint ptr %lut_safe to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lut_safe, align 1
  %conv10 = zext i8 %14 to i32
  %shl = shl nuw i32 %conv10, 24
  %15 = ptrtoint ptr %lut_max to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lut_max, align 2
  %conv12 = zext i8 %16 to i32
  %shl13 = shl nuw nsw i32 %conv12, 16
  %or = or i32 %shl13, %shl
  %17 = ptrtoint ptr %lut_min to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %lut_min, align 1
  %conv15 = zext i8 %18 to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %or, %shl16
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %or17) #7, !srcloc !345
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !346
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %25, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #7, !srcloc !345
  %i2c_base.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 3
  %26 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #7, !srcloc !345
  %28 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %29, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 3) #7, !srcloc !345
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 39
  %30 = ptrtoint ptr %pmu_if to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pmu_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp18 = icmp eq i32 %31, 1
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %reg_init_uV = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 44
  %32 = ptrtoint ptr %reg_init_uV to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg_init_uV, align 4
  %soc = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 1
  %34 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc, align 4
  %step_uv = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %35, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %step_uv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %step_uv, align 4
  %lut_uv = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 33
  %38 = ptrtoint ptr %lut_uv to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lut_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %39)
  %cmp20.not = icmp ult i32 %33, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  %or.cond = select i1 %cmp20.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.then.if.end26_crit_edge, label %if.then22

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.then
  %sub23 = add i32 %33, -1
  %add24 = add i32 %sub23, %37
  %sub25 = sub i32 %add24, %39
  %div = udiv i32 %sub25, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %div)
  %cmp.i = icmp ugt i32 %div, 63
  br i1 %cmp.i, label %if.then22.if.end26_crit_edge, label %if.end.i

if.then22.if.end26_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end.i:                                         ; preds = %if.then22
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !346
  %and.i.i = and i32 %42, 64
  %or.i.i = or i32 %and.i.i, %div
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %or.i.i) #7, !srcloc !345
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #7, !srcloc !346
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr.i10.i.i = getelementptr i8, ptr %49, i32 36
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i.i) #7, !srcloc !346
  %mode.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 15
  %51 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %52)
  %cmp1.i = icmp ult i32 %52, 3
  %and.i = and i32 %50, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp1.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %if.then3.i, label %if.end.i.if.end26_crit_edge

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %54, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i2.i) #7, !srcloc !346
  %val.0.i.i = or i32 %55, 64
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %57, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %val.0.i.i) #7, !srcloc !345
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #7, !srcloc !346
  br label %if.end26

if.else:                                          ; preds = %entry
  %vdd_reg.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 6
  %lut_base.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %if.else
  %i.025.i = phi i32 [ 0, %if.else ], [ %inc.i, %if.end12.i.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %lut_min to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %lut_min, align 1
  %conv.i = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.025.i, i32 %conv.i)
  %cmp1.i65 = icmp ult i32 %i.025.i, %conv.i
  br i1 %cmp1.i65, label %for.body.i.if.end12.i_crit_edge, label %if.else.i

for.body.i.if.end12.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %lut_max to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %lut_max, align 2
  %conv5.i = zext i8 %64 to i32
  %65 = tail call i32 @llvm.umin.i32(i32 %i.025.i, i32 %conv5.i) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %for.body.i.if.end12.i_crit_edge
  %lut_index.0.i = phi i32 [ %conv.i, %for.body.i.if.end12.i_crit_edge ], [ %65, %if.else.i ]
  %66 = ptrtoint ptr %vdd_reg.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vdd_reg.i, align 4
  %arrayidx.i = getelementptr %struct.tegra_dfll, ptr %td, i32 0, i32 32, i32 %lut_index.0.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regulator_list_hardware_vsel(ptr noundef %67, i32 noundef %69) #7
  %70 = ptrtoint ptr %lut_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lut_base.i, align 4
  %mul.i = shl i32 %i.025.i, 2
  %add.ptr.i66 = getelementptr i8, ptr %71, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %call.i) #7, !srcloc !345
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %dfll_load_i2c_lut.exit, label %if.end12.i.for.body.i_crit_edge

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

dfll_load_i2c_lut.exit:                           ; preds = %if.end12.i
  %72 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i.i.i67 = getelementptr i8, ptr %73, i32 64
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67) #7, !srcloc !346
  %i2c_slave_addr.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 31
  %75 = ptrtoint ptr %i2c_slave_addr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %i2c_slave_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %76)
  %cmp.i68 = icmp ugt i32 %76, 127
  %or.i = or i32 %76, 1024
  %shl3.i = shl i32 %76, 1
  %val.0.i = select i1 %cmp.i68, i32 %or.i, i32 %shl3.i
  %or5.i = or i32 %val.0.i, 1077248
  %77 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %78, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or5.i) #7, !srcloc !345
  %i2c_reg.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 30
  %79 = ptrtoint ptr %i2c_reg.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %i2c_reg.i, align 4
  %81 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i41.i = getelementptr i8, ptr %82, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41.i, i32 %80) #7, !srcloc !345
  %i2c_clk_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 13
  %83 = ptrtoint ptr %i2c_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %i2c_clk_rate.i, align 4
  %i2c_fs_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 29
  %85 = ptrtoint ptr %i2c_fs_rate.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %i2c_fs_rate.i, align 4
  %mul.i69 = shl i32 %86, 3
  %add.i = add i32 %84, -1
  %sub.i = add i32 %add.i, %mul.i69
  %div.i = udiv i32 %sub.i, %mul.i69
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i69, i32 %sub.i)
  %tobool.not.i70 = icmp ugt i32 %mul.i69, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div.i)
  %cmp8.i = icmp ugt i32 %div.i, 65535
  %87 = or i1 %cmp8.i, %tobool.not.i70
  br i1 %87, label %do.body12.i, label %dfll_init_i2c_if.exit, !prof !347

do.body12.i:                                      ; preds = %dfll_load_i2c_lut.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 723, 0\0A.popsection", ""() #7, !srcloc !350
  unreachable

dfll_init_i2c_if.exit:                            ; preds = %dfll_load_i2c_lut.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sub19.i = shl nuw i32 %div.i, 16
  %or21.i = add i32 %sub19.i, -65535
  %i2c_controller_base.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 4
  %88 = ptrtoint ptr %i2c_controller_base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %i2c_controller_base.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %89, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %or21.i) #7, !srcloc !345
  %90 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i.i.i72 = getelementptr i8, ptr %91, i32 64
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i72) #7, !srcloc !346
  br label %if.end26

if.end26:                                         ; preds = %dfll_init_i2c_if.exit, %if.then3.i, %if.end.i.if.end26_crit_edge, %if.then22.if.end26_crit_edge, %if.then.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dfll_register(ptr noundef %pdev, ptr noundef %soc) #0 align 64 {
entry:
  %rate.i.i = alloca i32, align 4
  %rate.i.i.i = alloca i32, align 4
  %rate.i = alloca i32, align 4
  %vsel_reg.i = alloca i32, align 4
  %vsel_mask.i = alloca i32, align 4
  %pwm_period.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %soc, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %soc7 = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %soc7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %soc, ptr %soc7, align 4
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %dvco_rst = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 11
  %3 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %dvco_rst, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end19

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.17) #10
  %6 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvco_rst, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end4
  %droop_ctrl.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 22
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i.i, align 8
  %call.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.62, ptr noundef %droop_ctrl.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end19.read_dt_param.exit.i_crit_edge

if.end19.read_dt_param.exit.i_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit.i

do.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.62, i32 noundef %call.i.i.i.i) #10
  br label %read_dt_param.exit.i

read_dt_param.exit.i:                             ; preds = %do.end.i.i, %if.end19.read_dt_param.exit.i_crit_edge
  %sample_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 23
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %of_node.i74.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i74.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i74.i, align 8
  %call.i.i.i75.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.63, ptr noundef %sample_rate.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i75.i)
  %cmp.i76.i = icmp slt i32 %call.i.i.i75.i, 0
  br i1 %cmp.i76.i, label %do.end.i77.i, label %read_dt_param.exit.i.read_dt_param.exit78.i_crit_edge

read_dt_param.exit.i.read_dt_param.exit78.i_crit_edge: ; preds = %read_dt_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit78.i

do.end.i77.i:                                     ; preds = %read_dt_param.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i75.i) #10
  br label %read_dt_param.exit78.i

read_dt_param.exit78.i:                           ; preds = %do.end.i77.i, %read_dt_param.exit.i.read_dt_param.exit78.i_crit_edge
  %force_mode.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 24
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %of_node.i79.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i79.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i79.i, align 8
  %call.i.i.i80.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %24, ptr noundef nonnull @.str.64, ptr noundef %force_mode.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i80.i)
  %cmp.i81.i = icmp slt i32 %call.i.i.i80.i, 0
  br i1 %cmp.i81.i, label %do.end.i82.i, label %read_dt_param.exit78.i.read_dt_param.exit83.i_crit_edge

read_dt_param.exit78.i.read_dt_param.exit83.i_crit_edge: ; preds = %read_dt_param.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit83.i

do.end.i82.i:                                     ; preds = %read_dt_param.exit78.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.64, i32 noundef %call.i.i.i80.i) #10
  br label %read_dt_param.exit83.i

read_dt_param.exit83.i:                           ; preds = %do.end.i82.i, %read_dt_param.exit78.i.read_dt_param.exit83.i_crit_edge
  %cf.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 25
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %of_node.i84.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %of_node.i84.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i84.i, align 8
  %call.i.i.i85.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.65, ptr noundef %cf.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i85.i)
  %cmp.i86.i = icmp slt i32 %call.i.i.i85.i, 0
  br i1 %cmp.i86.i, label %do.end.i87.i, label %read_dt_param.exit83.i.read_dt_param.exit88.i_crit_edge

read_dt_param.exit83.i.read_dt_param.exit88.i_crit_edge: ; preds = %read_dt_param.exit83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit88.i

do.end.i87.i:                                     ; preds = %read_dt_param.exit83.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.65, i32 noundef %call.i.i.i85.i) #10
  br label %read_dt_param.exit88.i

read_dt_param.exit88.i:                           ; preds = %do.end.i87.i, %read_dt_param.exit83.i.read_dt_param.exit88.i_crit_edge
  %ci.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 26
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %of_node.i89.i = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i89.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i89.i, align 8
  %call.i.i.i90.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.66, ptr noundef %ci.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i90.i)
  %cmp.i91.i = icmp slt i32 %call.i.i.i90.i, 0
  br i1 %cmp.i91.i, label %do.end.i92.i, label %read_dt_param.exit88.i.read_dt_param.exit93.i_crit_edge

read_dt_param.exit88.i.read_dt_param.exit93.i_crit_edge: ; preds = %read_dt_param.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit93.i

do.end.i92.i:                                     ; preds = %read_dt_param.exit88.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.66, i32 noundef %call.i.i.i90.i) #10
  br label %read_dt_param.exit93.i

read_dt_param.exit93.i:                           ; preds = %do.end.i92.i, %read_dt_param.exit88.i.read_dt_param.exit93.i_crit_edge
  %cg.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 27
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %of_node.i94.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 27
  %41 = ptrtoint ptr %of_node.i94.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node.i94.i, align 8
  %call.i.i.i95.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.67, ptr noundef %cg.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i95.i)
  %cmp.i96.i = icmp slt i32 %call.i.i.i95.i, 0
  br i1 %cmp.i96.i, label %do.end.i97.i, label %read_dt_param.exit93.i.read_dt_param.exit98.i_crit_edge

read_dt_param.exit93.i.read_dt_param.exit98.i_crit_edge: ; preds = %read_dt_param.exit93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_dt_param.exit98.i

do.end.i97.i:                                     ; preds = %read_dt_param.exit93.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.67, i32 noundef %call.i.i.i95.i) #10
  br label %read_dt_param.exit98.i

read_dt_param.exit98.i:                           ; preds = %do.end.i97.i, %read_dt_param.exit93.i.read_dt_param.exit98.i_crit_edge
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 8
  %call.i.i237 = tail call ptr @of_find_property(ptr noundef %48, ptr noundef nonnull @.str.68, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i.i237, null
  %cg_scale.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 28
  %frombool39.i = zext i1 %tobool.i.i to i8
  %49 = ptrtoint ptr %cg_scale.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %frombool39.i, ptr %cg_scale.i, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %of_node41.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %of_node41.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node41.i, align 8
  %output_clock_name.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 19
  %call42.i = tail call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.69, ptr noundef %output_clock_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %read_dt_param.exit98.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.70) #10
  br label %do.end25

if.end.i:                                         ; preds = %read_dt_param.exit98.i
  %56 = or i32 %call.i.i.i75.i, %call.i.i.i.i
  %57 = or i32 %56, %call.i.i.i80.i
  %58 = or i32 %57, %call.i.i.i85.i
  %59 = or i32 %58, %call.i.i.i90.i
  %60 = or i32 %59, %call.i.i.i95.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %.inv.i = icmp slt i32 %60, 0
  br i1 %.inv.i, label %if.end.i.do.end25_crit_edge, label %if.end27

if.end.i.do.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end25:                                         ; preds = %if.end.i.do.end25_crit_edge, %if.end.thread.i
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end.i
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 27
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call.i238 = tail call ptr @of_find_property(ptr noundef %66, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i238, null
  br i1 %tobool.i.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %if.end27
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 39
  %67 = ptrtoint ptr %pmu_if to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %pmu_if, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_period.i) #7
  %68 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %pwm_period.i, align 4, !annotation !351
  %69 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %soc7, align 4
  %step_uv.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %70, i32 0, i32 3, i32 1
  %71 = ptrtoint ptr %step_uv.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %step_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %if.then30.do.end.i_crit_edge, label %lor.lhs.false.i

if.then30.do.end.i_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then30
  %alignment.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %70, i32 0, i32 3
  %73 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %alignment.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool3.not.i = icmp eq i32 %74, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.for.body.i_crit_edge

lor.lhs.false.i.for.body.i_crit_edge:             ; preds = %lor.lhs.false.i
  br label %for.body.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then30.do.end.i_crit_edge
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.74) #10
  br label %dfll_fetch_pwm_params.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.lhs.false.i.for.body.i_crit_edge
  %i.0103.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.i.for.body.i_crit_edge ]
  %77 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %soc7, align 4
  %alignment5.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %alignment5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %alignment5.i, align 4
  %step_uv9.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %78, i32 0, i32 3, i32 1
  %81 = ptrtoint ptr %step_uv9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %step_uv9.i, align 4
  %mul.i = mul i32 %82, %i.0103.i
  %add.i = add i32 %mul.i, %80
  %arrayidx.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 33, i32 %i.0103.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %add.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.0103.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 33
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %reg_init_uV.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 44
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %of_node.i.i239 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 27
  %86 = ptrtoint ptr %of_node.i.i239 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %of_node.i.i239, align 8
  %call.i.i.i.i240 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %87, ptr noundef nonnull @.str.76, ptr noundef %reg_init_uV.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i240)
  %cmp.i.i241 = icmp slt i32 %call.i.i.i.i240, 0
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i241, label %do.end14.i, label %if.end16.i

do.end14.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.76, i32 noundef %call.i.i.i.i240) #10
  %90 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.78) #10
  br label %dfll_fetch_pwm_params.exit

if.end16.i:                                       ; preds = %for.end.i
  %of_node.i95.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 27
  %92 = ptrtoint ptr %of_node.i95.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %of_node.i95.i, align 8
  %call.i.i.i96.i = call i32 @of_property_read_variable_u32_array(ptr noundef %93, ptr noundef nonnull @.str.80, ptr noundef nonnull %pwm_period.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96.i)
  %cmp.i97.i = icmp slt i32 %call.i.i.i96.i, 0
  br i1 %cmp.i97.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.80, i32 noundef %call.i.i.i96.i) #10
  %96 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.82) #10
  br label %dfll_fetch_pwm_params.exit

if.end25.i:                                       ; preds = %if.end16.i
  %98 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pwm_period.i, align 4
  %div.i = udiv i32 1000000000, %99
  %mul26.i = shl i32 %div.i, 5
  %pwm_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 40
  %100 = ptrtoint ptr %pwm_rate.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %mul26.i, ptr %pwm_rate.i, align 4
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %call28.i = call ptr @devm_pinctrl_get(ptr noundef %102) #7
  %pwm_pin.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 41
  %103 = ptrtoint ptr %pwm_pin.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call28.i, ptr %pwm_pin.i, align 4
  %cmp.i100.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i100.i, label %do.end34.i, label %if.end38.i

do.end34.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.85) #10
  %106 = ptrtoint ptr %pwm_pin.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pwm_pin.i, align 4
  %108 = ptrtoint ptr %107 to i32
  br label %dfll_fetch_pwm_params.exit

if.end38.i:                                       ; preds = %if.end25.i
  %call40.i = call ptr @pinctrl_lookup_state(ptr noundef %call28.i, ptr noundef nonnull @.str.87) #7
  %pwm_enable_state.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 42
  %109 = ptrtoint ptr %pwm_enable_state.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call40.i, ptr %pwm_enable_state.i, align 4
  %cmp.i101.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101.i, label %do.end46.i, label %if.end50.i

do.end46.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.89) #10
  %112 = ptrtoint ptr %pwm_enable_state.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %pwm_enable_state.i, align 4
  %114 = ptrtoint ptr %113 to i32
  br label %dfll_fetch_pwm_params.exit

if.end50.i:                                       ; preds = %if.end38.i
  %115 = ptrtoint ptr %pwm_pin.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pwm_pin.i, align 4
  %call52.i = call ptr @pinctrl_lookup_state(ptr noundef %116, ptr noundef nonnull @.str.91) #7
  %pwm_disable_state.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 43
  %117 = ptrtoint ptr %pwm_disable_state.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call52.i, ptr %pwm_disable_state.i, align 4
  %cmp.i102.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i102.i, label %do.end58.i, label %if.end50.i.dfll_fetch_pwm_params.exit_crit_edge

if.end50.i.dfll_fetch_pwm_params.exit_crit_edge:  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_fetch_pwm_params.exit

do.end58.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.93) #10
  %120 = ptrtoint ptr %pwm_disable_state.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pwm_disable_state.i, align 4
  %122 = ptrtoint ptr %121 to i32
  br label %dfll_fetch_pwm_params.exit

dfll_fetch_pwm_params.exit:                       ; preds = %do.end58.i, %if.end50.i.dfll_fetch_pwm_params.exit_crit_edge, %do.end46.i, %do.end34.i, %do.end23.i, %do.end14.i, %do.end.i
  %retval.0.i = phi i32 [ %108, %do.end34.i ], [ %114, %do.end46.i ], [ %122, %do.end58.i ], [ -22, %do.end23.i ], [ -22, %do.end14.i ], [ -22, %do.end.i ], [ 0, %if.end50.i.dfll_fetch_pwm_params.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_period.i) #7
  br label %if.end46

if.else:                                          ; preds = %if.end27
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  %call33 = tail call ptr @devm_regulator_get(ptr noundef %124, ptr noundef nonnull @.str.23) #7
  %vdd_reg = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 6
  %125 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call33, ptr %vdd_reg, align 4
  %cmp.i242 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end39, label %if.end43

do.end39:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.25) #10
  %128 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %vdd_reg, align 4
  %130 = ptrtoint ptr %129 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.else
  %pmu_if44 = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 39
  %131 = ptrtoint ptr %pmu_if44 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %pmu_if44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsel_reg.i) #7
  %132 = ptrtoint ptr %vsel_reg.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %vsel_reg.i, align 4, !annotation !351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsel_mask.i) #7
  %133 = ptrtoint ptr %vsel_mask.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %vsel_mask.i, align 4, !annotation !351
  %i2c_fs_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 29
  %134 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %call.i, align 4
  %of_node.i.i243 = getelementptr inbounds %struct.device, ptr %135, i32 0, i32 27
  %136 = ptrtoint ptr %of_node.i.i243 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %of_node.i.i243, align 8
  %call.i.i.i.i244 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %137, ptr noundef nonnull @.str.95, ptr noundef %i2c_fs_rate.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i244)
  %cmp.i.i245 = icmp slt i32 %call.i.i.i.i244, 0
  br i1 %cmp.i.i245, label %read_dt_param.exit.i246, label %if.end.i248

read_dt_param.exit.i246:                          ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %138 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %139, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.95, i32 noundef %call.i.i.i.i244) #10
  br label %dfll_fetch_i2c_params.exit

if.end.i248:                                      ; preds = %if.end43
  %140 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %vdd_reg, align 4
  %call1.i = tail call ptr @regulator_get_regmap(ptr noundef %141) #7
  %call2.i = tail call ptr @regmap_get_device(ptr noundef %call1.i) #7
  %addr.i = getelementptr i8, ptr %call2.i, i32 -30
  %142 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %143 to i32
  %i2c_slave_addr.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 31
  %144 = ptrtoint ptr %i2c_slave_addr.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv.i, ptr %i2c_slave_addr.i, align 4
  %145 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vdd_reg, align 4
  %call4.i = call i32 @regulator_get_hardware_vsel_register(ptr noundef %146, ptr noundef nonnull %vsel_reg.i, ptr noundef nonnull %vsel_mask.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i247 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i247, label %do.end.i249, label %if.end7.i

do.end.i249:                                      ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %147 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.96) #10
  br label %dfll_fetch_i2c_params.exit

if.end7.i:                                        ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #9
  %149 = ptrtoint ptr %vsel_reg.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %vsel_reg.i, align 4
  %i2c_reg.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 30
  %151 = ptrtoint ptr %i2c_reg.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %i2c_reg.i, align 4
  br label %dfll_fetch_i2c_params.exit

dfll_fetch_i2c_params.exit:                       ; preds = %if.end7.i, %do.end.i249, %read_dt_param.exit.i246
  %retval.0.i250 = phi i32 [ -22, %do.end.i249 ], [ 0, %if.end7.i ], [ -22, %read_dt_param.exit.i246 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsel_mask.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsel_reg.i) #7
  br label %if.end46

if.end46:                                         ; preds = %dfll_fetch_i2c_params.exit, %dfll_fetch_pwm_params.exit
  %ret.0 = phi i32 [ %retval.0.i, %dfll_fetch_pwm_params.exit ], [ %retval.0.i250, %dfll_fetch_i2c_params.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool47.not = icmp eq i32 %ret.0, 0
  br i1 %tobool47.not, label %if.end49, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49:                                         ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #7
  %152 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %rate.i, align 4
  %153 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %soc7, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %154, align 4
  %call.i252 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %156, ptr noundef nonnull %rate.i) #7
  %cmp.i.i253 = icmp ugt ptr %call.i252, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i253, label %do.end.i254, label %if.end.i256

do.end.i254:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.98) #10
  br label %dfll_build_lut.exit.thread

if.end.i256:                                      ; preds = %if.end49
  %call3.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i252) #7
  call void @dev_pm_opp_put(ptr noundef %call.i252) #7
  %pmu_if.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 39
  %159 = ptrtoint ptr %pmu_if.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %pmu_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp.i255 = icmp eq i32 %160, 1
  br i1 %cmp.i255, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i256
  %161 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %soc7, align 4
  %cvb.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %cvb.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cvb.i.i, align 4
  %min_millivolts.i.i = getelementptr inbounds %struct.cvb_table, ptr %164, i32 0, i32 2
  %165 = ptrtoint ptr %min_millivolts.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %min_millivolts.i.i, align 4
  %mul.i.i = mul i32 %166, 1000
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.then4.i
  %lut_bottom.065.i.i = phi i8 [ 33, %if.then4.i ], [ %lut_bottom.1.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.064.i.i = phi i32 [ 0, %if.then4.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 33, i32 %i.064.i.i
  %167 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx.i.i, align 4
  %169 = urem i32 %168, 1000
  %mul1.i.i = sub i32 %168, %169
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %call3.i)
  %cmp2.i.i = icmp ugt i32 %mul1.i.i, %call3.i
  br i1 %cmp2.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %arrayidx3.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %i.064.i.i
  %170 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %i.064.i.i, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %lut_bottom.065.i.i)
  %cmp4.i.i = icmp ne i8 %lut_bottom.065.i.i, 33
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1.i.i, i32 %mul.i.i)
  %cmp6.not.i.i = icmp ult i32 %mul1.i.i, %mul.i.i
  %or.cond.i.i = select i1 %cmp4.i.i, i1 true, i1 %cmp6.not.i.i
  %conv9.i.i = trunc i32 %i.064.i.i to i8
  %lut_bottom.1.i.i = select i1 %or.cond.i.i, i8 %lut_bottom.065.i.i, i8 %conv9.i.i
  %inc.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 33
  br i1 %exitcond.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.064.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ 33, %if.end.i.i.for.end.i.i_crit_edge ]
  %lut_bottom.0.lcssa.i.i = phi i8 [ %lut_bottom.065.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %lut_bottom.1.i.i, %if.end.i.i.for.end.i.i_crit_edge ]
  %lut_size.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 34
  %171 = ptrtoint ptr %lut_size.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %i.0.lcssa.i.i, ptr %lut_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %lut_bottom.0.lcssa.i.i)
  %cmp12.i.i = icmp eq i8 %lut_bottom.0.lcssa.i.i, 33
  br i1 %cmp12.i.i, label %for.end.i.i.do.end.i.i257_crit_edge, label %lor.lhs.false.i.i

for.end.i.i.do.end.i.i257_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i257

lor.lhs.false.i.i:                                ; preds = %for.end.i.i
  %conv11.i.i = zext i8 %lut_bottom.0.lcssa.i.i to i32
  %add.i.i = add nuw nsw i32 %conv11.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %i.0.lcssa.i.i)
  %cmp16.not.i.i = icmp ult i32 %add.i.i, %i.0.lcssa.i.i
  br i1 %cmp16.not.i.i, label %if.end22.i.i, label %lor.lhs.false.i.i.do.end.i.i257_crit_edge

lor.lhs.false.i.i.do.end.i.i257_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i257

do.end.i.i257:                                    ; preds = %lor.lhs.false.i.i.do.end.i.i257_crit_edge, %for.end.i.i.do.end.i.i257_crit_edge
  %172 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call.i, align 4
  %174 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %soc7, align 4
  %cvb20.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %cvb20.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cvb20.i.i, align 4
  %min_millivolts21.i.i = getelementptr inbounds %struct.cvb_table, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %min_millivolts21.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %min_millivolts21.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.100, i32 noundef %179) #10
  br label %dfll_build_lut.exit.thread

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i
  %lut_bottom23.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 35
  %180 = ptrtoint ptr %lut_bottom23.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %lut_bottom.0.lcssa.i.i, ptr %lut_bottom23.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i.i.i) #7
  %arrayidx.i.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 33, i32 %conv11.i.i
  %181 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx.i.i.i, align 4
  %183 = ptrtoint ptr %rate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %rate.i.i.i, align 4
  %184 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %soc7, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %call14.i.i.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %187, ptr noundef nonnull %rate.i.i.i) #7
  %cmp.i15.i.i.i = icmp ugt ptr %call14.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i.i.i, label %get_dvco_rate_below.exit.thread.i.i, label %if.end.i.preheader.i.i

if.end.i.preheader.i.i:                           ; preds = %if.end22.i.i
  %call2.i66.i.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call14.i.i.i) #7
  call void @dev_pm_opp_put(ptr noundef %call14.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i66.i.i)
  %tobool.not.i67.i.i = icmp ne i32 %call2.i66.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i66.i.i, i32 %182)
  %cmp.i68.i.i = icmp ugt i32 %call2.i66.i.i, %182
  %or.cond.i69.i.i = select i1 %tobool.not.i67.i.i, i1 %cmp.i68.i.i, i1 false
  br i1 %or.cond.i69.i.i, label %get_dvco_rate_below.exit.thread71.i.i, label %if.end.i.preheader.i.i.if.end4.i.i.i_crit_edge

if.end.i.preheader.i.i.if.end4.i.i.i_crit_edge:   ; preds = %if.end.i.preheader.i.i
  br label %if.end4.i.i.i

get_dvco_rate_below.exit.thread71.i.i:            ; preds = %if.end.i.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i.i) #7
  br label %do.end28.i.i

get_dvco_rate_below.exit.thread.i.i:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i.i) #7
  br label %do.end28.i.i

if.end.i.i.i:                                     ; preds = %if.end4.i.i.i
  %call2.i.i.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i.i.i) #7
  call void @dev_pm_opp_put(ptr noundef %call.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool.not.i.i.i = icmp ne i32 %call2.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i.i, i32 %182)
  %cmp.i.i.i = icmp ugt i32 %call2.i.i.i, %182
  %or.cond.i.i.i = select i1 %tobool.not.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge, label %if.end.i.i.i.if.end4.i.i.i_crit_edge

if.end.i.i.i.if.end4.i.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i.i.i

if.end.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dvco_rate_below.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i.if.end4.i.i.i_crit_edge, %if.end.i.preheader.i.i.if.end4.i.i.i_crit_edge
  %188 = ptrtoint ptr %rate.i.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %rate.i.i.i, align 4
  %inc.i.i.i = add i32 %189, 1
  store i32 %inc.i.i.i, ptr %rate.i.i.i, align 4
  %190 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %soc7, align 4
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %191, align 4
  %call.i.i.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %193, ptr noundef nonnull %rate.i.i.i) #7
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end4.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge, label %if.end.i.i.i

if.end4.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dvco_rate_below.exit.i.i

get_dvco_rate_below.exit.i.i:                     ; preds = %if.end4.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge, %if.end.i.i.i.get_dvco_rate_below.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i.i = icmp eq i32 %189, 0
  br i1 %tobool.not.i.i, label %get_dvco_rate_below.exit.i.i.do.end28.i.i_crit_edge, label %dfll_build_lut.exit.thread312

get_dvco_rate_below.exit.i.i.do.end28.i.i_crit_edge: ; preds = %get_dvco_rate_below.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i.i

do.end28.i.i:                                     ; preds = %get_dvco_rate_below.exit.i.i.do.end28.i.i_crit_edge, %get_dvco_rate_below.exit.thread.i.i, %get_dvco_rate_below.exit.thread71.i.i
  %194 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %call.i, align 4
  %196 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %soc7, align 4
  %cvb31.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %cvb31.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %cvb31.i.i, align 4
  %min_millivolts32.i.i = getelementptr inbounds %struct.cvb_table, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %min_millivolts32.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %min_millivolts32.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.103, i32 noundef %201) #10
  br label %dfll_build_lut.exit.thread

dfll_build_lut.exit.thread312:                    ; preds = %get_dvco_rate_below.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dvco_rate_min.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 14
  %202 = ptrtoint ptr %dvco_rate_min.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %189, ptr %dvco_rate_min.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  br label %if.end57

if.else.i:                                        ; preds = %if.end.i256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i.i) #7
  %203 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %soc7, align 4
  %cvb.i17.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %204, i32 0, i32 2
  %205 = ptrtoint ptr %cvb.i17.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cvb.i17.i, align 4
  %min_millivolts.i18.i = getelementptr inbounds %struct.cvb_table, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %min_millivolts.i18.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %min_millivolts.i18.i, align 4
  %mul.i19.i = mul i32 %208, 1000
  %call.i.i258 = call fastcc i32 @find_vdd_map_entry_exact(ptr noundef %call.i, i32 noundef %mul.i19.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i258)
  %cmp.i20.i = icmp slt i32 %call.i.i258, 0
  br i1 %cmp.i20.i, label %if.else.i.dfll_build_lut.exit.thread316_crit_edge, label %if.end.i21.i

if.else.i.dfll_build_lut.exit.thread316_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_build_lut.exit.thread316

if.end.i21.i:                                     ; preds = %if.else.i
  %lut1.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 32
  %209 = ptrtoint ptr %lut1.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call.i.i258, ptr %lut1.i.i, align 4
  %lut_bottom.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 35
  %210 = ptrtoint ptr %lut_bottom.i.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %lut_bottom.i.i, align 4
  %211 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %rate.i.i, align 4
  %212 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %soc7, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %call3154.i.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %215, ptr noundef nonnull %rate.i.i) #7
  %cmp.i155.i.i = icmp ugt ptr %call3154.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i.i, label %for.end56.i.thread.i, label %if.end6.lr.ph.i.i

if.end6.lr.ph.i.i:                                ; preds = %if.end.i21.i
  %dvco_rate_min.i22.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 14
  %vdd_reg.i.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 6
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %for.inc.i.i.if.end6.i.i_crit_edge, %if.end6.lr.ph.i.i
  %call3158.i.i = phi ptr [ %call3154.i.i, %if.end6.lr.ph.i.i ], [ %call3.i.i, %for.inc.i.i.if.end6.i.i_crit_edge ]
  %j.0157.i.i = phi i32 [ 1, %if.end6.lr.ph.i.i ], [ %j.3.i.i, %for.inc.i.i.if.end6.i.i_crit_edge ]
  %v.0156.i.i = phi i32 [ %mul.i19.i, %if.end6.lr.ph.i.i ], [ %v_max.call7.i.i, %for.inc.i.i.if.end6.i.i_crit_edge ]
  %call7.i.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call3158.i.i) #7
  %216 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %soc7, align 4
  %cvb9.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %217, i32 0, i32 2
  %218 = ptrtoint ptr %cvb9.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cvb9.i.i, align 4
  %min_millivolts10.i.i = getelementptr inbounds %struct.cvb_table, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %min_millivolts10.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %min_millivolts10.i.i, align 4
  %mul11.i.i = mul i32 %221, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i.i, i32 %mul11.i.i)
  %cmp12.not.i.i = icmp ugt i32 %call7.i.i, %mul11.i.i
  br i1 %cmp12.not.i.i, label %if.end6.i.i.if.end15.i.i_crit_edge, label %if.then13.i.i

if.end6.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i.i

if.then13.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i.i = call i32 @dev_pm_opp_get_freq(ptr noundef %call3158.i.i) #7
  %222 = ptrtoint ptr %dvco_rate_min.i22.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %call14.i.i, ptr %dvco_rate_min.i22.i, align 4
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %if.then13.i.i, %if.end6.i.i.if.end15.i.i_crit_edge
  call void @dev_pm_opp_put(ptr noundef %call3158.i.i) #7
  br label %for.cond16.i.i.outer

for.cond16.i.i.outer:                             ; preds = %if.then30.i.i, %if.end15.i.i
  %v.1.i.i.ph = phi i32 [ %add.i23.i, %if.then30.i.i ], [ %v.0156.i.i, %if.end15.i.i ]
  %j.1.i.i.ph = phi i32 [ %inc.i26.i, %if.then30.i.i ], [ %j.0157.i.i, %if.end15.i.i ]
  %sub17.i.i = sub i32 33, %j.1.i.i.ph
  %sub27.i.i = add i32 %j.1.i.i.ph, -1
  %arrayidx28.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %sub27.i.i
  br label %for.cond16.i.i

for.cond16.i.i:                                   ; preds = %if.end25.i.i.for.cond16.i.i_crit_edge, %for.cond16.i.i.outer
  %v.1.i.i = phi i32 [ %add.i23.i, %if.end25.i.i.for.cond16.i.i_crit_edge ], [ %v.1.i.i.ph, %for.cond16.i.i.outer ]
  %sub.i.i = sub i32 %call3.i, %v.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17.i.i, i32 %sub.i.i)
  %cmp18.i.i = icmp ugt i32 %sub17.i.i, %sub.i.i
  br i1 %cmp18.i.i, label %for.cond16.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

for.cond16.i.i.cond.end.i.i_crit_edge:            ; preds = %for.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.cond16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %div.i.i = udiv i32 %sub.i.i, %sub17.i.i
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.cond16.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %div.i.i, %cond.false.i.i ], [ 1, %for.cond16.i.i.cond.end.i.i_crit_edge ]
  %add.i23.i = add i32 %cond.i.i, %v.1.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i23.i, i32 %call7.i.i)
  %cmp19.not.i.i = icmp ult i32 %add.i23.i, %call7.i.i
  br i1 %cmp19.not.i.i, label %if.end21.i.i, label %for.end.i28.i

if.end21.i.i:                                     ; preds = %cond.end.i.i
  %223 = ptrtoint ptr %pmu_if.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %pmu_if.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %224)
  %cmp.i132.i.i = icmp eq i32 %224, 1
  br i1 %cmp.i132.i.i, label %do.end.i.i.i, label %if.end21.i.i.i, !prof !347

do.end.i.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1611, i32 noundef 9, ptr noundef null) #7
  br label %dfll_build_lut.exit.thread316

if.end21.i.i.i:                                   ; preds = %if.end21.i.i
  %225 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %soc7, align 4
  %step_uv.i.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %226, i32 0, i32 3, i32 1
  %227 = ptrtoint ptr %step_uv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %step_uv.i.i.i, align 4
  %div.i.i.i = sdiv i32 %add.i23.i, %228
  %229 = ptrtoint ptr %vdd_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %vdd_reg.i.i.i, align 4
  %call.i.i24.i = call i32 @regulator_count_voltages(ptr noundef %230) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %cmp2254.i.i.i = icmp sgt i32 %call.i.i24.i, 0
  br i1 %cmp2254.i.i.i, label %if.end21.i.i.i.for.body.i.i.i_crit_edge, label %if.end21.i.i.i.do.end37.i.i.i_crit_edge

if.end21.i.i.i.do.end37.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i.i.i

if.end21.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end21.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end21.i.i.i.for.body.i.i.i_crit_edge
  %i.055.i.i.i = phi i32 [ %inc.i.i25.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end21.i.i.i.for.body.i.i.i_crit_edge ]
  %231 = ptrtoint ptr %vdd_reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %vdd_reg.i.i.i, align 4
  %call24.i.i.i = call i32 @regulator_list_voltage(ptr noundef %232, i32 noundef %i.055.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %cmp25.i.i.i = icmp slt i32 %call24.i.i.i, 0
  br i1 %cmp25.i.i.i, label %for.body.i.i.i.do.end37.i.i.i_crit_edge, label %if.end27.i.i.i

for.body.i.i.i.do.end37.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i.i.i

if.end27.i.i.i:                                   ; preds = %for.body.i.i.i
  %233 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %soc7, align 4
  %step_uv30.i.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %234, i32 0, i32 3, i32 1
  %235 = ptrtoint ptr %step_uv30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %step_uv30.i.i.i, align 4
  %div31.i.i.i = sdiv i32 %call24.i.i.i, %236
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i.i, i32 %div31.i.i.i)
  %cmp32.not.i.i.i = icmp sgt i32 %div.i.i.i, %div31.i.i.i
  br i1 %cmp32.not.i.i.i, label %for.inc.i.i.i, label %if.end25.i.i

for.inc.i.i.i:                                    ; preds = %if.end27.i.i.i
  %inc.i.i25.i = add nuw nsw i32 %i.055.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i25.i, %call.i.i24.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end37.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.do.end37.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i.i.i

do.end37.i.i.i:                                   ; preds = %for.inc.i.i.i.do.end37.i.i.i_crit_edge, %for.body.i.i.i.do.end37.i.i.i_crit_edge, %if.end21.i.i.i.do.end37.i.i.i_crit_edge
  %237 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.109, i32 noundef %add.i23.i) #10
  br label %dfll_build_lut.exit.thread316

if.end25.i.i:                                     ; preds = %if.end27.i.i.i
  %239 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %arrayidx28.i.i, align 4
  %cmp29.not.i.i = icmp eq i32 %i.055.i.i.i, %240
  br i1 %cmp29.not.i.i, label %if.end25.i.i.for.cond16.i.i_crit_edge, label %if.then30.i.i

if.end25.i.i.for.cond16.i.i_crit_edge:            ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond16.i.i

if.then30.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i26.i = add i32 %j.1.i.i.ph, 1
  %arrayidx32.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %j.1.i.i.ph
  %241 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %i.055.i.i.i, ptr %arrayidx32.i.i, align 4
  br label %for.cond16.i.i.outer

for.end.i28.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.1.i.i.ph)
  %cmp34.i.i = icmp eq i32 %j.1.i.i.ph, 32
  %v_max.call7.i.i = select i1 %cmp34.i.i, i32 %call3.i, i32 %call7.i.i
  %call39.i.i = call fastcc i32 @find_vdd_map_entry_exact(ptr noundef %call.i, i32 noundef %v_max.call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %cmp40.i.i = icmp slt i32 %call39.i.i, 0
  br i1 %cmp40.i.i, label %for.end.i28.i.dfll_build_lut.exit.thread316_crit_edge, label %if.end42.i.i

for.end.i28.i.dfll_build_lut.exit.thread316_crit_edge: ; preds = %for.end.i28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_build_lut.exit.thread316

if.end42.i.i:                                     ; preds = %for.end.i28.i
  %sub44.i.i = add i32 %j.1.i.i.ph, -1
  %arrayidx45.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %sub44.i.i
  %242 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %arrayidx45.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call39.i.i, i32 %243)
  %cmp46.not.i.i = icmp eq i32 %call39.i.i, %243
  br i1 %cmp46.not.i.i, label %if.end42.i.i.if.end51.i.i_crit_edge, label %if.then47.i.i

if.end42.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc49.i.i = add i32 %j.1.i.i.ph, 1
  %arrayidx50.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %j.1.i.i.ph
  %244 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %call39.i.i, ptr %arrayidx50.i.i, align 4
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.end42.i.i.if.end51.i.i_crit_edge
  %j.3.i.i = phi i32 [ %inc49.i.i, %if.then47.i.i ], [ %j.1.i.i.ph, %if.end42.i.i.if.end51.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %v_max.call7.i.i, i32 %call3.i)
  %cmp52.not.i.i = icmp ult i32 %v_max.call7.i.i, %call3.i
  br i1 %cmp52.not.i.i, label %for.inc.i.i, label %if.end51.i.i.for.end56.i.i_crit_edge

if.end51.i.i.for.end56.i.i_crit_edge:             ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.inc.i.i:                                      ; preds = %if.end51.i.i
  %245 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %rate.i.i, align 4
  %inc55.i.i = add i32 %246, 1
  store i32 %inc55.i.i, ptr %rate.i.i, align 4
  %247 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %soc7, align 4
  %249 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %248, align 4
  %call3.i.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %250, ptr noundef nonnull %rate.i.i) #7
  %cmp.i.i29.i = icmp ugt ptr %call3.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i29.i, label %for.inc.i.i.for.end56.i.i_crit_edge, label %for.inc.i.i.if.end6.i.i_crit_edge

for.inc.i.i.if.end6.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i.i

for.inc.i.i.for.end56.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end56.i.i

for.end56.i.i:                                    ; preds = %for.inc.i.i.for.end56.i.i_crit_edge, %if.end51.i.i.for.end56.i.i_crit_edge
  %lut_size.i30.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 34
  %251 = ptrtoint ptr %lut_size.i30.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %j.3.i.i, ptr %lut_size.i30.i, align 4
  %252 = ptrtoint ptr %dvco_rate_min.i22.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %dvco_rate_min.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %253)
  %tobool.not.i31.i = icmp eq i32 %253, 0
  br i1 %tobool.not.i31.i, label %for.end56.i.i.do.end.i32.i_crit_edge, label %for.cond63.preheader.i.i

for.end56.i.i.do.end.i32.i_crit_edge:             ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i32.i

for.end56.i.thread.i:                             ; preds = %if.end.i21.i
  %lut_size.i3036.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 34
  %254 = ptrtoint ptr %lut_size.i3036.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 1, ptr %lut_size.i3036.i, align 4
  %dvco_rate_min57.i37.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 14
  %255 = ptrtoint ptr %dvco_rate_min57.i37.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %dvco_rate_min57.i37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool.not.i3138.i = icmp eq i32 %256, 0
  br i1 %tobool.not.i3138.i, label %for.end56.i.thread.i.do.end.i32.i_crit_edge, label %for.end56.i.thread.i.for.body.lr.ph.i.i_crit_edge

for.end56.i.thread.i.for.body.lr.ph.i.i_crit_edge: ; preds = %for.end56.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

for.end56.i.thread.i.do.end.i32.i_crit_edge:      ; preds = %for.end56.i.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i32.i

for.cond63.preheader.i.i:                         ; preds = %for.end56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.3.i.i)
  %cmp65160.i.i = icmp sgt i32 %j.3.i.i, 0
  br i1 %cmp65160.i.i, label %for.cond63.preheader.i.i.for.body.lr.ph.i.i_crit_edge, label %for.cond63.preheader.i.i.dfll_build_lut.exit_crit_edge

for.cond63.preheader.i.i.dfll_build_lut.exit_crit_edge: ; preds = %for.cond63.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_build_lut.exit

for.cond63.preheader.i.i.for.body.lr.ph.i.i_crit_edge: ; preds = %for.cond63.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond63.preheader.i.i.for.body.lr.ph.i.i_crit_edge, %for.end56.i.thread.i.for.body.lr.ph.i.i_crit_edge
  %lut_size.i304044.i = phi ptr [ %lut_size.i30.i, %for.cond63.preheader.i.i.for.body.lr.ph.i.i_crit_edge ], [ %lut_size.i3036.i, %for.end56.i.thread.i.for.body.lr.ph.i.i_crit_edge ]
  %vdd_reg.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 6
  br label %for.body.i33.i

do.end.i32.i:                                     ; preds = %for.end56.i.thread.i.do.end.i32.i_crit_edge, %for.end56.i.i.do.end.i32.i_crit_edge
  %257 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %call.i, align 4
  %259 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %soc7, align 4
  %cvb61.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %cvb61.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %cvb61.i.i, align 4
  %min_millivolts62.i.i = getelementptr inbounds %struct.cvb_table, ptr %262, i32 0, i32 2
  %263 = ptrtoint ptr %min_millivolts62.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %min_millivolts62.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.105, i32 noundef %264) #10
  br label %dfll_build_lut.exit.thread316

for.body.i33.i:                                   ; preds = %for.body.i33.i.for.body.i33.i_crit_edge, %for.body.lr.ph.i.i
  %j.5161.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc71.i.i, %for.body.i33.i.for.body.i33.i_crit_edge ]
  %265 = ptrtoint ptr %vdd_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %vdd_reg.i.i, align 4
  %arrayidx67.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 32, i32 %j.5161.i.i
  %267 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx67.i.i, align 4
  %call68.i.i = call i32 @regulator_list_voltage(ptr noundef %266, i32 noundef %268) #7
  %arrayidx69.i.i = getelementptr %struct.tegra_dfll, ptr %call.i, i32 0, i32 33, i32 %j.5161.i.i
  %269 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %call68.i.i, ptr %arrayidx69.i.i, align 4
  %inc71.i.i = add nuw nsw i32 %j.5161.i.i, 1
  %270 = ptrtoint ptr %lut_size.i304044.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %lut_size.i304044.i, align 4
  %cmp65.i.i = icmp slt i32 %inc71.i.i, %271
  br i1 %cmp65.i.i, label %for.body.i33.i.for.body.i33.i_crit_edge, label %for.body.i33.i.dfll_build_lut.exit_crit_edge

for.body.i33.i.dfll_build_lut.exit_crit_edge:     ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_build_lut.exit

for.body.i33.i.for.body.i33.i_crit_edge:          ; preds = %for.body.i33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33.i

dfll_build_lut.exit.thread:                       ; preds = %do.end28.i.i, %do.end.i.i257, %do.end.i254
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  br label %do.end55

dfll_build_lut.exit.thread316:                    ; preds = %do.end.i32.i, %for.end.i28.i.dfll_build_lut.exit.thread316_crit_edge, %do.end37.i.i.i, %do.end.i.i.i, %if.else.i.dfll_build_lut.exit.thread316_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  br label %do.end55

dfll_build_lut.exit:                              ; preds = %for.body.i33.i.dfll_build_lut.exit_crit_edge, %for.cond63.preheader.i.i.dfll_build_lut.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #7
  br label %if.end57

do.end55:                                         ; preds = %dfll_build_lut.exit.thread316, %dfll_build_lut.exit.thread
  %272 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end57:                                         ; preds = %dfll_build_lut.exit, %dfll_build_lut.exit.thread312
  %call58 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool59.not = icmp eq ptr %call58, null
  %274 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %call.i, align 4
  br i1 %tobool59.not, label %do.end63, label %if.end65

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  %276 = ptrtoint ptr %call58 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %call58, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call58, i32 0, i32 1
  %278 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %277
  %add.i260 = add i32 %sub.i, %279
  %call68 = call ptr @devm_ioremap(ptr noundef %275, i32 noundef %277, i32 noundef %add.i260) #7
  %base = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 2
  %280 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call68, ptr %base, align 4
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %do.end74, label %if.end76

do.end74:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %281 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end65
  %call77 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %tobool78.not = icmp eq ptr %call77, null
  %283 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %call.i, align 4
  br i1 %tobool78.not, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %284, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  %285 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %call77, align 4
  %end.i261 = getelementptr inbounds %struct.resource, ptr %call77, i32 0, i32 1
  %287 = ptrtoint ptr %end.i261 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %end.i261, align 4
  %sub.i262 = sub i32 1, %286
  %add.i263 = add i32 %sub.i262, %288
  %call88 = call ptr @devm_ioremap(ptr noundef %284, i32 noundef %286, i32 noundef %add.i263) #7
  %i2c_base = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 3
  %289 = ptrtoint ptr %i2c_base to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %call88, ptr %i2c_base, align 4
  %tobool90.not = icmp eq ptr %call88, null
  br i1 %tobool90.not, label %do.end94, label %if.end96

do.end94:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %290 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %291, ptr noundef nonnull @.str.40) #10
  br label %cleanup

if.end96:                                         ; preds = %if.end84
  %call97 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #7
  %tobool98.not = icmp eq ptr %call97, null
  %292 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %call.i, align 4
  br i1 %tobool98.not, label %do.end102, label %if.end104

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %293, ptr noundef nonnull @.str.43) #10
  br label %cleanup

if.end104:                                        ; preds = %if.end96
  %294 = ptrtoint ptr %call97 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %call97, align 4
  %end.i264 = getelementptr inbounds %struct.resource, ptr %call97, i32 0, i32 1
  %296 = ptrtoint ptr %end.i264 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %end.i264, align 4
  %sub.i265 = sub i32 1, %295
  %add.i266 = add i32 %sub.i265, %297
  %call108 = call ptr @devm_ioremap(ptr noundef %293, i32 noundef %295, i32 noundef %add.i266) #7
  %i2c_controller_base = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 4
  %298 = ptrtoint ptr %i2c_controller_base to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %call108, ptr %i2c_controller_base, align 4
  %tobool110.not = icmp eq ptr %call108, null
  br i1 %tobool110.not, label %do.end114, label %if.end116

do.end114:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %299 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %300, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end116:                                        ; preds = %if.end104
  %call117 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 3) #7
  %tobool118.not = icmp eq ptr %call117, null
  %301 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %call.i, align 4
  br i1 %tobool118.not, label %do.end122, label %if.end124

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %302, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end124:                                        ; preds = %if.end116
  %303 = ptrtoint ptr %call117 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %call117, align 4
  %end.i267 = getelementptr inbounds %struct.resource, ptr %call117, i32 0, i32 1
  %305 = ptrtoint ptr %end.i267 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %end.i267, align 4
  %sub.i268 = sub i32 1, %304
  %add.i269 = add i32 %sub.i268, %306
  %call128 = call ptr @devm_ioremap(ptr noundef %302, i32 noundef %304, i32 noundef %add.i269) #7
  %lut_base = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 5
  %307 = ptrtoint ptr %lut_base to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %call128, ptr %lut_base, align 4
  %tobool130.not = icmp eq ptr %call128, null
  %308 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %call.i, align 4
  br i1 %tobool130.not, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %309, ptr noundef nonnull @.str.52) #10
  br label %cleanup

if.end136:                                        ; preds = %if.end124
  %call.i270 = call ptr @devm_clk_get(ptr noundef %309, ptr noundef nonnull @.str.111) #7
  %ref_clk.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 8
  %310 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store ptr %call.i270, ptr %ref_clk.i, align 4
  %cmp.i.i271 = icmp ugt ptr %call.i270, inttoptr (i32 -4096 to ptr)
  %311 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i271, label %do.end.i272, label %if.end.i273

do.end.i272:                                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %312, ptr noundef nonnull @.str.112) #10
  br label %dfll_init_clks.exit

if.end.i273:                                      ; preds = %if.end136
  %call7.i = call ptr @devm_clk_get(ptr noundef %312, ptr noundef nonnull @.str.114) #7
  %soc_clk.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 7
  %313 = ptrtoint ptr %soc_clk.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %call7.i, ptr %soc_clk.i, align 4
  %cmp.i46.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  %314 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i46.i, label %do.end12.i, label %if.end16.i274

do.end12.i:                                       ; preds = %if.end.i273
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %315, ptr noundef nonnull @.str.116) #10
  br label %dfll_init_clks.exit

if.end16.i274:                                    ; preds = %if.end.i273
  %call18.i = call ptr @devm_clk_get(ptr noundef %315, ptr noundef nonnull @.str.118) #7
  %i2c_clk.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 9
  %316 = ptrtoint ptr %i2c_clk.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %call18.i, ptr %i2c_clk.i, align 4
  %cmp.i47.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %do.end23.i275, label %dfll_init_clks.exit.thread

do.end23.i275:                                    ; preds = %if.end16.i274
  call void @__sanitizer_cov_trace_pc() #9
  %317 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %318, ptr noundef nonnull @.str.120) #10
  br label %dfll_init_clks.exit

dfll_init_clks.exit.thread:                       ; preds = %if.end16.i274
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i = call i32 @clk_get_rate(ptr noundef %call18.i) #7
  %i2c_clk_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 13
  %319 = ptrtoint ptr %i2c_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 %call29.i, ptr %i2c_clk_rate.i, align 4
  br label %if.end144

dfll_init_clks.exit:                              ; preds = %do.end23.i275, %do.end12.i, %do.end.i272
  %retval.0.i276.in.in = phi ptr [ %ref_clk.i, %do.end.i272 ], [ %soc_clk.i, %do.end12.i ], [ %i2c_clk.i, %do.end23.i275 ]
  %320 = ptrtoint ptr %retval.0.i276.in.in to i32
  call void @__asan_load4_noabort(i32 %320)
  %retval.0.i276.in = load ptr, ptr %retval.0.i276.in.in, align 4
  %tobool138.not = icmp eq ptr %retval.0.i276.in, null
  br i1 %tobool138.not, label %dfll_init_clks.exit.if.end144_crit_edge, label %do.end142

dfll_init_clks.exit.if.end144_crit_edge:          ; preds = %dfll_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

do.end142:                                        ; preds = %dfll_init_clks.exit
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i276 = ptrtoint ptr %retval.0.i276.in to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #10
  br label %cleanup

if.end144:                                        ; preds = %dfll_init_clks.exit.if.end144_crit_edge, %dfll_init_clks.exit.thread
  %321 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ref_clk.i, align 4
  %call.i278 = call i32 @clk_get_rate(ptr noundef %322) #7
  %ref_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 12
  %323 = ptrtoint ptr %ref_rate.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 %call.i278, ptr %ref_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51000000, i32 %call.i278)
  %cmp.not.i = icmp eq i32 %call.i278, 51000000
  br i1 %cmp.not.i, label %if.end.i282, label %do.end.i279

do.end.i279:                                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %324 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.122, i32 noundef %call.i278, i32 noundef 51000000) #10
  br label %cleanup

if.end.i282:                                      ; preds = %if.end144
  %326 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %dvco_rst, align 4
  %call3.i280 = call i32 @reset_control_deassert(ptr noundef %327) #7
  %328 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %ref_clk.i, align 4
  %call5.i = call i32 @clk_prepare(ptr noundef %329) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i281 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i281, label %if.end11.i, label %do.end9.i

do.end9.i:                                        ; preds = %if.end.i282
  call void @__sanitizer_cov_trace_pc() #9
  %330 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %331, ptr noundef nonnull @.str.125) #10
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i282
  %soc_clk.i283 = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 7
  %332 = ptrtoint ptr %soc_clk.i283 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %soc_clk.i283, align 4
  %call12.i = call i32 @clk_prepare(ptr noundef %333) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end19.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %334 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %335, ptr noundef nonnull @.str.128) #10
  br label %di_err1.i

if.end19.i:                                       ; preds = %if.end11.i
  %i2c_clk.i284 = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 9
  %336 = ptrtoint ptr %i2c_clk.i284 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %i2c_clk.i284, align 4
  %call20.i = call i32 @clk_prepare(ptr noundef %337) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end27.i287, label %do.end25.i

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %338 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %339, ptr noundef nonnull @.str.131) #10
  %340 = ptrtoint ptr %soc_clk.i283 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %soc_clk.i283, align 4
  call void @clk_unprepare(ptr noundef %341) #7
  br label %di_err1.i

if.end27.i287:                                    ; preds = %if.end19.i
  %last_unrounded_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 21
  %342 = ptrtoint ptr %last_unrounded_rate.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 0, ptr %last_unrounded_rate.i, align 4
  %343 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %call.i, align 4
  call void @pm_runtime_enable(ptr noundef %344) #7
  %345 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %call.i, align 4
  %call.i.i285 = call i32 @__pm_runtime_resume(ptr noundef %346, i32 noundef 4) #7
  %mode1.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 15
  %347 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 1, ptr %mode1.i.i, align 4
  %348 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %349, i32 0) #7, !srcloc !345
  %350 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %base, align 4
  %352 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %351) #7, !srcloc !346
  call fastcc void @dfll_set_default_params(ptr noundef %call.i) #7
  %353 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %soc7, align 4
  %init_clock_trimmers.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %354, i32 0, i32 4
  %355 = ptrtoint ptr %init_clock_trimmers.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %init_clock_trimmers.i, align 4
  %tobool31.not.i = icmp eq ptr %356, null
  br i1 %tobool31.not.i, label %if.end27.i287.if.end35.i_crit_edge, label %if.then32.i

if.end27.i287.if.end35.i_crit_edge:               ; preds = %if.end27.i287
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then32.i:                                      ; preds = %if.end27.i287
  call void @__sanitizer_cov_trace_pc() #9
  call void %356() #7
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then32.i, %if.end27.i287.if.end35.i_crit_edge
  %tune_range.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 16
  %357 = ptrtoint ptr %tune_range.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %tune_range.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %358)
  %cmp.not.i.i = icmp eq i32 %358, 1
  br i1 %cmp.not.i.i, label %if.end35.i.if.end148_crit_edge, label %if.then.i.i

if.end35.i.if.end148_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then.i.i:                                      ; preds = %if.end35.i
  %359 = ptrtoint ptr %tune_range.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 1, ptr %tune_range.i.i, align 4
  %360 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %soc7, align 4
  %cvb.i.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %361, i32 0, i32 2
  %362 = ptrtoint ptr %cvb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cvb.i.i.i, align 4
  %cpu_dfll_data.i.i.i = getelementptr inbounds %struct.cvb_table, ptr %363, i32 0, i32 7
  %364 = ptrtoint ptr %cpu_dfll_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %cpu_dfll_data.i.i.i, align 4
  %366 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %367, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %365) #7, !srcloc !345
  %368 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %soc7, align 4
  %cvb2.i.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %369, i32 0, i32 2
  %370 = ptrtoint ptr %cvb2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %cvb2.i.i.i, align 4
  %tune1.i.i.i = getelementptr inbounds %struct.cvb_table, ptr %371, i32 0, i32 7, i32 2
  %372 = ptrtoint ptr %tune1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %tune1.i.i.i, align 4
  %374 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %base, align 4
  %add.ptr.i15.i.i.i = getelementptr i8, ptr %375, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i.i, i32 %373) #7, !srcloc !345
  %376 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %base, align 4
  %378 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %377) #7, !srcloc !346
  %379 = ptrtoint ptr %soc7 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %soc7, align 4
  %set_clock_trimmers_low.i.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %380, i32 0, i32 6
  %381 = ptrtoint ptr %set_clock_trimmers_low.i.i.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %set_clock_trimmers_low.i.i.i, align 4
  %tobool.not.i.i.i288 = icmp eq ptr %382, null
  br i1 %tobool.not.i.i.i288, label %if.then.i.i.if.end148_crit_edge, label %if.then.i.i.i

if.then.i.i.if.end148_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %382() #7
  br label %if.end148

di_err1.i:                                        ; preds = %do.end25.i, %do.end17.i
  %ret.0.i = phi i32 [ %call12.i, %do.end17.i ], [ %call20.i, %do.end25.i ]
  %383 = ptrtoint ptr %ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ref_clk.i, align 4
  call void @clk_unprepare(ptr noundef %384) #7
  %385 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dvco_rst, align 4
  %call41.i = call i32 @reset_control_assert(ptr noundef %386) #7
  br label %cleanup

if.end148:                                        ; preds = %if.then.i.i.i, %if.then.i.i.if.end148_crit_edge, %if.end35.i.if.end148_crit_edge
  %387 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %388, i32 20
  %389 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !346
  %or.i.i = and i32 %389, -268500737
  %and.i.i = or i32 %or.i.i, 65280
  %390 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %base, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %391, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %and.i.i) #7, !srcloc !345
  %392 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %base, align 4
  %394 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %393) #7, !srcloc !346
  call fastcc void @dfll_init_out_if(ptr noundef %call.i) #7
  %395 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %call.i, align 4
  %call.i71.i = call i32 @__pm_runtime_idle(ptr noundef %396, i32 noundef 4) #7
  %397 = ptrtoint ptr %output_clock_name.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %output_clock_name.i, align 4
  store ptr %398, ptr @dfll_clk_init_data, align 4
  %dfll_clk_hw.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 18
  %init.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 18, i32 2
  %399 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %399)
  store ptr @dfll_clk_init_data, ptr %init.i, align 4
  %400 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %call.i, align 4
  %call.i291 = call ptr @clk_register(ptr noundef %401, ptr noundef %dfll_clk_hw.i) #7
  %dfll_clk.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 10
  %402 = ptrtoint ptr %dfll_clk.i to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr %call.i291, ptr %dfll_clk.i, align 4
  %cmp.i.i292 = icmp ugt ptr %call.i291, inttoptr (i32 -4096 to ptr)
  %403 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %call.i, align 4
  br i1 %cmp.i.i292, label %do.end.i293, label %if.end.i297

do.end.i293:                                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %404, ptr noundef nonnull @.str.133) #10
  br label %do.end154

if.end.i297:                                      ; preds = %if.end148
  %of_node.i294 = getelementptr inbounds %struct.device, ptr %404, i32 0, i32 27
  %405 = ptrtoint ptr %of_node.i294 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %of_node.i294, align 8
  %call7.i295 = call i32 @of_clk_add_provider(ptr noundef %406, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call.i291) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i295)
  %tobool.not.i296 = icmp eq i32 %call7.i295, 0
  br i1 %tobool.not.i296, label %lor.lhs.false.i301, label %do.end11.i

do.end11.i:                                       ; preds = %if.end.i297
  call void @__sanitizer_cov_trace_pc() #9
  %407 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %408, ptr noundef nonnull @.str.136) #10
  %409 = ptrtoint ptr %dfll_clk.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %dfll_clk.i, align 4
  call void @clk_unregister(ptr noundef %410) #7
  br label %do.end154

do.end154:                                        ; preds = %do.end11.i, %do.end.i293
  %retval.0.i298.ph = phi i32 [ %call7.i295, %do.end11.i ], [ -22, %do.end.i293 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #10
  br label %cleanup

lor.lhs.false.i301:                               ; preds = %if.end.i297
  %411 = ptrtoint ptr %mode1.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %mode1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp.i300 = icmp eq i32 %412, 0
  br i1 %cmp.i300, label %lor.lhs.false.i301.cleanup_crit_edge, label %if.end.i307

lor.lhs.false.i301.cleanup_crit_edge:             ; preds = %lor.lhs.false.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i307:                                      ; preds = %lor.lhs.false.i301
  call void @__sanitizer_cov_trace_pc() #9
  %call.i302 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str.166, ptr noundef null) #7
  %debugfs_dir.i = getelementptr inbounds %struct.tegra_dfll, ptr %call.i, i32 0, i32 17
  %413 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store ptr %call.i302, ptr %debugfs_dir.i, align 4
  %call1.i303 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.167, i16 noundef zeroext 420, ptr noundef %call.i302, ptr noundef nonnull %call.i, ptr noundef nonnull @enable_fops) #7
  %call2.i304 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.168, i16 noundef zeroext 292, ptr noundef %call.i302, ptr noundef nonnull %call.i, ptr noundef nonnull @lock_fops) #7
  %call3.i305 = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.169, i16 noundef zeroext 292, ptr noundef %call.i302, ptr noundef nonnull %call.i, ptr noundef nonnull @rate_fops) #7
  %call4.i306 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.170, i16 noundef zeroext 292, ptr noundef %call.i302, ptr noundef nonnull %call.i, ptr noundef nonnull @attr_registers_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i307, %lor.lhs.false.i301.cleanup_crit_edge, %do.end154, %di_err1.i, %do.end9.i, %do.end.i279, %do.end142, %do.end134, %do.end122, %do.end114, %do.end102, %do.end94, %do.end82, %do.end74, %do.end63, %do.end55, %if.end46.cleanup_crit_edge, %do.end39, %do.end25, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %8, %do.end15 ], [ -22, %do.end25 ], [ -22, %do.end55 ], [ %retval.0.i276, %do.end142 ], [ %retval.0.i298.ph, %do.end154 ], [ -19, %do.end134 ], [ -19, %do.end122 ], [ -19, %do.end114 ], [ -19, %do.end102 ], [ -19, %do.end94 ], [ -19, %do.end82 ], [ -19, %do.end74 ], [ -19, %do.end63 ], [ %130, %do.end39 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0, %if.end46.cleanup_crit_edge ], [ 0, %lor.lhs.false.i301.cleanup_crit_edge ], [ 0, %if.end.i307 ], [ %ret.0.i, %di_err1.i ], [ %call5.i, %do.end9.i ], [ -22, %do.end.i279 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_dfll_unregister(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %debugfs_dir = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %debugfs_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir, align 4
  tail call void @debugfs_remove(ptr noundef %5) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %9) #7
  %dfll_clk.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %dfll_clk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dfll_clk.i, align 4
  tail call void @clk_unregister(ptr noundef %11) #7
  %12 = ptrtoint ptr %dfll_clk.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dfll_clk.i, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev2, i1 noundef zeroext true) #7
  %ref_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %ref_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ref_clk, align 4
  tail call void @clk_unprepare(ptr noundef %14) #7
  %soc_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %soc_clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc_clk, align 4
  tail call void @clk_unprepare(ptr noundef %16) #7
  %i2c_clk = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_clk, align 4
  tail call void @clk_unprepare(ptr noundef %18) #7
  %dvco_rst = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %dvco_rst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dvco_rst, align 4
  %call3 = tail call i32 @reset_control_assert(ptr noundef %20) #7
  %soc = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %soc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %do.end ], [ %22, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_hardware_vsel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_hardware_vsel_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_vdd_map_entry_exact(ptr nocapture noundef readonly %td, i32 noundef %uV) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 39
  %0 = ptrtoint ptr %pmu_if to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pmu_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21, !prof !347

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1583, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end21:                                         ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 1
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %step_uv = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %step_uv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %step_uv, align 4
  %div = sdiv i32 %uV, %5
  %vdd_reg = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 6
  %6 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd_reg, align 4
  %call = tail call i32 @regulator_count_voltages(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2254 = icmp sgt i32 %call, 0
  br i1 %cmp2254, label %if.end21.for.body_crit_edge, label %if.end21.do.end37_crit_edge

if.end21.do.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end21.for.body_crit_edge ]
  %8 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_reg, align 4
  %call24 = tail call i32 @regulator_list_voltage(ptr noundef %9, i32 noundef %i.055) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %for.body.do.end37_crit_edge, label %if.end27

for.body.do.end37_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

if.end27:                                         ; preds = %for.body
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %step_uv30 = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %11, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %step_uv30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %step_uv30, align 4
  %div31 = sdiv i32 %call24, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div31)
  %cmp32 = icmp eq i32 %div, %div31
  br i1 %cmp32, label %if.end27.cleanup_crit_edge, label %for.inc

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end27
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.do.end37_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end37_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37

do.end37:                                         ; preds = %for.inc.do.end37_crit_edge, %for.body.do.end37_crit_edge, %if.end21.do.end37_crit_edge
  %14 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.107, i32 noundef %uV) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end37 ], [ %i.055, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_count_voltages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfll_clk_enable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -72
  %mode.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  br i1 %cmp.not.i, label %if.end, label %dfll_enable.exit

dfll_enable.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.138, ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode.i, align 4
  %base.i.i.i = getelementptr i8, ptr %hw, i32 -64
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #7, !srcloc !345
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !346
  %call1 = tail call fastcc i32 @dfll_lock(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i13 = icmp eq i32 %13, 2
  br i1 %cmp.not.i13, label %if.end.i18, label %do.end.i15

do.end.i15:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i14 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.155, ptr noundef %17) #10
  br label %cleanup

if.end.i18:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %mode.i, align 4
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #7, !srcloc !345
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !346
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %call.i.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i18, %do.end.i15, %if.end.cleanup_crit_edge, %dfll_enable.exit
  %retval.0 = phi i32 [ -1, %dfll_enable.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call1, %do.end.i15 ], [ %call1, %if.end.i18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dfll_clk_disable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -72
  %call = tail call fastcc i32 @dfll_unlock(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mode.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %arrayidx.i = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.155, ptr noundef %5) #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode.i, align 4
  %base.i.i.i = getelementptr i8, ptr %hw, i32 -64
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #7, !srcloc !345
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !346
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %13, i32 noundef 4) #7
  br label %if.end

if.end:                                           ; preds = %if.end.i, %do.end.i, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dfll_clk_is_enabled(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %conv = zext i1 %cmp.i to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dfll_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %last_unrounded_rate = getelementptr i8, ptr %hw, i32 32
  %0 = ptrtoint ptr %last_unrounded_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_unrounded_rate, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfll_clk_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %clk_req) #0 align 64 {
entry:
  %req = alloca %struct.dfll_rate_req, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -72
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #7
  %0 = call ptr @memset(ptr %req, i32 255, i32 16)
  %1 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clk_req, align 4
  %call = call fastcc i32 @dfll_calculate_rate_request(ptr noundef %add.ptr, ptr noundef nonnull %req, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dfll_clk_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -72
  %call = tail call fastcc i32 @dfll_request_rate(ptr noundef %add.ptr, i32 noundef %rate)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfll_lock(ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 15
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body6 [
    i32 3, label %entry.cleanup_crit_edge
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %last_req = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20
  %3 = ptrtoint ptr %last_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 39
  %7 = ptrtoint ptr %pmu_if to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pmu_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %pwm_pin.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 41
  %9 = ptrtoint ptr %pwm_pin.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwm_pin.i, align 4
  %pwm_enable_state.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 42
  %11 = ptrtoint ptr %pwm_enable_state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwm_enable_state.i, align 4
  %call.i = tail call i32 @pinctrl_select_state(ptr noundef %10, ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.149) #10
  br label %if.end5

if.end.i:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !346
  %and.i = and i32 %17, -64
  %ref_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 12
  %18 = ptrtoint ptr %ref_rate.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_rate.i, align 4
  %pwm_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 40
  %20 = ptrtoint ptr %pwm_rate.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwm_rate.i, align 4
  %add.i = add i32 %19, -1
  %sub.i = add i32 %add.i, %21
  %div4.i = udiv i32 %sub.i, %21
  %and5.i = and i32 %div4.i, 63
  %or.i = or i32 %and5.i, %and.i
  %22 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %or.i) #7, !srcloc !345
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !346
  %or6.i = or i32 %or.i, 64
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %or6.i) #7, !srcloc !345
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !346
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 3
  %32 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i.i37 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i37) #7, !srcloc !346
  %val.0.i = or i32 %34, 1073741824
  %35 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i2.i39 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i39, i32 %val.0.i) #7, !srcloc !345
  %37 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 64
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !346
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.i, %do.end.i
  %40 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %mode, align 4
  %base.i.i40 = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %41 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i40, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 2) #7, !srcloc !345
  %43 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i40, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !346
  %lut_index.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 2
  %46 = ptrtoint ptr %lut_index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %lut_index.i, align 4
  %lut_safe.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 38
  %48 = ptrtoint ptr %lut_safe.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %lut_safe.i, align 1
  %conv.i = zext i8 %49 to i32
  %sub.i41 = sub i32 %47, %conv.i
  %mul.i = shl i32 %sub.i41, 7
  %cg.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 27
  %50 = ptrtoint ptr %cg.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cg.i, align 4
  %div.i = udiv i32 %mul.i, %51
  %52 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 -2048) #7
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 2047) #7
  %mult_bits.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 3
  %54 = ptrtoint ptr %mult_bits.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mult_bits.i, align 4
  %conv9.i = zext i8 %55 to i32
  %scale_bits.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 4
  %56 = ptrtoint ptr %scale_bits.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %scale_bits.i, align 1
  %conv10.i = zext i8 %57 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %shl13.i = shl nsw i32 %53, 16
  %and.i42 = and i32 %shl13.i, 268369920
  %or12.i = or i32 %shl11.i, %conv9.i
  %or14.i = or i32 %or12.i, %and.i42
  %or15.i = or i32 %or14.i, 268435584
  %58 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %59, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i44, i32 %or15.i) #7, !srcloc !345
  %60 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i40, align 4
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #7, !srcloc !346
  %63 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i.i46 = getelementptr i8, ptr %64, i32 36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i46) #7, !srcloc !346
  %and.i47 = and i32 %65, -65
  %66 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i40, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %67, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %and.i47) #7, !srcloc !345
  %68 = ptrtoint ptr %base.i.i40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i.i40, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #7, !srcloc !346
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp8 = icmp ugt i32 %1, 3
  br i1 %cmp8, label %do.body11, label %do.end22, !prof !347

do.body11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1041, 0\0A.popsection", ""() #7, !srcloc !352
  unreachable

do.end22:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %td, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.145, ptr noundef %74) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end22 ], [ -22, %do.end ], [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfll_unlock(ptr nocapture noundef %td) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 15
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %1, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %tune_range.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 16
  %3 = ptrtoint ptr %tune_range.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tune_range.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 1
  br i1 %cmp.not.i, label %sw.bb.dfll_set_open_loop_config.exit_crit_edge, label %if.then.i

sw.bb.dfll_set_open_loop_config.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_set_open_loop_config.exit

if.then.i:                                        ; preds = %sw.bb
  %5 = ptrtoint ptr %tune_range.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tune_range.i, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 1
  %6 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc.i.i, align 4
  %cvb.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %cvb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cvb.i.i, align 4
  %cpu_dfll_data.i.i = getelementptr inbounds %struct.cvb_table, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %cpu_dfll_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu_dfll_data.i.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %11) #7, !srcloc !345
  %14 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i.i, align 4
  %cvb2.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %cvb2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cvb2.i.i, align 4
  %tune1.i.i = getelementptr inbounds %struct.cvb_table, ptr %17, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %tune1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tune1.i.i, align 4
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i.i, i32 %19) #7, !srcloc !345
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !346
  %25 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %soc.i.i, align 4
  %set_clock_trimmers_low.i.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %set_clock_trimmers_low.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_clock_trimmers_low.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.then.i.dfll_set_open_loop_config.exit_crit_edge, label %if.then.i.i

if.then.i.dfll_set_open_loop_config.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_set_open_loop_config.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %28() #7
  br label %dfll_set_open_loop_config.exit

dfll_set_open_loop_config.exit:                   ; preds = %if.then.i.i, %if.then.i.dfll_set_open_loop_config.exit_crit_edge, %sw.bb.dfll_set_open_loop_config.exit_crit_edge
  %base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !346
  %or.i = and i32 %31, -268500737
  %and.i = or i32 %or.i, 65280
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %and.i) #7, !srcloc !345
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #7, !srcloc !346
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %mode, align 4
  %38 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 1) #7, !srcloc !345
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !346
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 39
  %43 = ptrtoint ptr %pmu_if to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pmu_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp = icmp eq i32 %44, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %dfll_set_open_loop_config.exit
  %pwm_pin.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 41
  %45 = ptrtoint ptr %pwm_pin.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pwm_pin.i, align 4
  %pwm_disable_state.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 43
  %47 = ptrtoint ptr %pwm_disable_state.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pwm_disable_state.i, align 4
  %call8.i = tail call i32 @pinctrl_select_state(ptr noundef %46, ptr noundef %48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %if.then.dfll_pwm_set_output_enabled.exit_crit_edge

if.then.dfll_pwm_set_output_enabled.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_pwm_set_output_enabled.exit

do.end13.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.152) #10
  br label %dfll_pwm_set_output_enabled.exit

dfll_pwm_set_output_enabled.exit:                 ; preds = %do.end13.i, %if.then.dfll_pwm_set_output_enabled.exit_crit_edge
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !346
  %and17.i = and i32 %53, -65
  %54 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %55, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 %and17.i) #7, !srcloc !345
  %56 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i, align 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !346
  br label %return

if.else:                                          ; preds = %dfll_set_open_loop_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  %i2c_base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 3
  %59 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %60, i32 32
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #7, !srcloc !346
  %and.i25 = and i32 %61, -1073741825
  %62 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %63, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %and.i25) #7, !srcloc !345
  %64 = ptrtoint ptr %i2c_base.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %i2c_base.i.i, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %65, i32 64
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i26) #7, !srcloc !346
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp4 = icmp ugt i32 %1, 3
  br i1 %cmp4, label %do.body7, label %do.end13, !prof !347

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-dfll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1071, 0\0A.popsection", ""() #7, !srcloc !353
  unreachable

do.end13:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %td, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158, ptr noundef %70) #10
  br label %return

return:                                           ; preds = %do.end13, %if.else, %dfll_pwm_set_output_enabled.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end13 ], [ 0, %if.else ], [ 0, %dfll_pwm_set_output_enabled.exit ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfll_calculate_rate_request(ptr nocapture noundef readonly %td, ptr nocapture noundef %req, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %rate.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %scale_bits = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %scale_bits to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %scale_bits, align 1
  %dvco_rate_min = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 14
  %1 = ptrtoint ptr %dvco_rate_min to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dvco_rate_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp = icmp ugt i32 %2, %rate
  br i1 %cmp, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %entry
  %div = udiv i32 %rate, 1000
  %mul = shl nuw nsw i32 %div, 8
  %div2 = udiv i32 %2, 1000
  %div3 = udiv i32 %2, 2000
  %add = add nuw nsw i32 %div3, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %div2, i32 %add)
  %tobool.not = icmp ugt i32 %div2, %add
  br i1 %tobool.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, i32 noundef %rate) #10
  br label %cleanup37

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %div4 = udiv i32 %add, %div2
  %5 = trunc i32 %div4 to i8
  %conv = add i8 %5, -1
  %6 = ptrtoint ptr %scale_bits to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %scale_bits, align 1
  %7 = ptrtoint ptr %dvco_rate_min to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dvco_rate_min, align 4
  br label %if.end8

if.end8:                                          ; preds = %cleanup, %entry.if.end8_crit_edge
  %rate.addr.1 = phi i32 [ %8, %cleanup ], [ %rate, %entry.if.end8_crit_edge ]
  %ref_rate = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 12
  %9 = ptrtoint ptr %ref_rate to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ref_rate, align 4
  %div963 = lshr i32 %10, 1
  %div10 = udiv i32 %rate.addr.1, %div963
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %div10)
  %cmp11 = icmp ugt i32 %div10, 127
  br i1 %cmp11, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.160, i32 noundef %rate.addr.1) #10
  br label %cleanup37

if.end18:                                         ; preds = %if.end8
  %conv19 = trunc i32 %div10 to i8
  %mult_bits = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %mult_bits to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv19, ptr %mult_bits, align 4
  %14 = ptrtoint ptr %ref_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ref_rate, align 4
  %div2364 = lshr i32 %15, 1
  %mul24 = mul i32 %div2364, %div10
  %dvco_target_rate = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 1
  %16 = ptrtoint ptr %dvco_target_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul24, ptr %dvco_target_rate, align 4
  %17 = ptrtoint ptr %scale_bits to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scale_bits, align 1
  %conv26 = zext i8 %18 to i32
  %conv.i = zext i32 %mul24 to i64
  %add.i = add nuw nsw i32 %conv26, 1
  %19 = zext i32 %add.i to i64
  %mul.i = mul nuw nsw i64 %19, %conv.i
  %div3.i = lshr i64 %mul.i, 8
  %conv2.i = trunc i64 %div3.i to i32
  %20 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv2.i, ptr %req, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.addr.i)
  %21 = ptrtoint ptr %rate.addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul24, ptr %rate.addr.i, align 4
  %soc.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 1
  %22 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %25, ptr noundef nonnull %rate.addr.i) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %find_lut_index_for_rate.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end18
  %call3.i = call i32 @dev_pm_opp_get_voltage(ptr noundef %call.i) #7
  %26 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %soc.i, align 4
  %step_uv.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %27, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %step_uv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %step_uv.i, align 4
  %div.i = udiv i32 %call3.i, %29
  call void @dev_pm_opp_put(ptr noundef %call.i) #7
  %lut_bottom.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 35
  %30 = ptrtoint ptr %lut_bottom.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lut_bottom.i, align 4
  %conv.i65 = zext i8 %31 to i32
  %lut_size.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 34
  %32 = ptrtoint ptr %lut_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %lut_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i65)
  %cmp27.i = icmp sgt i32 %33, %conv.i65
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %if.end.i.find_lut_index_for_rate.exit.thread_crit_edge

if.end.i.find_lut_index_for_rate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_lut_index_for_rate.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %34 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %soc.i, align 4
  %step_uv8.i = getelementptr inbounds %struct.tegra_dfll_soc_data, ptr %35, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %step_uv8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %step_uv8.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ %conv.i65, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_dfll, ptr %td, i32 0, i32 33, i32 %i.028.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %div9.i = udiv i32 %39, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.i, i32 %div.i)
  %cmp10.not.i = icmp ult i32 %div9.i, %div.i
  br i1 %cmp10.not.i, label %for.inc.i, label %find_lut_index_for_rate.exit.thread71

find_lut_index_for_rate.exit.thread71:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.addr.i)
  %lut_index73 = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 2
  %40 = ptrtoint ptr %lut_index73 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %i.028.i, ptr %lut_index73, align 4
  br label %cleanup37

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.inc.i.find_lut_index_for_rate.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.find_lut_index_for_rate.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_lut_index_for_rate.exit.thread

find_lut_index_for_rate.exit.thread:              ; preds = %for.inc.i.find_lut_index_for_rate.exit.thread_crit_edge, %if.end.i.find_lut_index_for_rate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.addr.i)
  %lut_index68 = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 2
  %41 = ptrtoint ptr %lut_index68 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -2, ptr %lut_index68, align 4
  br label %44

find_lut_index_for_rate.exit:                     ; preds = %if.end18
  %42 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.addr.i)
  %lut_index = getelementptr inbounds %struct.dfll_rate_req, ptr %req, i32 0, i32 2
  %43 = ptrtoint ptr %lut_index to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %lut_index, align 4
  %cmp32 = icmp slt ptr %call.i, null
  br i1 %cmp32, label %find_lut_index_for_rate.exit._crit_edge, label %find_lut_index_for_rate.exit.cleanup37_crit_edge

find_lut_index_for_rate.exit.cleanup37_crit_edge: ; preds = %find_lut_index_for_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup37

find_lut_index_for_rate.exit._crit_edge:          ; preds = %find_lut_index_for_rate.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %44

44:                                               ; preds = %find_lut_index_for_rate.exit._crit_edge, %find_lut_index_for_rate.exit.thread
  %retval.0.i70 = phi i32 [ -2, %find_lut_index_for_rate.exit.thread ], [ %42, %find_lut_index_for_rate.exit._crit_edge ]
  br label %cleanup37

cleanup37:                                        ; preds = %44, %find_lut_index_for_rate.exit.cleanup37_crit_edge, %find_lut_index_for_rate.exit.thread71, %do.end16, %cleanup.thread
  %retval.1 = phi i32 [ -22, %do.end16 ], [ -22, %cleanup.thread ], [ %retval.0.i70, %44 ], [ 0, %find_lut_index_for_rate.exit.cleanup37_crit_edge ], [ 0, %find_lut_index_for_rate.exit.thread71 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dfll_request_rate(ptr nocapture noundef %td, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %req = alloca %struct.dfll_rate_req, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %req) #7
  %0 = call ptr @memset(ptr %req, i32 255, i32 16)
  %mode = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 15
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %td, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.140) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @dfll_calculate_rate_request(ptr noundef %td, ptr noundef nonnull %req, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %last_unrounded_rate = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 21
  %5 = ptrtoint ptr %last_unrounded_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rate, ptr %last_unrounded_rate, align 4
  %last_req = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20
  %6 = call ptr @memcpy(ptr %last_req, ptr %req, i32 16)
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp5 = icmp eq i32 %8, 3
  br i1 %cmp5, label %if.then6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %lut_index.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 2
  %9 = ptrtoint ptr %lut_index.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lut_index.i, align 4
  %lut_safe.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 38
  %11 = ptrtoint ptr %lut_safe.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lut_safe.i, align 1
  %conv.i = zext i8 %12 to i32
  %sub.i = sub i32 %10, %conv.i
  %mul.i = shl i32 %sub.i, 7
  %cg.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 27
  %13 = ptrtoint ptr %cg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cg.i, align 4
  %div.i = udiv i32 %mul.i, %14
  %15 = tail call i32 @llvm.smax.i32(i32 %div.i, i32 -2048) #7
  %16 = tail call i32 @llvm.smin.i32(i32 %15, i32 2047) #7
  %mult_bits.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 3
  %17 = ptrtoint ptr %mult_bits.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mult_bits.i, align 4
  %conv9.i = zext i8 %18 to i32
  %scale_bits.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 20, i32 4
  %19 = ptrtoint ptr %scale_bits.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scale_bits.i, align 1
  %conv10.i = zext i8 %20 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %shl13.i = shl nsw i32 %16, 16
  %and.i = and i32 %shl13.i, 268369920
  %or12.i = or i32 %shl11.i, %conv9.i
  %or14.i = or i32 %or12.i, %and.i
  %or15.i = or i32 %or14.i, 268435584
  %base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %td, i32 0, i32 2
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or15.i) #7, !srcloc !345
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !346
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %req) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enable_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @attr_enable_get, ptr noundef nonnull @attr_enable_set, ptr noundef nonnull @.str.171) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @attr_enable_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp ugt i32 %1, 1
  %conv = zext i1 %cmp.i to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_enable_set(ptr nocapture noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  %mode.i3 = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %mode.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i3, align 4
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.138, ptr noundef %5) #10
  br label %cond.end

if.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %6 = ptrtoint ptr %mode.i3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %mode.i3, align 4
  %base.i.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #7, !srcloc !345
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !346
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i4 = icmp eq i32 %1, 2
  br i1 %cmp.not.i4, label %if.end.i9, label %do.end.i6

do.end.i6:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %arrayidx.i5 = getelementptr [4 x ptr], ptr @mode_name, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.155, ptr noundef %15) #10
  br label %cond.end

if.end.i9:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %mode.i3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %mode.i3, align 4
  %base.i.i.i7 = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %base.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #7, !srcloc !345
  %19 = ptrtoint ptr %base.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i7, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !346
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %call.i.i8 = tail call i32 @__pm_runtime_idle(ptr noundef %23, i32 noundef 4) #7
  br label %cond.end

cond.end:                                         ; preds = %if.end.i9, %do.end.i6, %if.end.i, %do.end.i
  %cond = phi i32 [ -1, %do.end.i ], [ 0, %if.end.i ], [ -22, %do.end.i6 ], [ 0, %if.end.i9 ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lock_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @attr_lock_get, ptr noundef nonnull @attr_lock_set, ptr noundef nonnull @.str.171) #7
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @attr_lock_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %2 = zext i1 %cmp to i64
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_lock_set(ptr nocapture noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %tobool.not = icmp eq i64 %val, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @dfll_lock(ptr noundef %data)
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @dfll_unlock(ptr noundef %data)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call1, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @attr_rate_get, ptr noundef nonnull @attr_rate_set, ptr noundef nonnull @.str.171) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_rate_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 15
  %0 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp ugt i32 %1, 1
  br i1 %cmp.i.i, label %if.end.i, label %entry.dfll_read_monitor_rate.exit_crit_edge

entry.dfll_read_monitor_rate.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dfll_read_monitor_rate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !346
  %and.i = and i32 %4, 65535
  %ref_rate.i = getelementptr inbounds %struct.tegra_dfll, ptr %data, i32 0, i32 12
  %5 = ptrtoint ptr %ref_rate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ref_rate.i, align 4
  %div1.i.i = lshr i32 %6, 2
  %mul.i.i = mul i32 %div1.i.i, %and.i
  %conv.i.i = zext i32 %mul.i.i to i64
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !346
  %and4.i = lshr i32 %9, 8
  %shr5.i = and i32 %and4.i, 255
  %add.i.i = add nuw nsw i32 %shr5.i, 1
  %10 = zext i32 %add.i.i to i64
  %mul.i19.i = mul nuw nsw i64 %10, %conv.i.i
  %div3.i.i = lshr i64 %mul.i19.i, 8
  br label %dfll_read_monitor_rate.exit

dfll_read_monitor_rate.exit:                      ; preds = %if.end.i, %entry.dfll_read_monitor_rate.exit_crit_edge
  %retval.0.i = phi i64 [ %div3.i.i, %if.end.i ], [ 0, %entry.dfll_read_monitor_rate.exit_crit_edge ]
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %retval.0.i, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_rate_set(ptr nocapture noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %val to i32
  %call = tail call fastcc i32 @dfll_request_rate(ptr noundef %data, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_registers_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @attr_registers_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attr_registers_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.172) #7
  %base.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 2
  %i2c_base.i = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %offs.068 = phi i32 [ 0, %entry ], [ %add, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %offs.068)
  %cmp1 = icmp eq i32 %offs.068, 32
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !346
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %6, i32 %offs.068
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !346
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %4, %if.then ], [ %7, %if.else ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef %offs.068, i32 noundef %val.0) #7
  %add = add nuw nsw i32 %offs.068, 4
  %cmp = icmp ult i32 %offs.068, 41
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.174) #7
  %8 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 64, i32 noundef %10) #7
  %11 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i65.1 = getelementptr i8, ptr %12, i32 68
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.1) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 68, i32 noundef %13) #7
  %14 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i65.2 = getelementptr i8, ptr %15, i32 72
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65.2) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 72, i32 noundef %16) #7
  %17 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i67 = getelementptr i8, ptr %18, i32 92
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 92, i32 noundef %19) #7
  %20 = ptrtoint ptr %i2c_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c_base.i, align 4
  %add.ptr.i67.1 = getelementptr i8, ptr %21, i32 96
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.1) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 96, i32 noundef %22) #7
  %pmu_if = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 39
  %23 = ptrtoint ptr %pmu_if to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pmu_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17 = icmp eq i32 %24, 0
  br i1 %cmp17, label %if.then18, label %for.end.if.end28_crit_edge

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then18:                                        ; preds = %for.end
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.175) #7
  %i2c_controller_base = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %i2c_controller_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c_controller_base, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 108
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef 108, i32 noundef %27) #7
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.176) #7
  %lut_base = getelementptr inbounds %struct.tegra_dfll, ptr %1, i32 0, i32 5
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %if.then18
  %offs.372 = phi i32 [ 0, %if.then18 ], [ %add26, %for.body22.for.body22_crit_edge ]
  %28 = ptrtoint ptr %lut_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lut_base, align 4
  %add.ptr23 = getelementptr i8, ptr %29, i32 %offs.372
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !346
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.173, i32 noundef %offs.372, i32 noundef %30) #7
  %add26 = add nuw nsw i32 %offs.372, 4
  %cmp21 = icmp ult i32 %offs.372, 128
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.if.end28_crit_edge

for.body22.if.end28_crit_edge:                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

if.end28:                                         ; preds = %for.body22.if.end28_crit_edge, %for.end.if.end28_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 176)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !152, !154, !156, !157, !158, !160, !162, !163, !164, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !204, !205, !206, !207, !209, !211, !212, !213, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !247, !249, !251, !252, !253, !254, !256, !258, !260, !262, !264, !266, !267, !268, !269, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !304, !305, !306, !307, !309, !311, !313, !315, !317, !319, !320, !322, !324, !326, !328, !330, !332, !334}
!llvm.module.flags = !{!336, !337, !338, !339, !340, !341, !342, !343}
!llvm.ident = !{!344}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 395, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra_dfll_runtime_resume._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra_dfll_runtime_resume._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 401, i32 3}
!10 = !{ptr @tegra_dfll_runtime_resume._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @tegra_dfll_runtime_resume._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 408, i32 3}
!14 = !{ptr @tegra_dfll_runtime_resume._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_dfll_runtime_resume._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_tegra_dfll_runtime_resume, !17, !"__ksymtab_tegra_dfll_runtime_resume", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 416, i32 1}
!18 = !{ptr @__ksymtab_tegra_dfll_runtime_suspend, !19, !"__ksymtab_tegra_dfll_runtime_suspend", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 435, i32 1}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1528, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tegra_dfll_suspend._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @tegra_dfll_suspend._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @__ksymtab_tegra_dfll_suspend, !26, !"__ksymtab_tegra_dfll_suspend", i1 false, i1 false}
!26 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1536, i32 1}
!27 = !{ptr @__ksymtab_tegra_dfll_resume, !28, !"__ksymtab_tegra_dfll_resume", i1 false, i1 false}
!28 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1569, i32 1}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1942, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tegra_dfll_register._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_dfll_register._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1954, i32 49}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1956, i32 3}
!38 = !{ptr @tegra_dfll_register._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_dfll_register._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1962, i32 3}
!42 = !{ptr @tegra_dfll_register._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_dfll_register._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1966, i32 46}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1970, i32 45}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1972, i32 4}
!50 = !{ptr @tegra_dfll_register._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @tegra_dfll_register._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1983, i32 3}
!54 = !{ptr @tegra_dfll_register._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_dfll_register._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1989, i32 3}
!58 = !{ptr @tegra_dfll_register._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @tegra_dfll_register._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1995, i32 3}
!62 = !{ptr @tegra_dfll_register._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @tegra_dfll_register._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2001, i32 3}
!66 = !{ptr @tegra_dfll_register._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tegra_dfll_register._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2007, i32 3}
!70 = !{ptr @tegra_dfll_register._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tegra_dfll_register._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2013, i32 3}
!74 = !{ptr @tegra_dfll_register._entry.42, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @tegra_dfll_register._entry_ptr.44, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.46, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2020, i32 3}
!78 = !{ptr @tegra_dfll_register._entry.45, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @tegra_dfll_register._entry_ptr.47, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2027, i32 3}
!82 = !{ptr @tegra_dfll_register._entry.48, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @tegra_dfll_register._entry_ptr.50, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.52, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2033, i32 3}
!86 = !{ptr @tegra_dfll_register._entry.51, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @tegra_dfll_register._entry_ptr.53, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2040, i32 3}
!90 = !{ptr @tegra_dfll_register._entry.54, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @tegra_dfll_register._entry_ptr.56, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.58, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2051, i32 3}
!94 = !{ptr @tegra_dfll_register._entry.57, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @tegra_dfll_register._entry_ptr.59, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @__ksymtab_tegra_dfll_register, !97, !"__ksymtab_tegra_dfll_register", i1 false, i1 false}
!97 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2059, i32 1}
!98 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2075, i32 3}
!100 = !{ptr @.str.61, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @tegra_dfll_unregister._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @tegra_dfll_unregister._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @__ksymtab_tegra_dfll_unregister, !104, !"__ksymtab_tegra_dfll_unregister", i1 false, i1 false}
!104 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 2093, i32 1}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1903, i32 26}
!107 = !{ptr @.str.63, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1904, i32 26}
!109 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1905, i32 26}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1906, i32 26}
!113 = !{ptr @.str.66, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1907, i32 26}
!115 = !{ptr @.str.67, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1908, i32 26}
!117 = !{ptr @.str.68, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1910, i32 11}
!119 = !{ptr @.str.69, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1912, i32 48}
!121 = !{ptr @.str.70, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1914, i32 3}
!123 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dfll_fetch_common_params._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dfll_fetch_common_params._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1795, i32 3}
!128 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @read_dt_param._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @read_dt_param._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1847, i32 3}
!133 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dfll_fetch_pwm_params._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dfll_fetch_pwm_params._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1855, i32 26}
!138 = !{ptr @.str.78, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1858, i32 3}
!140 = !{ptr @dfll_fetch_pwm_params._entry.77, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @dfll_fetch_pwm_params._entry_ptr.79, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.80, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1862, i32 26}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1864, i32 3}
!146 = !{ptr @dfll_fetch_pwm_params._entry.81, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @dfll_fetch_pwm_params._entry_ptr.83, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1871, i32 3}
!150 = !{ptr @dfll_fetch_pwm_params._entry.84, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @dfll_fetch_pwm_params._entry_ptr.86, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1876, i32 11}
!154 = !{ptr @.str.89, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1878, i32 3}
!156 = !{ptr @dfll_fetch_pwm_params._entry.88, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @dfll_fetch_pwm_params._entry_ptr.90, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1883, i32 12}
!160 = !{ptr @.str.93, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1885, i32 3}
!162 = !{ptr @dfll_fetch_pwm_params._entry.92, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @dfll_fetch_pwm_params._entry_ptr.94, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.95, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1819, i32 25}
!166 = !{ptr @.str.96, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1832, i32 3}
!168 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @dfll_fetch_i2c_params._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @dfll_fetch_i2c_params._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1768, i32 3}
!173 = !{ptr @.str.99, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @dfll_build_lut._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @dfll_build_lut._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.100, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1664, i32 3}
!178 = !{ptr @.str.101, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @dfll_build_pwm_lut._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @dfll_build_pwm_lut._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.103, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1673, i32 3}
!183 = !{ptr @dfll_build_pwm_lut._entry.102, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @dfll_build_pwm_lut._entry_ptr.104, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.105, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1746, i32 3}
!187 = !{ptr @.str.106, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @dfll_build_i2c_lut._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @dfll_build_i2c_lut._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.107, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1599, i32 2}
!192 = !{ptr @.str.108, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @find_vdd_map_entry_exact._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @find_vdd_map_entry_exact._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1627, i32 2}
!197 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @find_vdd_map_entry_min._entry, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @find_vdd_map_entry_min._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.111, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1425, i32 38}
!202 = !{ptr @.str.112, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1427, i32 3}
!204 = !{ptr @.str.113, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @dfll_init_clks._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @dfll_init_clks._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.114, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1431, i32 38}
!209 = !{ptr @.str.116, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1433, i32 3}
!211 = !{ptr @dfll_init_clks._entry.115, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dfll_init_clks._entry_ptr.117, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1437, i32 38}
!215 = !{ptr @.str.120, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1439, i32 3}
!217 = !{ptr @dfll_init_clks._entry.119, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @dfll_init_clks._entry_ptr.121, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.122, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1462, i32 3}
!221 = !{ptr @.str.123, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @dfll_init._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @dfll_init._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.125, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1471, i32 3}
!226 = !{ptr @dfll_init._entry.124, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @dfll_init._entry_ptr.126, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.128, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1477, i32 3}
!230 = !{ptr @dfll_init._entry.127, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @dfll_init._entry_ptr.129, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.131, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1483, i32 3}
!234 = !{ptr @dfll_init._entry.130, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @dfll_init._entry_ptr.132, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.133, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1188, i32 3}
!238 = !{ptr @.str.134, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @dfll_register_clk._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @dfll_register_clk._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1195, i32 3}
!243 = !{ptr @dfll_register_clk._entry.135, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @dfll_register_clk._entry_ptr.137, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @dfll_clk_init_data, !246, !"dfll_clk_init_data", i1 false, i1 false}
!246 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1166, i32 29}
!247 = !{ptr @dfll_clk_ops, !248, !"dfll_clk_ops", i1 false, i1 false}
!248 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1157, i32 29}
!249 = !{ptr @.str.138, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 970, i32 3}
!251 = !{ptr @.str.139, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @dfll_enable._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @dfll_enable._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.140, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 320, i32 25}
!256 = !{ptr @.str.141, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 321, i32 20}
!258 = !{ptr @.str.142, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 322, i32 21}
!260 = !{ptr @.str.143, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 323, i32 23}
!262 = !{ptr @mode_name, !263, !"mode_name", i1 false, i1 false}
!263 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 319, i32 27}
!264 = !{ptr @.str.144, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1025, i32 4}
!266 = !{ptr @.str.145, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @dfll_lock._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @dfll_lock._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.147, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1042, i32 3}
!271 = !{ptr @dfll_lock._entry.146, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @dfll_lock._entry_ptr.148, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.149, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 578, i32 4}
!275 = !{ptr @.str.150, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @dfll_pwm_set_output_enabled._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @dfll_pwm_set_output_enabled._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.152, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 595, i32 4}
!280 = !{ptr @.str.153, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @dfll_pwm_set_output_enabled._entry.151, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @dfll_pwm_set_output_enabled._entry_ptr.154, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.155, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 949, i32 3}
!285 = !{ptr @.str.156, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @dfll_disable._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @dfll_disable._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.157, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1072, i32 3}
!290 = !{ptr @.str.158, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @dfll_unlock._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @dfll_unlock._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.159, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 845, i32 4}
!295 = !{ptr @.str.160, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @dfll_calculate_rate_request._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @dfll_calculate_rate_request._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.162, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 856, i32 3}
!300 = !{ptr @dfll_calculate_rate_request._entry.161, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @dfll_calculate_rate_request._entry_ptr.163, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.164, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 917, i32 3}
!304 = !{ptr @.str.165, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @dfll_request_rate._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @dfll_request_rate._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.166, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1369, i32 28}
!309 = !{ptr @.str.167, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1372, i32 29}
!311 = !{ptr @.str.168, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1374, i32 29}
!313 = !{ptr @.str.169, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1375, i32 29}
!315 = !{ptr @.str.170, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1376, i32 22}
!317 = !{ptr @enable_fops, !318, !"enable_fops", i1 false, i1 false}
!318 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1287, i32 1}
!319 = !{ptr @.str.171, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @lock_fops, !321, !"lock_fops", i1 false, i1 false}
!321 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1304, i32 1}
!322 = !{ptr @rate_fops, !323, !"rate_fops", i1 false, i1 false}
!323 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1321, i32 1}
!324 = !{ptr @attr_registers_fops, !325, !"attr_registers_fops", i1 false, i1 false}
!325 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1360, i32 1}
!326 = !{ptr @.str.172, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1328, i32 14}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1334, i32 17}
!330 = !{ptr @.str.174, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1337, i32 14}
!332 = !{ptr @.str.175, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1346, i32 15}
!334 = !{ptr @.str.176, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/tegra/clk-dfll.c", i32 1351, i32 15}
!336 = !{i32 1, !"wchar_size", i32 2}
!337 = !{i32 1, !"min_enum_size", i32 4}
!338 = !{i32 8, !"branch-target-enforcement", i32 0}
!339 = !{i32 8, !"sign-return-address", i32 0}
!340 = !{i32 8, !"sign-return-address-all", i32 0}
!341 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!342 = !{i32 7, !"uwtable", i32 1}
!343 = !{i32 7, !"frame-pointer", i32 2}
!344 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!345 = !{i64 6980175}
!346 = !{i64 6980593}
!347 = !{!"branch_weights", i32 1, i32 2000}
!348 = !{i64 2155917084, i64 2155917578, i64 2155917121, i64 2155917177, i64 2155917211, i64 2155917235, i64 2155917276, i64 2155917297, i64 2155917325, i64 2155917359}
!349 = !{i8 0, i8 2}
!350 = !{i64 2155870350, i64 2155870843, i64 2155870387, i64 2155870443, i64 2155870477, i64 2155870501, i64 2155870542, i64 2155870563, i64 2155870591, i64 2155870625}
!351 = !{!"auto-init"}
!352 = !{i64 2155892913, i64 2155897468, i64 2155892950, i64 2155893006, i64 2155893040, i64 2155893064, i64 2155893105, i64 2155893126, i64 2155893154, i64 2155893188}
!353 = !{i64 2155900348, i64 2155900842, i64 2155900385, i64 2155900441, i64 2155900475, i64 2155900499, i64 2155900540, i64 2155900561, i64 2155900589, i64 2155900623}
