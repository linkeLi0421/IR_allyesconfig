; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_periph_regs = type { i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@dummy_car_ops = internal global { %struct.tegra_cpu_car_ops, [32 x i8] } zeroinitializer, align 32
@tegra_cpu_car_ops = dso_local global { ptr, [28 x i8] } { ptr @dummy_car_ops, [28 x i8] zeroinitializer }, align 32
@periph_banks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@periph_regs = internal constant { [7 x %struct.tegra_clk_periph_regs], [56 x i8] } { [7 x %struct.tegra_clk_periph_regs] [%struct.tegra_clk_periph_regs { i32 16, i32 800, i32 804, i32 4, i32 768, i32 772 }, %struct.tegra_clk_periph_regs { i32 20, i32 808, i32 812, i32 8, i32 776, i32 780 }, %struct.tegra_clk_periph_regs { i32 24, i32 816, i32 820, i32 12, i32 784, i32 788 }, %struct.tegra_clk_periph_regs { i32 864, i32 1088, i32 1092, i32 856, i32 1072, i32 1076 }, %struct.tegra_clk_periph_regs { i32 868, i32 1096, i32 1100, i32 860, i32 1080, i32 1084 }, %struct.tegra_clk_periph_regs { i32 640, i32 644, i32 648, i32 652, i32 656, i32 660 }, %struct.tegra_clk_periph_regs { i32 664, i32 668, i32 672, i32 676, i32 680, i32 684 }], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/tegra/clk.c\00", [40 x i8] zeroinitializer }, align 32
@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@periph_state_ctx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@periph_clk_enb_refcnt = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@clk_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra_init_from_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: invalid entry %ld in clks array for id %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_init_from_table\00", [42 x i8] zeroinitializer }, align 32
@tegra_init_from_table._entry_ptr = internal global ptr @tegra_init_from_table._entry, section ".printk_index", align 4
@tegra_init_from_table._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to set parent %s of %s\0A\00", [59 x i8] zeroinitializer }, align 32
@tegra_init_from_table._entry_ptr.5 = internal global ptr @tegra_init_from_table._entry.3, section ".printk_index", align 4
@tegra_init_from_table._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to set rate %lu of %s\0A\00", [60 x i8] zeroinitializer }, align 32
@tegra_init_from_table._entry_ptr.8 = internal global ptr @tegra_init_from_table._entry.6, section ".printk_index", align 4
@tegra_init_from_table._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Failed to enable %s\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra_init_from_table._entry_ptr.11 = internal global ptr @tegra_init_from_table._entry.9, section ".printk_index", align 4
@tegra_car_np = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra_add_of_provider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Tegra clk %d: register failed with %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tegra_add_of_provider\00", [42 x i8] zeroinitializer }, align 32
@tegra_add_of_provider._entry_ptr = internal global ptr @tegra_add_of_provider._entry, section ".printk_index", align 4
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@rst_ctlr = internal global { %struct.reset_controller_dev, [52 x i8] } { %struct.reset_controller_dev { ptr @rst_ops, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, i32 1, ptr null, i32 0 }, [52 x i8] zeroinitializer }, align 32
@num_special_reset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@special_reset_assert = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@special_reset_deassert = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra-clk-debug\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tegra_clk_%s\00", [19 x i8] zeroinitializer }, align 32
@tegra_clk_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: failed to create device for %pOF\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tegra_clk_dev_register\00", [41 x i8] zeroinitializer }, align 32
@tegra_clk_dev_register._entry_ptr = internal global ptr @tegra_clk_dev_register._entry, section ".printk_index", align 4
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to find device for %pOF\0A\00", [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_clk__184_455_tegra_clocks_apply_init_table3 = internal global ptr @tegra_clocks_apply_init_table, section ".initcall3.init", align 4
@tegra_clk_apply_init_table = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rst_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @tegra_clk_rst_reset, ptr @tegra_clk_rst_assert, ptr @tegra_clk_rst_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"dummy_car_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 25, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"tegra_cpu_car_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 26, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"periph_banks\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 29, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"periph_regs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 40, i32 43 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 159, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 99, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"periph_state_ctx\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 30, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant [22 x i8] c"periph_clk_enb_refcnt\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 28, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 31, i32 21 }
@___asan_gen_.46 = private unnamed_addr constant [8 x i8] c"clk_num\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 32, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 277, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 287, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 296, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 304, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"tegra_car_np\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 24, i32 28 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 332, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 33, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"rst_ctlr\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 317, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"num_special_reset\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 38, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"special_reset_assert\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 36, i32 14 }
@___asan_gen_.100 = private unnamed_addr constant [23 x i8] c"special_reset_deassert\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 37, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 369, i32 5 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 415, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 425, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 433, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [27 x i8] c"tegra_clk_apply_init_table\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 444, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [8 x i8] c"rst_ops\00", align 1
@___asan_gen_.125 = private constant [27 x i8] c"../drivers/clk/tegra/clk.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 311, i32 39 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_clk__184_455_tegra_clocks_apply_init_table3, ptr @tegra_add_of_provider._entry, ptr @tegra_add_of_provider._entry_ptr, ptr @tegra_clk_dev_register._entry, ptr @tegra_clk_dev_register._entry_ptr, ptr @tegra_init_from_table._entry, ptr @tegra_init_from_table._entry.3, ptr @tegra_init_from_table._entry.6, ptr @tegra_init_from_table._entry.9, ptr @tegra_init_from_table._entry_ptr, ptr @tegra_init_from_table._entry_ptr.11, ptr @tegra_init_from_table._entry_ptr.5, ptr @tegra_init_from_table._entry_ptr.8, ptr @dummy_car_ops, ptr @tegra_cpu_car_ops, ptr @periph_banks, ptr @periph_regs, ptr @.str, ptr @clk_base, ptr @periph_state_ctx, ptr @periph_clk_enb_refcnt, ptr @clks, ptr @clk_num, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @tegra_car_np, ptr @.str.12, ptr @.str.13, ptr @clk_data, ptr @rst_ctlr, ptr @num_special_reset, ptr @special_reset_assert, ptr @special_reset_deassert, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @tegra_clk_apply_init_table, ptr @rst_ops], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_car_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpu_car_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_banks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_regs to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_state_ctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_from_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_from_table._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_from_table._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_init_from_table._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_car_np to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_add_of_provider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_ctlr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_special_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_reset_assert to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @special_reset_deassert to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_clk_apply_init_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rst_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_reg_bank(i32 noundef %clkid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %clkid, 32
  %0 = load i32, ptr @periph_banks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %0)
  %cmp = icmp slt i32 %div, %0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %div
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi ptr [ %arrayidx, %if.then ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_clk_set_pllp_out_cpu(i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 664
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !80
  %2 = and i32 %1, -129
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %masksel = select i1 %enable, i32 -2147483648, i32 0
  %val.0 = or i32 %3, %masksel
  %4 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #9, !srcloc !81
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_clk_periph_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @periph_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp24.not = icmp eq i32 %0, 0
  br i1 %cmp24.not, label %entry.for.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.cond3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp427.not = icmp eq i32 %8, 0
  br i1 %cmp427.not, label %for.cond3.preheader.for.end15_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.end15_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @clk_base, align 4
  %arrayidx = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %i.026
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !80
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = load ptr, ptr @periph_state_ctx, align 4
  %arrayidx1 = getelementptr i32, ptr %6, i32 %i.026
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %arrayidx1, align 4
  %inc = add nuw i32 %i.026, 1
  %8 = load i32, ptr @periph_banks, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond3.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %i.129 = phi i32 [ %inc13, %for.body5.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %idx.128 = phi i32 [ %inc14, %for.body5.for.body5_crit_edge ], [ %inc, %for.cond3.preheader.for.body5_crit_edge ]
  %9 = load ptr, ptr @clk_base, align 4
  %rst_reg = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %i.129, i32 3
  %10 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rst_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #9, !srcloc !80
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = load ptr, ptr @periph_state_ctx, align 4
  %arrayidx11 = getelementptr i32, ptr %14, i32 %idx.128
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %arrayidx11, align 4
  %inc13 = add nuw i32 %i.129, 1
  %inc14 = add i32 %idx.128, 1
  %16 = load i32, ptr @periph_banks, align 4
  %cmp4 = icmp ult i32 %inc13, %16
  br i1 %cmp4, label %for.body5.for.body5_crit_edge, label %for.body5.for.end15_crit_edge

for.body5.for.end15_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.end15:                                        ; preds = %for.body5.for.end15_crit_edge, %for.cond3.preheader.for.end15_crit_edge, %entry.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_clk_periph_resume() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @periph_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp30.not = icmp eq i32 %0, 0
  br i1 %cmp30.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @periph_state_ctx, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 %i.032
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @clk_base, align 4
  %arrayidx1 = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %i.032
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !81
  %inc = add nuw i32 %i.032, 1
  %8 = load i32, ptr @periph_banks, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %idx.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %inc, %for.body.do.body_crit_edge ]
  %9 = load ptr, ptr @clk_base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 1073740) #9
  %12 = load i32, ptr @periph_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp533.not = icmp eq i32 %12, 0
  br i1 %cmp533.not, label %do.body.do.body14_crit_edge, label %do.body.for.body6_crit_edge

do.body.for.body6_crit_edge:                      ; preds = %do.body
  br label %for.body6

do.body.do.body14_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %do.body.for.body6_crit_edge
  %i.135 = phi i32 [ %inc11, %for.body6.for.body6_crit_edge ], [ 0, %do.body.for.body6_crit_edge ]
  %idx.134 = phi i32 [ %inc12, %for.body6.for.body6_crit_edge ], [ %idx.0.lcssa, %do.body.for.body6_crit_edge ]
  %13 = load ptr, ptr @periph_state_ctx, align 4
  %arrayidx7 = getelementptr i32, ptr %13, i32 %idx.134
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %17 = load ptr, ptr @clk_base, align 4
  %rst_reg = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %i.135, i32 3
  %18 = ptrtoint ptr %rst_reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rst_reg, align 4
  %add.ptr9 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %16) #9, !srcloc !81
  %inc11 = add nuw i32 %i.135, 1
  %inc12 = add i32 %idx.134, 1
  %20 = load i32, ptr @periph_banks, align 4
  %cmp5 = icmp ult i32 %inc11, %20
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.do.body14_crit_edge

for.body6.do.body14_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

do.body14:                                        ; preds = %for.body6.do.body14_crit_edge, %do.body.do.body14_crit_edge
  %21 = load ptr, ptr @clk_base, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 429496) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_init(ptr noundef %regs, i32 noundef %num, i32 noundef %banks) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %regs, ptr @clk_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %banks)
  %cmp = icmp ugt i32 %banks, 7
  br i1 %cmp, label %do.end, label %if.end7.i.i, !prof !84

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end7.i.i:                                      ; preds = %entry
  %0 = shl nuw nsw i32 %banks, 7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 3520) #12
  store ptr %call8.i.i, ptr @periph_clk_enb_refcnt, align 4
  %tobool22.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool22.not, label %if.end7.i.i.return_crit_edge, label %if.end24

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end24:                                         ; preds = %if.end7.i.i
  store i32 %banks, ptr @periph_banks, align 4
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num, i32 4) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit70.thread, label %if.end7.i.i68, !prof !84

kcalloc.exit70.thread:                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @clks, align 4
  br label %if.then27

if.end7.i.i68:                                    ; preds = %if.end24
  %3 = extractvalue { i32, i1 } %1, 0
  %call8.i.i67 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #12
  store ptr %call8.i.i67, ptr @clks, align 4
  %tobool26.not = icmp eq ptr %call8.i.i67, null
  br i1 %tobool26.not, label %if.end7.i.i68.if.then27_crit_edge, label %if.end28

if.end7.i.i68.if.then27_crit_edge:                ; preds = %if.end7.i.i68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then27

if.then27:                                        ; preds = %if.end7.i.i68.if.then27_crit_edge, %kcalloc.exit70.thread
  %4 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  tail call void @kfree(ptr noundef %4) #9
  br label %return

if.end28:                                         ; preds = %if.end7.i.i68
  store i32 %num, ptr @clk_num, align 4
  %5 = shl nuw nsw i32 %banks, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #12
  store ptr %call8.i.i.i, ptr @periph_state_ctx, align 4
  %tobool.not.i.not = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  tail call void @kfree(ptr noundef %6) #9
  %7 = load ptr, ptr @clks, align 4
  tail call void @kfree(ptr noundef %7) #9
  br label %return

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %8 = load ptr, ptr @clks, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then31, %if.then27, %if.end7.i.i.return_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then31 ], [ %8, %if.end32 ], [ null, %if.then27 ], [ null, %if.end7.i.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_init_dup_clks(ptr noundef %dup_list, ptr nocapture noundef readonly %clks, i32 noundef %clk_max) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dup_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dup_list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %clk_max)
  %cmp8 = icmp slt i32 %1, %clk_max
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi i32 [ %7, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dup_list.addr.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dup_list, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %lookup = getelementptr inbounds %struct.tegra_clk_duplicate, ptr %dup_list.addr.09, i32 0, i32 1
  %clk2 = getelementptr inbounds %struct.tegra_clk_duplicate, ptr %dup_list.addr.09, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %clk2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %clk2, align 4
  tail call void @clkdev_add(ptr noundef %lookup) #9
  %incdec.ptr = getelementptr %struct.tegra_clk_duplicate, ptr %dup_list.addr.09, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr, align 4
  %cmp = icmp slt i32 %7, %clk_max
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdev_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_init_from_table(ptr nocapture noundef readonly %tbl, ptr nocapture noundef readonly %clks, i32 noundef %clk_max) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tbl, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %clk_max)
  %cmp175 = icmp ult i32 %1, %clk_max
  br i1 %cmp175, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %2 = phi i32 [ %17, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %tbl.addr.0176 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %tbl, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end24

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %4 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef %2) #13
  br label %for.inc.sink.split

if.end24:                                         ; preds = %for.body
  %parent_id = getelementptr inbounds %struct.tegra_clk_init_table, ptr %tbl.addr.0176, i32 0, i32 1
  %6 = ptrtoint ptr %parent_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clk_max)
  %cmp25 = icmp ult i32 %7, %clk_max
  br i1 %cmp25, label %if.then26, label %if.end24.if.end66_crit_edge

if.end24.if.end66_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then26:                                        ; preds = %if.end24
  %arrayidx28 = getelementptr ptr, ptr %clks, i32 %7
  %8 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef nonnull %4, ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.if.end66_crit_edge, label %do.end34

if.then26.if.end66_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end34:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call ptr @__clk_get_name(ptr noundef %9) #9
  %call37 = tail call ptr @__clk_get_name(ptr noundef nonnull %4) #9
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %call36, ptr noundef %call37) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #9
  br label %if.end66

if.end66:                                         ; preds = %do.end34, %if.then26.if.end66_crit_edge, %if.end24.if.end66_crit_edge
  %rate = getelementptr inbounds %struct.tegra_clk_init_table, ptr %tbl.addr.0176, i32 0, i32 2
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool67.not = icmp eq i32 %11, 0
  br i1 %tobool67.not, label %if.end66.if.end107_crit_edge, label %if.then68

if.end66.if.end107_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then68:                                        ; preds = %if.end66
  %call70 = tail call i32 @clk_set_rate(ptr noundef nonnull %4, i32 noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then68.if.end107_crit_edge, label %do.end75

if.then68.if.end107_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

do.end75:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate, align 4
  %call78 = tail call ptr @__clk_get_name(ptr noundef nonnull %4) #9
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef %13, ptr noundef %call78) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %if.end107

if.end107:                                        ; preds = %do.end75, %if.then68.if.end107_crit_edge, %if.end66.if.end107_crit_edge
  %state = getelementptr inbounds %struct.tegra_clk_init_table, ptr %tbl.addr.0176, i32 0, i32 3
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool108.not = icmp eq i32 %15, 0
  br i1 %tobool108.not, label %if.end107.for.inc_crit_edge, label %if.then109

if.end107.for.inc_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then109:                                       ; preds = %if.end107
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i172 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i172, label %if.end.i, label %if.then109.do.end115_crit_edge

if.then109.do.end115_crit_edge:                   ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end115

if.end.i:                                         ; preds = %if.then109
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef nonnull %4) #9
  br label %do.end115

do.end115:                                        ; preds = %if.then3.i, %if.then109.do.end115_crit_edge
  %call117 = tail call ptr @__clk_get_name(ptr noundef nonnull %4) #9
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, ptr noundef %call117) #13
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %do.end115, %do.end
  %.sink = phi i32 [ 306, %do.end115 ], [ 279, %do.end ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end.i.for.inc_crit_edge, %if.end107.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.tegra_clk_init_table, ptr %tbl.addr.0176, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr, align 4
  %cmp = icmp ult i32 %17, %clk_max
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_add_of_provider(ptr noundef %np, ptr noundef %clk_src_onecell_get) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %np, ptr @tegra_car_np, align 4
  %0 = load i32, ptr @clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %3 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %i.020, i32 noundef %4) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %5 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %5, i32 %i.020
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -22 to ptr), ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %9 = load i32, ptr @clk_num, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %0, %entry.for.end_crit_edge ], [ %9, %for.inc.for.end_crit_edge ]
  %10 = load ptr, ptr @clks, align 4
  store ptr %10, ptr @clk_data, align 4
  store i32 %.lcssa, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %call9 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef %clk_src_onecell_get, ptr noundef nonnull @clk_data) #9
  store ptr %np, ptr getelementptr inbounds (%struct.reset_controller_dev, ptr @rst_ctlr, i32 0, i32 5), align 4
  %11 = load i32, ptr @periph_banks, align 4
  %mul = shl i32 %11, 5
  %12 = load i32, ptr @num_special_reset, align 4
  %add = add i32 %mul, %12
  store i32 %add, ptr getelementptr inbounds (%struct.reset_controller_dev, ptr @rst_ctlr, i32 0, i32 8), align 4
  %call10 = tail call i32 @reset_controller_register(ptr noundef nonnull @rst_ctlr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tegra_init_special_resets(i32 noundef %num, ptr noundef %assert, ptr noundef %deassert) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %num, ptr @num_special_reset, align 4
  store ptr %assert, ptr @special_reset_assert, align 4
  store ptr %deassert, ptr @special_reset_deassert, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_register_devclks(ptr nocapture noundef readonly %dev_clks, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp22 = icmp sgt i32 %num, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %0 = load i32, ptr @clk_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp225 = icmp sgt i32 %0, 0
  br i1 %cmp225, label %for.cond1.preheader.for.body3_crit_edge, label %for.cond1.preheader.for.end12_crit_edge

for.cond1.preheader.for.end12_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.cond1.preheader.for.body3_crit_edge:          ; preds = %for.cond1.preheader
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %dev_clks.addr.023 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %dev_clks, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @clks, align 4
  %2 = ptrtoint ptr %dev_clks.addr.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_clks.addr.023, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %con_id = getelementptr inbounds %struct.tegra_devclk, ptr %dev_clks.addr.023, i32 0, i32 2
  %6 = ptrtoint ptr %con_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_id, align 4
  %dev_id = getelementptr inbounds %struct.tegra_devclk, ptr %dev_clks.addr.023, i32 0, i32 1
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %call = tail call i32 @clk_register_clkdev(ptr noundef %5, ptr noundef %7, ptr noundef %9) #9
  %inc = add nuw nsw i32 %i.024, 1
  %incdec.ptr = getelementptr %struct.tegra_devclk, ptr %dev_clks.addr.023, i32 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.body.for.cond1.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.body3:                                        ; preds = %for.inc10.for.body3_crit_edge, %for.cond1.preheader.for.body3_crit_edge
  %i.126 = phi i32 [ %inc11, %for.inc10.for.body3_crit_edge ], [ 0, %for.cond1.preheader.for.body3_crit_edge ]
  %10 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %10, i32 %i.126
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %tobool.not.i = icmp eq ptr %12, null
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %for.body3.for.inc10_crit_edge, label %if.then

for.body3.for.inc10_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc10

if.then:                                          ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call ptr @__clk_get_name(ptr noundef nonnull %12) #9
  %call9 = tail call i32 @clk_register_clkdev(ptr noundef nonnull %12, ptr noundef %call8, ptr noundef nonnull @.str.14) #9
  br label %for.inc10

for.inc10:                                        ; preds = %if.then, %for.body3.for.inc10_crit_edge
  %inc11 = add nuw nsw i32 %i.126, 1
  %13 = load i32, ptr @clk_num, align 4
  %cmp2 = icmp slt i32 %inc11, %13
  br i1 %cmp2, label %for.inc10.for.body3_crit_edge, label %for.inc10.for.end12_crit_edge

for.inc10.for.end12_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end12

for.inc10.for.body3_crit_edge:                    ; preds = %for.inc10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end12:                                        ; preds = %for.inc10.for.end12_crit_edge, %for.cond1.preheader.for.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @tegra_lookup_dt_id(i32 noundef %clk_id, ptr nocapture noundef readonly %tegra_clk) local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr %struct.tegra_clk, ptr %tegra_clk, i32 %clk_id, i32 1
  %0 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %present, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tegra_clk, ptr %tegra_clk, i32 %clk_id
  %2 = load ptr, ptr @clks, align 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %2, i32 %4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %arrayidx2, %if.then ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tegra_clk_dev_register(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef 3264) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.tegra_clk_get_of_node.exit_crit_edge, label %if.end.i

entry.tegra_clk_get_of_node.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tegra_clk_get_of_node.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @strreplace(ptr noundef nonnull %call.i, i8 noundef zeroext 95, i8 noundef zeroext 45) #9
  %4 = load ptr, ptr @tegra_car_np, align 4
  %call2.i = tail call ptr @of_get_next_child(ptr noundef %4, ptr noundef null) #9
  %cmp.not16.i = icmp eq ptr %call2.i, null
  br i1 %cmp.not16.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %np.017.i = phi ptr [ %call8.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %np.017.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %np.017.i, align 4
  %call4.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %7 = load ptr, ptr @tegra_car_np, align 4
  %call8.i = tail call ptr @of_get_next_child(ptr noundef %7, ptr noundef nonnull %np.017.i) #9
  %cmp.not.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %np.0.lcssa.i = phi ptr [ null, %if.end.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %np.017.i, %for.body.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %tegra_clk_get_of_node.exit

tegra_clk_get_of_node.exit:                       ; preds = %for.end.i, %entry.tegra_clk_get_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %np.0.lcssa.i, %for.end.i ], [ null, %entry.tegra_clk_get_of_node.exit_crit_edge ]
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef %retval.0.i) #9
  br i1 %call1, label %if.end, label %tegra_clk_get_of_node.exit.put_node_crit_edge

tegra_clk_get_of_node.exit.put_node_crit_edge:    ; preds = %tegra_clk_get_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_node

if.end:                                           ; preds = %tegra_clk_get_of_node.exit
  %8 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %11) #9
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.put_node_crit_edge, label %if.end4

if.end.put_node_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_node

if.end4:                                          ; preds = %if.end
  %12 = load ptr, ptr @tegra_car_np, align 4
  %call5 = tail call ptr @of_find_device_by_node(ptr noundef %12) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end23, label %if.then7

if.then7:                                         ; preds = %if.end4
  %dev8 = getelementptr inbounds %struct.platform_device, ptr %call5, i32 0, i32 3
  %call9 = tail call ptr @of_platform_device_create(ptr noundef %retval.0.i, ptr noundef nonnull %call2, ptr noundef %dev8) #9
  tail call void @put_device(ptr noundef %dev8) #9
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %retval.0.i) #13
  br label %free_name

if.end14:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %dev15 = getelementptr inbounds %struct.platform_device, ptr %call9, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev15) #9
  br label %free_name

do.end23:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %13 = load ptr, ptr @tegra_car_np, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 433, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %13) #9
  br label %free_name

free_name:                                        ; preds = %do.end23, %if.end14, %do.end
  %dev.0 = phi ptr [ %dev15, %if.end14 ], [ null, %do.end ], [ null, %do.end23 ]
  tail call void @kfree(ptr noundef nonnull %call2) #9
  br label %put_node

put_node:                                         ; preds = %free_name, %if.end.put_node_crit_edge, %tegra_clk_get_of_node.exit.put_node_crit_edge
  %dev.1 = phi ptr [ %dev.0, %free_name ], [ null, %if.end.put_node_crit_edge ], [ null, %tegra_clk_get_of_node.exit.put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef %retval.0.i) #9
  %call38 = tail call ptr @clk_register(ptr noundef %dev.1, ptr noundef %hw) #9
  ret ptr %call38
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_clocks_apply_init_table() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tegra_clk_apply_init_table, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %0() #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_reset(ptr nocapture noundef readnone %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @tegra_read_chipid() #9
  %0 = load i32, ptr @periph_banks, align 4
  %mul.i = shl i32 %0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %id)
  %cmp.i = icmp ugt i32 %mul.i, %id
  br i1 %cmp.i, label %tegra_clk_rst_assert.exit.thread, label %if.else.i

tegra_clk_rst_assert.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %rem.i
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %2 = load ptr, ptr @clk_base, align 4
  %div10.i = lshr i32 %id, 5
  %rst_set_reg.i = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %div10.i, i32 4
  %3 = ptrtoint ptr %rst_set_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rst_set_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #9, !srcloc !81
  br label %if.end

if.else.i:                                        ; preds = %entry
  %5 = load i32, ptr @num_special_reset, align 4
  %add.i = add i32 %5, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %id)
  %cmp2.i = icmp ugt i32 %add.i, %id
  br i1 %cmp2.i, label %tegra_clk_rst_assert.exit, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_clk_rst_assert.exit:                        ; preds = %if.else.i
  %6 = load ptr, ptr @special_reset_assert, align 4
  %call4.i = tail call i32 %6(i32 noundef %id) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %tegra_clk_rst_assert.exit.if.end_crit_edge, label %tegra_clk_rst_assert.exit.cleanup_crit_edge

tegra_clk_rst_assert.exit.cleanup_crit_edge:      ; preds = %tegra_clk_rst_assert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tegra_clk_rst_assert.exit.if.end_crit_edge:       ; preds = %tegra_clk_rst_assert.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %tegra_clk_rst_assert.exit.if.end_crit_edge, %tegra_clk_rst_assert.exit.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %8 = load i32, ptr @periph_banks, align 4
  %mul.i5 = shl i32 %8, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i5, i32 %id)
  %cmp.i6 = icmp ugt i32 %mul.i5, %id
  br i1 %cmp.i6, label %if.then.i10, label %if.else.i13

if.then.i10:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i7 = and i32 %id, 31
  %shl.i8 = shl nuw i32 1, %rem.i7
  %9 = tail call i32 @llvm.bswap.i32(i32 %shl.i8) #9
  %10 = load ptr, ptr @clk_base, align 4
  %div9.i = lshr i32 %id, 5
  %rst_clr_reg.i = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %div9.i, i32 5
  %11 = ptrtoint ptr %rst_clr_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rst_clr_reg.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %10, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %9) #9, !srcloc !81
  br label %cleanup

if.else.i13:                                      ; preds = %if.end
  %13 = load i32, ptr @num_special_reset, align 4
  %add.i11 = add i32 %13, %mul.i5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i11, i32 %id)
  %cmp2.i12 = icmp ugt i32 %add.i11, %id
  br i1 %cmp2.i12, label %if.then3.i15, label %if.else.i13.cleanup_crit_edge

if.else.i13.cleanup_crit_edge:                    ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i15:                                     ; preds = %if.else.i13
  call void @__sanitizer_cov_trace_pc() #11
  %14 = load ptr, ptr @special_reset_deassert, align 4
  %call.i14 = tail call i32 %14(i32 noundef %id) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i15, %if.else.i13.cleanup_crit_edge, %if.then.i10, %tegra_clk_rst_assert.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %tegra_clk_rst_assert.exit.cleanup_crit_edge ], [ 0, %if.then.i10 ], [ %call.i14, %if.then3.i15 ], [ -22, %if.else.i13.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_assert(ptr nocapture noundef readnone %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tegra_read_chipid() #9
  %0 = load i32, ptr @periph_banks, align 4
  %mul = shl i32 %0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %id)
  %cmp = icmp ugt i32 %mul, %id
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rem = and i32 %id, 31
  %shl = shl nuw i32 1, %rem
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %2 = load ptr, ptr @clk_base, align 4
  %div10 = lshr i32 %id, 5
  %rst_set_reg = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %div10, i32 4
  %3 = ptrtoint ptr %rst_set_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rst_set_reg, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #9, !srcloc !81
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, ptr @num_special_reset, align 4
  %add = add i32 %5, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %id)
  %cmp2 = icmp ugt i32 %add, %id
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @special_reset_assert, align 4
  %call4 = tail call i32 %6(i32 noundef %id) #9
  br label %return

return:                                           ; preds = %if.then3, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call4, %if.then3 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_clk_rst_deassert(ptr nocapture noundef readnone %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @periph_banks, align 4
  %mul = shl i32 %0, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %id)
  %cmp = icmp ugt i32 %mul, %id
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rem = and i32 %id, 31
  %shl = shl nuw i32 1, %rem
  %1 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %2 = load ptr, ptr @clk_base, align 4
  %div9 = lshr i32 %id, 5
  %rst_clr_reg = getelementptr [7 x %struct.tegra_clk_periph_regs], ptr @periph_regs, i32 0, i32 %div9, i32 5
  %3 = ptrtoint ptr %rst_clr_reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rst_clr_reg, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #9, !srcloc !81
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i32, ptr @num_special_reset, align 4
  %add = add i32 %5, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %id)
  %cmp2 = icmp ugt i32 %add, %id
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = load ptr, ptr @special_reset_deassert, align 4
  %call = tail call i32 %6(i32 noundef %id) #9
  br label %return

return:                                           ; preds = %if.then3, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call, %if.then3 ], [ -22, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_read_chipid() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @tegra_cpu_car_ops, !1, !"tegra_cpu_car_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk.c", i32 26, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk.c", i32 159, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk.c", i32 277, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @tegra_init_from_table._entry, !5, !"_entry", i1 false, i1 false}
!8 = !{ptr @tegra_init_from_table._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/tegra/clk.c", i32 287, i32 5}
!11 = !{ptr @tegra_init_from_table._entry.3, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @tegra_init_from_table._entry_ptr.5, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/tegra/clk.c", i32 296, i32 5}
!15 = !{ptr @tegra_init_from_table._entry.6, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @tegra_init_from_table._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/tegra/clk.c", i32 304, i32 5}
!19 = !{ptr @tegra_init_from_table._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tegra_init_from_table._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/tegra/clk.c", i32 332, i32 4}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_add_of_provider._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_add_of_provider._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk.c", i32 369, i32 5}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk.c", i32 415, i32 35}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk.c", i32 425, i32 4}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tegra_clk_dev_register._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_clk_dev_register._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/tegra/clk.c", i32 433, i32 3}
!37 = !{ptr @__initcall__kmod_clk__184_455_tegra_clocks_apply_init_table3, !38, !"__initcall__kmod_clk__184_455_tegra_clocks_apply_init_table3", i1 false, i1 false}
!38 = !{!"../drivers/clk/tegra/clk.c", i32 455, i32 1}
!39 = !{ptr @tegra_car_np, !40, !"tegra_car_np", i1 false, i1 false}
!40 = !{!"../drivers/clk/tegra/clk.c", i32 24, i32 28}
!41 = !{ptr @dummy_car_ops, !42, !"dummy_car_ops", i1 false, i1 false}
!42 = !{!"../drivers/clk/tegra/clk.c", i32 25, i32 33}
!43 = !{ptr @periph_clk_enb_refcnt, !44, !"periph_clk_enb_refcnt", i1 false, i1 false}
!44 = !{!"../drivers/clk/tegra/clk.c", i32 28, i32 6}
!45 = !{ptr @periph_banks, !46, !"periph_banks", i1 false, i1 false}
!46 = !{!"../drivers/clk/tegra/clk.c", i32 29, i32 12}
!47 = !{ptr @periph_state_ctx, !48, !"periph_state_ctx", i1 false, i1 false}
!48 = !{!"../drivers/clk/tegra/clk.c", i32 30, i32 13}
!49 = !{ptr @clks, !50, !"clks", i1 false, i1 false}
!50 = !{!"../drivers/clk/tegra/clk.c", i32 31, i32 21}
!51 = !{ptr @clk_num, !52, !"clk_num", i1 false, i1 false}
!52 = !{!"../drivers/clk/tegra/clk.c", i32 32, i32 12}
!53 = !{ptr @clk_data, !54, !"clk_data", i1 false, i1 false}
!54 = !{!"../drivers/clk/tegra/clk.c", i32 33, i32 32}
!55 = !{ptr @special_reset_assert, !56, !"special_reset_assert", i1 false, i1 false}
!56 = !{!"../drivers/clk/tegra/clk.c", i32 36, i32 14}
!57 = !{ptr @special_reset_deassert, !58, !"special_reset_deassert", i1 false, i1 false}
!58 = !{!"../drivers/clk/tegra/clk.c", i32 37, i32 14}
!59 = !{ptr @num_special_reset, !60, !"num_special_reset", i1 false, i1 false}
!60 = !{!"../drivers/clk/tegra/clk.c", i32 38, i32 21}
!61 = !{ptr @clk_base, !62, !"clk_base", i1 false, i1 false}
!62 = !{!"../drivers/clk/tegra/clk.c", i32 99, i32 22}
!63 = !{ptr @tegra_clk_apply_init_table, !64, !"tegra_clk_apply_init_table", i1 false, i1 false}
!64 = !{!"../drivers/clk/tegra/clk.c", i32 444, i32 33}
!65 = !{ptr @periph_regs, !66, !"periph_regs", i1 false, i1 false}
!66 = !{!"../drivers/clk/tegra/clk.c", i32 40, i32 43}
!67 = !{ptr @rst_ctlr, !68, !"rst_ctlr", i1 false, i1 false}
!68 = !{!"../drivers/clk/tegra/clk.c", i32 317, i32 36}
!69 = !{ptr @rst_ops, !70, !"rst_ops", i1 false, i1 false}
!70 = !{!"../drivers/clk/tegra/clk.c", i32 311, i32 39}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 4996421}
!81 = !{i64 4996003}
!82 = !{i64 2153079885}
!83 = !{i64 2153081187}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i8 0, i8 2}
