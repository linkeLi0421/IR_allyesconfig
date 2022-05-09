; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun9i-core.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }

@__of_table_sun9i_a80_pll4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-pll4-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_pll4_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_gt = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-gt-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_gt_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_ahb_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_apb0_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-apb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_apb1_setup }, section "__clk_of_table", align 4
@sun9i_a80_pll4_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Could not get registers for a80-pll4-clk: %pOFn\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun9i_a80_pll4_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/sunxi/clk-sun9i-core.c\00", [61 x i8] zeroinitializer }, align 32
@sun9i_a80_pll4_setup._entry_ptr = internal global ptr @sun9i_a80_pll4_setup._entry, section ".printk_index", align 4
@sun9i_a80_pll4_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun9i_a80_pll4_config, ptr @sun9i_a80_get_pll4_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_pll4_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@sun9i_a80_pll4_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 8, i8 0, i8 0, i8 18, i8 1, i8 16, i8 1, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i_a80_pll4_lock\00", [44 x i8] zeroinitializer }, align 32
@sun9i_a80_gt_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Could not get registers for a80-gt-clk: %pOFn\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun9i_a80_gt_setup\00", [45 x i8] zeroinitializer }, align 32
@sun9i_a80_gt_setup._entry_ptr = internal global ptr @sun9i_a80_gt_setup._entry, section ".printk_index", align 4
@sun9i_a80_gt_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun9i_a80_gt_config, ptr @sun9i_a80_get_gt_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_gt_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sun9i_a80_gt_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun9i_a80_gt_lock\00", [46 x i8] zeroinitializer }, align 32
@sun9i_a80_ahb_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Could not get registers for a80-ahb-clk: %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i_a80_ahb_setup\00", [44 x i8] zeroinitializer }, align 32
@sun9i_a80_ahb_setup._entry_ptr = internal global ptr @sun9i_a80_ahb_setup._entry, section ".printk_index", align 4
@sun9i_a80_ahb_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun9i_a80_ahb_config, ptr @sun9i_a80_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_ahb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sun9i_a80_ahb_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun9i_a80_ahb_lock\00", [45 x i8] zeroinitializer }, align 32
@sun9i_a80_apb0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Could not get registers for a80-apb0-clk: %pOFn\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun9i_a80_apb0_setup\00", [43 x i8] zeroinitializer }, align 32
@sun9i_a80_apb0_setup._entry_ptr = internal global ptr @sun9i_a80_apb0_setup._entry, section ".printk_index", align 4
@sun9i_a80_apb0_data = internal constant %struct.factors_data { i32 0, i32 24, i32 1, ptr @sun9i_a80_ahb_config, ptr @sun9i_a80_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_apb0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i_a80_apb0_lock\00", [44 x i8] zeroinitializer }, align 32
@sun9i_a80_apb1_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Could not get registers for a80-apb1-clk: %pOFn\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun9i_a80_apb1_setup\00", [43 x i8] zeroinitializer }, align 32
@sun9i_a80_apb1_setup._entry_ptr = internal global ptr @sun9i_a80_apb1_setup._entry, section ".printk_index", align 4
@sun9i_a80_apb1_data = internal constant %struct.factors_data { i32 0, i32 24, i32 1, ptr @sun9i_a80_apb1_config, ptr @sun9i_a80_get_apb1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun9i_a80_apb1_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sun9i_a80_apb1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 16, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i_a80_apb1_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 82, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"sun9i_a80_pll4_lock\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 261, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"sun9i_a80_pll4_config\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 59, i32 40 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 74, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 136, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"sun9i_a80_gt_lock\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"sun9i_a80_gt_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 116, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 128, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 191, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"sun9i_a80_ahb_lock\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [21 x i8] c"sun9i_a80_ahb_config\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 171, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 183, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 217, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"sun9i_a80_apb0_lock\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 209, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 274, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [20 x i8] c"sun9i_a80_apb1_lock\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"sun9i_a80_apb1_config\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 252, i32 40 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [38 x i8] c"../drivers/clk/sunxi/clk-sun9i-core.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 266, i32 8 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__of_table_sun9i_a80_ahb, ptr @__of_table_sun9i_a80_apb0, ptr @__of_table_sun9i_a80_apb1, ptr @__of_table_sun9i_a80_gt, ptr @__of_table_sun9i_a80_pll4, ptr @sun9i_a80_ahb_setup._entry, ptr @sun9i_a80_ahb_setup._entry_ptr, ptr @sun9i_a80_apb0_setup._entry, ptr @sun9i_a80_apb0_setup._entry_ptr, ptr @sun9i_a80_apb1_setup._entry, ptr @sun9i_a80_apb1_setup._entry_ptr, ptr @sun9i_a80_gt_setup._entry, ptr @sun9i_a80_gt_setup._entry_ptr, ptr @sun9i_a80_pll4_setup._entry, ptr @sun9i_a80_pll4_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sun9i_a80_pll4_lock, ptr @.str.3, ptr @sun9i_a80_pll4_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sun9i_a80_gt_lock, ptr @sun9i_a80_gt_config, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sun9i_a80_ahb_lock, ptr @sun9i_a80_ahb_config, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @sun9i_a80_apb0_lock, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @sun9i_a80_apb1_lock, ptr @sun9i_a80_apb1_config, ptr @.str.16], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_pll4_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_pll4_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_pll4_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_gt_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_gt_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_gt_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_ahb_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_ahb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_ahb_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_apb0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_apb0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_apb1_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_apb1_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_apb1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_pll4_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun9i_a80_pll4_data, ptr noundef nonnull @sun9i_a80_pll4_lock, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_gt_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %node) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @sunxi_factors_register_critical(ptr noundef %node, ptr noundef nonnull @sun9i_a80_gt_data, ptr noundef nonnull @sun9i_a80_gt_lock, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_ahb_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun9i_a80_ahb_data, ptr noundef nonnull @sun9i_a80_ahb_lock, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_apb0_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %node) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun9i_a80_apb0_data, ptr noundef nonnull @sun9i_a80_apb0_lock, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_apb1_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.3, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %node) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun9i_a80_apb1_data, ptr noundef nonnull @sun9i_a80_apb1_lock, ptr noundef %call1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_pll4_factors(ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %sub = add i32 %1, 5999999
  %div = udiv i32 %sub, 6000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1535999999, i32 %sub)
  %cmp = icmp ugt i32 %sub, 1535999999
  %add1 = add nuw nsw i32 %div, 1
  %div235 = lshr i32 %add1, 1
  %n.0 = select i1 %cmp, i32 %div235, i32 %div
  %not.cmp = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %n.0)
  %cmp3 = icmp ugt i32 %n.0, 255
  %add5 = add nuw nsw i32 %n.0, 1
  %div636 = lshr i32 %add5, 1
  %n.1 = select i1 %cmp3, i32 %div636, i32 %n.0
  %not.cmp3 = xor i1 %cmp3, true
  %p.0 = zext i1 %not.cmp3 to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %n.1, i32 12)
  %mul = mul i32 %2, 24000000
  %shr = ashr i32 %mul, %p.0
  %add14 = select i1 %cmp, i32 1, i32 2
  %div15 = sdiv i32 %shr, %add14
  %3 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div15, ptr %req, align 4
  %conv = trunc i32 %2 to i8
  %n17 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %n17 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %n17, align 1
  %conv18 = zext i1 %not.cmp to i8
  %m19 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %m19 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv18, ptr %m19, align 1
  %conv20 = zext i1 %not.cmp3 to i8
  %p21 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %6 = ptrtoint ptr %p21 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv20, ptr %p21, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register_critical(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_gt_factors(ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %div6 = udiv i32 %sub, %6
  %7 = tail call i32 @llvm.umin.i32(i32 %div6, i32 4)
  %div11 = udiv i32 %1, %7
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div11, ptr %req, align 4
  %conv = trunc i32 %7 to i8
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %9 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %m, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_ahb_factors(ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %div = udiv i32 %sub, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp.i = icmp ugt i32 %div, 1
  %sub.i109 = add i32 %div, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %sub.i109, i1 false) #5, !range !80
  %add.i = sub nuw nsw i32 32, %7
  %8 = call i32 @llvm.umin.i32(i32 %add.i, i32 3)
  %9 = select i1 %cmp.i, i32 %8, i32 0
  %shr = lshr i32 %1, %9
  %10 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr, ptr %req, align 4
  %conv76 = trunc i32 %9 to i8
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %11 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv76, ptr %p, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun9i_a80_get_apb1_factors(ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %div6 = udiv i32 %sub, %6
  %7 = tail call i32 @llvm.umin.i32(i32 %div6, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  %sub.i69 = add nsw i32 %7, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i69, i1 false) #5, !range !80
  %add.i = sub nuw nsw i32 32, %8
  %cond31 = select i1 %cmp.i, i32 %add.i, i32 0
  %conv32 = trunc i32 %cond31 to i8
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv32, ptr %p, align 4
  %conv35 = and i32 %cond31, 255
  %shr = lshr i32 %1, %conv35
  %10 = trunc i32 %shr to i8
  %conv37 = add i8 %10, -1
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv37, ptr %m, align 1
  %conv43 = zext i8 %conv37 to i32
  %add44 = add nuw nsw i32 %conv43, 1
  %div45 = udiv i32 %shr, %add44
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div45, ptr %req, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !51, !52, !53, !54, !56, !58, !59, !61, !62, !63, !64, !66, !68, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__of_table_sun9i_a80_pll4, !1, !"__of_table_sun9i_a80_pll4", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 90, i32 1}
!2 = !{ptr @__of_table_sun9i_a80_gt, !3, !"__of_table_sun9i_a80_gt", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 145, i32 1}
!4 = !{ptr @__of_table_sun9i_a80_ahb, !5, !"__of_table_sun9i_a80_ahb", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 199, i32 1}
!6 = !{ptr @__of_table_sun9i_a80_apb0, !7, !"__of_table_sun9i_a80_apb0", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 225, i32 1}
!8 = !{ptr @__of_table_sun9i_a80_apb1, !9, !"__of_table_sun9i_a80_apb1", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 282, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 82, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sun9i_a80_pll4_setup._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun9i_a80_pll4_setup._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/of.h", i32 261, i32 30}
!18 = !{ptr @sun9i_a80_pll4_data, !19, !"sun9i_a80_pll4_data", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 68, i32 34}
!20 = !{ptr @sun9i_a80_pll4_config, !21, !"sun9i_a80_pll4_config", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 59, i32 40}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 74, i32 8}
!24 = !{ptr @sun9i_a80_pll4_lock, !23, !"sun9i_a80_pll4_lock", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 136, i32 3}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @sun9i_a80_gt_setup._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun9i_a80_gt_setup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @sun9i_a80_gt_data, !31, !"sun9i_a80_gt_data", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 121, i32 34}
!32 = !{ptr @sun9i_a80_gt_config, !33, !"sun9i_a80_gt_config", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 116, i32 40}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 128, i32 8}
!36 = !{ptr @sun9i_a80_gt_lock, !35, !"sun9i_a80_gt_lock", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 191, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sun9i_a80_ahb_setup._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun9i_a80_ahb_setup._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sun9i_a80_ahb_data, !43, !"sun9i_a80_ahb_data", i1 false, i1 false}
!43 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 176, i32 34}
!44 = !{ptr @sun9i_a80_ahb_config, !45, !"sun9i_a80_ahb_config", i1 false, i1 false}
!45 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 171, i32 40}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 183, i32 8}
!48 = !{ptr @sun9i_a80_ahb_lock, !47, !"sun9i_a80_ahb_lock", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 217, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun9i_a80_apb0_setup._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun9i_a80_apb0_setup._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @sun9i_a80_apb0_data, !55, !"sun9i_a80_apb0_data", i1 false, i1 false}
!55 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 202, i32 34}
!56 = !{ptr @.str.13, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 209, i32 8}
!58 = !{ptr @sun9i_a80_apb0_lock, !57, !"sun9i_a80_apb0_lock", i1 false, i1 false}
!59 = !{ptr @.str.14, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 274, i32 3}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sun9i_a80_apb1_setup._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sun9i_a80_apb1_setup._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @sun9i_a80_apb1_data, !65, !"sun9i_a80_apb1_data", i1 false, i1 false}
!65 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 259, i32 34}
!66 = !{ptr @sun9i_a80_apb1_config, !67, !"sun9i_a80_apb1_config", i1 false, i1 false}
!67 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 252, i32 40}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/sunxi/clk-sun9i-core.c", i32 266, i32 8}
!70 = !{ptr @sun9i_a80_apb1_lock, !69, !"sun9i_a80_apb1_lock", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i32 0, i32 33}
