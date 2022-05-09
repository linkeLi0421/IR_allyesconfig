; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-bpmp.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-bpmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.tegra_bpmp = type { ptr, ptr, ptr, %struct.anon.66, %struct.spinlock, ptr, ptr, ptr, %struct.anon.67, %struct.list_head, %struct.spinlock, ptr, i32, %struct.reset_controller_dev, %struct.genpd_onecell_data, ptr }
%struct.anon.66 = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.anon.67 = type { ptr, ptr, i32, %struct.semaphore }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.tegra_bpmp_clk_info = type { i32, [40 x i8], [16 x i32], i32, i32 }
%struct.tegra_bpmp_clk = type { %struct.clk_hw, ptr, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mrq_clk_request = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.cmd_clk_set_parent_request, [8 x i8] }
%struct.cmd_clk_set_parent_request = type { i32 }
%struct.tegra_bpmp_message = type { i32, %struct.anon.78, %struct.anon.79 }
%struct.anon.78 = type { ptr, i32 }
%struct.anon.79 = type { ptr, i32, i32 }
%struct.cmd_clk_get_all_info_response = type <{ i32, i32, [16 x i32], i8, [40 x i8] }>
%struct.cmd_clk_get_max_clk_id_response = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.cmd_clk_is_enabled_response = type { i32 }
%struct.cmd_clk_get_rate_response = type { i64 }
%struct.cmd_clk_round_rate_response = type { i64 }
%struct.cmd_clk_set_parent_response = type { i32 }
%struct.cmd_clk_get_parent_response = type { i32 }
%struct.cmd_clk_set_rate_response = type { i64 }

@tegra_bpmp_init_clocks.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_bpmp\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_bpmp_init_clocks\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/tegra/clk-bpmp.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%u clocks probed\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_bpmp_probe_clocks\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"maximum clock ID: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_bpmp_probe_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 428, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"clock %u has too many parents (%u, max: %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_bpmp_probe_clocks._entry_ptr = internal global ptr @tegra_bpmp_probe_clocks._entry, section ".printk_index", align 4
@tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"holes: %u\0A\00", [21 x i8] zeroinitializer }, align 32
@tegra_bpmp_register_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 562, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register clock %u (%s): %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_bpmp_register_clocks\00", [37 x i8] zeroinitializer }, align 32
@tegra_bpmp_register_clocks._entry_ptr = internal global ptr @tegra_bpmp_register_clocks._entry, section ".printk_index", align 4
@tegra_bpmp_clk_mux_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @tegra_bpmp_clk_prepare, ptr @tegra_bpmp_clk_unprepare, ptr @tegra_bpmp_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bpmp_clk_recalc_rate, ptr @tegra_bpmp_clk_round_rate, ptr null, ptr @tegra_bpmp_clk_set_parent, ptr @tegra_bpmp_clk_get_parent, ptr @tegra_bpmp_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @tegra_bpmp_clk_prepare, ptr @tegra_bpmp_clk_unprepare, ptr @tegra_bpmp_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bpmp_clk_recalc_rate, ptr null, ptr null, ptr @tegra_bpmp_clk_set_parent, ptr @tegra_bpmp_clk_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_rate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @tegra_bpmp_clk_prepare, ptr @tegra_bpmp_clk_unprepare, ptr @tegra_bpmp_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bpmp_clk_recalc_rate, ptr @tegra_bpmp_clk_round_rate, ptr null, ptr null, ptr null, ptr @tegra_bpmp_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @tegra_bpmp_clk_prepare, ptr @tegra_bpmp_clk_unprepare, ptr @tegra_bpmp_clk_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_bpmp_clk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no parent %u found for %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_bpmp_clk_register\00", [40 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_register._entry_ptr = internal global ptr @tegra_bpmp_clk_register._entry, section ".printk_index", align 4
@tegra_bpmp_clk_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 120, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to disable clock %s: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_bpmp_clk_unprepare\00", [39 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_unprepare._entry_ptr = internal global ptr @tegra_bpmp_clk_unprepare._entry, section ".printk_index", align 4
@tegra_bpmp_clk_get_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 239, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to get parent for %s: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_bpmp_clk_get_parent\00", [38 x i8] zeroinitializer }, align 32
@tegra_bpmp_clk_get_parent._entry_ptr = internal global ptr @tegra_bpmp_clk_get_parent._entry, section ".printk_index", align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 611, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 412, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 426, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 445, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 560, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [28 x i8] c"tegra_bpmp_clk_mux_rate_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 297, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"tegra_bpmp_clk_mux_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 279, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant [24 x i8] c"tegra_bpmp_clk_rate_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 288, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"tegra_bpmp_clk_gate_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 272, i32 29 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 522, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 119, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [32 x i8] c"../drivers/clk/tegra/clk-bpmp.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 238, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @tegra_bpmp_clk_get_parent._entry, ptr @tegra_bpmp_clk_get_parent._entry_ptr, ptr @tegra_bpmp_clk_register._entry, ptr @tegra_bpmp_clk_register._entry_ptr, ptr @tegra_bpmp_clk_unprepare._entry, ptr @tegra_bpmp_clk_unprepare._entry_ptr, ptr @tegra_bpmp_probe_clocks._entry, ptr @tegra_bpmp_probe_clocks._entry_ptr, ptr @tegra_bpmp_register_clocks._entry, ptr @tegra_bpmp_register_clocks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @tegra_bpmp_clk_mux_rate_ops, ptr @tegra_bpmp_clk_mux_ops, ptr @tegra_bpmp_clk_rate_ops, ptr @tegra_bpmp_clk_gate_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_probe_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_register_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_mux_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_rate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_clk_get_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_bpmp_init_clocks(ptr noundef %bpmp) local_unnamed_addr #0 align 64 {
entry:
  %init.i.i = alloca %struct.clk_init_data, align 4
  %clocks = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clocks) #8
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clocks, align 4, !annotation !56
  %call = call fastcc i32 @tegra_bpmp_probe_clocks(ptr noundef %bpmp, ptr noundef nonnull %clocks)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_init_clocks.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_init_clocks, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !57

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_init_clocks.__UNIQUE_ID_ddebug231, ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %call) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %3 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clocks, align 4
  %num_clocks.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 12
  %5 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %num_clocks.i, align 4
  %dev.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !58

devm_kcalloc.exit.thread.i:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %clocks31.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 11
  %8 = ptrtoint ptr %clocks31.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clocks31.i, align 4
  br label %free

devm_kcalloc.exit.i:                              ; preds = %do.end
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = extractvalue { i32, i1 } %6, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef %11, i32 noundef 3520) #8
  %clocks.i = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 11
  %12 = ptrtoint ptr %clocks.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i, ptr %clocks.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.free_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.free_crit_edge:               ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp38.not.i = icmp eq i32 %call, 0
  br i1 %cmp38.not.i, label %for.cond.preheader.i.if.end9_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end9_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %13 = getelementptr inbounds i8, ptr %init.i.i, i32 4
  %num_parents35.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %15, i32 noundef 28, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, label %if.end.i.i

for.body.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.thread.i

if.end.i.i:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %id2.i.i = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %call.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %id2.i.i, align 4
  %bpmp3.i.i = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %bpmp3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bpmp, ptr %bpmp3.i.i, align 4
  %num_parents.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i, i32 3
  %20 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_parents.i.i, align 4
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !58

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %parents6113.i.i = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %call.i.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %parents6113.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %parents6113.i.i, align 4
  br label %tegra_bpmp_clk_register.exit.thread.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i.i
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %27 = extractvalue { i32, i1 } %22, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %26, i32 noundef %27, i32 noundef 3520) #8
  %parents6.i.i = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %call.i.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %parents6.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i.i.i, ptr %parents6.i.i, align 4
  %tobool8.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool8.not.i.i, label %devm_kcalloc.exit.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, label %if.end11.i.i

devm_kcalloc.exit.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.thread.i

if.end11.i.i:                                     ; preds = %devm_kcalloc.exit.i.i
  %29 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_parents.i.i, align 4
  %num_parents13.i.i = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %call.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %num_parents13.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %num_parents13.i.i, align 4
  %32 = call ptr @memset(ptr %parent_names.i.i, i32 0, i32 20)
  %name.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i, i32 1
  %33 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %name.i.i, ptr %init.i.i, align 4
  %init15.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %init15.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i.i, ptr %init15.i.i, align 4
  %flags.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i, i32 4
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  %and26.i.i = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  %tegra_bpmp_clk_mux_ops.tegra_bpmp_clk_mux_rate_ops.i.i = select i1 %tobool27.not.i.i, ptr @tegra_bpmp_clk_mux_ops, ptr @tegra_bpmp_clk_mux_rate_ops
  %tegra_bpmp_clk_gate_ops.tegra_bpmp_clk_rate_ops.i.i = select i1 %tobool27.not.i.i, ptr @tegra_bpmp_clk_gate_ops, ptr @tegra_bpmp_clk_rate_ops
  %tegra_bpmp_clk_rate_ops.sink.i.i = select i1 %tobool16.not.i.i, ptr %tegra_bpmp_clk_gate_ops.tegra_bpmp_clk_rate_ops.i.i, ptr %tegra_bpmp_clk_mux_ops.tegra_bpmp_clk_mux_rate_ops.i.i
  %37 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tegra_bpmp_clk_rate_ops.sink.i.i, ptr %13, align 4
  %conv.i.i = trunc i32 %30 to i8
  %38 = ptrtoint ptr %num_parents35.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i.i, ptr %num_parents35.i.i, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %30, i32 4) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end11.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, label %if.end7.i.i.i.i, !prof !58

if.end11.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge: ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.end11.i.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %41, i32 noundef 3520) #11
  %tobool38.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool38.not.i.i, label %if.end7.i.i.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  %42 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_parents.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp121.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp121.not.i.i, label %for.cond.preheader.i.i.tegra_bpmp_clk_register.exit.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.tegra_bpmp_clk_register.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0122.i.i = phi i32 [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i, i32 2, i32 %i.0122.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  %46 = ptrtoint ptr %parents6.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parents6.i.i, align 4
  %arrayidx46.i.i = getelementptr i32, ptr %47, i32 %i.0122.i.i
  %48 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx46.i.i, align 4
  %49 = load i32, ptr %arrayidx.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %call
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.do.end.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.cond.i.i.i.do.end.i.i_crit_edge:              ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.09.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %49)
  %cmp2.i.i.i = icmp eq i32 %51, %49
  br i1 %cmp2.i.i.i, label %tegra_bpmp_clk_find.exit.i.i, label %for.cond.i.i.i

tegra_bpmp_clk_find.exit.i.i:                     ; preds = %for.body.i.i.i
  %tobool50.not.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool50.not.i.i, label %tegra_bpmp_clk_find.exit.i.i.do.end.i.i_crit_edge, label %if.end56.i.i

tegra_bpmp_clk_find.exit.i.i.do.end.i.i_crit_edge: ; preds = %tegra_bpmp_clk_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %tegra_bpmp_clk_find.exit.i.i.do.end.i.i_crit_edge, %for.cond.i.i.i.do.end.i.i_crit_edge
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.12, i32 noundef %49, i32 noundef %55) #12
  br label %cleanup.i.i

if.end56.i.i:                                     ; preds = %tegra_bpmp_clk_find.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %name57.i.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.09.i.i.i, i32 1
  %arrayidx59.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.0122.i.i
  %56 = ptrtoint ptr %arrayidx59.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %name57.i.i, ptr %arrayidx59.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end56.i.i, %do.end.i.i
  %inc.i.i = add nuw i32 %i.0122.i.i, 1
  %57 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_parents.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %58
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.tegra_bpmp_clk_register.exit.i_crit_edge

cleanup.i.i.tegra_bpmp_clk_register.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_register.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

tegra_bpmp_clk_register.exit.thread.i:            ; preds = %if.end7.i.i.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, %if.end11.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, %devm_kcalloc.exit.i.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge, %devm_kcalloc.exit.thread.i.i, %for.body.i.tegra_bpmp_clk_register.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  br label %do.end.i

tegra_bpmp_clk_register.exit.i:                   ; preds = %cleanup.i.i.tegra_bpmp_clk_register.exit.i_crit_edge, %for.cond.preheader.i.i.tegra_bpmp_clk_register.exit.i_crit_edge
  %59 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i.i.i, ptr %parent_names.i.i, align 4
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %call62.i.i = call i32 @devm_clk_hw_register(ptr noundef %61, ptr noundef nonnull %call.i.i.i) #8
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i.i)
  %cmp63.i.i = icmp slt i32 %call62.i.i, 0
  %62 = inttoptr i32 %call62.i.i to ptr
  %spec.select.i.i = select i1 %cmp63.i.i, ptr %62, ptr %call.i.i.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #8
  %cmp.i29.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29.i, label %tegra_bpmp_clk_register.exit.i.do.end.i_crit_edge, label %if.end7.i

tegra_bpmp_clk_register.exit.i.do.end.i_crit_edge: ; preds = %tegra_bpmp_clk_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %tegra_bpmp_clk_register.exit.i.do.end.i_crit_edge, %tegra_bpmp_clk_register.exit.thread.i
  %retval.0.i35.i = phi ptr [ inttoptr (i32 -12 to ptr), %tegra_bpmp_clk_register.exit.thread.i ], [ %spec.select.i.i, %tegra_bpmp_clk_register.exit.i.do.end.i_crit_edge ]
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 4
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i, align 4
  %name.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %4, i32 %i.039.i, i32 1
  %67 = ptrtoint ptr %retval.0.i35.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.10, i32 noundef %66, ptr noundef %name.i, i32 noundef %67) #12
  br label %cleanup.i

if.end7.i:                                        ; preds = %tegra_bpmp_clk_register.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clocks.i, align 4
  %arrayidx9.i = getelementptr ptr, ptr %69, i32 %i.039.i
  %70 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %spec.select.i.i, ptr %arrayidx9.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end7.i, %do.end.i
  %inc.i = add nuw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.not.i, label %cleanup.i.if.end9_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup.i.if.end9_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %cleanup.i.if.end9_crit_edge, %for.cond.preheader.i.if.end9_crit_edge
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %of_node, align 8
  %call11 = call i32 @of_clk_add_hw_provider(ptr noundef %74, ptr noundef nonnull @tegra_bpmp_clk_of_xlate, ptr noundef %bpmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end9.free_crit_edge

if.end9.free_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.then13:                                        ; preds = %if.end9
  %75 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_clocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp4.not.i = icmp eq i32 %76, 0
  br i1 %cmp4.not.i, label %if.then13.free_crit_edge, label %if.then13.for.body.i34_crit_edge

if.then13.for.body.i34_crit_edge:                 ; preds = %if.then13
  br label %for.body.i34

if.then13.free_crit_edge:                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

for.body.i34:                                     ; preds = %for.body.i34.for.body.i34_crit_edge, %if.then13.for.body.i34_crit_edge
  %i.05.i = phi i32 [ %inc.i33, %for.body.i34.for.body.i34_crit_edge ], [ 0, %if.then13.for.body.i34_crit_edge ]
  %77 = ptrtoint ptr %clocks.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %clocks.i, align 4
  %arrayidx.i32 = getelementptr ptr, ptr %78, i32 %i.05.i
  %79 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i32, align 4
  call void @clk_hw_unregister(ptr noundef %80) #8
  %inc.i33 = add nuw i32 %i.05.i, 1
  %81 = ptrtoint ptr %num_clocks.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_clocks.i, align 4
  %cmp.i = icmp ult i32 %inc.i33, %82
  br i1 %cmp.i, label %for.body.i34.for.body.i34_crit_edge, label %for.body.i34.free_crit_edge

for.body.i34.free_crit_edge:                      ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

for.body.i34.for.body.i34_crit_edge:              ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

free:                                             ; preds = %for.body.i34.free_crit_edge, %if.then13.free_crit_edge, %if.end9.free_crit_edge, %devm_kcalloc.exit.i.free_crit_edge, %devm_kcalloc.exit.thread.i
  %err.0 = phi i32 [ %call11, %if.end9.free_crit_edge ], [ %call11, %if.then13.free_crit_edge ], [ -12, %devm_kcalloc.exit.i.free_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ %call11, %for.body.i34.free_crit_edge ]
  %83 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clocks, align 4
  call void @kfree(ptr noundef %84) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clocks) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bpmp_probe_clocks(ptr noundef %bpmp, ptr nocapture noundef writeonly %clocksp) unnamed_addr #0 align 64 {
entry:
  %request.i.i80 = alloca %struct.mrq_clk_request, align 4
  %msg.i.i81 = alloca %struct.tegra_bpmp_message, align 4
  %response.i82 = alloca %struct.cmd_clk_get_all_info_response, align 4
  %request.i.i = alloca %struct.mrq_clk_request, align 4
  %msg.i.i = alloca %struct.tegra_bpmp_message, align 4
  %response.i = alloca %struct.cmd_clk_get_max_clk_id_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response.i) #8
  %0 = ptrtoint ptr %response.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %response.i, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #8
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 1, i32 1
  %3 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i, i32 0, i32 2, i32 1
  %5 = getelementptr inbounds i8, ptr %request.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 12)
  %7 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 251658240, ptr %request.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 20
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 22, ptr %msg.i.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %request.i.i, ptr %1, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %2, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %response.i, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %4, align 4
  %call.i.i = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge, label %if.else.i.i

entry.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread.i

if.else.i.i:                                      ; preds = %entry
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp14.i.i = icmp slt i32 %16, 0
  br i1 %cmp14.i.i, label %if.else.i.i.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge, label %if.end.i

if.else.i.i.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread.i

tegra_bpmp_clk_transfer.exit.thread.i:            ; preds = %if.else.i.i.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge, %entry.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %entry.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge ], [ -22, %if.else.i.i.tegra_bpmp_clk_transfer.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i.i) #8
  br label %tegra_bpmp_clk_get_max_id.exit.thread

if.end.i:                                         ; preds = %if.else.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i.i) #8
  %17 = ptrtoint ptr %response.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %response.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2.i = icmp slt i32 %18, 0
  br i1 %cmp2.i, label %if.end.i.tegra_bpmp_clk_get_max_id.exit.thread_crit_edge, label %if.end

if.end.i.tegra_bpmp_clk_get_max_id.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_get_max_id.exit.thread

tegra_bpmp_clk_get_max_id.exit.thread:            ; preds = %if.end.i.tegra_bpmp_clk_get_max_id.exit.thread_crit_edge, %tegra_bpmp_clk_transfer.exit.thread.i
  %retval.0.i79.ph = phi i32 [ %retval.0.i.ph.i, %tegra_bpmp_clk_transfer.exit.thread.i ], [ -7, %if.end.i.tegra_bpmp_clk_get_max_id.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i) #8
  br label %cleanup48

if.end:                                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_probe_clocks, %if.then4)) #8
          to label %do.end [label %if.then4], !srcloc !57

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug229, ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %18) #8
  br label %do.end

do.end:                                           ; preds = %if.then4, %if.end
  %add = add nuw i32 %18, 1
  %21 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 116) #8
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %do.end.cleanup48_crit_edge, label %if.end7.i.i, !prof !58

do.end.cleanup48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

if.end7.i.i:                                      ; preds = %do.end
  %23 = extractvalue { i32, i1 } %21, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #11
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup48_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup48_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup48

for.cond.preheader:                               ; preds = %if.end7.i.i
  %24 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i81, i32 0, i32 1
  %25 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i81, i32 0, i32 1, i32 1
  %26 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i81, i32 0, i32 2
  %27 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i.i81, i32 0, i32 2, i32 1
  %28 = getelementptr inbounds i8, ptr %request.i.i80, i32 4
  %29 = getelementptr inbounds i8, ptr %msg.i.i81, i32 20
  %name3.i = getelementptr inbounds %struct.cmd_clk_get_all_info_response, ptr %response.i82, i32 0, i32 4
  %num_parents.i = getelementptr inbounds %struct.cmd_clk_get_all_info_response, ptr %response.i82, i32 0, i32 3
  %dev20 = getelementptr inbounds %struct.tegra_bpmp, ptr %bpmp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %id.0103 = phi i32 [ 0, %for.cond.preheader ], [ %inc30, %cleanup.for.body_crit_edge ]
  %holes.0102 = phi i32 [ 0, %for.cond.preheader ], [ %holes.1, %cleanup.for.body_crit_edge ]
  %count.0100 = phi i32 [ 0, %for.cond.preheader ], [ %count.1, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.tegra_bpmp_clk_info, ptr %call8.i.i, i32 %count.0100
  call void @llvm.lifetime.start.p0(i64 113, ptr nonnull %response.i82) #8
  %30 = call ptr @memset(ptr %response.i82, i32 255, i32 113)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i.i80) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i81) #8
  %31 = call ptr @memset(ptr %28, i32 0, i32 12)
  %or.i.i = or i32 %id.0103, 234881024
  %32 = ptrtoint ptr %request.i.i80 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or.i.i, ptr %request.i.i80, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %29, align 4
  %34 = ptrtoint ptr %msg.i.i81 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 22, ptr %msg.i.i81, align 4
  %35 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %request.i.i80, ptr %24, align 4
  %36 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %25, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %response.i82, ptr %26, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 113, ptr %27, align 4
  %call.i.i83 = call i32 @tegra_bpmp_transfer(ptr noundef %bpmp, ptr noundef nonnull %msg.i.i81) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83)
  %cmp.i.i84 = icmp slt i32 %call.i.i83, 0
  br i1 %cmp.i.i84, label %for.body.tegra_bpmp_clk_get_info.exit.thread_crit_edge, label %if.else.i.i86

for.body.tegra_bpmp_clk_get_info.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_get_info.exit.thread

if.else.i.i86:                                    ; preds = %for.body
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp14.i.i85 = icmp slt i32 %40, 0
  br i1 %cmp14.i.i85, label %if.else.i.i86.tegra_bpmp_clk_get_info.exit.thread_crit_edge, label %if.end.i89

if.else.i.i86.tegra_bpmp_clk_get_info.exit.thread_crit_edge: ; preds = %if.else.i.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_get_info.exit.thread

tegra_bpmp_clk_get_info.exit.thread:              ; preds = %if.else.i.i86.tegra_bpmp_clk_get_info.exit.thread_crit_edge, %for.body.tegra_bpmp_clk_get_info.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i81) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i.i80) #8
  call void @llvm.lifetime.end.p0(i64 113, ptr nonnull %response.i82) #8
  br label %cleanup

if.end.i89:                                       ; preds = %if.else.i.i86
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i81) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i.i80) #8
  %name.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %call8.i.i, i32 %count.0100, i32 1
  %call5.i = call i32 @strlcpy(ptr noundef %name.i, ptr noundef %name3.i, i32 noundef 40) #8
  %41 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_parents.i, align 4
  %conv.i = zext i8 %42 to i32
  %num_parents6.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %call8.i.i, i32 %count.0100, i32 3
  %43 = ptrtoint ptr %num_parents6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv.i, ptr %num_parents6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp826.not.i = icmp eq i8 %42, 0
  br i1 %cmp826.not.i, label %if.end.i89.if.end14_crit_edge, label %if.end.i89.for.body.i_crit_edge

if.end.i89.for.body.i_crit_edge:                  ; preds = %if.end.i89
  br label %for.body.i

if.end.i89.if.end14_crit_edge:                    ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i89.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i89.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cmd_clk_get_all_info_response, ptr %response.i82, i32 0, i32 2, i32 %i.027.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  %arrayidx11.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %call8.i.i, i32 %count.0100, i32 2, i32 %i.027.i
  %46 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx11.i, align 4
  %inc.i = add nuw i32 %i.027.i, 1
  %47 = ptrtoint ptr %num_parents6.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_parents6.i, align 4
  %cmp8.i = icmp ult i32 %inc.i, %48
  br i1 %cmp8.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end14_crit_edge

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end14:                                         ; preds = %for.body.i.if.end14_crit_edge, %if.end.i89.if.end14_crit_edge
  %49 = ptrtoint ptr %response.i82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %response.i82, align 4
  %flags12.i = getelementptr %struct.tegra_bpmp_clk_info, ptr %call8.i.i, i32 %count.0100, i32 4
  %51 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flags12.i, align 4
  call void @llvm.lifetime.end.p0(i64 113, ptr nonnull %response.i82) #8
  %52 = ptrtoint ptr %num_parents6.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_parents6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %53)
  %cmp15 = icmp ugt i32 %53, 254
  br i1 %cmp15, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.6, i32 noundef %id.0103, i32 noundef %53, i32 noundef 255) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %56 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %name.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp24 = icmp eq i8 %57, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %holes.0102, 1
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %id.0103, ptr %arrayidx, align 4
  %inc29 = add i32 %count.0100, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.then26, %do.end19, %tegra_bpmp_clk_get_info.exit.thread
  %count.1 = phi i32 [ %count.0100, %do.end19 ], [ %count.0100, %if.then26 ], [ %inc29, %if.end27 ], [ %count.0100, %tegra_bpmp_clk_get_info.exit.thread ]
  %holes.1 = phi i32 [ %holes.0102, %do.end19 ], [ %inc, %if.then26 ], [ %holes.0102, %if.end27 ], [ %holes.0102, %tegra_bpmp_clk_get_info.exit.thread ]
  %inc30 = add i32 %id.0103, 1
  %cmp10.not = icmp ugt i32 %inc30, %18
  br i1 %cmp10.not, label %do.body31, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body31:                                        ; preds = %cleanup
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tegra_bpmp_probe_clocks, %if.then43)) #8
          to label %do.end47 [label %if.then43], !srcloc !57

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev20, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug230, ptr noundef %60, ptr noundef nonnull @.str.9, i32 noundef %holes.1) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %61 = ptrtoint ptr %clocksp to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call8.i.i, ptr %clocksp, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %do.end47, %if.end7.i.i.cleanup48_crit_edge, %do.end.cleanup48_crit_edge, %tegra_bpmp_clk_get_max_id.exit.thread
  %retval.0 = phi i32 [ %count.1, %do.end47 ], [ -12, %if.end7.i.i.cleanup48_crit_edge ], [ %retval.0.i79.ph, %tegra_bpmp_clk_get_max_id.exit.thread ], [ -12, %do.end.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_bpmp_clk_of_xlate(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clocks = getelementptr inbounds %struct.tegra_bpmp, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.cleanup6_crit_edge, label %for.body.lr.ph

entry.cleanup6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

for.body.lr.ph:                                   ; preds = %entry
  %clocks = getelementptr inbounds %struct.tegra_bpmp, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clocks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr ptr, ptr %5, i32 %i.018
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %id2 = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp3 = icmp eq i32 %9, %1
  br i1 %cmp3, label %if.end.cleanup6_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.cleanup6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup6_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup6_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.cleanup6_crit_edge, %if.end.cleanup6_crit_edge, %entry.cleanup6_crit_edge
  %retval.2 = phi ptr [ null, %entry.cleanup6_crit_edge ], [ %7, %if.end.cleanup6_crit_edge ], [ null, %for.inc.cleanup6_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds i8, ptr %request.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %or.i = or i32 %1, 117440512
  %10 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %request.i, align 4
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 22, ptr %msg.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request.i, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %7, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.i = icmp slt i32 %19, 0
  %..i = select i1 %cmp14.i, i32 -22, i32 0
  br label %tegra_bpmp_clk_transfer.exit

tegra_bpmp_clk_transfer.exit:                     ; preds = %if.else.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bpmp_clk_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %8 = getelementptr inbounds i8, ptr %request.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 12)
  %or.i = or i32 %1, 134217728
  %10 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %request.i, align 4
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 22, ptr %msg.i, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %request.i, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %7, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %3, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.else.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.i = icmp slt i32 %19, 0
  br i1 %cmp14.i, label %if.else.i.do.end_crit_edge, label %tegra_bpmp_clk_transfer.exit

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra_bpmp_clk_transfer.exit:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  br label %if.end

do.end:                                           ; preds = %if.else.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -22, %if.else.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %20 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bpmp, align 4
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %call4 = call ptr @clk_hw_get_name(ptr noundef %hw) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.14, ptr noundef %call4, i32 noundef %retval.0.i.ph) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %tegra_bpmp_clk_transfer.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_is_prepared(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_is_enabled_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %response, align 4, !annotation !56
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds i8, ptr %request.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %or.i = or i32 %2, 100663296
  %11 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %request.i, align 4
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 22, ptr %msg.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %request.i, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %response, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %8, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %4, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

if.else.i:                                        ; preds = %entry
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14.i = icmp slt i32 %20, 0
  br i1 %cmp14.i, label %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.end

if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

tegra_bpmp_clk_transfer.exit.thread:              ; preds = %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge ], [ -22, %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %21 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %response, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tegra_bpmp_clk_transfer.exit.thread
  %retval.0 = phi i32 [ %22, %if.end ], [ %retval.0.i.ph, %tegra_bpmp_clk_transfer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_get_rate_response, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %response, align 8, !annotation !56
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds i8, ptr %request.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %or.i = or i32 %2, 16777216
  %11 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %request.i, align 4
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 22, ptr %msg.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %request.i, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %response, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %8, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %4, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

if.else.i:                                        ; preds = %entry
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14.i = icmp slt i32 %20, 0
  br i1 %cmp14.i, label %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.end

if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

tegra_bpmp_clk_transfer.exit.thread:              ; preds = %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge ], [ -22, %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %21 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %response, align 8
  %conv = trunc i64 %22 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tegra_bpmp_clk_transfer.exit.thread
  %retval.0 = phi i32 [ %conv, %if.end ], [ %retval.0.i.ph, %tegra_bpmp_clk_transfer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_round_rate_response, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %response, align 8, !annotation !56
  %conv = zext i32 %rate to i64
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  %5 = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %or.i = or i32 %2, 50331648
  %10 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %request.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %request.sroa.5.0..sroa_idx = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %request.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv, ptr %request.sroa.5.0..sroa_idx, align 4
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 22, ptr %msg.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %request.i, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %response, ptr %8, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %9, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %4, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

if.else.i:                                        ; preds = %entry
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.i = icmp slt i32 %21, 0
  br i1 %cmp14.i, label %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, label %if.end

if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit.thread

tegra_bpmp_clk_transfer.exit.thread:              ; preds = %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit.thread_crit_edge ], [ -22, %if.else.i.tegra_bpmp_clk_transfer.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %22 = ptrtoint ptr %response to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %response, align 8
  %conv12 = trunc i64 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tegra_bpmp_clk_transfer.exit.thread
  %retval.0 = phi i32 [ %conv12, %if.end ], [ %retval.0.i.ph, %tegra_bpmp_clk_transfer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_set_parent_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %response, align 4, !annotation !56
  %parents = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parents, align 4
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i32, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %7 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  %9 = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %12 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %14, align 4
  %or.i = or i32 %6, 83886080
  %16 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %request.i, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %4, ptr %9, align 4
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %18, align 4
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 22, ptr %msg.i, align 4
  %21 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %request.i, ptr %10, align 4
  %22 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 16, ptr %11, align 4
  %23 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %response, ptr %12, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %13, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %8, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp14.i = icmp slt i32 %26, 0
  %..i = select i1 %cmp14.i, i32 -22, i32 0
  br label %tegra_bpmp_clk_transfer.exit

tegra_bpmp_clk_transfer.exit:                     ; preds = %if.else.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tegra_bpmp_clk_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_get_parent_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %response, align 4, !annotation !56
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %5 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds i8, ptr %request.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 12)
  %or.i = or i32 %2, 67108864
  %11 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i, ptr %request.i, align 4
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 22, ptr %msg.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %request.i, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %response, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %8, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %4, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end_crit_edge, label %if.else.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.else.i:                                        ; preds = %entry
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14.i = icmp slt i32 %20, 0
  br i1 %cmp14.i, label %if.else.i.do.end_crit_edge, label %tegra_bpmp_clk_transfer.exit

if.else.i.do.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

tegra_bpmp_clk_transfer.exit:                     ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %num_parents = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 3
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp627.not = icmp eq i32 %22, 0
  br i1 %cmp627.not, label %tegra_bpmp_clk_transfer.exit.cleanup_crit_edge, label %for.body.lr.ph

tegra_bpmp_clk_transfer.exit.cleanup_crit_edge:   ; preds = %tegra_bpmp_clk_transfer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %tegra_bpmp_clk_transfer.exit
  %parents = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 4
  %23 = ptrtoint ptr %parents to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parents, align 4
  %25 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %response, align 4
  br label %for.body

do.end:                                           ; preds = %if.else.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %entry.do.end_crit_edge ], [ -22, %if.else.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  %27 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bpmp, align 4
  %dev = getelementptr inbounds %struct.tegra_bpmp, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %call5 = call ptr @clk_hw_get_name(ptr noundef %hw) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.16, ptr noundef %call5, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %24, i32 %i.028
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %26)
  %cmp7 = icmp eq i32 %32, %26
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %i.028 to i8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %22
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8, %do.end, %tegra_bpmp_clk_transfer.exit.cleanup_crit_edge
  %retval.0 = phi i8 [ -1, %do.end ], [ %conv, %if.then8 ], [ -1, %tegra_bpmp_clk_transfer.exit.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %response) #8
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %request.i = alloca %struct.mrq_clk_request, align 4
  %msg.i = alloca %struct.tegra_bpmp_message, align 4
  %response = alloca %struct.cmd_clk_set_rate_response, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %response) #8
  %0 = ptrtoint ptr %response to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %response, align 8, !annotation !56
  %conv = zext i32 %rate to i64
  %id = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_clk, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpmp, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %request.i) #8
  %5 = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %6 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 1, i32 1
  %8 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2
  %9 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg.i, i32 0, i32 2, i32 1
  %or.i = or i32 %2, 33554432
  %10 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i, ptr %request.i, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %5, align 4
  %request.sroa.5.0..sroa_idx = getelementptr inbounds %struct.mrq_clk_request, ptr %request.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %request.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %conv, ptr %request.sroa.5.0..sroa_idx, align 4
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %13, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 22, ptr %msg.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %request.i, ptr %6, align 4
  %17 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16, ptr %7, align 4
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %response, ptr %8, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %9, align 4
  %call.i = call i32 @tegra_bpmp_transfer(ptr noundef %4, ptr noundef nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.tegra_bpmp_clk_transfer.exit_crit_edge, label %if.else.i

entry.tegra_bpmp_clk_transfer.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_clk_transfer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp14.i = icmp slt i32 %21, 0
  %..i = select i1 %cmp14.i, i32 -22, i32 0
  br label %tegra_bpmp_clk_transfer.exit

tegra_bpmp_clk_transfer.exit:                     ; preds = %if.else.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.tegra_bpmp_clk_transfer.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %request.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %response) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 611, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tegra_bpmp_init_clocks.__UNIQUE_ID_ddebug231, !1, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 412, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug229, !7, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 426, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @tegra_bpmp_probe_clocks._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_bpmp_probe_clocks._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 445, i32 2}
!18 = !{ptr @tegra_bpmp_probe_clocks.__UNIQUE_ID_ddebug230, !17, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 560, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_bpmp_register_clocks._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_bpmp_register_clocks._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 522, i32 4}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tegra_bpmp_clk_register._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @tegra_bpmp_clk_register._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tegra_bpmp_clk_mux_rate_ops, !30, !"tegra_bpmp_clk_mux_rate_ops", i1 false, i1 false}
!30 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 297, i32 29}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 119, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tegra_bpmp_clk_unprepare._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_bpmp_clk_unprepare._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 238, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @tegra_bpmp_clk_get_parent._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_bpmp_clk_get_parent._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tegra_bpmp_clk_mux_ops, !42, !"tegra_bpmp_clk_mux_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 279, i32 29}
!43 = !{ptr @tegra_bpmp_clk_rate_ops, !44, !"tegra_bpmp_clk_rate_ops", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 288, i32 29}
!45 = !{ptr @tegra_bpmp_clk_gate_ops, !46, !"tegra_bpmp_clk_gate_ops", i1 false, i1 false}
!46 = !{!"../drivers/clk/tegra/clk-bpmp.c", i32 272, i32 29}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i64 2148929476, i64 2148929481, i64 2148929494, i64 2148929538, i64 2148929572, i64 2148929593}
!58 = !{!"branch_weights", i32 1, i32 2000}
