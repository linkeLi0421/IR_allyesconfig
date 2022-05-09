; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra124-emc.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra124-emc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tegra124_clk_set_emc_callbacks\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra124_clk_set_emc_callbacks\09\09\09\09"
module asm "\09.long\09__crc_tegra124_clk_set_emc_callbacks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra124_clk_set_emc_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra124_clk_set_emc_callbacks\22\09\09\09\09\09"
module asm "__kstrtabns_tegra124_clk_set_emc_callbacks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_clk_emc = type { %struct.clk_hw, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.emc_timing = type { i32, i32, i8, ptr, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
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

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,ram-code\00", [16 x i8] zeroinitializer }, align 32
@tegra124_clk_register_emc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: no memory timings registered\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra124_clk_register_emc\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/clk/tegra/clk-tegra124-emc.c\00", [59 x i8] zeroinitializer }, align 32
@tegra124_clk_register_emc._entry_ptr = internal global ptr @tegra124_clk_register_emc._entry, section ".printk_index", align 4
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nvidia,external-memory-controller\00", [62 x i8] zeroinitializer }, align 32
@tegra124_clk_register_emc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014%s: couldn't find node for EMC driver\0A\00", [55 x i8] zeroinitializer }, align 32
@tegra124_clk_register_emc._entry_ptr.7 = internal global ptr @tegra124_clk_register_emc._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@tegra_clk_emc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @emc_recalc_rate, ptr null, ptr @emc_determine_rate, ptr null, ptr @emc_get_parent, ptr @emc_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@emc_parent_clk_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra-clk-debug\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_tegra124_clk_set_emc_callbacks = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra124_clk_set_emc_callbacks = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra124_clk_set_emc_callbacks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra124_clk_set_emc_callbacks to i32), ptr @__kstrtab_tegra124_clk_set_emc_callbacks, ptr @__kstrtabns_tegra124_clk_set_emc_callbacks }, section "___ksymtab_gpl+tegra124_clk_set_emc_callbacks", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013timing %pOF: failed to read rate\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"load_one_timing_from_dt\00", [40 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr = internal global ptr @load_one_timing_from_dt._entry, section ".printk_index", align 4
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvidia,parent-clock-frequency\00", [34 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.3, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013timing %pOF: failed to read parent rate\0A\00", [53 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.16 = internal global ptr @load_one_timing_from_dt._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emc-parent\00", [21 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.3, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013timing %pOF: failed to get parent clock\0A\00", [53 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.20 = internal global ptr @load_one_timing_from_dt._entry.18, section ".printk_index", align 4
@load_one_timing_from_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.12, ptr @.str.3, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013timing %pOF: %s is not a valid parent\0A\00", [55 x i8] zeroinitializer }, align 32
@load_one_timing_from_dt._entry_ptr.23 = internal global ptr @load_one_timing_from_dt._entry.21, section ".printk_index", align 4
@emc_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cannot switch to rate %ld without emc table\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emc_set_rate\00", [19 x i8] zeroinitializer }, align 32
@emc_set_rate._entry_ptr = internal global ptr @emc_set_rate._entry, section ".printk_index", align 4
@emc_parent_clk_sources = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\02\03\00\04\05\01", [24 x i8] zeroinitializer }, align 32
@emc_set_rate._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013cannot find backup timing\0A\00", [35 x i8] zeroinitializer }, align 32
@emc_set_rate._entry_ptr.28 = internal global ptr @emc_set_rate._entry.26, section ".printk_index", align 4
@emc_set_rate.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.25, ptr @.str.3, ptr @.str.30, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_tegra124_emc\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"using %ld as backup rate when going to %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@emc_set_rate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.25, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cannot set backup timing: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@emc_set_rate._entry_ptr.33 = internal global ptr @emc_set_rate._entry.31, section ".printk_index", align 4
@emc_set_timing.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emc_set_timing\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"going to rate %ld prate %ld p %s\0A\00", [62 x i8] zeroinitializer }, align 32
@emc_set_timing.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"parent %s rate mismatch %lu %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@emc_set_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.3, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cannot change parent %s rate to %ld: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@emc_set_timing._entry_ptr = internal global ptr @emc_set_timing._entry, section ".printk_index", align 4
@emc_set_timing._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cannot enable parent clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@emc_set_timing._entry_ptr.40 = internal global ptr @emc_set_timing._entry.38, section ".printk_index", align 4
@emc_ensure_emc_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: could not get external memory controller\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"emc_ensure_emc_driver\00", [42 x i8] zeroinitializer }, align 32
@emc_ensure_emc_driver._entry_ptr = internal global ptr @emc_ensure_emc_driver._entry, section ".printk_index", align 4
@emc_ensure_emc_driver._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: cannot find EMC driver\0A\00", [34 x i8] zeroinitializer }, align 32
@emc_ensure_emc_driver._entry_ptr.45 = internal global ptr @emc_ensure_emc_driver._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_m_ud\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c2\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c3\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_c_ud\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 505, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 522, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 525, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 527, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 529, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"tegra_clk_emc_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 478, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant [21 x i8] c"emc_parent_clk_names\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 41, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 546, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 392, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 394, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 400, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 402, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 408, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 410, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 418, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 350, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [23 x i8] c"emc_parent_clk_sources\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 60, i32 19 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 366, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 370, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 375, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 220, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 225, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 236, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 245, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 191, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 201, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 42, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 43, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 43, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [40 x i8] c"../drivers/clk/tegra/clk-tegra124-emc.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 43, i32 22 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__ksymtab_tegra124_clk_set_emc_callbacks, ptr @emc_ensure_emc_driver._entry, ptr @emc_ensure_emc_driver._entry.43, ptr @emc_ensure_emc_driver._entry_ptr, ptr @emc_ensure_emc_driver._entry_ptr.45, ptr @emc_set_rate._entry, ptr @emc_set_rate._entry.26, ptr @emc_set_rate._entry.31, ptr @emc_set_rate._entry_ptr, ptr @emc_set_rate._entry_ptr.28, ptr @emc_set_rate._entry_ptr.33, ptr @emc_set_timing._entry, ptr @emc_set_timing._entry.38, ptr @emc_set_timing._entry_ptr, ptr @emc_set_timing._entry_ptr.40, ptr @load_one_timing_from_dt._entry, ptr @load_one_timing_from_dt._entry.14, ptr @load_one_timing_from_dt._entry.18, ptr @load_one_timing_from_dt._entry.21, ptr @load_one_timing_from_dt._entry_ptr, ptr @load_one_timing_from_dt._entry_ptr.16, ptr @load_one_timing_from_dt._entry_ptr.20, ptr @load_one_timing_from_dt._entry_ptr.23, ptr @tegra124_clk_register_emc._entry, ptr @tegra124_clk_register_emc._entry.5, ptr @tegra124_clk_register_emc._entry_ptr, ptr @tegra124_clk_register_emc._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @tegra_clk_emc_ops, ptr @emc_parent_clk_names, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @emc_parent_clk_sources, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_clk_register_emc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_clk_register_emc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_emc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_parent_clk_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_one_timing_from_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_parent_clk_sources to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_set_rate._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_set_rate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_set_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_set_timing._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_ensure_emc_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_ensure_emc_driver._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra124_clk_register_emc(ptr noundef %base, ptr noundef %np, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %tmp.i.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %node_ram_code = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %node_ram_code) #8
  %1 = ptrtoint ptr %node_ram_code to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %node_ram_code, align 4, !annotation !115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 52) #11
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk_regs = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %clk_regs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base, ptr %clk_regs, align 4
  %lock2 = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock, ptr %lock2, align 8
  %num_timings = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %num_timings to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %num_timings, align 8
  %call3 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #8
  %cmp.not104 = icmp eq ptr %call3, null
  br i1 %cmp.not104, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %timings.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %node.0105 = phi ptr [ %call3, %for.body.lr.ph ], [ %call13, %for.inc.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.0105, ptr noundef nonnull @.str, ptr noundef nonnull %node_ram_code, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.end7, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end7:                                          ; preds = %for.body
  %6 = ptrtoint ptr %node_ram_code to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_ram_code, align 4
  %call.i.i70 = call ptr @of_get_next_child(ptr noundef nonnull %node.0105, ptr noundef null) #8
  %cmp.not5.i.i = icmp eq ptr %call.i.i70, null
  br i1 %cmp.not5.i.i, label %if.end7.of_get_child_count.exit.i_crit_edge, label %if.end7.for.body.i.i_crit_edge

if.end7.for.body.i.i_crit_edge:                   ; preds = %if.end7
  br label %for.body.i.i

if.end7.of_get_child_count.exit.i_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end7.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end7.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i70, %if.end7.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef nonnull %node.0105, ptr noundef nonnull %child.06.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end7.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end7.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %8 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_timings, align 8
  %add.i = add i32 %9, %num.0.lcssa.i.i
  %mul.i = mul i32 %add.i, 20
  %10 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings.i, align 4
  %call1.i = call noalias ptr @krealloc(ptr noundef %11, i32 noundef %mul.i, i32 noundef 3264) #12
  %12 = ptrtoint ptr %timings.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1.i, ptr %timings.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %of_get_child_count.exit.i.if.then10_crit_edge, label %if.end.i

of_get_child_count.exit.i.if.then10_crit_edge:    ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.end.i:                                         ; preds = %of_get_child_count.exit.i
  %13 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_timings, align 8
  %add.ptr.i = getelementptr %struct.emc_timing, ptr %call1.i, i32 %14
  %add7.i = add i32 %14, %num.0.lcssa.i.i
  store i32 %add7.i, ptr %num_timings, align 8
  %call8.i = call ptr @of_get_next_child(ptr noundef nonnull %node.0105, ptr noundef null) #8
  %cmp.not65.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not65.i, label %if.end.i.load_timings_from_dt.exit.thread77_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.load_timings_from_dt.exit.thread77_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_timings_from_dt.exit.thread77

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.068.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %child.066.i = phi ptr [ %call15.i, %for.inc.i.for.body.i_crit_edge ], [ %call8.i, %if.end.i.for.body.i_crit_edge ]
  %inc.i = add i32 %i.068.i, 1
  %add.ptr9.i = getelementptr %struct.emc_timing, ptr %add.ptr.i, i32 %i.068.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %15 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %tmp.i.i, align 4, !annotation !115
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.066.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %tmp.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull %child.066.i) #13
  br label %cleanup.i

if.end.i.i:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tmp.i.i, align 4
  %18 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %add.ptr9.i, align 4
  %call.i.i1.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.066.i, ptr noundef nonnull @.str.13, ptr noundef nonnull %tmp.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i1.i.i)
  %tobool4.not.i.i = icmp sgt i32 %call.i.i1.i.i, -1
  br i1 %tobool4.not.i.i, label %if.end11.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %child.066.i) #13
  br label %cleanup.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %19 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp.i.i, align 4
  %parent_rate.i.i = getelementptr inbounds %struct.emc_timing, ptr %add.ptr9.i, i32 0, i32 1
  %21 = ptrtoint ptr %parent_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %parent_rate.i.i, align 4
  %call12.i.i = call ptr @of_clk_get_by_name(ptr noundef nonnull %child.066.i, ptr noundef nonnull @.str.17) #8
  %parent.i.i = getelementptr inbounds %struct.emc_timing, ptr %add.ptr9.i, i32 0, i32 3
  %22 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call12.i.i, ptr %parent.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call12.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %load_one_timing_from_dt.exit.i, label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.end11.i.i
  %parent_index.i.i = getelementptr inbounds %struct.emc_timing, ptr %add.ptr9.i, i32 0, i32 2
  %23 = ptrtoint ptr %parent_index.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %parent_index.i.i, align 4
  %call25.i.i = call ptr @__clk_get_name(ptr noundef %call12.i.i) #8
  %call26.i.i = call i32 @match_string(ptr noundef nonnull @emc_parent_clk_names, i32 noundef 8, ptr noundef %call25.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp.i.i = icmp slt i32 %call26.i.i, 0
  br i1 %cmp.i.i, label %do.end30.i.i, label %load_one_timing_from_dt.exit.thread44.i

do.end30.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 4
  %call33.i.i = call ptr @__clk_get_name(ptr noundef %25) #8
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %child.066.i, ptr noundef %call33.i.i) #13
  %26 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i.i, align 4
  call void @clk_put(ptr noundef %27) #8
  br label %cleanup.i

load_one_timing_from_dt.exit.thread44.i:          ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %call26.i.i to i8
  %28 = ptrtoint ptr %parent_index.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv.i.i, ptr %parent_index.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %for.inc.i

load_one_timing_from_dt.exit.i:                   ; preds = %if.end11.i.i
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull %child.066.i) #13
  %29 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %tobool11.not.i = icmp eq ptr %30, null
  br i1 %tobool11.not.i, label %load_one_timing_from_dt.exit.i.for.inc.i_crit_edge, label %load_timings_from_dt.exit

load_one_timing_from_dt.exit.i.for.inc.i_crit_edge: ; preds = %load_one_timing_from_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

cleanup.i:                                        ; preds = %do.end30.i.i, %do.end8.i.i, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end30.i.i ], [ %call.i.i1.i.i, %do.end8.i.i ], [ %call.i.i.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  br label %if.then10.sink.split

for.inc.i:                                        ; preds = %load_one_timing_from_dt.exit.i.for.inc.i_crit_edge, %load_one_timing_from_dt.exit.thread44.i
  %ram_code14.i = getelementptr inbounds %struct.emc_timing, ptr %add.ptr9.i, i32 0, i32 4
  %31 = ptrtoint ptr %ram_code14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %7, ptr %ram_code14.i, align 4
  %call15.i = call ptr @of_get_next_child(ptr noundef nonnull %node.0105, ptr noundef nonnull %child.066.i) #8
  %cmp.not.i = icmp eq ptr %call15.i, null
  br i1 %cmp.not.i, label %for.inc.i.load_timings_from_dt.exit.thread77_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.load_timings_from_dt.exit.thread77_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %load_timings_from_dt.exit.thread77

load_timings_from_dt.exit.thread77:               ; preds = %for.inc.i.load_timings_from_dt.exit.thread77_crit_edge, %if.end.i.load_timings_from_dt.exit.thread77_crit_edge
  call void @sort(ptr noundef %add.ptr.i, i32 noundef %num.0.lcssa.i.i, i32 noundef 20, ptr noundef nonnull @cmp_timings, ptr noundef null) #8
  br label %for.inc

load_timings_from_dt.exit:                        ; preds = %load_one_timing_from_dt.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %30 to i32
  br label %if.then10.sink.split

if.then10.sink.split:                             ; preds = %load_timings_from_dt.exit, %cleanup.i
  %retval.2.i76.ph = phi i32 [ %32, %load_timings_from_dt.exit ], [ %retval.0.i.ph.i, %cleanup.i ]
  call void @of_node_put(ptr noundef nonnull %child.066.i) #8
  br label %if.then10

if.then10:                                        ; preds = %if.then10.sink.split, %of_get_child_count.exit.i.if.then10_crit_edge
  %retval.2.i76 = phi i32 [ %retval.2.i76.ph, %if.then10.sink.split ], [ -12, %of_get_child_count.exit.i.if.then10_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %node.0105) #8
  %33 = inttoptr i32 %retval.2.i76 to ptr
  br label %cleanup

for.inc:                                          ; preds = %load_timings_from_dt.exit.thread77, %for.body.for.inc_crit_edge
  %call13 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %node.0105) #8
  %cmp.not = icmp eq ptr %call13, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %34 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_timings, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp15 = icmp eq i32 %35, 0
  br i1 %cmp15, label %do.end, label %for.end.if.end18_crit_edge

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end, %for.end.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %36 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i71 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i71, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %emc_node81 = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 4
  %37 = ptrtoint ptr %emc_node81 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %emc_node81, align 8
  br label %do.end25

of_parse_phandle.exit:                            ; preds = %if.end18
  %38 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %emc_node = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %emc_node to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %emc_node, align 8
  %tobool21.not = icmp eq ptr %39, null
  br i1 %tobool21.not, label %of_parse_phandle.exit.do.end25_crit_edge, label %of_parse_phandle.exit.if.end28_crit_edge

of_parse_phandle.exit.if.end28_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

of_parse_phandle.exit.do.end25_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

do.end25:                                         ; preds = %of_parse_phandle.exit.do.end25_crit_edge, %of_parse_phandle.exit.thread
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #13
  br label %if.end28

if.end28:                                         ; preds = %do.end25, %of_parse_phandle.exit.if.end28_crit_edge
  %41 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.8, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @tegra_clk_emc_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2048, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %44 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @emc_parent_clk_names, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %45 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 8, ptr %num_parents, align 4
  %init29 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %init29 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %init, ptr %init29, align 8
  %call31 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i.i) #8
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end28.cleanup_crit_edge, label %if.end34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk_regs, align 4
  %add.ptr1.i = getelementptr i8, ptr %48, i32 412
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %50 = lshr i32 %49, 5
  %conv = and i32 %50, 7
  %call38 = call ptr @clk_hw_get_parent_by_index(ptr noundef nonnull %call7.i.i.i, i32 noundef %conv) #8
  %clk39 = getelementptr inbounds %struct.clk_hw, ptr %call38, i32 0, i32 1
  %51 = ptrtoint ptr %clk39 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk39, align 4
  %prev_parent = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %prev_parent to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %prev_parent, align 8
  %changing_timing = getelementptr inbounds %struct.tegra_clk_emc, ptr %call7.i.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %changing_timing to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %changing_timing, align 4
  %call40 = call i32 @clk_register_clkdev(ptr noundef %call31, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end28.cleanup_crit_edge, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %if.then10 ], [ %call31, %if.end34 ], [ %call31, %if.end28.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %node_ram_code) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @emc_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_regs = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 412
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 5
  ret i8 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra124_clk_set_emc_callbacks(ptr noundef %prep_cb, ptr noundef %complete_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.8) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @__clk_get_hw(ptr noundef nonnull %call) #8
  %prepare_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %call1, i32 0, i32 9
  %0 = ptrtoint ptr %prepare_timing_change to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %prep_cb, ptr %prepare_timing_change, align 4
  %complete_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %call1, i32 0, i32 10
  %1 = ptrtoint ptr %complete_timing_change to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %complete_cb, ptr %complete_timing_change, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tegra124_clk_emc_driver_available(ptr nocapture noundef readonly %hw) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prepare_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %prepare_timing_change to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prepare_timing_change, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %complete_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 10
  %2 = ptrtoint ptr %complete_timing_change to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %complete_timing_change, align 4
  %tobool1 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_timings(ptr nocapture noundef readonly %_a, ptr nocapture noundef readonly %_b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_a, align 4
  %2 = ptrtoint ptr %_b to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_b, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp4 = icmp ne i32 %1, %3
  %. = zext i1 %cmp4 to i32
  %retval.0 = select i1 %cmp, i32 -1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #8
  %clk_regs = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 412
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #8, !srcloc !116
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  %add = add nuw nsw i32 %3, 2
  %div6 = udiv i32 %call1, %add
  %mul = shl nuw i32 %div6, 1
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_read_ram_code() #8
  %num_timings = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp110 = icmp sgt i32 %1, 0
  br i1 %cmp110, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %timings = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 7
  %2 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timings, align 4
  %conv3 = and i32 %call, 255
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %k.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ram_code2 = getelementptr %struct.emc_timing, ptr %3, i32 %k.0111, i32 4
  %4 = ptrtoint ptr %ram_code2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ram_code2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3)
  %cmp4 = icmp eq i32 %5, %conv3
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %k.0111, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.if.end61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %k.0111, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa, i32 %1)
  %cmp8115 = icmp slt i32 %k.0.lcssa, %1
  br i1 %cmp8115, label %for.body10.lr.ph, label %for.end.if.end61_crit_edge

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.body10.lr.ph:                                 ; preds = %for.end
  %timings11 = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 7
  %6 = ptrtoint ptr %timings11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timings11, align 4
  %conv14 = and i32 %call, 255
  br label %for.body10

for.body10:                                       ; preds = %for.inc19.for.body10_crit_edge, %for.body10.lr.ph
  %t.0116 = phi i32 [ %k.0.lcssa, %for.body10.lr.ph ], [ %inc20, %for.inc19.for.body10_crit_edge ]
  %ram_code13 = getelementptr %struct.emc_timing, ptr %7, i32 %t.0116, i32 4
  %8 = ptrtoint ptr %ram_code13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ram_code13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv14)
  %cmp15.not = icmp eq i32 %9, %conv14
  br i1 %cmp15.not, label %for.inc19, label %for.body10.for.end21_crit_edge

for.body10.for.end21_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.inc19:                                        ; preds = %for.body10
  %inc20 = add i32 %t.0116, 1
  %exitcond129.not = icmp eq i32 %inc20, %1
  br i1 %exitcond129.not, label %for.inc19.for.end21_crit_edge, label %for.inc19.for.body10_crit_edge

for.inc19.for.body10_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %for.body10.for.end21_crit_edge
  %t.0.lcssa = phi i32 [ %1, %for.inc19.for.end21_crit_edge ], [ %t.0116, %for.body10.for.end21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0.lcssa, i32 %t.0.lcssa)
  %cmp23119 = icmp ult i32 %k.0.lcssa, %t.0.lcssa
  br i1 %cmp23119, label %for.body25.lr.ph, label %for.end21.if.end61_crit_edge

for.end21.if.end61_crit_edge:                     ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

for.body25.lr.ph:                                 ; preds = %for.end21
  %timings26 = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 7
  %10 = ptrtoint ptr %timings26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timings26, align 4
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 4
  %sub = add nsw i32 %t.0.lcssa, -1
  %max_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 2
  %min_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 1
  %14 = mul i32 %t.0.lcssa, 20
  %15 = add i32 %14, -20
  %uglygep = getelementptr i8, ptr %11, i32 %15
  br label %for.body25

for.body25:                                       ; preds = %for.inc55.for.body25_crit_edge, %for.body25.lr.ph
  %i.0120 = phi i32 [ %k.0.lcssa, %for.body25.lr.ph ], [ %inc56, %for.inc55.for.body25_crit_edge ]
  %add.ptr27 = getelementptr %struct.emc_timing, ptr %11, i32 %i.0120
  %16 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp29 = icmp uge i32 %17, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0120, i32 %sub)
  %cmp31.not = icmp eq i32 %i.0120, %sub
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp31.not
  br i1 %or.cond, label %if.end34, label %for.body25.for.inc55_crit_edge

for.body25.for.inc55_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc55

if.end34:                                         ; preds = %for.body25
  %18 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp36 = icmp ugt i32 %17, %19
  br i1 %cmp36, label %if.then38, label %if.end47

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %k.0.lcssa, 1
  %20 = tail call i32 @llvm.smax.i32(i32 %i.0120, i32 %add)
  %sub43 = add nsw i32 %20, -1
  %arrayidx44 = getelementptr %struct.emc_timing, ptr %11, i32 %sub43
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx44, align 4
  br label %cleanup

if.end47:                                         ; preds = %if.end34
  %23 = ptrtoint ptr %min_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %24)
  %cmp49 = icmp ult i32 %17, %24
  br i1 %cmp49, label %if.end47.for.inc55_crit_edge, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47.for.inc55_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc55

for.inc55:                                        ; preds = %if.end47.for.inc55_crit_edge, %for.body25.for.inc55_crit_edge
  %inc56 = add i32 %i.0120, 1
  %exitcond130.not = icmp eq i32 %inc56, %t.0.lcssa
  br i1 %exitcond130.not, label %for.end57, label %for.inc55.for.body25_crit_edge

for.inc55.for.body25_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.end57:                                        ; preds = %for.inc55
  %tobool.not = icmp eq ptr %uglygep, null
  br i1 %tobool.not, label %for.end57.if.end61_crit_edge, label %if.then58

for.end57.if.end61_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then58:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %uglygep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %uglygep, align 4
  br label %cleanup

if.end61:                                         ; preds = %for.end57.if.end61_crit_edge, %for.end21.if.end61_crit_edge, %for.end.if.end61_crit_edge, %for.inc.if.end61_crit_edge
  %call62 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then58, %if.end47.cleanup_crit_edge, %if.then38
  %call62.sink = phi i32 [ %call62, %if.end61 ], [ %26, %if.then58 ], [ %22, %if.then38 ], [ %17, %if.end47.cleanup_crit_edge ]
  %27 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call62.sink, ptr %req, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emc_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_read_ram_code() #8
  %call1 = tail call i32 @clk_hw_get_rate(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %rate)
  %cmp = icmp eq i32 %call1, %rate
  br i1 %cmp, label %entry.cleanup64_crit_edge, label %if.end

entry.cleanup64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

if.end:                                           ; preds = %entry
  %changing_timing = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %changing_timing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %changing_timing, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.end.cleanup64_crit_edge

if.end.cleanup64_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup64

for.cond.preheader:                               ; preds = %if.end
  %num_timings = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 6
  %2 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4109 = icmp sgt i32 %3, 0
  br i1 %cmp4109, label %for.body.lr.ph, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %timings = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 7
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timings, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.emc_timing, ptr %5, i32 %i.0110
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp6 = icmp eq i32 %7, %rate
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ram_code9 = getelementptr %struct.emc_timing, ptr %5, i32 %i.0110, i32 4
  %8 = ptrtoint ptr %ram_code9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ram_code9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %call)
  %cmp10 = icmp eq i32 %9, %call
  br i1 %cmp10, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %land.lhs.true
  %tobool15.not = icmp eq ptr %arrayidx, null
  br i1 %tobool15.not, label %for.end.do.end_crit_edge, label %if.end19

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %rate) #13
  br label %cleanup64

if.end19:                                         ; preds = %for.end
  %clk_regs.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %11, i32 412
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %13 = lshr i32 %12, 5
  %idxprom = and i32 %13, 7
  %arrayidx21 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %parent_index = getelementptr %struct.emc_timing, ptr %5, i32 %i.0110, i32 2
  %16 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parent_index, align 4
  %idxprom22 = zext i8 %17 to i32
  %arrayidx23 = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom22
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %19)
  %cmp25 = icmp eq i8 %15, %19
  br i1 %cmp25, label %land.lhs.true27, label %if.end19.if.end62_crit_edge

if.end19.if.end62_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

land.lhs.true27:                                  ; preds = %if.end19
  %parent = getelementptr %struct.emc_timing, ptr %5, i32 %i.0110, i32 3
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %call28 = tail call i32 @clk_get_rate(ptr noundef %21) #8
  %parent_rate29 = getelementptr %struct.emc_timing, ptr %5, i32 %i.0110, i32 1
  %22 = ptrtoint ptr %parent_rate29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent_rate29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %23)
  %cmp30.not = icmp eq i32 %call28, %23
  br i1 %cmp30.not, label %land.lhs.true27.if.end62_crit_edge, label %if.then32

land.lhs.true27.if.end62_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then32:                                        ; preds = %land.lhs.true27
  %call.i = tail call i32 @tegra_read_ram_code() #8
  %24 = ptrtoint ptr %num_timings to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_timings, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %if.then32
  %i.0.in.i = phi i32 [ %i.0110, %if.then32 ], [ %i.0.i, %if.end.i.for.cond.i_crit_edge ]
  %i.0.i = add nuw nsw i32 %i.0.in.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %25)
  %cmp.i = icmp slt i32 %i.0.i, %25
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.for.cond13.i.preheader_crit_edge

for.cond.i.for.cond13.i.preheader_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.i.preheader

for.cond13.i.preheader:                           ; preds = %for.body.i.for.cond13.i.preheader_crit_edge, %for.cond.i.for.cond13.i.preheader_crit_edge
  br label %for.cond13.i

for.body.i:                                       ; preds = %for.cond.i
  %26 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %timings, align 4
  %ram_code1.i = getelementptr %struct.emc_timing, ptr %27, i32 %i.0.i, i32 4
  %28 = ptrtoint ptr %ram_code1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ram_code1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %29, %call.i
  br i1 %cmp2.not.i, label %if.end.i, label %for.body.i.for.cond13.i.preheader_crit_edge

for.body.i.for.cond13.i.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.i.preheader

if.end.i:                                         ; preds = %for.body.i
  %parent_index.i = getelementptr %struct.emc_timing, ptr %27, i32 %i.0.i, i32 2
  %30 = ptrtoint ptr %parent_index.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %parent_index.i, align 4
  %idxprom.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %parent_index5.i = getelementptr %struct.emc_timing, ptr %27, i32 %i.0110, i32 2
  %34 = ptrtoint ptr %parent_index5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %parent_index5.i, align 4
  %idxprom6.i = zext i8 %35 to i32
  %arrayidx7.i = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom6.i
  %36 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx7.i, align 1
  %cmp9.not.i = icmp eq i8 %33, %37
  br i1 %cmp9.not.i, label %if.end.i.for.cond.i_crit_edge, label %cleanup.loopexit60.i

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.cond13.i:                                     ; preds = %if.end23.i.for.cond13.i_crit_edge, %for.cond13.i.preheader
  %i.1.in.i = phi i32 [ %i.1.i, %if.end23.i.for.cond13.i_crit_edge ], [ %i.0110, %for.cond13.i.preheader ]
  %i.1.i = add nsw i32 %i.1.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.in.i)
  %cmp14.i = icmp sgt i32 %i.1.in.i, 0
  br i1 %cmp14.i, label %for.body16.i, label %for.cond13.i.do.end38_crit_edge

for.cond13.i.do.end38_crit_edge:                  ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

for.body16.i:                                     ; preds = %for.cond13.i
  %38 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %timings, align 4
  %ram_code19.i = getelementptr %struct.emc_timing, ptr %39, i32 %i.1.i, i32 4
  %40 = ptrtoint ptr %ram_code19.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ram_code19.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call.i)
  %cmp20.not.i = icmp eq i32 %41, %call.i
  br i1 %cmp20.not.i, label %if.end23.i, label %for.body16.i.do.end38_crit_edge

for.body16.i.do.end38_crit_edge:                  ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

if.end23.i:                                       ; preds = %for.body16.i
  %parent_index24.i = getelementptr %struct.emc_timing, ptr %39, i32 %i.1.i, i32 2
  %42 = ptrtoint ptr %parent_index24.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %parent_index24.i, align 4
  %idxprom25.i = zext i8 %43 to i32
  %arrayidx26.i = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom25.i
  %44 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx26.i, align 1
  %parent_index30.i = getelementptr %struct.emc_timing, ptr %39, i32 %i.0110, i32 2
  %46 = ptrtoint ptr %parent_index30.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %parent_index30.i, align 4
  %idxprom31.i = zext i8 %47 to i32
  %arrayidx32.i = getelementptr [8 x i8], ptr @emc_parent_clk_sources, i32 0, i32 %idxprom31.i
  %48 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx32.i, align 1
  %cmp34.not.i = icmp eq i8 %45, %49
  br i1 %cmp34.not.i, label %if.end23.i.for.cond13.i_crit_edge, label %cleanup.loopexit.split.loop.exit.i

if.end23.i.for.cond13.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.i

cleanup.loopexit.split.loop.exit.i:               ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr18.le.i = getelementptr %struct.emc_timing, ptr %39, i32 %i.1.i
  br label %get_backup_timing.exit

cleanup.loopexit60.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.le.i = getelementptr %struct.emc_timing, ptr %27, i32 %i.0.i
  br label %get_backup_timing.exit

get_backup_timing.exit:                           ; preds = %cleanup.loopexit60.i, %cleanup.loopexit.split.loop.exit.i
  %retval.0.i94 = phi ptr [ %add.ptr.le.i, %cleanup.loopexit60.i ], [ %add.ptr18.le.i, %cleanup.loopexit.split.loop.exit.i ]
  %tobool34.not = icmp eq ptr %retval.0.i94, null
  br i1 %tobool34.not, label %get_backup_timing.exit.do.end38_crit_edge, label %do.body42

get_backup_timing.exit.do.end38_crit_edge:        ; preds = %get_backup_timing.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

do.end38:                                         ; preds = %get_backup_timing.exit.do.end38_crit_edge, %for.body16.i.do.end38_crit_edge, %for.cond13.i.do.end38_crit_edge
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #13
  br label %cleanup64

do.body42:                                        ; preds = %get_backup_timing.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_set_rate.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emc_set_rate, %if.then48)) #8
          to label %do.end52 [label %if.then48], !srcloc !120

if.then48:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %retval.0.i94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %retval.0.i94, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @emc_set_rate.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.30, i32 noundef %51, i32 noundef %rate) #8
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %do.body42
  %call53 = tail call fastcc i32 @emc_set_timing(ptr noundef %hw, ptr noundef nonnull %retval.0.i94)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %do.end52.if.end62_crit_edge, label %do.end58

do.end52.if.end62_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end58:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call53) #13
  br label %cleanup64

if.end62:                                         ; preds = %do.end52.if.end62_crit_edge, %land.lhs.true27.if.end62_crit_edge, %if.end19.if.end62_crit_edge
  %call63 = tail call fastcc i32 @emc_set_timing(ptr noundef %hw, ptr noundef nonnull %arrayidx)
  br label %cleanup64

cleanup64:                                        ; preds = %if.end62, %do.end58, %do.end38, %do.end, %if.end.cleanup64_crit_edge, %entry.cleanup64_crit_edge
  %retval.1 = phi i32 [ %call63, %if.end62 ], [ -22, %do.end ], [ 0, %entry.cleanup64_crit_edge ], [ 0, %if.end.cleanup64_crit_edge ], [ -22, %do.end38 ], [ %call53, %do.end58 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_ram_code() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @emc_set_timing(ptr noundef %tegra, ptr nocapture noundef readonly %timing) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %emc.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 5
  %0 = ptrtoint ptr %emc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %emc.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %entry
  %prepare_timing_change.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 9
  %2 = ptrtoint ptr %prepare_timing_change.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prepare_timing_change.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %complete_timing_change.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 10
  %4 = ptrtoint ptr %complete_timing_change.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %complete_timing_change.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end5.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %emc_node.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 4
  %6 = ptrtoint ptr %emc_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %emc_node.i, align 4
  %tobool6.not.i = icmp eq ptr %7, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_crit_edge, label %if.end8.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i:                                        ; preds = %if.end5.i
  %call.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %7) #8
  %tobool10.not.i = icmp eq ptr %call.i, null
  br i1 %tobool10.not.i, label %if.end8.i.cleanup.sink.split.i_crit_edge, label %if.end13.i

if.end8.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.end13.i:                                       ; preds = %if.end8.i
  %8 = ptrtoint ptr %emc_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emc_node.i, align 4
  tail call void @of_node_put(ptr noundef %9) #8
  %10 = ptrtoint ptr %emc_node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %emc_node.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %call.i, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %13 = ptrtoint ptr %emc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %emc.i, align 4
  %tobool19.not.i = icmp eq ptr %12, null
  br i1 %tobool19.not.i, label %if.end13.i.cleanup.sink.split.i_crit_edge, label %if.end13.i.do.body_crit_edge

if.end13.i.do.body_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end13.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end13.i.cleanup.sink.split.i_crit_edge, %if.end8.i.cleanup.sink.split.i_crit_edge
  %.str.44.sink.i = phi ptr [ @.str.41, %if.end8.i.cleanup.sink.split.i_crit_edge ], [ @.str.44, %if.end13.i.cleanup.sink.split.i_crit_edge ]
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.44.sink.i, ptr noundef nonnull @.str.42) #13
  br label %cleanup

do.body:                                          ; preds = %if.end13.i.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i192 = phi ptr [ %1, %entry.do.body_crit_edge ], [ %12, %if.end13.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @emc_set_timing.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@emc_set_timing, %if.then5)) #8
          to label %do.end [label %if.then5], !srcloc !120

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timing, align 4
  %parent_rate = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 1
  %16 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_rate, align 4
  %parent = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 3
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %call6 = tail call ptr @__clk_get_name(ptr noundef %19) #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @emc_set_timing.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.35, i32 noundef %15, i32 noundef %17, ptr noundef %call6) #8
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %clk_regs.i = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 1
  %20 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %21, i32 412
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %23 = trunc i32 %22 to i8
  %24 = lshr i8 %23, 5
  %parent_index = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 2
  %25 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %parent_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp = icmp eq i8 %24, %26
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end67_crit_edge

do.end.if.end67_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.lhs.true:                                    ; preds = %do.end
  %parent11 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 3
  %27 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent11, align 4
  %call12 = tail call i32 @clk_get_rate(ptr noundef %28) #8
  %parent_rate13 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 1
  %29 = ptrtoint ptr %parent_rate13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %parent_rate13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %30)
  %cmp14.not = icmp eq i32 %call12, %30
  br i1 %cmp14.not, label %land.lhs.true.if.end67_crit_edge, label %land.end

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

land.end:                                         ; preds = %land.lhs.true
  %.b191 = load i1, ptr @emc_set_timing.__already_done, align 1
  br i1 %.b191, label %land.end.cleanup_crit_edge, label %if.then28, !prof !121

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @emc_set_timing.__already_done, align 1
  %31 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent11, align 4
  %call42 = tail call ptr @__clk_get_name(ptr noundef %32) #8
  %33 = ptrtoint ptr %parent11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent11, align 4
  %call44 = tail call i32 @clk_get_rate(ptr noundef %34) #8
  %35 = ptrtoint ptr %parent_rate13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %parent_rate13, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.36, ptr noundef %call42, i32 noundef %call44, i32 noundef %36) #8
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true.if.end67_crit_edge, %do.end.if.end67_crit_edge
  %changing_timing = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 3
  %37 = ptrtoint ptr %changing_timing to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %changing_timing, align 4
  %parent68 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 3
  %38 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent68, align 4
  %parent_rate69 = getelementptr inbounds %struct.emc_timing, ptr %timing, i32 0, i32 1
  %40 = ptrtoint ptr %parent_rate69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %parent_rate69, align 4
  %call70 = tail call i32 @clk_set_rate(ptr noundef %39, i32 noundef %41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  %42 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent68, align 4
  br i1 %tobool71.not, label %if.end81, label %do.end75

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %call78 = tail call ptr @__clk_get_name(ptr noundef %43) #8
  %44 = ptrtoint ptr %parent_rate69 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %parent_rate69, align 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %call78, i32 noundef %45, i32 noundef %call70) #13
  br label %cleanup

if.end81:                                         ; preds = %if.end67
  %call.i193 = tail call i32 @clk_prepare(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %tobool.not.i194 = icmp eq i32 %call.i193, 0
  br i1 %tobool.not.i194, label %if.end.i196, label %if.end81.do.end88_crit_edge

if.end81.do.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88

if.end.i196:                                      ; preds = %if.end81
  %call1.i = tail call i32 @clk_enable(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i195 = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i195, label %if.end91, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %do.end88

do.end88:                                         ; preds = %if.then3.i, %if.end81.do.end88_crit_edge
  %retval.0.i197.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i193, %if.end81.do.end88_crit_edge ]
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %retval.0.i197.ph) #13
  br label %cleanup

if.end91:                                         ; preds = %if.end.i196
  %46 = ptrtoint ptr %parent_rate69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %parent_rate69, align 4
  %48 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %timing, align 4
  %prepare_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 9
  %50 = ptrtoint ptr %prepare_timing_change to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prepare_timing_change, align 4
  %call98 = tail call i32 %51(ptr noundef nonnull %retval.0.i192, i32 noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %do.body104, label %if.then100

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent68, align 4
  tail call void @clk_disable(ptr noundef %53) #8
  tail call void @clk_unprepare(ptr noundef %53) #8
  br label %cleanup

do.body104:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %div94190 = lshr i32 %49, 1
  %div95 = udiv i32 %47, %div94190
  %conv96 = add i32 %div95, 254
  %lock = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 8
  %54 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lock, align 4
  %call109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #8
  %56 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 412
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  %59 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %parent_index, align 4
  %and119 = zext i8 %60 to i32
  %shl = shl i32 %and119, 29
  %61 = and i32 %58, 16776991
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %and120 = or i32 %shl, %62
  %conv121 = and i32 %conv96, 255
  %or124 = or i32 %and120, %conv121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %or124)
  %64 = ptrtoint ptr %clk_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk_regs.i, align 4
  %add.ptr129 = getelementptr i8, ptr %65, i32 412
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr129, i32 %63) #8, !srcloc !124
  %66 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %67, i32 noundef %call109) #8
  %complete_timing_change = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 10
  %68 = ptrtoint ptr %complete_timing_change to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %complete_timing_change, align 4
  %70 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %timing, align 4
  tail call void %69(ptr noundef nonnull %retval.0.i192, i32 noundef %71) #8
  %72 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent68, align 4
  %call134 = tail call ptr @__clk_get_hw(ptr noundef %73) #8
  tail call void @clk_hw_reparent(ptr noundef %tegra, ptr noundef %call134) #8
  %prev_parent = getelementptr inbounds %struct.tegra_clk_emc, ptr %tegra, i32 0, i32 2
  %74 = ptrtoint ptr %prev_parent to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev_parent, align 4
  tail call void @clk_disable(ptr noundef %75) #8
  tail call void @clk_unprepare(ptr noundef %75) #8
  %76 = ptrtoint ptr %parent68 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent68, align 4
  %78 = ptrtoint ptr %prev_parent to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %prev_parent, align 4
  %79 = ptrtoint ptr %changing_timing to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %changing_timing, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body104, %if.then100, %do.end88, %do.end75, %if.then28, %land.end.cleanup_crit_edge, %cleanup.sink.split.i, %if.end5.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %do.end75 ], [ %retval.0.i197.ph, %do.end88 ], [ %call98, %if.then100 ], [ 0, %do.body104 ], [ -22, %if.then28 ], [ -22, %land.end.cleanup_crit_edge ], [ -2, %lor.lhs.false.i.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ], [ -2, %if.end5.i.cleanup_crit_edge ], [ -2, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_reparent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 505, i32 36}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 522, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tegra124_clk_register_emc._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @tegra124_clk_register_emc._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 525, i32 4}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 527, i32 3}
!12 = !{ptr @tegra124_clk_register_emc._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra124_clk_register_emc._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 529, i32 14}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 546, i32 34}
!18 = !{ptr @__ksymtab_tegra124_clk_set_emc_callbacks, !19, !"__ksymtab_tegra124_clk_set_emc_callbacks", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 566, i32 1}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 392, i32 35}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 394, i32 3}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @load_one_timing_from_dt._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @load_one_timing_from_dt._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 400, i32 35}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 402, i32 3}
!31 = !{ptr @load_one_timing_from_dt._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @load_one_timing_from_dt._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 408, i32 44}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 410, i32 3}
!37 = !{ptr @load_one_timing_from_dt._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @load_one_timing_from_dt._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 418, i32 3}
!41 = !{ptr @load_one_timing_from_dt._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @load_one_timing_from_dt._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @tegra_clk_emc_ops, !44, !"tegra_clk_emc_ops", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 478, i32 29}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 350, i32 3}
!47 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @emc_set_rate._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @emc_set_rate._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 366, i32 4}
!52 = !{ptr @emc_set_rate._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @emc_set_rate._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 370, i32 3}
!56 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @emc_set_rate.__UNIQUE_ID_ddebug186, !55, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 375, i32 4}
!60 = !{ptr @emc_set_rate._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @emc_set_rate._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @emc_parent_clk_sources, !63, !"emc_parent_clk_sources", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 60, i32 19}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 220, i32 2}
!66 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @emc_set_timing.__UNIQUE_ID_ddebug185, !65, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 225, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 236, i32 3}
!73 = !{ptr @emc_set_timing._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @emc_set_timing._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 245, i32 3}
!77 = !{ptr @emc_set_timing._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @emc_set_timing._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 191, i32 3}
!81 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @emc_ensure_emc_driver._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @emc_ensure_emc_driver._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 201, i32 3}
!86 = !{ptr @emc_ensure_emc_driver._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @emc_ensure_emc_driver._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 42, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 42, i32 11}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 42, i32 20}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 42, i32 29}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 42, i32 38}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 43, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 43, i32 12}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 43, i32 22}
!104 = !{ptr @emc_parent_clk_names, !105, !"emc_parent_clk_names", i1 false, i1 false}
!105 = !{!"../drivers/clk/tegra/clk-tegra124-emc.c", i32 41, i32 27}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"auto-init"}
!116 = !{i64 5014561}
!117 = !{i64 2153058932}
!118 = !{i64 2153054853}
!119 = !{i8 0, i8 2}
!120 = !{i64 2148928931, i64 2148928936, i64 2148928949, i64 2148928993, i64 2148929027, i64 2148929048}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2153070734}
!123 = !{i64 2153071421}
!124 = !{i64 5014143}
