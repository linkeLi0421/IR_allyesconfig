; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-mod0.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-mod0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmc_phase = type { %struct.clk_hw, i8, ptr, ptr }

@__of_table_sun4i_a10_mod0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_mod0_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mod0__183_117_sun4i_a10_mod0_clk_driver_init6 = internal global ptr @sun4i_a10_mod0_clk_driver_init, section ".initcall6.init", align 4
@__of_table_sun9i_a80_mod0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_mod0_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_mbus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-mbus-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_mbus_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_mmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mmc-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_mmc_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_mmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_mmc_setup }, section "__clk_of_table", align 4
@sun4i_a10_mod0_data = internal constant { %struct.factors_data, [36 x i8] } { %struct.factors_data { i32 31, i32 24, i32 3, ptr @sun4i_a10_mod0_config, ptr @sun4i_a10_get_mod0_factors, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_a10_mod0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sun4i_a10_mod0_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 16, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_a10_mod0_lock\00", [44 x i8] zeroinitializer }, align 32
@sun4i_a10_mod0_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_a10_mod0_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_a10_mod0_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i-a10-mod0-clk\00", [45 x i8] zeroinitializer }, align 32
@sun4i_a10_mod0_clk_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sun9i_a80_mod0_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Could not get registers for mod0-clk: %pOFn\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun9i_a80_mod0_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/sunxi/clk-mod0.c\00", [35 x i8] zeroinitializer }, align 32
@sun9i_a80_mod0_setup._entry_ptr = internal global ptr @sun9i_a80_mod0_setup._entry, section ".printk_index", align 4
@sun9i_a80_mod0_data = internal constant %struct.factors_data { i32 31, i32 24, i32 15, ptr @sun4i_a10_mod0_config, ptr @sun4i_a10_get_mod0_factors, ptr null, ptr null }, section ".init.rodata", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@sun5i_a13_mbus_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Could not get registers for a13-mbus-clk\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun5i_a13_mbus_setup\00", [43 x i8] zeroinitializer }, align 32
@sun5i_a13_mbus_setup._entry_ptr = internal global ptr @sun5i_a13_mbus_setup._entry, section ".printk_index", align 4
@sun5i_a13_mbus_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun5i_a13_mbus_lock\00", [44 x i8] zeroinitializer }, align 32
@sun4i_a10_mmc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sunxi_mmc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Couldn't map the %pOFn clock registers\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_mmc_setup\00", [16 x i8] zeroinitializer }, align 32
@sunxi_mmc_setup._entry_ptr = internal global ptr @sunxi_mmc_setup._entry, section ".printk_index", align 4
@mmc_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_get_phase, ptr @mmc_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i_a10_mmc_lock\00", [45 x i8] zeroinitializer }, align 32
@sun9i_a80_mmc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun9i_a80_mmc_lock\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"sun4i_a10_mod0_data\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 58, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"sun4i_a10_mod0_lock\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"sun4i_a10_mod0_config\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 51, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 66, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [26 x i8] c"sun4i_a10_mod0_clk_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 110, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 112, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"sun4i_a10_mod0_clk_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 105, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 133, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 261, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 151, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"sun5i_a13_mbus_lock\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 143, i32 8 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"sun4i_a10_mmc_lock\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 299, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"mmc_clk_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 276, i32 29 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 339, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 360, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"sun9i_a80_mmc_lock\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [32 x i8] c"../drivers/clk/sunxi/clk-mod0.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 368, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_clk_mod0__183_117_sun4i_a10_mod0_clk_driver_init6, ptr @__of_table_sun4i_a10_mmc, ptr @__of_table_sun4i_a10_mod0, ptr @__of_table_sun5i_a13_mbus, ptr @__of_table_sun9i_a80_mmc, ptr @__of_table_sun9i_a80_mod0, ptr @sun5i_a13_mbus_setup._entry, ptr @sun5i_a13_mbus_setup._entry_ptr, ptr @sun9i_a80_mod0_setup._entry, ptr @sun9i_a80_mod0_setup._entry_ptr, ptr @sunxi_mmc_setup._entry, ptr @sunxi_mmc_setup._entry_ptr, ptr @sun4i_a10_mod0_data, ptr @sun4i_a10_mod0_lock, ptr @sun4i_a10_mod0_config, ptr @.str, ptr @sun4i_a10_mod0_clk_driver, ptr @.str.1, ptr @sun4i_a10_mod0_clk_dt_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sun5i_a13_mbus_lock, ptr @.str.8, ptr @sun4i_a10_mmc_lock, ptr @.str.9, ptr @.str.10, ptr @mmc_clk_ops, ptr @.str.11, ptr @.str.12, ptr @sun9i_a80_mmc_lock, ptr @.str.13], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mod0_data to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mod0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mod0_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mod0_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mod0_clk_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mod0_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_mbus_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_mbus_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_mmc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mmc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_mmc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_mod0_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  tail call fastcc void @sun4i_a10_mod0_setup(ptr noundef %np) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_mod0_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_a10_mod0_clk_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_mod0_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.5, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %node) #12
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun9i_a80_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun5i_a13_mbus_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @sunxi_factors_register_critical(ptr noundef %node, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun5i_a13_mbus_lock, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_mmc_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_mmc_setup(ptr noundef %node, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mmc_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_mmc_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_mmc_setup(ptr noundef %node, ptr noundef nonnull @sun9i_a80_mod0_data, ptr noundef nonnull @sun9i_a80_mmc_lock) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_a10_mod0_setup(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun4i_a10_get_mod0_factors(ptr nocapture noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %div6 = udiv i32 %sub, %6
  %conv7 = and i32 %div6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv7)
  %cmp8 = icmp ult i32 %conv7, 16
  br i1 %cmp8, label %if.end.if.end25_crit_edge, label %if.else

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv7)
  %cmp13 = icmp ult i32 %conv7, 32
  br i1 %cmp13, label %if.else.if.end25_crit_edge, label %if.else16

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv7)
  %cmp19 = icmp ult i32 %conv7, 64
  %. = select i1 %cmp19, i8 2, i8 3
  br label %if.end25

if.end25:                                         ; preds = %if.else16, %if.else.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %calcp.0 = phi i8 [ 0, %if.end.if.end25_crit_edge ], [ 1, %if.else.if.end25_crit_edge ], [ %., %if.else16 ]
  %conv27 = zext i8 %calcp.0 to i32
  %shl = shl nuw nsw i32 1, %conv27
  %add28 = add nuw nsw i32 %shl, %conv7
  %7 = trunc i32 %add28 to i16
  %div3261.lhs.trunc = add nsw i16 %7, -1
  %div3261.rhs.trunc = trunc i32 %shl to i16
  %div326162 = udiv i16 %div3261.lhs.trunc, %div3261.rhs.trunc
  %shr = lshr i32 %3, %conv27
  %8 = and i16 %div326162, 255
  %conv36 = zext i16 %8 to i32
  %div37 = udiv i32 %shr, %conv36
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div37, ptr %req, align 4
  %10 = trunc i16 %div326162 to i8
  %conv41 = add i8 %10, -1
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv41, ptr %m, align 1
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %calcp.0, ptr %p, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_mod0_clk_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call ptr @sunxi_factors_register(ptr noundef nonnull %1, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then2 ], [ 0, %if.end4 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register_critical(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_setup(ptr noundef %node, ptr noundef %data, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #8
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ @.str.5, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %node) #12
  br label %cleanup52

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 8) #13
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.cleanup52_crit_edge, label %if.end6

if.end.cleanup52_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup52

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 12) #13
  %4 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %call7.i, align 8
  %tobool9.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool9.not, label %if.end6.err_free_data_crit_edge, label %if.end11

if.end6.err_free_data_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_data

if.end11:                                         ; preds = %if.end6
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %clk_num, align 4
  %call12 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef %data, ptr noundef %lock, ptr noundef %call1) #8
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %7, align 4
  %9 = load ptr, ptr %call7.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool16.not = icmp eq ptr %11, null
  br i1 %tobool16.not, label %err_free_clks, label %if.end18

if.end18:                                         ; preds = %if.end11
  %call21 = tail call ptr @__clk_get_name(ptr noundef nonnull %11) #8
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = getelementptr inbounds i8, ptr %init, i32 20
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end18
  %i.092 = phi i32 [ 1, %if.end18 ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %13, align 4
  %15 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %init, align 4
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mmc_clk_ops, ptr %ops, align 4
  %17 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %parent, ptr %parent_names, align 4
  %18 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_data, align 4
  %19 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %parent_hws, align 4
  %20 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents, align 4
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i90 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 24) #13
  %tobool23.not = icmp eq ptr %call7.i90, null
  br i1 %tobool23.not, label %for.body.cleanup_crit_edge, label %if.end25

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %for.body
  %init26 = getelementptr inbounds %struct.clk_hw, ptr %call7.i90, i32 0, i32 2
  %23 = ptrtoint ptr %init26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %init, ptr %init26, align 8
  %reg27 = getelementptr inbounds %struct.mmc_phase, ptr %call7.i90, i32 0, i32 2
  %24 = ptrtoint ptr %reg27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1, ptr %reg27, align 8
  %lock28 = getelementptr inbounds %struct.mmc_phase, ptr %call7.i90, i32 0, i32 3
  %25 = ptrtoint ptr %lock28 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock, ptr %lock28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.092)
  %cmp29 = icmp eq i32 %i.092, 1
  %spec.select = select i1 %cmp29, i8 8, i8 20
  %26 = getelementptr inbounds %struct.mmc_phase, ptr %call7.i90, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %spec.select, ptr %26, align 4
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.11, ptr noundef nonnull %init, i32 noundef 1, i32 noundef %i.092) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool35.not = icmp sgt i32 %call.i, -1
  br i1 %tobool35.not, label %if.end25.if.end39_crit_edge, label %if.then36

if.end25.if.end39_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %node, align 4
  %30 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %init, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end25.if.end39_crit_edge
  %call41 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i90) #8
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i, align 8
  %arrayidx43 = getelementptr ptr, ptr %32, i32 %i.092
  %33 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call41, ptr %arrayidx43, align 4
  %34 = load ptr, ptr %call7.i, align 8
  %arrayidx45 = getelementptr ptr, ptr %34, i32 %i.092
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx45, align 4
  %cmp.i91 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then47, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i90) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end39.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #8
  br label %cleanup52

err_free_clks:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %9) #8
  br label %err_free_data

err_free_data:                                    ; preds = %err_free_clks, %if.end6.err_free_data_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup52

cleanup52:                                        ; preds = %err_free_data, %for.end, %if.end.cleanup52_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_get_phase(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk1 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk1, align 4
  %reg = getelementptr inbounds %struct.mmc_phase, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !67
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %offset = getelementptr inbounds %struct.mmc_phase, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %offset, align 4
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %5, %conv
  %8 = trunc i32 %shr to i8
  %conv4 = and i8 %8, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4)
  %tobool.not = icmp eq i8 %conv4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @clk_get_parent(ptr noundef %1) #8
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @clk_get_rate(ptr noundef nonnull %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call ptr @clk_get_parent(ptr noundef nonnull %call5) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @clk_get_rate(ptr noundef nonnull %call13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %call17, %call9
  %9 = trunc i32 %div to i16
  %10 = lshr i16 %9, 1
  %div26.lhs.trunc = add nuw i16 %10, 360
  %div2649 = udiv i16 %div26.lhs.trunc, %9
  %div26.zext = zext i16 %div2649 to i32
  %conv28 = zext i8 %conv4 to i32
  %mul = mul nuw nsw i32 %div26.zext, %conv28
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end20 ], [ 180, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_set_phase(ptr nocapture noundef readonly %hw, i32 noundef %degrees) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk1 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk1, align 4
  %call = tail call ptr @clk_get_parent(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @clk_get_rate(ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @clk_get_parent(ptr noundef nonnull %call) #8
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @clk_get_rate(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 180, i32 %degrees)
  %cmp.not = icmp eq i32 %degrees, 180
  br i1 %cmp.not, label %if.end13.do.body31_crit_edge, label %if.then14

if.end13.do.body31_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %call10, %call2
  %2 = trunc i32 %div to i16
  %3 = lshr i16 %2, 1
  %div19.lhs.trunc = add nuw i16 %3, 360
  %div1986 = udiv i16 %div19.lhs.trunc, %2
  %div19.zext = zext i16 %div1986 to i32
  %div2585 = lshr i32 %div19.zext, 1
  %add26 = add i32 %div2585, %degrees
  %div28 = sdiv i32 %add26, %div19.zext
  %phi.cast = and i32 %div28, 255
  br label %do.body31

do.body31:                                        ; preds = %if.then14, %if.end13.do.body31_crit_edge
  %delay.0 = phi i32 [ %phi.cast, %if.then14 ], [ 0, %if.end13.do.body31_crit_edge ]
  %lock = getelementptr inbounds %struct.mmc_phase, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lock, align 4
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
  %reg = getelementptr inbounds %struct.mmc_phase, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !67
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %offset = getelementptr inbounds %struct.mmc_phase, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset, align 4
  %conv42 = zext i8 %11 to i32
  %shl.neg = shl nsw i32 -1, %conv42
  %sub47 = sub nsw i32 28, %conv42
  %shr = lshr i32 -1, %sub47
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and49 = and i32 %9, %neg
  %shl53 = shl i32 %delay.0, %conv42
  %or = or i32 %and49, %shl53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #8, !srcloc !71
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body31, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !33, !35, !37, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__of_table_sun4i_a10_mod0, !1, !"__of_table_sun4i_a10_mod0", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 85, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mod0__183_117_sun4i_a10_mod0_clk_driver_init6, !3, !"__initcall__kmod_clk_mod0__183_117_sun4i_a10_mod0_clk_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 117, i32 1}
!4 = !{ptr @__of_table_sun9i_a80_mod0, !5, !"__of_table_sun9i_a80_mod0", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 141, i32 1}
!6 = !{ptr @__of_table_sun5i_a13_mbus, !7, !"__of_table_sun5i_a13_mbus", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 159, i32 1}
!8 = !{ptr @__of_table_sun4i_a10_mmc, !9, !"__of_table_sun4i_a10_mmc", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 366, i32 1}
!10 = !{ptr @__of_table_sun9i_a80_mmc, !11, !"__of_table_sun9i_a80_mmc", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 374, i32 1}
!12 = !{ptr @sun4i_a10_mod0_data, !13, !"sun4i_a10_mod0_data", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 58, i32 34}
!14 = !{ptr @sun4i_a10_mod0_config, !15, !"sun4i_a10_mod0_config", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 51, i32 40}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 66, i32 8}
!18 = !{ptr @sun4i_a10_mod0_lock, !17, !"sun4i_a10_mod0_lock", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 112, i32 11}
!21 = !{ptr @sun4i_a10_mod0_clk_driver, !22, !"sun4i_a10_mod0_clk_driver", i1 false, i1 false}
!22 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 110, i32 31}
!23 = !{ptr @sun4i_a10_mod0_clk_dt_ids, !24, !"sun4i_a10_mod0_clk_dt_ids", i1 false, i1 false}
!24 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 105, i32 34}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 133, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun9i_a80_mod0_setup._entry, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun9i_a80_mod0_setup._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/of.h", i32 261, i32 30}
!33 = !{ptr @sun9i_a80_mod0_data, !34, !"sun9i_a80_mod0_data", i1 false, i1 false}
!34 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 119, i32 34}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 151, i32 3}
!37 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sun5i_a13_mbus_setup._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @sun5i_a13_mbus_setup._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 143, i32 8}
!42 = !{ptr @sun5i_a13_mbus_lock, !41, !"sun5i_a13_mbus_lock", i1 false, i1 false}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 299, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sunxi_mmc_setup._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sunxi_mmc_setup._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 339, i32 43}
!50 = !{ptr @mmc_clk_ops, !51, !"mmc_clk_ops", i1 false, i1 false}
!51 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 276, i32 29}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 360, i32 8}
!54 = !{ptr @sun4i_a10_mmc_lock, !53, !"sun4i_a10_mmc_lock", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/sunxi/clk-mod0.c", i32 368, i32 8}
!57 = !{ptr @sun9i_a80_mmc_lock, !56, !"sun9i_a80_mmc_lock", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 4065502}
!68 = !{i64 2152959811}
!69 = !{i64 2152962709}
!70 = !{i64 2152963802}
!71 = !{i64 4065084}
