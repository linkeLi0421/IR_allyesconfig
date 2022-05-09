; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clk.c_pt.bc'
source_filename = "../drivers/clk/ti/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_iomap = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.clk_init_item = type { ptr, ptr, ptr, %struct.list_head }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@ti_clk_ll_ops = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ti_clk_setup_ll_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: Attempt to register ll_ops multiple times.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_clk_setup_ll_ops\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/clk/ti/clk.c\00", [43 x i8] zeroinitializer }, align 32
@ti_clk_setup_ll_ops._entry_ptr = internal global ptr @ti_clk_setup_ll_ops._entry, section ".printk_index", align 4
@ti_dt_clocks_register.clkctrl_nodes_missing = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ti_dt_clocks_register.has_clkctrl_data = internal global { i1, [31 x i8] } zeroinitializer, align 32
@ti_dt_clocks_register.compat_mode = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ti_dt_clocks_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Bad number of tags on %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_dt_clocks_register\00", [42 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry_ptr = internal global ptr @ti_dt_clocks_register._entry, section ".printk_index", align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Bad tag in %s at %d: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry_ptr.9 = internal global ptr @ti_dt_clocks_register._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,clkctrl\00", [21 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014%s: missing clkctrl nodes, please update your dts.\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry_ptr.13 = internal global ptr @ti_dt_clocks_register._entry.11, section ".printk_index", align 4
@ti_dt_clocks_register._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: failed to lookup clock node %s, ret=%ld\0A\00", [49 x i8] zeroinitializer }, align 32
@ti_dt_clocks_register._entry_ptr.16 = internal global ptr @ti_dt_clocks_register._entry.14, section ".printk_index", align 4
@ti_clk_retry_init.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_clk_retry_init\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOFn: adding to retry list...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: %pOFn: adding to retry list...\0A\00", [60 x i8] zeroinitializer }, align 32
@retry_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @retry_list, ptr @retry_list }, [24 x i8] zeroinitializer }, align 32
@clocks_node_ptr = internal global { [7 x ptr], [36 x i8] } zeroinitializer, align 32
@ti_clk_get_reg_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: clk-provider not found for %pOFn!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_clk_get_reg_addr\00", [44 x i8] zeroinitializer }, align 32
@ti_clk_get_reg_addr._entry_ptr = internal global ptr @ti_clk_get_reg_addr._entry, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ti_clk_get_reg_addr._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: %pOFn must have reg[%d]!\0A\00", [32 x i8] zeroinitializer }, align 32
@ti_clk_get_reg_addr._entry_ptr.25 = internal global ptr @ti_clk_get_reg_addr._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@omap2_clk_provider_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: %pOFn missing 'clocks' child node.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap2_clk_provider_init\00", [40 x i8] zeroinitializer }, align 32
@omap2_clk_provider_init._entry_ptr = internal global ptr @omap2_clk_provider_init._entry, section ".printk_index", align 4
@clk_memmaps = internal global { [7 x ptr], [36 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@__func__.omap2_clk_legacy_provider_init = private unnamed_addr constant [31 x i8] c"omap2_clk_legacy_provider_init\00", align 1
@ti_dt_clk_init_retry_clks.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ti_dt_clk_init_retry_clks\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"retry-init: %pOFn\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: retry-init: %pOFn\0A\00", [41 x i8] zeroinitializer }, align 32
@simple_clk_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@ti_clk_features = dso_local global { %struct.ti_clk_features, [40 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not find init clock %s\0A\00", [34 x i8] zeroinitializer }, align 32
@clk_hw_omap_clocks = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @clk_hw_omap_clocks, ptr @clk_hw_omap_clocks }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 58]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"ti_clk_ll_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 36, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 110, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [44 x i8] c"ti_dt_clocks_register.clkctrl_nodes_missing\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [39 x i8] c"ti_dt_clocks_register.has_clkctrl_data\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"compat_mode\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 145, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 158, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 174, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 176, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 185, i32 5 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 201, i32 13 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 208, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 213, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 242, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [11 x i8] c"retry_list\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 226, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"clocks_node_ptr\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 37, i32 28 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 277, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 283, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 284, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 329, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 331, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [12 x i8] c"clk_memmaps\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 46, i32 26 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 363, i32 9 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 387, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"ti_clk_features\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 39, i32 24 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 462, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c"clk_hw_omap_clocks\00", align 1
@___asan_gen_.157 = private constant [24 x i8] c"../drivers/clk/ti/clk.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 35, i32 8 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @omap2_clk_provider_init._entry, ptr @omap2_clk_provider_init._entry_ptr, ptr @ti_clk_get_reg_addr._entry, ptr @ti_clk_get_reg_addr._entry.23, ptr @ti_clk_get_reg_addr._entry_ptr, ptr @ti_clk_get_reg_addr._entry_ptr.25, ptr @ti_clk_setup_ll_ops._entry, ptr @ti_clk_setup_ll_ops._entry_ptr, ptr @ti_dt_clocks_register._entry, ptr @ti_dt_clocks_register._entry.11, ptr @ti_dt_clocks_register._entry.14, ptr @ti_dt_clocks_register._entry.7, ptr @ti_dt_clocks_register._entry_ptr, ptr @ti_dt_clocks_register._entry_ptr.13, ptr @ti_dt_clocks_register._entry_ptr.16, ptr @ti_dt_clocks_register._entry_ptr.9, ptr @ti_clk_ll_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ti_dt_clocks_register.clkctrl_nodes_missing, ptr @ti_dt_clocks_register.has_clkctrl_data, ptr @ti_dt_clocks_register.compat_mode, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @retry_list, ptr @clocks_node_ptr, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @clk_memmaps, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ti_clk_features, ptr @.str.33, ptr @clk_hw_omap_clocks], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_ll_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_setup_ll_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register.clkctrl_nodes_missing to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register.has_clkctrl_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register.compat_mode to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dt_clocks_register._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @retry_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clocks_node_ptr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_get_reg_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_get_reg_addr._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clk_provider_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_memmaps to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_clk_features to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_hw_omap_clocks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_setup_ll_ops(ptr noundef %ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %ops, ptr @ti_clk_ll_ops, align 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @clk_memmap_readl, ptr %ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %ops, i32 0, i32 1
  %2 = ptrtoint ptr %clk_writel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @clk_memmap_writel, ptr %clk_writel, align 4
  %clk_rmw = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %ops, i32 0, i32 2
  %3 = ptrtoint ptr %clk_rmw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @clk_memmap_rmw, ptr %clk_rmw, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_memmap_readl(ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !92
  %index = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 2
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index, align 2
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #12, !srcloc !93
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %if.end12

if.else:                                          ; preds = %entry
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.else6, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset, align 4
  %conv = zext i16 %13 to i32
  %call5 = call i32 @regmap_read(ptr noundef nonnull %11, i32 noundef %conv, ptr noundef nonnull %val) #12
  br label %if.end12

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mem = getelementptr inbounds %struct.clk_iomap, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mem, align 4
  %offset8 = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %16 = ptrtoint ptr %offset8 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset8, align 4
  %conv9 = zext i16 %17 to i32
  %add.ptr = getelementptr i8, ptr %15, i32 %conv9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !93
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else6, %if.then3, %if.then
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_memmap_writel(i32 noundef %val, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %val)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %6) #12, !srcloc !94
  br label %if.end8

if.else:                                          ; preds = %entry
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %offset, align 4
  %conv = zext i16 %10 to i32
  %call = tail call i32 @regmap_write(ptr noundef nonnull %8, i32 noundef %conv, i32 noundef %val) #12
  br label %if.end8

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.bswap.i32(i32 %val)
  %mem = getelementptr inbounds %struct.clk_iomap, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %offset6 = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %14 = ptrtoint ptr %offset6 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset6, align 4
  %conv7 = zext i16 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #12, !srcloc !94
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_memmap_rmw(i32 noundef %val, i32 noundef %mask, ptr nocapture noundef readonly %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 2
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %5) #12, !srcloc !93
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %neg.i = xor i32 %mask, -1
  %and.i = and i32 %7, %neg.i
  %or.i = or i32 %and.i, %val
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %8) #12, !srcloc !94
  br label %if.end8

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.else5, label %if.then3

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %offset, align 4
  %conv = zext i16 %12 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef nonnull %10, i32 noundef %conv, i32 noundef %mask, i32 noundef %val, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end8

if.else5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mem = getelementptr inbounds %struct.clk_iomap, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mem, align 4
  %offset6 = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %15 = ptrtoint ptr %offset6 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %offset6, align 4
  %conv7 = zext i16 %16 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !93
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #12
  %neg.i20 = xor i32 %mask, -1
  %and.i21 = and i32 %18, %neg.i20
  %or.i22 = or i32 %and.i21, %val
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i22) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #12, !srcloc !94
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then3, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_dt_clocks_register(ptr noundef %oclks) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  %buf = alloca [64 x i8], align 1
  %tags = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #12
  %0 = call ptr @memset(ptr %clkspec, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #12
  %1 = call ptr @memset(ptr %buf, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tags) #12
  %2 = load i32, ptr @ti_clk_features, align 4
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 1
  store i8 %5, ptr @ti_dt_clocks_register.compat_mode, align 1
  %node_name152 = getelementptr inbounds %struct.ti_dt_clk, ptr %oclks, i32 0, i32 1
  %6 = ptrtoint ptr %node_name152 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node_name152, align 4
  %cmp.not153 = icmp eq ptr %7, null
  br i1 %cmp.not153, label %entry.cleanup90_crit_edge, label %for.body.lr.ph

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

for.body.lr.ph:                                   ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc87.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %7, %for.body.lr.ph ], [ %31, %for.inc87.for.body_crit_edge ]
  %node_name156 = phi ptr [ %node_name152, %for.body.lr.ph ], [ %node_name, %for.inc87.for.body_crit_edge ]
  %c.0154 = phi ptr [ %oclks, %for.body.lr.ph ], [ %incdec.ptr88, %for.inc87.for.body_crit_edge ]
  %call2 = call ptr @strcpy(ptr noundef nonnull %buf, ptr noundef nonnull %8) #16
  %9 = ptrtoint ptr %tags to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %tags, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %for.body
  %ptr.0 = phi ptr [ %incdec.ptr, %if.end17 ], [ %buf, %for.body ]
  %num_args.0 = phi i32 [ %num_args.1, %if.end17 ], [ 0, %for.body ]
  %10 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ptr.0, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %while.cond.if.end17_crit_edge [
    i8 0, label %while.end
    i8 58, label %if.then
  ]

while.cond.if.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_args.0)
  %cmp10 = icmp sgt i32 %num_args.0, 1
  br i1 %cmp10, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %node_name156 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node_name156, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %14) #15
  br label %cleanup90

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %ptr.0, i32 1
  %inc15 = add nsw i32 %num_args.0, 1
  %arrayidx16 = getelementptr [2 x ptr], ptr %tags, i32 0, i32 %num_args.0
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx16, align 4
  %16 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ptr.0, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end, %while.cond.if.end17_crit_edge
  %num_args.1 = phi i32 [ %inc15, %if.end ], [ %num_args.0, %while.cond.if.end17_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %ptr.0, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_args.0)
  %tobool18.not = icmp eq i32 %num_args.0, 0
  br i1 %tobool18.not, label %if.end35.thread, label %land.lhs.true

if.end35.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call24142 = call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull %buf) #12
  %17 = ptrtoint ptr %clkspec to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24142, ptr %clkspec, align 4
  %18 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %num_args.0, ptr %args_count, align 4
  br label %for.end57

land.lhs.true:                                    ; preds = %while.end
  %.b141 = load i1, ptr @ti_dt_clocks_register.clkctrl_nodes_missing, align 1
  br i1 %.b141, label %land.lhs.true.for.inc87_crit_edge, label %land.lhs.true26

land.lhs.true.for.inc87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc87

land.lhs.true26:                                  ; preds = %land.lhs.true
  %call24 = call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull %buf) #12
  %19 = load i8, ptr @ti_dt_clocks_register.compat_mode, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %land.lhs.true26.if.end35_crit_edge, label %if.then29

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %land.lhs.true26
  %call30 = call ptr @of_get_child_by_name(ptr noundef %call24, ptr noundef nonnull @.str.5) #12
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.then32, label %if.then29.if.end34_crit_edge

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %call33 = call ptr @of_get_child_by_name(ptr noundef %call24, ptr noundef nonnull @.str.6) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.then29.if.end34_crit_edge
  %node.0 = phi ptr [ %call30, %if.then29.if.end34_crit_edge ], [ %call33, %if.then32 ]
  call void @of_node_put(ptr noundef %call24) #12
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %land.lhs.true26.if.end35_crit_edge
  %node.1 = phi ptr [ %node.0, %if.end34 ], [ %call24, %land.lhs.true26.if.end35_crit_edge ]
  %20 = ptrtoint ptr %clkspec to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node.1, ptr %clkspec, align 4
  %21 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %num_args.0, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_args.0)
  %cmp37150 = icmp sgt i32 %num_args.0, 0
  br i1 %cmp37150, label %if.end35.for.body39_crit_edge, label %if.end35.for.end57_crit_edge

if.end35.for.end57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

if.end35.for.body39_crit_edge:                    ; preds = %if.end35
  br label %for.body39

for.body39:                                       ; preds = %for.inc55.for.body39_crit_edge, %if.end35.for.body39_crit_edge
  %i.1151 = phi i32 [ %inc56, %for.inc55.for.body39_crit_edge ], [ 0, %if.end35.for.body39_crit_edge ]
  %arrayidx40 = getelementptr [2 x ptr], ptr %tags, i32 0, i32 %i.1151
  %22 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1151)
  %tobool41.not = icmp eq i32 %i.1151, 0
  %cond = select i1 %tobool41.not, i32 16, i32 10
  %add.ptr43 = getelementptr i32, ptr %args, i32 %i.1151
  %call44 = call i32 @kstrtoint(ptr noundef %23, i32 noundef %cond, ptr noundef %add.ptr43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %for.inc55, label %do.end49

do.end49:                                         ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %node_name156 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %node_name156, align 4
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %25, i32 noundef %i.1151, ptr noundef %23) #15
  call void @of_node_put(ptr noundef %node.1) #12
  br label %cleanup90

for.inc55:                                        ; preds = %for.body39
  %inc56 = add nuw nsw i32 %i.1151, 1
  %exitcond.not = icmp eq i32 %inc56, %num_args.0
  br i1 %exitcond.not, label %for.inc55.for.end57_crit_edge, label %for.inc55.for.body39_crit_edge

for.inc55.for.body39_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body39

for.inc55.for.end57_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end57

for.end57:                                        ; preds = %for.inc55.for.end57_crit_edge, %if.end35.for.end57_crit_edge, %if.end35.thread
  %node.1165 = phi ptr [ %call24142, %if.end35.thread ], [ %node.1, %if.end35.for.end57_crit_edge ], [ %node.1, %for.inc55.for.end57_crit_edge ]
  %call58 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #12
  call void @of_node_put(ptr noundef %node.1165) #12
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then60

if.then60:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #14
  %clk61 = getelementptr inbounds %struct.clk_lookup, ptr %c.0154, i32 0, i32 3
  %26 = ptrtoint ptr %clk61 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call58, ptr %clk61, align 4
  call void @clkdev_add(ptr noundef %c.0154) #12
  br label %for.inc87

if.else:                                          ; preds = %for.end57
  br i1 %tobool18.not, label %if.else.do.end81_crit_edge, label %land.lhs.true64

if.else.do.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

land.lhs.true64:                                  ; preds = %if.else
  %.b139140 = load i1, ptr @ti_dt_clocks_register.has_clkctrl_data, align 1
  br i1 %.b139140, label %land.lhs.true64.do.end81_crit_edge, label %if.then66

land.lhs.true64.do.end81_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end81

if.then66:                                        ; preds = %land.lhs.true64
  %call68 = call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #12
  %tobool69.not = icmp eq ptr %call68, null
  br i1 %tobool69.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ti_dt_clocks_register.has_clkctrl_data, align 1
  call void @of_node_put(ptr noundef nonnull %call68) #12
  br label %do.end81

cleanup:                                          ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @ti_dt_clocks_register.clkctrl_nodes_missing, align 1
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.4) #15
  br label %for.inc87

do.end81:                                         ; preds = %cleanup.thread, %land.lhs.true64.do.end81_crit_edge, %if.else.do.end81_crit_edge
  %27 = ptrtoint ptr %node_name156 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %node_name156, align 4
  %29 = ptrtoint ptr %call58 to i32
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef %29) #15
  br label %for.inc87

for.inc87:                                        ; preds = %do.end81, %cleanup, %if.then60, %land.lhs.true.for.inc87_crit_edge
  %incdec.ptr88 = getelementptr %struct.ti_dt_clk, ptr %c.0154, i32 1
  %node_name = getelementptr %struct.ti_dt_clk, ptr %c.0154, i32 1, i32 1
  %30 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %node_name, align 4
  %cmp.not = icmp eq ptr %31, null
  br i1 %cmp.not, label %for.inc87.cleanup90_crit_edge, label %for.inc87.for.body_crit_edge

for.inc87.for.body_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc87.cleanup90_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup90

cleanup90:                                        ; preds = %for.inc87.cleanup90_crit_edge, %do.end49, %do.end, %entry.cleanup90_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tags) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ti_clk_get_features() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @ti_clk_features
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef %func) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_clk_retry_init.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_clk_retry_init, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ti_clk_retry_init.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %node) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #17
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %node, ptr %call7.i.i, align 8
  %func8 = getelementptr inbounds %struct.clk_init_item, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %func8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %func8, align 8
  %user9 = getelementptr inbounds %struct.clk_init_item, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %user9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %user, ptr %user9, align 4
  %link = getelementptr inbounds %struct.clk_init_item, ptr %call7.i.i, i32 0, i32 3
  %4 = load ptr, ptr @retry_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef nonnull @retry_list, ptr noundef %4) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %link, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.clk_init_item, ptr %call7.i.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @retry_list, ptr %prev3.i.i, align 8
  store volatile ptr %link, ptr @retry_list, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef %index, ptr nocapture noundef writeonly %reg) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !92
  %parent = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 6
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 4
  %3 = load ptr, ptr @clocks_node_ptr, align 4
  %cmp1 = icmp eq ptr %3, %2
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc:                                          ; preds = %entry
  %4 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 1), align 4
  %cmp1.1 = icmp eq ptr %4, %2
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %5 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 2), align 4
  %cmp1.2 = icmp eq ptr %5, %2
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %6 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 3), align 4
  %cmp1.3 = icmp eq ptr %6, %2
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %7 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 4), align 4
  %cmp1.4 = icmp eq ptr %7, %2
  br i1 %cmp1.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %8 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 5), align 4
  %cmp1.5 = icmp eq ptr %8, %2
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.5

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %9 = load ptr, ptr getelementptr inbounds ([7 x ptr], ptr @clocks_node_ptr, i32 0, i32 6), align 4
  %cmp1.6 = icmp eq ptr %9, %2
  br i1 %cmp1.6, label %for.inc.5.if.end4_crit_edge, label %do.end

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

do.end:                                           ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %node) #15
  br label %cleanup

if.end4:                                          ; preds = %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.029.lcssa = phi i8 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ]
  %index5 = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 2
  %10 = ptrtoint ptr %index5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %i.029.lcssa, ptr %index5, align 2
  %call6 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.22, i32 noundef %index, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, ptr noundef %node, i32 noundef %index) #15
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %conv14 = trunc i32 %12 to i16
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %reg, i32 0, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv14, ptr %offset, align 4
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %reg, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end10, %do.end
  %retval.0 = phi i32 [ -2, %do.end ], [ -22, %do.end10 ], [ 0, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_clk_latch(ptr noundef %reg, i8 noundef signext %shift) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shift)
  %cmp = icmp slt i8 %shift, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv9 = zext i8 %shift to i32
  %shl = shl nuw i32 1, %conv9
  %0 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_rmw = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %clk_rmw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk_rmw, align 4
  tail call void %2(i32 noundef %shl, i32 noundef %shl, ptr noundef %reg) #12
  %3 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_rmw3 = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk_rmw3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_rmw3, align 4
  tail call void %5(i32 noundef 0, i32 noundef %shl, ptr noundef %reg) #12
  %6 = load ptr, ptr @ti_clk_ll_ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call = tail call i32 %8(ptr noundef %reg) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_provider_init(ptr noundef %parent, i32 noundef %index, ptr noundef %syscon, ptr noundef %mem) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_child_by_name(ptr noundef %parent, ptr noundef nonnull @.str.26) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %parent) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [7 x ptr], ptr @clocks_node_ptr, i32 0, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 8) #17
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %syscon, ptr %call7.i.i, align 8
  %mem6 = getelementptr inbounds %struct.clk_iomap, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %mem6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mem, ptr %mem6, align 4
  %arrayidx7 = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %index
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clk_legacy_provider_init(i32 noundef %index, ptr noundef %mem) local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef 8, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.omap2_clk_legacy_provider_init, i32 noundef 8) #18
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %mem1 = getelementptr inbounds %struct.clk_iomap, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mem, ptr %mem1, align 4
  %arrayidx = getelementptr [7 x ptr], ptr @clk_memmaps, i32 0, i32 %index
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_dt_clk_init_retry_clks() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr @retry_list, align 4
  %cmp.i38 = icmp eq ptr %0, @retry_list
  br i1 %cmp.i38, label %entry.while.end_crit_edge, label %entry.do.body.preheader_crit_edge

entry.do.body.preheader_crit_edge:                ; preds = %entry
  br label %do.body.preheader

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.body.preheader:                                ; preds = %for.end.do.body.preheader_crit_edge, %entry.do.body.preheader_crit_edge
  %1 = phi ptr [ %19, %for.end.do.body.preheader_crit_edge ], [ %0, %entry.do.body.preheader_crit_edge ]
  %retries.039 = phi i32 [ %dec, %for.end.do.body.preheader_crit_edge ], [ 5, %entry.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.preheader
  %.pn.in34 = phi ptr [ %.pn37, %list_del.exit.do.body_crit_edge ], [ %1, %do.body.preheader ]
  %retry.036 = getelementptr i8, ptr %.pn.in34, i32 -12
  %2 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_dt_clk_init_retry_clks.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti_dt_clk_init_retry_clks, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !96

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %retry.036 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %retry.036, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ti_dt_clk_init_retry_clks.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %func = getelementptr i8, ptr %.pn.in34, i32 -4
  %5 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %func, align 4
  %user = getelementptr i8, ptr %.pn.in34, i32 -8
  %7 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %user, align 4
  %9 = ptrtoint ptr %retry.036 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %retry.036, align 4
  tail call void %6(ptr noundef %8, ptr noundef %10) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %retry.036) #12
  %cmp.not = icmp eq ptr %.pn37, @retry_list
  br i1 %cmp.not, label %for.end, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %list_del.exit
  %dec = add nsw i32 %retries.039, -1
  %19 = load volatile ptr, ptr @retry_list, align 4
  %cmp.i = icmp eq ptr %19, @retry_list
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool1.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp.i, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %for.end.while.end_crit_edge, label %for.end.do.body.preheader_crit_edge

for.end.do.body.preheader_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.preheader

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_clk_add_aliases() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  %clkspec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @simple_clk_match_table, ptr noundef null) #12
  %tobool.not9 = icmp eq ptr %call.i, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %clkspec, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %np.010 = phi ptr [ %call.i8, %for.body.for.body_crit_edge ], [ %call.i, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec) #12
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %2 = ptrtoint ptr %clkspec to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %np.010, ptr %clkspec, align 4
  %call2 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec) #12
  %3 = ptrtoint ptr %np.010 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np.010, align 4
  %call3 = call i32 @ti_clk_add_alias(ptr noundef null, ptr noundef %call2, ptr noundef %4)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec) #12
  %call.i8 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.010, ptr noundef nonnull @simple_clk_match_table, ptr noundef null) #12
  %tobool.not = icmp eq ptr %call.i8, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ti_clk_add_alias(ptr noundef readonly %dev, ptr noundef %clk, ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %clk, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %clk, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %clk to i32
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #17
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %tobool8.not = icmp eq ptr %dev, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then9.dev_name.exit_crit_edge

if.then9.dev_name.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then9.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then9.dev_name.exit_crit_edge ]
  %dev_id = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i, ptr %dev_id, align 8
  br label %if.end11

if.end11:                                         ; preds = %dev_name.exit, %if.end7.if.end11_crit_edge
  %con_id = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %con_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %con, ptr %con_id, align 4
  %clk12 = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %clk, ptr %clk12, align 8
  tail call void @clkdev_add(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end3.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then1 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ti_clk_setup_features(ptr nocapture noundef readonly %features) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @ti_clk_features, ptr %features, i32 24)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clk_enable_init_clocks(ptr nocapture noundef readonly %clk_names, i8 noundef zeroext %num_clocks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %num_clocks to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %num_clocks)
  %cmp32.not = icmp eq i8 %num_clocks, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clk_names, i32 %i.033
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef %1) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end24.critedge, !prof !97

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 463, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %3) #12
  br label %for.inc

if.end24.critedge:                                ; preds = %for.body
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.critedge.for.inc_crit_edge

if.end24.critedge.for.inc_crit_edge:              ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end.i:                                         ; preds = %if.end24.critedge
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %call) #12
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i, %if.end.i.for.inc_crit_edge, %if.end24.critedge.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ti_clk_register(ptr noundef %dev, ptr noundef %hw, ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_register(ptr noundef %dev, ptr noundef %hw) #12
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end3.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #17
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then3, label %if.end7.i

if.end7.i:                                        ; preds = %if.end3.i
  %tobool8.not.i = icmp eq ptr %dev, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then9.i.dev_name.exit.i_crit_edge

if.then9.i.dev_name.exit.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then9.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %4, %if.end.i.i ], [ %2, %if.then9.i.dev_name.exit.i_crit_edge ]
  %dev_id.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i.i, ptr %dev_id.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %dev_name.exit.i, %if.end7.i.if.end11.i_crit_edge
  %con_id.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %con_id.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %con, ptr %con_id.i, align 4
  %clk12.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk12.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %clk12.i, align 8
  tail call void @clkdev_add(ptr noundef nonnull %call7.i.i.i) #12
  br label %cleanup

if.then3:                                         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unregister(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end11.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end11.i ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ti_clk_register_omap_hw(ptr noundef %dev, ptr noundef %hw, ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_register(ptr noundef %dev, ptr noundef %hw) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end_crit_edge, label %if.end3.i.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end3.i.i:                                      ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #17
  %tobool5.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool5.not.i.i, label %ti_clk_register.exit.thread, label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end3.i.i
  %tobool8.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool8.not.i.i, label %if.end7.i.i.ti_clk_register.exit_crit_edge, label %if.then9.i.i

if.end7.i.i.ti_clk_register.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ti_clk_register.exit

if.then9.i.i:                                     ; preds = %if.end7.i.i
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then9.i.i.dev_name.exit.i.i_crit_edge

if.then9.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then9.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %4, %if.end.i.i.i ], [ %2, %if.then9.i.i.dev_name.exit.i.i_crit_edge ]
  %dev_id.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev_id.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %retval.0.i.i.i, ptr %dev_id.i.i, align 8
  br label %ti_clk_register.exit

ti_clk_register.exit.thread:                      ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unregister(ptr noundef nonnull %call.i) #12
  br label %cleanup

ti_clk_register.exit:                             ; preds = %dev_name.exit.i.i, %if.end7.i.i.ti_clk_register.exit_crit_edge
  %con_id.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %con_id.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %con, ptr %con_id.i.i, align 4
  %clk12.i.i = getelementptr inbounds %struct.clk_lookup, ptr %call7.i.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk12.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %clk12.i.i, align 8
  tail call void @clkdev_add(ptr noundef nonnull %call7.i.i.i.i) #12
  br label %if.end

if.end:                                           ; preds = %ti_clk_register.exit, %if.end.i.if.end_crit_edge
  %node = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 1
  %8 = load ptr, ptr @clk_hw_omap_clocks, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @clk_hw_omap_clocks, ptr noundef %8) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @clk_hw_omap_clocks, ptr %prev3.i.i, align 4
  store volatile ptr %node, ptr @clk_hw_omap_clocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end.cleanup_crit_edge, %ti_clk_register.exit.thread, %entry.cleanup_crit_edge
  %retval.0.i8 = phi ptr [ inttoptr (i32 -12 to ptr), %ti_clk_register.exit.thread ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_for_each(ptr nocapture noundef readonly %fn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn8 = load ptr, ptr @clk_hw_omap_clocks, align 4
  %cmp.not9 = icmp eq ptr %.pn8, @clk_hw_omap_clocks
  br i1 %cmp.not9, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond:                                         ; preds = %for.body
  %0 = ptrtoint ptr %.pn10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn10, align 4
  %cmp.not = icmp eq ptr %.pn, @clk_hw_omap_clocks
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn10 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %hw.0 = getelementptr i8, ptr %.pn10, i32 -12
  %call = tail call i32 %fn(ptr noundef %hw.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ -1, %entry.for.end_crit_edge ], [ %call, %for.body.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef readnone %hw) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @clk_hw_omap_clocks, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @clk_hw_omap_clocks
  %oclk.0 = getelementptr i8, ptr %.pn, i32 -12
  %cmp2 = icmp eq ptr %oclk.0, %hw
  %or.cond = or i1 %cmp.not, %cmp2
  br i1 %or.cond, label %cleanup, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %1 = xor i1 %cmp.not, true
  ret i1 %1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clk.c", i32 110, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ti_clk_setup_ll_ops._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ti_clk_setup_ll_ops._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"clkctrl_nodes_missing", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clk.c", i32 143, i32 14}
!8 = distinct !{null, !9, !"has_clkctrl_data", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/clk.c", i32 144, i32 14}
!10 = !{ptr @ti_dt_clocks_register.compat_mode, !11, !"compat_mode", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clk.c", i32 145, i32 14}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clk.c", i32 158, i32 6}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ti_dt_clocks_register._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ti_dt_clocks_register._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/ti/clk.c", i32 174, i32 40}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/ti/clk.c", i32 176, i32 41}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/ti/clk.c", i32 185, i32 5}
!23 = !{ptr @ti_dt_clocks_register._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ti_dt_clocks_register._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/ti/clk.c", i32 201, i32 13}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/ti/clk.c", i32 208, i32 6}
!29 = !{ptr @ti_dt_clocks_register._entry.11, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ti_dt_clocks_register._entry_ptr.13, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ti/clk.c", i32 213, i32 4}
!33 = !{ptr @ti_dt_clocks_register._entry.14, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ti_dt_clocks_register._entry_ptr.16, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/ti/clk.c", i32 242, i32 2}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ti_clk_retry_init.__UNIQUE_ID_ddebug228, !36, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!39 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/clk.c", i32 277, i32 3}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ti_clk_get_reg_addr._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ti_clk_get_reg_addr._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/ti/clk.c", i32 283, i32 39}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/ti/clk.c", i32 284, i32 3}
!49 = !{ptr @ti_clk_get_reg_addr._entry.23, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ti_clk_get_reg_addr._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/ti/clk.c", i32 329, i32 40}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/ti/clk.c", i32 331, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @omap2_clk_provider_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap2_clk_provider_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/ti/clk.c", i32 363, i32 9}
!60 = !{ptr @__func__.omap2_clk_legacy_provider_init, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/ti/clk.c", i32 363, i32 47}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/ti/clk.c", i32 387, i32 4}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @ti_dt_clk_init_retry_clks.__UNIQUE_ID_ddebug229, !63, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!66 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/ti/clk.c", i32 462, i32 7}
!69 = !{ptr @ti_clk_ll_ops, !70, !"ti_clk_ll_ops", i1 false, i1 false}
!70 = !{!"../drivers/clk/ti/clk.c", i32 36, i32 23}
!71 = !{ptr @clocks_node_ptr, !72, !"clocks_node_ptr", i1 false, i1 false}
!72 = !{!"../drivers/clk/ti/clk.c", i32 37, i32 28}
!73 = !{ptr @ti_clk_features, !74, !"ti_clk_features", i1 false, i1 false}
!74 = !{!"../drivers/clk/ti/clk.c", i32 39, i32 24}
!75 = !{ptr @clk_memmaps, !76, !"clk_memmaps", i1 false, i1 false}
!76 = !{!"../drivers/clk/ti/clk.c", i32 46, i32 26}
!77 = !{ptr @retry_list, !78, !"retry_list", i1 false, i1 false}
!78 = !{!"../drivers/clk/ti/clk.c", i32 226, i32 8}
!79 = !{ptr @simple_clk_match_table, !80, !"simple_clk_match_table", i1 false, i1 false}
!80 = !{!"../drivers/clk/ti/clk.c", i32 396, i32 34}
!81 = !{ptr @clk_hw_omap_clocks, !82, !"clk_hw_omap_clocks", i1 false, i1 false}
!82 = !{!"../drivers/clk/ti/clk.c", i32 35, i32 8}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 5005992}
!94 = !{i64 5005574}
!95 = !{i8 0, i8 2}
!96 = !{i64 2148734513, i64 2148734518, i64 2148734531, i64 2148734575, i64 2148734609, i64 2148734630}
!97 = !{!"branch_weights", i32 1, i32 2000}
