; ModuleID = '/llk/IR_all_yes/drivers/clk/renesas/clk-mstp.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-mstp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_power_governor = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mstp_clock_group = type { %struct.clk_onecell_data, ptr, ptr, %struct.spinlock, i8, [0 x ptr] }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.pm_subsys_data = type { %struct.spinlock, i32, i32, %struct.mutex, %struct.list_head, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.43 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.43 = type { %struct.mutex }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mstp_clock = type { %struct.clk_hw, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_cpg_mstp_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,cpg-mstp-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cpg_mstp_clocks_init }, section "__clk_of_table", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"renesas,cpg-mstp-clocks\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zb_clk\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"#power-domain-cells\00", [44 x i8] zeroinitializer }, align 32
@cpg_mstp_add_clk_domain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%pOF lacks #power-domain-cells\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpg_mstp_add_clk_domain\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/renesas/clk-mstp.c\00", [33 x i8] zeroinitializer }, align 32
@cpg_mstp_add_clk_domain._entry_ptr = internal global ptr @cpg_mstp_add_clk_domain._entry, section ".printk_index", align 4
@pm_domain_always_on_gov = external dso_local global %struct.dev_power_governor, align 4
@cpg_mstp_clocks_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&group->lock\00", [19 x i8] zeroinitializer }, align 32
@cpg_mstp_clocks_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.7, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to remap SMSTPCR\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpg_mstp_clocks_init\00", [43 x i8] zeroinitializer }, align 32
@cpg_mstp_clocks_init._entry_ptr = internal global ptr @cpg_mstp_clocks_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"renesas,r7s72100-mstp-clocks\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"renesas,clock-indices\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@cpg_mstp_clocks_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.7, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: invalid clock %pOFn %s index %u\0A\00", [57 x i8] zeroinitializer }, align 32
@cpg_mstp_clocks_init._entry_ptr.17 = internal global ptr @cpg_mstp_clocks_init._entry.15, section ".printk_index", align 4
@cpg_mstp_clocks_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.7, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", [49 x i8] zeroinitializer }, align 32
@cpg_mstp_clocks_init._entry_ptr.20 = internal global ptr @cpg_mstp_clocks_init._entry.18, section ".printk_index", align 4
@cpg_mstp_clock_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @cpg_mstp_clock_enable, ptr @cpg_mstp_clock_disable, ptr @cpg_mstp_clock_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"intc-sys\00", [23 x i8] zeroinitializer }, align 32
@cpg_mstp_clock_register.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.7, ptr @.str.24, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mstp\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpg_mstp_clock_register\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MSTP %s setting CLK_IS_CRITICAL\0A\00", [63 x i8] zeroinitializer }, align 32
@cpg_mstp_clock_endisable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to enable %p[%d]\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpg_mstp_clock_endisable\00", [39 x i8] zeroinitializer }, align 32
@cpg_mstp_clock_endisable._entry_ptr = internal global ptr @cpg_mstp_clock_endisable._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 274, i32 41 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 274, i32 51 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 277, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 281, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 325, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 326, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 196, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 203, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 208, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 214, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 217, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 226, i32 43 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 237, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 257, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"cpg_mstp_clock_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 143, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 165, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 166, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [34 x i8] c"../drivers/clk/renesas/clk-mstp.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 111, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__of_table_cpg_mstp_clks, ptr @cpg_mstp_add_clk_domain._entry, ptr @cpg_mstp_add_clk_domain._entry_ptr, ptr @cpg_mstp_clock_endisable._entry, ptr @cpg_mstp_clock_endisable._entry_ptr, ptr @cpg_mstp_clocks_init._entry, ptr @cpg_mstp_clocks_init._entry.15, ptr @cpg_mstp_clocks_init._entry.18, ptr @cpg_mstp_clocks_init._entry_ptr, ptr @cpg_mstp_clocks_init._entry_ptr.17, ptr @cpg_mstp_clocks_init._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @cpg_mstp_clocks_init.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @cpg_mstp_clock_ops, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_add_clk_domain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clocks_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clocks_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clocks_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clocks_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clock_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpg_mstp_clock_endisable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpg_mstp_clocks_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %i = alloca i32, align 4
  %name = alloca ptr, align 4
  %clkidx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 192) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup77_crit_edge, label %if.end

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup77

if.end:                                           ; preds = %entry
  %clks2 = getelementptr inbounds %struct.mstp_clock_group, ptr %call7.i.i, i32 0, i32 5
  %lock = getelementptr inbounds %struct.mstp_clock_group, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @cpg_mstp_clocks_init.__key, i16 noundef signext 3) #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %clks2, ptr %call7.i.i, align 8
  %call5 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %smstpcr = getelementptr inbounds %struct.mstp_clock_group, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %smstpcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %smstpcr, align 8
  %call6 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 1) #8
  %mstpsr = getelementptr inbounds %struct.mstp_clock_group, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %mstpsr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %mstpsr, align 4
  %4 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smstpcr, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %do.end11, label %if.end13

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup77

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end13.for.body.preheader_crit_edge, label %if.then16

if.end13.for.body.preheader_crit_edge:            ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %width_8bit = getelementptr inbounds %struct.mstp_clock_group, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %width_8bit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %width_8bit, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then16, %if.end13.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %storemerge118 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr ptr, ptr %clks2, i32 %storemerge118
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %storemerge118, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %8 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %i, align 4
  %call20 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.12, ptr noundef nonnull %i) #8
  %tobool21.not = icmp eq ptr %call20, null
  %.str.13..str.12 = select i1 %tobool21.not, ptr @.str.13, ptr @.str.12
  %9 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %i, align 4
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  br label %for.body26

for.body26:                                       ; preds = %for.inc72.for.body26_crit_edge, %for.end
  %storemerge114119 = phi i32 [ 0, %for.end ], [ %inc73, %for.inc72.for.body26_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #8
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkidx) #8
  %11 = ptrtoint ptr %clkidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %clkidx, align 4, !annotation !65
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %storemerge114119) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28 = icmp slt i32 %call.i, 0
  br i1 %cmp28, label %for.body26.for.inc72_crit_edge, label %lor.lhs.false

for.body26.for.inc72_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc72

lor.lhs.false:                                    ; preds = %for.body26
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %char0 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %cmp30 = icmp eq i8 %char0, 0
  br i1 %cmp30, label %lor.lhs.false.for.inc72_crit_edge, label %if.end32

lor.lhs.false.for.inc72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc72

if.end32:                                         ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %i, align 4
  %call33 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef %16) #8
  %17 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i, align 4
  %call34 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull %.str.13..str.12, i32 noundef %18, ptr noundef nonnull %clkidx) #8
  %cmp35 = icmp eq ptr %call33, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp37 = icmp slt i32 %call34, 0
  %or.cond = select i1 %cmp35, i1 true, i1 %cmp37
  br i1 %or.cond, label %cleanup, label %if.end39

if.end39:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %clkidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clkidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %20)
  %cmp40 = icmp ugt i32 %20, 31
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  br i1 %cmp40, label %do.end44, label %if.end47

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, ptr noundef %np, ptr noundef %22, i32 noundef %20) #12
  br label %for.inc72

if.end47:                                         ; preds = %if.end39
  %call48 = call fastcc ptr @cpg_mstp_clock_register(ptr noundef %22, ptr noundef nonnull %call33, i32 noundef %20, ptr noundef nonnull %call7.i.i) #13
  %23 = ptrtoint ptr %clkidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clkidx, align 4
  %arrayidx49 = getelementptr ptr, ptr %clks2, i32 %24
  %25 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call48, ptr %arrayidx49, align 4
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end63, label %if.then52

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %clk_num, align 4
  %add = add i32 %24, 1
  %28 = call i32 @llvm.umax.i32(i32 %27, i32 %add)
  %29 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %clk_num, align 4
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx49, align 4
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  %call59 = call i32 @clk_register_clkdev(ptr noundef %31, ptr noundef %33, ptr noundef null) #8
  br label %for.inc72

do.end63:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name, align 4
  %36 = ptrtoint ptr %call48 to i32
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, ptr noundef %np, ptr noundef %35, i32 noundef %36) #12
  br label %for.inc72

cleanup:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkidx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  br label %for.end74

for.inc72:                                        ; preds = %do.end63, %if.then52, %do.end44, %lor.lhs.false.for.inc72_crit_edge, %for.body26.for.inc72_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkidx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #8
  %37 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %i, align 4
  %inc73 = add i32 %38, 1
  store i32 %inc73, ptr %i, align 4
  %cmp25 = icmp ult i32 %inc73, 32
  br i1 %cmp25, label %for.inc72.for.body26_crit_edge, label %for.inc72.for.end74_crit_edge

for.inc72.for.end74_crit_edge:                    ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74

for.inc72.for.body26_crit_edge:                   ; preds = %for.inc72
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26

for.end74:                                        ; preds = %for.inc72.for.end74_crit_edge, %cleanup
  %call76 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup77

cleanup77:                                        ; preds = %for.end74, %do.end11, %entry.cleanup77_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpg_mstp_attach_dev(ptr nocapture readnone %unused, ptr noundef %dev) #1 align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #8
  %2 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  %call.i36 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %clkspec) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not37, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %entry.while.body_crit_edge
  %i.038 = phi i32 [ %inc, %if.end7.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clkspec, align 4
  %call2 = call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %while.body.found_crit_edge

while.body.found_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkspec, align 4
  %call5 = call zeroext i1 @of_node_name_eq(ptr noundef %6, ptr noundef nonnull @.str.3) #8
  br i1 %call5, label %if.end.found_crit_edge, label %if.end7

if.end.found_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %found

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %8) #8
  %inc = add i32 %i.038, 1
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %inc, ptr noundef nonnull %clkspec) #8
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end7.while.body_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

found:                                            ; preds = %if.end.found_crit_edge, %while.body.found_crit_edge
  %call9 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #8
  %9 = ptrtoint ptr %clkspec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkspec, align 4
  call void @of_node_put(ptr noundef %10) #8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end14

if.then12:                                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end14:                                         ; preds = %found
  %call15 = call i32 @pm_clk_create(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.fail_put_crit_edge

if.end14.fail_put_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_put

if.end18:                                         ; preds = %if.end14
  %call19 = call i32 @pm_clk_add_clk(ptr noundef %dev, ptr noundef %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %fail_destroy

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail_destroy:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void @pm_clk_destroy(ptr noundef %dev) #8
  br label %fail_put

fail_put:                                         ; preds = %fail_destroy, %if.end14.fail_put_crit_edge
  %error.0 = phi i32 [ %call15, %if.end14.fail_put_crit_edge ], [ %call19, %fail_destroy ]
  call void @clk_put(ptr noundef %call9) #8
  br label %cleanup

cleanup:                                          ; preds = %fail_put, %if.end18.cleanup_crit_edge, %if.then12, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then12 ], [ %error.0, %fail_put ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_clk_add_clk(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_clk_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_mstp_detach_dev(ptr nocapture readnone %unused, ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %land.lhs.true.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.i:                                  ; preds = %entry
  %subsys_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 26
  %0 = ptrtoint ptr %subsys_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subsys_data.i, align 8
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then_crit_edge, label %pm_clk_no_clocks.exit

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_clk_no_clocks.exit:                            ; preds = %land.lhs.true.i
  %clock_list.i = getelementptr inbounds %struct.pm_subsys_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clock_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %clock_list.i, align 4
  %cmp.i.i = icmp eq ptr %3, %clock_list.i
  br i1 %cmp.i.i, label %pm_clk_no_clocks.exit.if.end_crit_edge, label %pm_clk_no_clocks.exit.if.then_crit_edge

pm_clk_no_clocks.exit.if.then_crit_edge:          ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

pm_clk_no_clocks.exit.if.end_crit_edge:           ; preds = %pm_clk_no_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %pm_clk_no_clocks.exit.if.then_crit_edge, %land.lhs.true.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @pm_clk_destroy(ptr noundef %dev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %pm_clk_no_clocks.exit.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cpg_mstp_add_clk_domain(ptr noundef %np) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %ncells = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ncells) #8
  %0 = ptrtoint ptr %ncells to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ncells, align 4, !annotation !65
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.4, ptr noundef nonnull %ncells, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %np) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1352) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %name6 = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name6, align 8
  %flags = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 32
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 13, ptr %flags, align 4
  %attach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 30
  %6 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cpg_mstp_attach_dev, ptr %attach_dev, align 4
  %detach_dev = getelementptr inbounds %struct.generic_pm_domain, ptr %call7.i.i, i32 0, i32 31
  %7 = ptrtoint ptr %detach_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cpg_mstp_detach_dev, ptr %detach_dev, align 8
  %call7 = call i32 @pm_genpd_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @pm_domain_always_on_gov, i1 noundef zeroext false) #8
  %call8 = call i32 @of_genpd_add_provider_simple(ptr noundef %np, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ncells) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpg_mstp_clock_register(ptr noundef %name, ptr noundef %parent_name, i32 noundef %index, ptr noundef %group) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cpg_mstp_clock_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(9) @.str.21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.body, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpg_mstp_clock_register.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpg_mstp_clock_register, %if.then10)) #8
          to label %do.end [label %if.then10], !srcloc !66

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cpg_mstp_clock_register.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.24, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 2048
  store i32 %or, ptr %flags, align 4
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %bit_index = getelementptr inbounds %struct.mstp_clock, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %bit_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %index, ptr %bit_index, align 4
  %group14 = getelementptr inbounds %struct.mstp_clock, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %group14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %group, ptr %group14, align 8
  %init15 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %init15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init15, align 8
  %call17 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call17, %if.then19 ], [ %call17, %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_enable(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %hw, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpg_mstp_clock_disable(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cpg_mstp_clock_endisable(ptr noundef %hw, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpg_mstp_clock_is_enabled(ptr nocapture noundef readonly %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %mstpsr = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mstpsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mstpsr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %width_8bit.i = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %width_8bit.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %width_8bit.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %conv.i = zext i8 %6 to i32
  br label %if.end

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %3) #8, !srcloc !70
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %if.end

if.else:                                          ; preds = %entry
  %smstpcr = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smstpcr, align 4
  %width_8bit.i10 = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %width_8bit.i10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width_8bit.i10, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i11 = icmp eq i8 %12, 0
  br i1 %tobool.not.i11, label %cond.false.i14, label %cond.true.i13

cond.true.i13:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %conv.i12 = zext i8 %13 to i32
  br label %if.end

cond.false.i14:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #8, !srcloc !70
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %if.end

if.end:                                           ; preds = %cond.false.i14, %cond.true.i13, %cond.false.i, %cond.true.i
  %value.0 = phi i32 [ %conv.i, %cond.true.i ], [ %8, %cond.false.i ], [ %conv.i12, %cond.true.i13 ], [ %15, %cond.false.i14 ]
  %bit_index = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %bit_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bit_index, align 4
  %18 = xor i32 %value.0, -1
  %19 = lshr i32 %18, %17
  %20 = and i32 %19, 1
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpg_mstp_clock_endisable(ptr nocapture noundef readonly %hw, i1 noundef zeroext %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %bit_index = getelementptr inbounds %struct.mstp_clock, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %bit_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit_index, align 4
  %shl = shl nuw i32 1, %3
  %lock = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %smstpcr = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smstpcr, align 4
  %width_8bit.i = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %width_8bit.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width_8bit.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %5) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %conv.i = zext i8 %8 to i32
  br label %cpg_mstp_read.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #8, !srcloc !70
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %cpg_mstp_read.exit

cpg_mstp_read.exit:                               ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %conv.i, %cond.true.i ], [ %10, %cond.false.i ]
  %neg = xor i32 %shl, -1
  %and = and i32 %cond.i, %neg
  %or = or i32 %cond.i, %shl
  %value.0 = select i1 %enable, i32 %and, i32 %or
  %11 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smstpcr, align 4
  %13 = ptrtoint ptr %width_8bit.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %width_8bit.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i76 = icmp eq i8 %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i76, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %cpg_mstp_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i77 = trunc i32 %value.0 to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %12, i8 %conv.i77) #8, !srcloc !72
  br label %cpg_mstp_write.exit

do.body1.i:                                       ; preds = %cpg_mstp_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %value.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %15) #8, !srcloc !73
  br label %cpg_mstp_write.exit

cpg_mstp_write.exit:                              ; preds = %do.body1.i, %do.body.i
  %mstpsr = getelementptr inbounds %struct.mstp_clock_group, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %mstpsr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mstpsr, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %if.then10, label %cpg_mstp_write.exit.if.end14_crit_edge

cpg_mstp_write.exit.if.end14_crit_edge:           ; preds = %cpg_mstp_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %cpg_mstp_write.exit
  %18 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smstpcr, align 4
  %20 = ptrtoint ptr %width_8bit.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width_8bit.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i79 = icmp eq i8 %21, 0
  br i1 %tobool.not.i79, label %cond.false.i82, label %cond.true.i81

cond.true.i81:                                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %19) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  br label %cpg_mstp_read.exit84

cond.false.i82:                                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %cpg_mstp_read.exit84

cpg_mstp_read.exit84:                             ; preds = %cond.false.i82, %cond.true.i81
  %24 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %smstpcr, align 4
  tail call void asm sideeffect "", "r,~{memory}"(ptr %25) #8, !srcloc !74
  br label %if.end14

if.end14:                                         ; preds = %cpg_mstp_read.exit84, %cpg_mstp_write.exit.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  br i1 %enable, label %lor.lhs.false, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end14
  %26 = ptrtoint ptr %mstpsr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mstpsr, align 4
  %tobool18.not = icmp eq ptr %27, null
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body_crit_edge

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  br label %for.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %do.end33.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %i.092 = phi i32 [ %dec, %do.end33.for.body_crit_edge ], [ 1000, %lor.lhs.false.for.body_crit_edge ]
  %28 = ptrtoint ptr %mstpsr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mstpsr, align 4
  %30 = ptrtoint ptr %width_8bit.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %width_8bit.i, align 4, !range !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i86 = icmp eq i8 %31, 0
  br i1 %tobool.not.i86, label %cond.false.i89, label %cond.true.i88

cond.true.i88:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %29) #8, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %conv.i87 = zext i8 %32 to i32
  br label %cpg_mstp_read.exit91

cond.false.i89:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #8, !srcloc !70
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  br label %cpg_mstp_read.exit91

cpg_mstp_read.exit91:                             ; preds = %cond.false.i89, %cond.true.i88
  %cond.i90 = phi i32 [ %conv.i87, %cond.true.i88 ], [ %34, %cond.false.i89 ]
  %and25 = and i32 %cond.i90, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %cpg_mstp_read.exit91.cleanup_crit_edge, label %do.end33

cpg_mstp_read.exit91.cleanup_crit_edge:           ; preds = %cpg_mstp_read.exit91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %cpg_mstp_read.exit91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !75
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !76
  %dec = add nsw i32 %i.092, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end42, label %do.end33.for.body_crit_edge

do.end33.for.body_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end42:                                         ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %smstpcr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %smstpcr, align 4
  %37 = ptrtoint ptr %bit_index to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bit_index, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef %36, i32 noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %cpg_mstp_read.exit91.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end42 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %cpg_mstp_read.exit91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__of_table_cpg_mstp_clks, !1, !"__of_table_cpg_mstp_clks", i1 false, i1 false}
!1 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 264, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 274, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 274, i32 51}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 277, i32 10}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 281, i32 35}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 325, i32 31}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 326, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cpg_mstp_add_clk_domain._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @cpg_mstp_add_clk_domain._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @cpg_mstp_clocks_init.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 196, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 203, i32 3}
!23 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cpg_mstp_clocks_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @cpg_mstp_clocks_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 208, i32 34}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 214, i32 27}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 217, i32 13}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 226, i32 43}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 237, i32 4}
!36 = !{ptr @cpg_mstp_clocks_init._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @cpg_mstp_clocks_init._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 257, i32 4}
!40 = !{ptr @cpg_mstp_clocks_init._entry.18, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cpg_mstp_clocks_init._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 165, i32 20}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 166, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cpg_mstp_clock_register.__UNIQUE_ID_ddebug183, !45, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!49 = !{ptr @cpg_mstp_clock_ops, !50, !"cpg_mstp_clock_ops", i1 false, i1 false}
!50 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 143, i32 29}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/renesas/clk-mstp.c", i32 111, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @cpg_mstp_clock_endisable._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @cpg_mstp_clock_endisable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i64 2148727944, i64 2148727949, i64 2148727962, i64 2148728006, i64 2148728040, i64 2148728061}
!67 = !{i8 0, i8 2}
!68 = !{i64 5377663}
!69 = !{i64 2152952217}
!70 = !{i64 5377883}
!71 = !{i64 2152952647}
!72 = !{i64 5377268}
!73 = !{i64 5377465}
!74 = !{i64 2152955109}
!75 = !{i64 2152955361}
!76 = !{i64 2152955203}
