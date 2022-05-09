; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-cdce706.c_pt.bc'
source_filename = "../drivers/clk/clk-cdce706.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cdce706_dev_data = type { ptr, ptr, [2 x ptr], [2 x ptr], [1 x %struct.cdce706_hw_data], [3 x %struct.cdce706_hw_data], [6 x %struct.cdce706_hw_data], [6 x %struct.cdce706_hw_data] }
%struct.cdce706_hw_data = type { ptr, i32, i32, %struct.clk_hw, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_cdce706__305_699_cdce706_i2c_driver_init6 = internal global ptr @cdce706_i2c_driver_init, section ".initcall6.init", align 4
@cdce706_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cdce706_probe, ptr @cdce706_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdce706_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cdce706_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cdce706_i2c_driver_exit = internal global ptr @cdce706_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [53 x i8] c"clk_cdce706.author=Max Filippov <jcmvbkbc@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [61 x i8] c"clk_cdce706.description=TI CDCE 706 clock synthesizer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [41 x i8] c"clk_cdce706.file=drivers/clk/clk-cdce706\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [24 x i8] c"clk_cdce706.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdce706\00", [24 x i8] zeroinitializer }, align 32
@cdce706_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cdce706\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdce706_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cdce706\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cdce706_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cdce706_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 3, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"clk_cdce706:645:(&cdce706_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@cdce706_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 647, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdce706_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-cdce706.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdce706_probe._entry_ptr = internal global ptr @cdce706_probe._entry, section ".printk_index", align 4
@cdce706_clkin_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce706_clkin_set_parent, ptr @cdce706_clkin_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdce706_clkin_name = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.13], [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_in0\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_in1\00", [24 x i8] zeroinitializer }, align 32
@cdce706_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error reading reg %u\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cdce706_reg_read\00", [47 x i8] zeroinitializer }, align 32
@cdce706_reg_read._entry_ptr = internal global ptr @cdce706_reg_read._entry, section ".printk_index", align 4
@cdce706_register_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 463, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdce706_register_hw\00", [44 x i8] zeroinitializer }, align 32
@cdce706_register_hw._entry_ptr = internal global ptr @cdce706_register_hw._entry, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_in\00", [25 x i8] zeroinitializer }, align 32
@cdce706_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce706_pll_recalc_rate, ptr @cdce706_pll_round_rate, ptr null, ptr null, ptr null, ptr @cdce706_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.cdce706_register_plls.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr @cdce706_pll_ops, ptr @cdce706_clkin_name, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, i32 0 }, align 4
@cdce706_register_plls.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_cdce706\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cdce706_register_plls\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i: %u, div: %u, mul: %u, mux: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cdce706_pll_recalc_rate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdce706_pll_recalc_rate\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s, pll: %d, mux: %d, mul: %u, div: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@cdce706_pll_round_rate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdce706_pll_round_rate\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, rate: %lu, parent_rate: %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce706_pll_round_rate.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, pll: %d, mul: %lu, div: %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce706_pll_set_rate.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.4, ptr @.str.21, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdce706_pll_set_rate\00", [43 x i8] zeroinitializer }, align 32
@cdce706_reg_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 138, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error updating reg %u\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdce706_reg_update\00", [45 x i8] zeroinitializer }, align 32
@cdce706_reg_update._entry_ptr = internal global ptr @cdce706_reg_update._entry, section ".printk_index", align 4
@cdce706_reg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 128, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error writing reg %u\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cdce706_reg_write\00", [46 x i8] zeroinitializer }, align 32
@cdce706_reg_write._entry_ptr = internal global ptr @cdce706_reg_write._entry, section ".printk_index", align 4
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll1\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll2\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll3\00", [27 x i8] zeroinitializer }, align 32
@cdce706_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce706_divider_recalc_rate, ptr @cdce706_divider_round_rate, ptr null, ptr @cdce706_divider_set_parent, ptr @cdce706_divider_get_parent, ptr @cdce706_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdce706_divider_parent_name = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.13, ptr @.str.27, ptr @.str.28, ptr @.str.28, ptr @.str.29], [44 x i8] zeroinitializer }, align 32
@__const.cdce706_register_dividers.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr @cdce706_divider_ops, ptr @cdce706_divider_parent_name, ptr null, ptr null, i8 5, [3 x i8] zeroinitializer, i32 4 }, align 4
@cdce706_register_dividers.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 -112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdce706_register_dividers\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: i: %u, parent: %u, div: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@cdce706_divider_name = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], [40 x i8] zeroinitializer }, align 32
@cdce706_divider_recalc_rate.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cdce706_divider_recalc_rate\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s, divider: %d, div: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@cdce706_divider_round_rate.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.4, ptr @.str.20, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cdce706_divider_round_rate\00", [37 x i8] zeroinitializer }, align 32
@cdce706_divider_round_rate.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s, %lu * %lu / %lu / %lu = %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce706_divider_round_rate.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.4, ptr @.str.36, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s, altering parent rate: %lu -> %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@cdce706_divider_round_rate.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.34, ptr @.str.4, ptr @.str.37, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s, divider: %d, div: %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@cdce706_divider_set_rate.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.38, ptr @.str.4, ptr @.str.33, i8 0, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdce706_divider_set_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p0\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p1\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p2\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p3\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p4\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"p5\00", [29 x i8] zeroinitializer }, align 32
@cdce706_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cdce706_clkout_prepare, ptr @cdce706_clkout_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce706_clkout_recalc_rate, ptr @cdce706_clkout_round_rate, ptr null, ptr @cdce706_clkout_set_parent, ptr @cdce706_clkout_get_parent, ptr @cdce706_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.cdce706_register_clkouts.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr null, ptr @cdce706_clkout_ops, ptr @cdce706_divider_name, ptr null, ptr null, i8 6, [3 x i8] zeroinitializer, i32 4 }, align 4
@cdce706_register_clkouts.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdce706_register_clkouts\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: i: %u, parent: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out0\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out1\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out2\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out3\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out4\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_out5\00", [23 x i8] zeroinitializer }, align 32
@of_clk_cdce_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.4, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"of_clk_cdce_get\00", [16 x i8] zeroinitializer }, align 32
@of_clk_cdce_get._entry_ptr = internal global ptr @of_clk_cdce_get._entry, section ".printk_index", align 4
@___asan_gen_.55 = private unnamed_addr constant [19 x i8] c"cdce706_i2c_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 690, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 692, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"cdce706_dt_match\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 677, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"cdce706_id\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 684, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [22 x i8] c"cdce706_regmap_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 59, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 645, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 647, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"cdce706_clkin_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 157, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"cdce706_clkin_name\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 92, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 89, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 89, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 118, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 462, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 93, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"cdce706_pll_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 251, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 541, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 167, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 192, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 202, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 218, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 138, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 128, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 97, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 97, i32 10 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 97, i32 18 }
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c"cdce706_divider_ops\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 373, i32 29 }
@___asan_gen_.187 = private unnamed_addr constant [28 x i8] c"cdce706_divider_parent_name\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 100, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 577, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [21 x i8] c"cdce706_divider_name\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 104, i32 20 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 282, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 297, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 336, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 344, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 351, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 363, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 14 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 20 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 26 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 105, i32 32 }
@___asan_gen_.238 = private unnamed_addr constant [19 x i8] c"cdce706_clkout_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 436, i32 29 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 606, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 14 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 26 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 50 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 109, i32 62 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [29 x i8] c"../drivers/clk/clk-cdce706.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 623, i32 3 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_cdce706_i2c_driver_exit, ptr @__initcall__kmod_clk_cdce706__305_699_cdce706_i2c_driver_init6, ptr @cdce706_i2c_driver_exit, ptr @cdce706_probe._entry, ptr @cdce706_probe._entry_ptr, ptr @cdce706_reg_read._entry, ptr @cdce706_reg_read._entry_ptr, ptr @cdce706_reg_update._entry, ptr @cdce706_reg_update._entry_ptr, ptr @cdce706_reg_write._entry, ptr @cdce706_reg_write._entry_ptr, ptr @cdce706_register_hw._entry, ptr @cdce706_register_hw._entry_ptr, ptr @of_clk_cdce_get._entry, ptr @of_clk_cdce_get._entry_ptr, ptr @cdce706_i2c_driver, ptr @.str, ptr @cdce706_dt_match, ptr @cdce706_id, ptr @cdce706_probe._key, ptr @cdce706_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cdce706_clkin_ops, ptr @cdce706_clkin_name, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @cdce706_pll_ops, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @cdce706_divider_ops, ptr @cdce706_divider_parent_name, ptr @.str.30, ptr @.str.31, ptr @cdce706_divider_name, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @cdce706_clkout_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_clkin_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_clkin_name to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_register_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_reg_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_reg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_divider_parent_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_divider_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce706_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_cdce_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cdce706_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdce706_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @cdce706_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %clock.i = alloca i32, align 4
  %source.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 600, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cdce706_regmap_config, ptr noundef nonnull @cdce706_probe._key, ptr noundef nonnull @.str.1) #9
  %regmap = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i54 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %9 = getelementptr inbounds i8, ptr %init.i, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50331647, ptr %9, align 4
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cdce706_clkin_ops, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %clkin_name.i = getelementptr %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clkin_name.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %14 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 4
  %15 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flags.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock.i) #9
  %17 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %clock.i, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %source.i) #9
  %18 = ptrtoint ptr %source.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %source.i, align 4, !annotation !167
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %call.i55 = tail call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #9
  %cmp.i.i = icmp ugt ptr %call.i55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end12.if.end.i_crit_edge, label %if.else.i

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call5.i = tail call ptr @__clk_get_name(ptr noundef %call.i55) #9
  %arrayidx8.i = getelementptr %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 2, i32 0
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i55, ptr %arrayidx8.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end12.if.end.i_crit_edge
  %call5.sink.i = phi ptr [ %call5.i, %if.else.i ], [ @.str.7, %if.end12.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %clkin_name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call5.sink.i, ptr %clkin_name.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %dev.1.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %call.1.i = tail call ptr @devm_clk_get(ptr noundef %dev.1.i, ptr noundef nonnull @.str.8) #9
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end.i.if.end.1.i_crit_edge, label %if.else.1.i

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i

if.else.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call5.1.i = tail call ptr @__clk_get_name(ptr noundef %call.1.i) #9
  %arrayidx8.1.i = getelementptr %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.1.i, ptr %arrayidx8.1.i, align 4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.else.1.i, %if.end.i.if.end.1.i_crit_edge
  %call5.1.sink.i = phi ptr [ %call5.1.i, %if.else.1.i ], [ @.str.8, %if.end.i.if.end.1.i_crit_edge ]
  %26 = getelementptr %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.1.sink.i, ptr %26, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i.i56 = call i32 @regmap_read(ptr noundef %29, i32 noundef 139, ptr noundef nonnull %source.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %cmp.i52.i = icmp slt i32 %call.i.i56, 0
  br i1 %cmp.i52.i, label %if.end.1.i.cdce706_register_clkin.exit.thread_crit_edge, label %if.end12.i

if.end.1.i.cdce706_register_clkin.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdce706_register_clkin.exit.thread

if.end12.i:                                       ; preds = %if.end.1.i
  %30 = ptrtoint ptr %source.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %source.i, align 4
  %and.i57 = and i32 %31, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %and.i57)
  %cmp13.i = icmp eq i32 %and.i57, 64
  br i1 %cmp13.i, label %if.then14.i, label %if.end12.i.if.end23.i_crit_edge

if.end12.i.if.end23.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then14.i:                                      ; preds = %if.end12.i
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i54.i = call i32 @regmap_read(ptr noundef %33, i32 noundef 138, ptr noundef nonnull %clock.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i)
  %cmp.i55.i = icmp slt i32 %call.i54.i, 0
  br i1 %cmp.i55.i, label %if.then14.i.cdce706_register_clkin.exit.thread_crit_edge, label %if.end18.i

if.then14.i.cdce706_register_clkin.exit.thread_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdce706_register_clkin.exit.thread

if.end18.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clock.i, align 4
  %and19.i = lshr i32 %35, 4
  %and19.lobit.i = and i32 %and19.i, 1
  %parent22.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %36 = ptrtoint ptr %parent22.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and19.lobit.i, ptr %parent22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.end18.i, %if.end12.i.if.end23.i_crit_edge
  %clkin24.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.13, ptr %init.i, align 4
  %38 = ptrtoint ptr %clkin24.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %clkin24.i, align 4
  %idx.i.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %39 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %idx.i.i, align 4
  %hw1.i.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  %init2.i.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %call.i, i32 0, i32 4, i32 0, i32 3, i32 2
  %40 = ptrtoint ptr %init2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %init.i, ptr %init2.i.i, align 4
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  %dev.i59.i = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %call.i60.i = call i32 @devm_clk_hw_register(ptr noundef %dev.i59.i, ptr noundef %hw1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool.not.i.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool.not.i.i, label %cdce706_register_clkin.exit.thread60, label %cdce706_register_clkin.exit

cdce706_register_clkin.exit.thread60:             ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %if.end15

cdce706_register_clkin.exit.thread:               ; preds = %if.then14.i.cdce706_register_clkin.exit.thread_crit_edge, %if.end.1.i.cdce706_register_clkin.exit.thread_crit_edge
  %.sink = phi i32 [ 11, %if.end.1.i.cdce706_register_clkin.exit.thread_crit_edge ], [ 10, %if.then14.i.cdce706_register_clkin.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ %call.i.i56, %if.end.1.i.cdce706_register_clkin.exit.thread_crit_edge ], [ %call.i54.i, %if.then14.i.cdce706_register_clkin.exit.thread_crit_edge ]
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.9, i32 noundef %.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  br label %cleanup

cdce706_register_clkin.exit:                      ; preds = %if.end23.i
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %dev5.i.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %source.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %cmp = icmp slt i32 %call.i60.i, 0
  br i1 %cmp, label %cdce706_register_clkin.exit.cleanup_crit_edge, label %cdce706_register_clkin.exit.if.end15_crit_edge

cdce706_register_clkin.exit.if.end15_crit_edge:   ; preds = %cdce706_register_clkin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

cdce706_register_clkin.exit.cleanup_crit_edge:    ; preds = %cdce706_register_clkin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %cdce706_register_clkin.exit.if.end15_crit_edge, %cdce706_register_clkin.exit.thread60
  %call16 = call fastcc i32 @cdce706_register_plls(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %call20 = call fastcc i32 @cdce706_register_dividers(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %call24 = call fastcc i32 @cdce706_register_clkouts(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %call29 = call i32 @of_clk_add_hw_provider(ptr noundef %48, ptr noundef nonnull @of_clk_cdce_get, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %cdce706_register_clkin.exit.cleanup_crit_edge, %cdce706_register_clkin.exit.thread, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call29, %if.end27 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i60.i, %cdce706_register_clkin.exit.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ], [ %retval.0.i.ph, %cdce706_register_clkin.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdce706_register_plls(ptr noundef %cdce) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %mux = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = call ptr @memcpy(ptr %init, ptr @__const.cdce706_register_plls.init, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mux) #9
  %1 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mux, align 4, !annotation !167
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 131, ptr noundef nonnull %mux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cdce706_reg_read.exit.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

cdce706_reg_read.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdce, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef 3) #12
  br label %cleanup46

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0117 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #9
  %6 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %m, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %7 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %n, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #9
  %8 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %v, align 4, !annotation !167
  %mul = mul nuw nsw i32 %i.0117, 3
  %add = add nuw nsw i32 %mul, 1
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i83 = call i32 @regmap_read(ptr noundef %10, i32 noundef %or.i, ptr noundef nonnull %m) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %cmp.i84 = icmp slt i32 %call.i83, 0
  br i1 %cmp.i84, label %for.body.cleanup.thread_crit_edge, label %if.end5

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end5:                                          ; preds = %for.body
  %add7 = add nuw nsw i32 %mul, 2
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %or.i89 = or i32 %add7, 128
  %call.i90 = call i32 @regmap_read(ptr noundef %12, i32 noundef %or.i89, ptr noundef nonnull %n) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i91 = icmp slt i32 %call.i90, 0
  br i1 %cmp.i91, label %if.end5.cleanup.thread_crit_edge, label %if.end11

if.end5.cleanup.thread_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end11:                                         ; preds = %if.end5
  %add13 = add nuw nsw i32 %mul, 3
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %or.i96 = or i32 %add13, 128
  %call.i97 = call i32 @regmap_read(ptr noundef %14, i32 noundef %or.i96, ptr noundef nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %cmp.i98 = icmp slt i32 %call.i97, 0
  br i1 %cmp.i98, label %if.end11.cleanup.thread_crit_edge, label %if.end17

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end17:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m, align 4
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v, align 4
  %and = shl i32 %18, 8
  %shl = and i32 %and, 256
  %or = or i32 %shl, %16
  %div = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 %i.0117, i32 4
  %19 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %div, align 4
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n, align 4
  %and18 = shl i32 %18, 7
  %shl19 = and i32 %and18, 3840
  %or20 = or i32 %21, %shl19
  %mul23 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 %i.0117, i32 5
  %22 = ptrtoint ptr %mul23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or20, ptr %mul23, align 4
  %23 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mux, align 4
  %shr = lshr i32 128, %i.0117
  %and24 = and i32 %24, %shr
  %mux27 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 %i.0117, i32 6
  %25 = ptrtoint ptr %mux27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %and24, ptr %mux27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_register_plls.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_register_plls, %if.then31)) #9
          to label %for.inc [label %if.then31], !srcloc !168

if.then31:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cdce, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %div, align 4
  %30 = ptrtoint ptr %mul23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mul23, align 4
  %32 = ptrtoint ptr %mux27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mux27, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_register_plls.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %i.0117, i32 noundef %29, i32 noundef %31, i32 noundef %33) #9
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end11.cleanup.thread_crit_edge, %if.end5.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %add.lcssa.sink = phi i32 [ %add, %for.body.cleanup.thread_crit_edge ], [ %add7, %if.end5.cleanup.thread_crit_edge ], [ %add13, %if.end11.cleanup.thread_crit_edge ]
  %retval.1.ph = phi i32 [ %call.i83, %for.body.cleanup.thread_crit_edge ], [ %call.i90, %if.end5.cleanup.thread_crit_edge ], [ %call.i97, %if.end11.cleanup.thread_crit_edge ]
  %34 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cdce, align 4
  %dev.i85 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i85, ptr noundef nonnull @.str.9, i32 noundef %add.lcssa.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  br label %cleanup46

for.inc:                                          ; preds = %if.then31, %if.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %pll44 = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5
  %36 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.27, ptr %init, align 4
  %37 = ptrtoint ptr %pll44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %cdce, ptr %pll44, align 4
  %idx.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 0, i32 1
  %38 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %idx.i, align 4
  %hw1.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 0, i32 3
  %init2.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 0, i32 3, i32 2
  %39 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %init, ptr %init2.i, align 4
  %40 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cdce, align 4
  %dev.i102 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  %call.i103 = call i32 @devm_clk_hw_register(ptr noundef %dev.i102, ptr noundef %hw1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool.not.i = icmp eq i32 %call.i103, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.end.do.end.i104_crit_edge

for.end.do.end.i104_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i104

do.end.i104:                                      ; preds = %for.inc.i.1.do.end.i104_crit_edge, %for.inc.i.do.end.i104_crit_edge, %for.end.do.end.i104_crit_edge
  %.lcssa = phi ptr [ @.str.27, %for.end.do.end.i104_crit_edge ], [ @.str.28, %for.inc.i.do.end.i104_crit_edge ], [ @.str.29, %for.inc.i.1.do.end.i104_crit_edge ]
  %call.i103.lcssa = phi i32 [ %call.i103, %for.end.do.end.i104_crit_edge ], [ %call.i103.1, %for.inc.i.do.end.i104_crit_edge ], [ %call.i103.2, %for.inc.i.1.do.end.i104_crit_edge ]
  %42 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cdce, align 4
  %dev5.i = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %.lcssa) #12
  br label %cleanup46

for.inc.i:                                        ; preds = %for.end
  %incdec.ptr.i = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.28, ptr %init, align 4
  %45 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %cdce, ptr %incdec.ptr.i, align 4
  %idx.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 1, i32 1
  %46 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %idx.i.1, align 4
  %hw1.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 1, i32 3
  %init2.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 1, i32 3, i32 2
  %47 = ptrtoint ptr %init2.i.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %init, ptr %init2.i.1, align 4
  %48 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdce, align 4
  %dev.i102.1 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4
  %call.i103.1 = call i32 @devm_clk_hw_register(ptr noundef %dev.i102.1, ptr noundef %hw1.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.1)
  %tobool.not.i.1 = icmp eq i32 %call.i103.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %for.inc.i.do.end.i104_crit_edge

for.inc.i.do.end.i104_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i104

for.inc.i.1:                                      ; preds = %for.inc.i
  %incdec.ptr.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 2
  %50 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.29, ptr %init, align 4
  %51 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %cdce, ptr %incdec.ptr.i.1, align 4
  %idx.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 2, i32 1
  %52 = ptrtoint ptr %idx.i.2 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %idx.i.2, align 4
  %hw1.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 2, i32 3
  %init2.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 5, i32 2, i32 3, i32 2
  %53 = ptrtoint ptr %init2.i.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %init, ptr %init2.i.2, align 4
  %54 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cdce, align 4
  %dev.i102.2 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  %call.i103.2 = call i32 @devm_clk_hw_register(ptr noundef %dev.i102.2, ptr noundef %hw1.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.2)
  %tobool.not.i.2 = icmp eq i32 %call.i103.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.1.cleanup46_crit_edge, label %for.inc.i.1.do.end.i104_crit_edge

for.inc.i.1.do.end.i104_crit_edge:                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i104

for.inc.i.1.cleanup46_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup46

cleanup46:                                        ; preds = %for.inc.i.1.cleanup46_crit_edge, %do.end.i104, %cleanup.thread, %cdce706_reg_read.exit.thread
  %retval.2 = phi i32 [ %call.i, %cdce706_reg_read.exit.thread ], [ %retval.1.ph, %cleanup.thread ], [ %call.i103.lcssa, %do.end.i104 ], [ 0, %for.inc.i.1.cleanup46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mux) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdce706_register_dividers(ptr noundef %cdce) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = call ptr @memcpy(ptr %init, ptr @__const.cdce706_register_dividers.init, i32 28)
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.088 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !167
  %add = add nuw nsw i32 %i.088, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088)
  %cmp1 = icmp ugt i32 %i.088, 2
  %conv.neg = sext i1 %cmp1 to i32
  %sub = add nsw i32 %add, %conv.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.088)
  %cmp2 = icmp eq i32 %i.088, 5
  %conv3.neg = sext i1 %cmp2 to i32
  %sub4 = add nsw i32 %sub, %conv3.neg
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %sub4, 128
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %or.i, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.cleanup.thread_crit_edge, label %if.end

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.088)
  %cmp7 = icmp ult i32 %i.088, 2
  %and = and i32 %i.088, 1
  %mul = mul nuw nsw i32 %and, 3
  %cond = select i1 %cmp7, i32 5, i32 %mul
  %shl = shl nuw nsw i32 7, %cond
  %and9 = and i32 %5, %shl
  %shr = lshr i32 %and9, %cond
  %parent = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 %i.088, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %parent, align 4
  %add18 = add nuw nsw i32 %i.088, 13
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %or.i71 = or i32 %add18, 128
  %call.i72 = call i32 @regmap_read(ptr noundef %8, i32 noundef %or.i71, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp.i73, label %if.end.cleanup.thread_crit_edge, label %if.end23

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and24 = and i32 %10, 127
  %div = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 %i.088, i32 4
  %11 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and24, ptr %div, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_register_dividers.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_register_dividers, %if.then30)) #9
          to label %for.inc [label %if.then30], !srcloc !168

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cdce, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %parent, align 4
  %16 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %div, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_register_dividers.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef %i.088, i32 noundef %15, i32 noundef %17) #9
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %sub4.lcssa.sink = phi i32 [ %sub4, %for.body.cleanup.thread_crit_edge ], [ %add18, %if.end.cleanup.thread_crit_edge ]
  %retval.1.ph = phi i32 [ %call.i, %for.body.cleanup.thread_crit_edge ], [ %call.i72, %if.end.cleanup.thread_crit_edge ]
  %18 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdce, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %sub4.lcssa.sink) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup40

for.inc:                                          ; preds = %if.then30, %if.end23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %divider38 = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6
  %20 = load ptr, ptr @cdce706_divider_name, align 4
  %21 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %init, align 4
  %22 = ptrtoint ptr %divider38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cdce, ptr %divider38, align 4
  %idx.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 0, i32 1
  %23 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %idx.i, align 4
  %hw1.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 0, i32 3
  %init2.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 0, i32 3, i32 2
  %24 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %init, ptr %init2.i, align 4
  %25 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdce, align 4
  %dev.i77 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %call.i78 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77, ptr noundef %hw1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.end.do.end.i79_crit_edge

for.end.do.end.i79_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

do.end.i79:                                       ; preds = %for.inc.i.4.do.end.i79_crit_edge, %for.inc.i.3.do.end.i79_crit_edge, %for.inc.i.2.do.end.i79_crit_edge, %for.inc.i.1.do.end.i79_crit_edge, %for.inc.i.do.end.i79_crit_edge, %for.end.do.end.i79_crit_edge
  %arrayidx.i.lcssa = phi ptr [ @cdce706_divider_name, %for.end.do.end.i79_crit_edge ], [ getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 1), %for.inc.i.do.end.i79_crit_edge ], [ getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 2), %for.inc.i.1.do.end.i79_crit_edge ], [ getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 3), %for.inc.i.2.do.end.i79_crit_edge ], [ getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 4), %for.inc.i.3.do.end.i79_crit_edge ], [ getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 5), %for.inc.i.4.do.end.i79_crit_edge ]
  %call.i78.lcssa = phi i32 [ %call.i78, %for.end.do.end.i79_crit_edge ], [ %call.i78.1, %for.inc.i.do.end.i79_crit_edge ], [ %call.i78.2, %for.inc.i.1.do.end.i79_crit_edge ], [ %call.i78.3, %for.inc.i.2.do.end.i79_crit_edge ], [ %call.i78.4, %for.inc.i.3.do.end.i79_crit_edge ], [ %call.i78.5, %for.inc.i.4.do.end.i79_crit_edge ]
  %27 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cdce, align 4
  %dev5.i = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.11, ptr noundef %30) #12
  br label %cleanup40

for.inc.i:                                        ; preds = %for.end
  %incdec.ptr.i = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 1
  %31 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 1), align 4
  %32 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %init, align 4
  %33 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cdce, ptr %incdec.ptr.i, align 4
  %idx.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 1, i32 1
  %34 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %idx.i.1, align 4
  %hw1.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 1, i32 3
  %init2.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 1, i32 3, i32 2
  %35 = ptrtoint ptr %init2.i.1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %init, ptr %init2.i.1, align 4
  %36 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdce, align 4
  %dev.i77.1 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %call.i78.1 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77.1, ptr noundef %hw1.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.1)
  %tobool.not.i.1 = icmp eq i32 %call.i78.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %for.inc.i.do.end.i79_crit_edge

for.inc.i.do.end.i79_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

for.inc.i.1:                                      ; preds = %for.inc.i
  %incdec.ptr.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 2
  %38 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 2), align 4
  %39 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %init, align 4
  %40 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cdce, ptr %incdec.ptr.i.1, align 4
  %idx.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 2, i32 1
  %41 = ptrtoint ptr %idx.i.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %idx.i.2, align 4
  %hw1.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 2, i32 3
  %init2.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 2, i32 3, i32 2
  %42 = ptrtoint ptr %init2.i.2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %init, ptr %init2.i.2, align 4
  %43 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cdce, align 4
  %dev.i77.2 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %call.i78.2 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77.2, ptr noundef %hw1.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.2)
  %tobool.not.i.2 = icmp eq i32 %call.i78.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %for.inc.i.1.do.end.i79_crit_edge

for.inc.i.1.do.end.i79_crit_edge:                 ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %incdec.ptr.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 3
  %45 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 3), align 4
  %46 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %init, align 4
  %47 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %cdce, ptr %incdec.ptr.i.2, align 4
  %idx.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 3, i32 1
  %48 = ptrtoint ptr %idx.i.3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %idx.i.3, align 4
  %hw1.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 3, i32 3
  %init2.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 3, i32 3, i32 2
  %49 = ptrtoint ptr %init2.i.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %init, ptr %init2.i.3, align 4
  %50 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cdce, align 4
  %dev.i77.3 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 4
  %call.i78.3 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77.3, ptr noundef %hw1.i.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.3)
  %tobool.not.i.3 = icmp eq i32 %call.i78.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %for.inc.i.2.do.end.i79_crit_edge

for.inc.i.2.do.end.i79_crit_edge:                 ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %incdec.ptr.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 4
  %52 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 4), align 4
  %53 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %init, align 4
  %54 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cdce, ptr %incdec.ptr.i.3, align 4
  %idx.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 4, i32 1
  %55 = ptrtoint ptr %idx.i.4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %idx.i.4, align 4
  %hw1.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 4, i32 3
  %init2.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 4, i32 3, i32 2
  %56 = ptrtoint ptr %init2.i.4 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init, ptr %init2.i.4, align 4
  %57 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cdce, align 4
  %dev.i77.4 = getelementptr inbounds %struct.i2c_client, ptr %58, i32 0, i32 4
  %call.i78.4 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77.4, ptr noundef %hw1.i.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.4)
  %tobool.not.i.4 = icmp eq i32 %call.i78.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4, label %for.inc.i.3.do.end.i79_crit_edge

for.inc.i.3.do.end.i79_crit_edge:                 ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %incdec.ptr.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 5
  %59 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @cdce706_divider_name, i32 0, i32 5), align 4
  %60 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %init, align 4
  %61 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %cdce, ptr %incdec.ptr.i.4, align 4
  %idx.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 5, i32 1
  %62 = ptrtoint ptr %idx.i.5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 5, ptr %idx.i.5, align 4
  %hw1.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 5, i32 3
  %init2.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 6, i32 5, i32 3, i32 2
  %63 = ptrtoint ptr %init2.i.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %init, ptr %init2.i.5, align 4
  %64 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cdce, align 4
  %dev.i77.5 = getelementptr inbounds %struct.i2c_client, ptr %65, i32 0, i32 4
  %call.i78.5 = call i32 @devm_clk_hw_register(ptr noundef %dev.i77.5, ptr noundef %hw1.i.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.5)
  %tobool.not.i.5 = icmp eq i32 %call.i78.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.4.cleanup40_crit_edge, label %for.inc.i.4.do.end.i79_crit_edge

for.inc.i.4.do.end.i79_crit_edge:                 ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i79

for.inc.i.4.cleanup40_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup40

cleanup40:                                        ; preds = %for.inc.i.4.cleanup40_crit_edge, %do.end.i79, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ %call.i78.lcssa, %do.end.i79 ], [ 0, %for.inc.i.4.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdce706_register_clkouts(ptr noundef %cdce) unnamed_addr #2 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = call ptr @memcpy(ptr %init, ptr @__const.cdce706_register_clkouts.init, i32 28)
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.034 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !167
  %add = add nuw nsw i32 %i.034, 19
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef %or.i, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cleanup.thread, label %if.end

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdce, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.9, i32 noundef %add) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup12

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 7
  %parent = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 %i.034, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %parent, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_register_clkouts.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_register_clkouts, %if.then5)) #9
          to label %for.inc [label %if.then5], !srcloc !168

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdce, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %parent, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_register_clkouts.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %i.034, i32 noundef %12) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %clkout10 = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7
  %13 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.47, ptr %init, align 4
  %14 = ptrtoint ptr %clkout10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cdce, ptr %clkout10, align 4
  %idx.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %idx.i, align 4
  %hw1.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 0, i32 3
  %init2.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %init2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init2.i, align 4
  %17 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cdce, align 4
  %dev.i26 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %call.i27 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26, ptr noundef %hw1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i, label %for.inc.i, label %for.end.do.end.i28_crit_edge

for.end.do.end.i28_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

do.end.i28:                                       ; preds = %for.inc.i.4.do.end.i28_crit_edge, %for.inc.i.3.do.end.i28_crit_edge, %for.inc.i.2.do.end.i28_crit_edge, %for.inc.i.1.do.end.i28_crit_edge, %for.inc.i.do.end.i28_crit_edge, %for.end.do.end.i28_crit_edge
  %.lcssa = phi ptr [ @.str.47, %for.end.do.end.i28_crit_edge ], [ @.str.48, %for.inc.i.do.end.i28_crit_edge ], [ @.str.49, %for.inc.i.1.do.end.i28_crit_edge ], [ @.str.50, %for.inc.i.2.do.end.i28_crit_edge ], [ @.str.51, %for.inc.i.3.do.end.i28_crit_edge ], [ @.str.52, %for.inc.i.4.do.end.i28_crit_edge ]
  %call.i27.lcssa = phi i32 [ %call.i27, %for.end.do.end.i28_crit_edge ], [ %call.i27.1, %for.inc.i.do.end.i28_crit_edge ], [ %call.i27.2, %for.inc.i.1.do.end.i28_crit_edge ], [ %call.i27.3, %for.inc.i.2.do.end.i28_crit_edge ], [ %call.i27.4, %for.inc.i.3.do.end.i28_crit_edge ], [ %call.i27.5, %for.inc.i.4.do.end.i28_crit_edge ]
  %19 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cdce, align 4
  %dev5.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5.i, ptr noundef nonnull @.str.11, ptr noundef nonnull %.lcssa) #12
  br label %cleanup12

for.inc.i:                                        ; preds = %for.end
  %incdec.ptr.i = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.48, ptr %init, align 4
  %22 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cdce, ptr %incdec.ptr.i, align 4
  %idx.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 1, i32 1
  %23 = ptrtoint ptr %idx.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %idx.i.1, align 4
  %hw1.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 1, i32 3
  %init2.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 1, i32 3, i32 2
  %24 = ptrtoint ptr %init2.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %init, ptr %init2.i.1, align 4
  %25 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cdce, align 4
  %dev.i26.1 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  %call.i27.1 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26.1, ptr noundef %hw1.i.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.1)
  %tobool.not.i.1 = icmp eq i32 %call.i27.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1, label %for.inc.i.do.end.i28_crit_edge

for.inc.i.do.end.i28_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.inc.i.1:                                      ; preds = %for.inc.i
  %incdec.ptr.i.1 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 2
  %27 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.49, ptr %init, align 4
  %28 = ptrtoint ptr %incdec.ptr.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cdce, ptr %incdec.ptr.i.1, align 4
  %idx.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 2, i32 1
  %29 = ptrtoint ptr %idx.i.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %idx.i.2, align 4
  %hw1.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 2, i32 3
  %init2.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 2, i32 3, i32 2
  %30 = ptrtoint ptr %init2.i.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %init, ptr %init2.i.2, align 4
  %31 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cdce, align 4
  %dev.i26.2 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %call.i27.2 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26.2, ptr noundef %hw1.i.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.2)
  %tobool.not.i.2 = icmp eq i32 %call.i27.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2, label %for.inc.i.1.do.end.i28_crit_edge

for.inc.i.1.do.end.i28_crit_edge:                 ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %incdec.ptr.i.2 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.50, ptr %init, align 4
  %34 = ptrtoint ptr %incdec.ptr.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cdce, ptr %incdec.ptr.i.2, align 4
  %idx.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 3, i32 1
  %35 = ptrtoint ptr %idx.i.3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %idx.i.3, align 4
  %hw1.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 3, i32 3
  %init2.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 3, i32 3, i32 2
  %36 = ptrtoint ptr %init2.i.3 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %init, ptr %init2.i.3, align 4
  %37 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cdce, align 4
  %dev.i26.3 = getelementptr inbounds %struct.i2c_client, ptr %38, i32 0, i32 4
  %call.i27.3 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26.3, ptr noundef %hw1.i.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.3)
  %tobool.not.i.3 = icmp eq i32 %call.i27.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3, label %for.inc.i.2.do.end.i28_crit_edge

for.inc.i.2.do.end.i28_crit_edge:                 ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.inc.i.3:                                      ; preds = %for.inc.i.2
  %incdec.ptr.i.3 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 4
  %39 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.51, ptr %init, align 4
  %40 = ptrtoint ptr %incdec.ptr.i.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cdce, ptr %incdec.ptr.i.3, align 4
  %idx.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 4, i32 1
  %41 = ptrtoint ptr %idx.i.4 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %idx.i.4, align 4
  %hw1.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 4, i32 3
  %init2.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 4, i32 3, i32 2
  %42 = ptrtoint ptr %init2.i.4 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %init, ptr %init2.i.4, align 4
  %43 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cdce, align 4
  %dev.i26.4 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %call.i27.4 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26.4, ptr noundef %hw1.i.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.4)
  %tobool.not.i.4 = icmp eq i32 %call.i27.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4, label %for.inc.i.3.do.end.i28_crit_edge

for.inc.i.3.do.end.i28_crit_edge:                 ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.inc.i.4:                                      ; preds = %for.inc.i.3
  %incdec.ptr.i.4 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 5
  %45 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.52, ptr %init, align 4
  %46 = ptrtoint ptr %incdec.ptr.i.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %cdce, ptr %incdec.ptr.i.4, align 4
  %idx.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 5, i32 1
  %47 = ptrtoint ptr %idx.i.5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %idx.i.5, align 4
  %hw1.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 5, i32 3
  %init2.i.5 = getelementptr %struct.cdce706_dev_data, ptr %cdce, i32 0, i32 7, i32 5, i32 3, i32 2
  %48 = ptrtoint ptr %init2.i.5 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %init, ptr %init2.i.5, align 4
  %49 = ptrtoint ptr %cdce to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cdce, align 4
  %dev.i26.5 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  %call.i27.5 = call i32 @devm_clk_hw_register(ptr noundef %dev.i26.5, ptr noundef %hw1.i.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.5)
  %tobool.not.i.5 = icmp eq i32 %call.i27.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.4.cleanup12_crit_edge, label %for.inc.i.4.do.end.i28_crit_edge

for.inc.i.4.do.end.i28_crit_edge:                 ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i28

for.inc.i.4.cleanup12_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup12

cleanup12:                                        ; preds = %for.inc.i.4.cleanup12_crit_edge, %do.end.i28, %cleanup.thread
  %retval.2 = phi i32 [ %call.i, %cleanup.thread ], [ %call.i27.lcssa, %do.end.i28 ], [ 0, %for.inc.i.4.cleanup12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_cdce_get(ptr nocapture noundef readonly %clkspec, ptr noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp = icmp ugt i32 %1, 5
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hw = getelementptr %struct.cdce706_dev_data, ptr %data, i32 0, i32 7, i32 %1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %hw, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cdce706_clkin_set_parent(ptr nocapture noundef writeonly %hw, i8 noundef zeroext %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %index to i32
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv, ptr %parent, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cdce706_clkin_get_parent(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_pll_recalc_rate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_pll_recalc_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %mux = getelementptr i8, ptr %hw, i32 20
  %6 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mux, align 4
  %mul = getelementptr i8, ptr %hw, i32 16
  %8 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mul, align 4
  %div = getelementptr i8, ptr %hw, i32 12
  %10 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_pll_recalc_rate.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mux4 = getelementptr i8, ptr %hw, i32 20
  %12 = ptrtoint ptr %mux4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mux4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  %div7 = getelementptr i8, ptr %hw, i32 12
  %14 = ptrtoint ptr %div7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %div7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.then6, label %if.else211

if.then6:                                         ; preds = %do.end
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %land.lhs.true

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then6
  %mul9 = getelementptr i8, ptr %hw, i32 16
  %16 = ptrtoint ptr %mul9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mul9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %conv = zext i32 %parent_rate to i64
  %conv13 = zext i32 %17 to i64
  %mul14 = mul nuw i64 %conv13, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul14)
  %cmp189 = icmp ult i64 %mul14, 4294967296
  br i1 %cmp189, label %if.then197, label %if.else203, !prof !169

if.then197:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %conv198 = trunc i64 %mul14 to i32
  %div201 = udiv i32 %conv198, %15
  br label %cleanup

if.else203:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %15, i64 %mul14) #13, !srcloc !170
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t337 = trunc i64 %asmresult1.i to i32
  br label %cleanup

if.else211:                                       ; preds = %do.end
  br i1 %tobool8.not, label %if.else211.cleanup_crit_edge, label %if.then214

if.else211.cleanup_crit_edge:                     ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then214:                                       ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #11
  %div216 = udiv i32 %parent_rate, %15
  br label %cleanup

cleanup:                                          ; preds = %if.then214, %if.else211.cleanup_crit_edge, %if.else203, %if.then197, %land.lhs.true.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ %div216, %if.then214 ], [ 0, %if.else211.cleanup_crit_edge ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %div201, %if.then197 ], [ %extract.t337, %if.else203 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_pll_round_rate(ptr nocapture noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #2 align 64 {
entry:
  %mul = alloca i32, align 4
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul) #9
  %0 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mul, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #9
  %1 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %div, align 4, !annotation !167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_pll_round_rate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_pll_round_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_pll_round_rate.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %rate, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  call void @rational_best_approximation(i32 noundef %rate, i32 noundef %9, i32 noundef 4095, i32 noundef 511, ptr noundef nonnull %mul, ptr noundef nonnull %div) #9
  %10 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mul, align 4
  %mul4 = getelementptr i8, ptr %hw, i32 16
  %12 = ptrtoint ptr %mul4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mul4, align 4
  %13 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %div, align 4
  %div5 = getelementptr i8, ptr %hw, i32 12
  %15 = ptrtoint ptr %div5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %div5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_pll_round_rate.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_pll_round_rate, %if.then18)) #9
          to label %do.end24 [label %if.then18], !srcloc !168

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx, align 4
  %22 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mul, align 4
  %24 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %div, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_pll_round_rate.__UNIQUE_ID_ddebug290, ptr noundef %dev21, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.end
  %26 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parent_rate, align 4
  %conv = zext i32 %27 to i64
  %28 = ptrtoint ptr %mul4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mul4, align 4
  %conv26 = zext i32 %29 to i64
  %mul27 = mul nuw i64 %conv26, %conv
  %30 = ptrtoint ptr %div5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %div5, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul27)
  %cmp201 = icmp ult i64 %mul27, 4294967296
  br i1 %cmp201, label %if.then209, label %if.else215, !prof !169

if.then209:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %conv210 = trunc i64 %mul27 to i32
  %div213 = udiv i32 %conv210, %31
  br label %if.end219

if.else215:                                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  %32 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %mul27) #13, !srcloc !170
  %asmresult1.i = extractvalue { i64, i64 } %32, 1
  %extract.t340 = trunc i64 %asmresult1.i to i32
  br label %if.end219

if.end219:                                        ; preds = %if.else215, %if.then209
  %res.0.off0 = phi i32 [ %div213, %if.then209 ], [ %extract.t340, %if.else215 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul) #9
  ret i32 %res.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %mul1 = getelementptr i8, ptr %hw, i32 16
  %0 = ptrtoint ptr %mul1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mul1, align 4
  %div2 = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %div2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_pll_set_rate.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_pll_set_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_pll_set_rate.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %9, i32 noundef %1, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %idx7 = getelementptr i8, ptr %hw, i32 -8
  %12 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx7, align 4
  %mul8 = mul i32 %13, 3
  %add = add i32 %mul8, 3
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 1
  %shr9 = lshr i32 %1, 7
  %and10 = and i32 %shr9, 30
  %or = or i32 %and, %and10
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %or.i, i32 noundef 31, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %cdce706_reg_update.exit.thread, label %if.end13

cdce706_reg_update.exit.thread:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %20 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx7, align 4
  %mul16 = mul i32 %21, 3
  %add17 = add i32 %mul16, 1
  %and18 = and i32 %3, 255
  %regmap.i64 = getelementptr inbounds %struct.cdce706_dev_data, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i64, align 4
  %or.i65 = or i32 %add17, 128
  %call.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %or.i65, i32 noundef %and18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i66 = icmp slt i32 %call.i, 0
  br i1 %cmp.i66, label %cdce706_reg_write.exit.thread, label %if.end22

cdce706_reg_write.exit.thread:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 4
  %dev.i67 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i67, ptr noundef nonnull @.str.25, i32 noundef %add17) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end13
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 4
  %28 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %idx7, align 4
  %mul25 = mul i32 %29, 3
  %add26 = add i32 %mul25, 2
  %and27 = and i32 %1, 255
  %regmap.i69 = getelementptr inbounds %struct.cdce706_dev_data, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i69 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i69, align 4
  %or.i70 = or i32 %add26, 128
  %call.i71 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %or.i70, i32 noundef %and27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp.i72 = icmp slt i32 %call.i71, 0
  br i1 %cmp.i72, label %cdce706_reg_write.exit75.thread, label %if.end31

cdce706_reg_write.exit75.thread:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %27, align 4
  %dev.i73 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.25, i32 noundef %add26) #12
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %36 = ptrtoint ptr %idx7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx7, align 4
  %shr34 = lshr i32 128, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000000, i32 %rate)
  %cmp35 = icmp ugt i32 %rate, 180000000
  %spec.select = select i1 %cmp35, i32 %shr34, i32 0
  %regmap.i76 = getelementptr inbounds %struct.cdce706_dev_data, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i76, align 4
  %call.i.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 134, i32 noundef %shr34, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp.i78 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp.i78, label %do.end.i80, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i80:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 4
  %dev.i79 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i79, ptr noundef nonnull @.str.23, i32 noundef 6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i80, %if.end31.cleanup_crit_edge, %cdce706_reg_write.exit75.thread, %cdce706_reg_write.exit.thread, %cdce706_reg_update.exit.thread
  %retval.0 = phi i32 [ %call.i.i, %cdce706_reg_update.exit.thread ], [ %call.i, %cdce706_reg_write.exit.thread ], [ %call.i71, %cdce706_reg_write.exit75.thread ], [ %call.i.i77, %if.end31.cleanup_crit_edge ], [ %call.i.i77, %do.end.i80 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_divider_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_recalc_rate.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_recalc_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %div = getelementptr i8, ptr %hw, i32 12
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_recalc_rate.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %div4 = getelementptr i8, ptr %hw, i32 12
  %8 = ptrtoint ptr %div4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.then6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %div8 = udiv i32 %parent_rate, %9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %div8, %if.then6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #2 align 64 {
entry:
  %mul = alloca i32, align 4
  %div = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mul) #9
  %2 = ptrtoint ptr %mul to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mul, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #9
  %3 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div, align 4, !annotation !167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_round_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %parent_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_round_rate.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.34, i32 noundef %rate, i32 noundef %9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parent_rate, align 4
  call void @rational_best_approximation(i32 noundef %rate, i32 noundef %11, i32 noundef 1, i32 noundef 127, ptr noundef nonnull %mul, ptr noundef nonnull %div) #9
  %12 = ptrtoint ptr %mul to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mul, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.then6, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 127, ptr %div, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  %call8 = call i32 @clk_hw_get_flags(ptr noundef %hw) #9
  %and = and i32 %call8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end7.if.end507_crit_edge, label %if.then10

if.end7.if.end507_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end507

if.then10:                                        ; preds = %if.end7
  %parent = getelementptr inbounds %struct.cdce706_dev_data, ptr %1, i32 0, i32 4, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parent, align 4
  %arrayidx11 = getelementptr %struct.cdce706_dev_data, ptr %1, i32 0, i32 2, i32 %16
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %if.then10.cond.end_crit_edge, label %cond.true

if.then10.cond.end_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = call i32 @clk_get_rate(ptr noundef nonnull %18) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then10.cond.end_crit_edge
  %cond = phi i32 [ %call13, %cond.true ], [ 0, %if.then10.cond.end_crit_edge ]
  %div14 = udiv i32 80000000, %rate
  %19 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div14, ptr %div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool15.not817 = icmp eq i32 %rate, 0
  br i1 %tobool15.not817, label %cond.end.for.end_crit_edge, label %land.rhs.lr.ph

cond.end.for.end_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %cond.end
  %div16 = udiv i32 300000000, %rate
  %conv = zext i32 %cond to i64
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %best_diff.0820 = phi i32 [ %rate, %land.rhs.lr.ph ], [ %best_diff.2, %cleanup.land.rhs_crit_edge ]
  %best_div.0819 = phi i32 [ 0, %land.rhs.lr.ph ], [ %best_div.2, %cleanup.land.rhs_crit_edge ]
  %storemerge818 = phi i32 [ %div14, %land.rhs.lr.ph ], [ %inc, %cleanup.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge818, i32 %div16)
  %cmp.not = icmp ugt i32 %storemerge818, %div16
  br i1 %cmp.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %20 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %n, align 4, !annotation !167
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #9
  %21 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %m, align 4, !annotation !167
  %mul17 = mul i32 %storemerge818, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %mul17)
  %cmp18 = icmp ult i32 %mul17, 80000000
  br i1 %cmp18, label %for.body.cleanup_crit_edge, label %if.end20

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %for.body
  call void @rational_best_approximation(i32 noundef %mul17, i32 noundef %cond, i32 noundef 4095, i32 noundef 511, ptr noundef nonnull %n, ptr noundef nonnull %m) #9
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  %conv22 = zext i32 %23 to i64
  %mul23 = mul nuw i64 %conv22, %conv
  %24 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul23)
  %cmp202 = icmp ult i64 %mul23, 4294967296
  br i1 %cmp202, label %if.then210, label %if.else216, !prof !169

if.then210:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %conv211 = trunc i64 %mul23 to i32
  %div214 = udiv i32 %conv211, %25
  %conv215 = zext i32 %div214 to i64
  br label %if.end220

if.else216:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %26 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %25, i64 %mul23) #13, !srcloc !170
  %asmresult1.i = extractvalue { i64, i64 } %26, 1
  br label %if.end220

if.end220:                                        ; preds = %if.else216, %if.then210
  %div_rate64.0 = phi i64 [ %conv215, %if.then210 ], [ %asmresult1.i, %if.else216 ]
  %27 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %div_rate64.0)
  %cmp423 = icmp ult i64 %div_rate64.0, 4294967296
  br i1 %cmp423, label %if.then431, label %if.else437, !prof !169

if.then431:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %conv432 = trunc i64 %div_rate64.0 to i32
  %div435 = udiv i32 %conv432, %28
  br label %if.end441

if.else437:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %div_rate64.0) #13, !srcloc !170
  %asmresult1.i763 = extractvalue { i64, i64 } %29, 1
  %extract.t815 = trunc i64 %asmresult1.i763 to i32
  br label %if.end441

if.end441:                                        ; preds = %if.else437, %if.then431
  %div_rate64.1.off0 = phi i32 [ %div435, %if.then431 ], [ %extract.t815, %if.else437 ]
  %30 = call i32 @llvm.umax.i32(i32 %div_rate64.1.off0, i32 %rate)
  %31 = call i32 @llvm.umin.i32(i32 %div_rate64.1.off0, i32 %rate)
  %sub458 = sub i32 %30, %31
  call void @__sanitizer_cov_trace_cmp4(i32 %sub458, i32 %best_diff.0820)
  %cmp459 = icmp ult i32 %sub458, %best_diff.0820
  br i1 %cmp459, label %if.then461, label %if.end441.cleanup_crit_edge

if.end441.cleanup_crit_edge:                      ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then461:                                       ; preds = %if.end441
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_round_rate, %if.then474)) #9
          to label %cleanup [label %if.then474], !srcloc !168

if.then474:                                       ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %dev477 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n, align 4
  %38 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %m, align 4
  %40 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %div, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_round_rate.__UNIQUE_ID_ddebug298, ptr noundef %dev477, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, i32 noundef %cond, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %div_rate64.1.off0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then474, %if.then461, %if.end441.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_div.2 = phi i32 [ %best_div.0819, %for.body.cleanup_crit_edge ], [ %28, %if.then474 ], [ %best_div.0819, %if.end441.cleanup_crit_edge ], [ %28, %if.then461 ]
  %best_diff.2 = phi i32 [ %best_diff.0820, %for.body.cleanup_crit_edge ], [ %sub458, %if.then474 ], [ %best_diff.0820, %if.end441.cleanup_crit_edge ], [ %sub458, %if.then461 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  %42 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %div, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %div, align 4
  %tobool15.not = icmp eq i32 %best_diff.2, 0
  br i1 %tobool15.not, label %cleanup.for.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %land.rhs.for.end_crit_edge, %cond.end.for.end_crit_edge
  %best_div.0.lcssa = phi i32 [ 0, %cond.end.for.end_crit_edge ], [ %best_div.2, %cleanup.for.end_crit_edge ], [ %best_div.0819, %land.rhs.for.end_crit_edge ]
  %44 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %best_div.0.lcssa, ptr %div, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_round_rate, %if.then498)) #9
          to label %do.end505 [label %if.then498], !srcloc !168

if.then498:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %dev501 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %parent_rate, align 4
  %51 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %div, align 4
  %mul502 = mul i32 %52, %rate
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_round_rate.__UNIQUE_ID_ddebug299, ptr noundef %dev501, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, i32 noundef %50, i32 noundef %mul502) #9
  br label %do.end505

do.end505:                                        ; preds = %if.then498, %for.end
  %53 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %div, align 4
  %mul506 = mul i32 %54, %rate
  %55 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul506, ptr %parent_rate, align 4
  br label %if.end507

if.end507:                                        ; preds = %do.end505, %if.end7.if.end507_crit_edge
  %56 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %div, align 4
  %div508 = getelementptr i8, ptr %hw, i32 12
  %58 = ptrtoint ptr %div508 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %div508, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_round_rate, %if.then521)) #9
          to label %do.end527 [label %if.then521], !srcloc !168

if.then521:                                       ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %dev524 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %63 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %idx, align 4
  %65 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %div, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_round_rate.__UNIQUE_ID_ddebug300, ptr noundef %dev524, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.34, i32 noundef %64, i32 noundef %66) #9
  br label %do.end527

do.end527:                                        ; preds = %if.then521, %if.end507
  %67 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %parent_rate, align 4
  %69 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %div, align 4
  %div528 = udiv i32 %68, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mul) #9
  ret i32 %div528
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_divider_set_parent(ptr nocapture noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %parent, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %add = add i32 %6, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp5 = icmp ugt i32 %6, 2
  %conv6.neg = sext i1 %cmp5 to i32
  %sub = add i32 %add, %conv6.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp8 = icmp ugt i32 %6, 4
  %conv9.neg = sext i1 %cmp8 to i32
  %sub10 = add i32 %sub, %conv9.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp12 = icmp ult i32 %6, 2
  %and = and i32 %6, 1
  %mul = mul nuw nsw i32 %and, 3
  %cond = select i1 %cmp12, i32 5, i32 %mul
  %shl = shl nuw nsw i32 7, %cond
  %shl26 = shl nuw nsw i32 %conv, %cond
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %sub10, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %or.i, i32 noundef %shl, i32 noundef %shl26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %sub10) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cdce706_divider_get_parent(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_divider_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce706_divider_set_rate.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce706_divider_set_rate, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !168

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  %div = getelementptr i8, ptr %hw, i32 12
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce706_divider_set_rate.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.38, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %idx5 = getelementptr i8, ptr %hw, i32 -8
  %10 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx5, align 4
  %add = add i32 %11, 13
  %div6 = getelementptr i8, ptr %hw, i32 12
  %12 = ptrtoint ptr %div6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %div6, align 4
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %or.i, i32 noundef 127, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.cdce706_reg_update.exit_crit_edge

do.end.cdce706_reg_update.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdce706_reg_update.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  br label %cdce706_reg_update.exit

cdce706_reg_update.exit:                          ; preds = %do.end.i, %do.end.cdce706_reg_update.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %add = add i32 %3, 19
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %or.i, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cdce706_reg_update.exit_crit_edge

entry.cdce706_reg_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdce706_reg_update.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  br label %cdce706_reg_update.exit

cdce706_reg_update.exit:                          ; preds = %do.end.i, %entry.cdce706_reg_update.exit_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdce706_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %add = add i32 %3, 19
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %or.i, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.cdce706_reg_update.exit_crit_edge

entry.cdce706_reg_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdce706_reg_update.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  br label %cdce706_reg_update.exit

cdce706_reg_update.exit:                          ; preds = %do.end.i, %entry.cdce706_reg_update.exit_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdce706_clkout_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %parent_rate
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cdce706_clkout_round_rate(ptr nocapture noundef readnone %hw, i32 noundef returned %rate, ptr nocapture noundef writeonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rate, ptr %parent_rate, align 4
  ret i32 %rate
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce706_clkout_set_parent(ptr nocapture noundef %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = zext i8 %index to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp eq i32 %1, %conv
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %parent, align 4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %idx = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %add = add i32 %6, 19
  %regmap.i = getelementptr inbounds %struct.cdce706_dev_data, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %or.i = or i32 %add, 128
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %or.i, i32 noundef 8, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ], [ %call.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i8 @cdce706_clkout_get_parent(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %conv = trunc i32 %1 to i8
  ret i8 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdce706_clkout_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !49, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__initcall__kmod_clk_cdce706__305_699_cdce706_i2c_driver_init6, !1, !"__initcall__kmod_clk_cdce706__305_699_cdce706_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-cdce706.c", i32 699, i32 1}
!2 = !{ptr @__exitcall_cdce706_i2c_driver_exit, !1, !"__exitcall_cdce706_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-cdce706.c", i32 701, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-cdce706.c", i32 702, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-cdce706.c", i32 703, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-cdce706.c", i32 692, i32 11}
!12 = !{ptr @cdce706_i2c_driver, !13, !"cdce706_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-cdce706.c", i32 690, i32 26}
!14 = !{ptr @cdce706_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-cdce706.c", i32 645, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/clk-cdce706.c", i32 647, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cdce706_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @cdce706_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cdce706_regmap_config, !26, !"cdce706_regmap_config", i1 false, i1 false}
!26 = !{!"../drivers/clk/clk-cdce706.c", i32 59, i32 35}
!27 = !{ptr @cdce706_clkin_ops, !28, !"cdce706_clkin_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/clk-cdce706.c", i32 157, i32 29}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-cdce706.c", i32 89, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/clk-cdce706.c", i32 89, i32 13}
!33 = distinct !{null, !34, !"cdce706_source_name", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-cdce706.c", i32 88, i32 27}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-cdce706.c", i32 118, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cdce706_reg_read._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @cdce706_reg_read._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-cdce706.c", i32 462, i32 4}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cdce706_register_hw._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @cdce706_register_hw._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-cdce706.c", i32 93, i32 2}
!47 = !{ptr @cdce706_clkin_name, !48, !"cdce706_clkin_name", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-cdce706.c", i32 92, i32 27}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-cdce706.c", i32 541, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @cdce706_register_plls.__UNIQUE_ID_ddebug302, !50, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!54 = !{ptr @cdce706_pll_ops, !55, !"cdce706_pll_ops", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-cdce706.c", i32 251, i32 29}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/clk-cdce706.c", i32 167, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cdce706_pll_recalc_rate.__UNIQUE_ID_ddebug288, !57, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-cdce706.c", i32 192, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @cdce706_pll_round_rate.__UNIQUE_ID_ddebug289, !61, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-cdce706.c", i32 202, i32 2}
!66 = !{ptr @cdce706_pll_round_rate.__UNIQUE_ID_ddebug290, !65, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-cdce706.c", i32 218, i32 2}
!69 = !{ptr @cdce706_pll_set_rate.__UNIQUE_ID_ddebug291, !68, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-cdce706.c", i32 138, i32 3}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cdce706_reg_update._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @cdce706_reg_update._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-cdce706.c", i32 128, i32 3}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cdce706_reg_write._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @cdce706_reg_write._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-cdce706.c", i32 97, i32 2}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-cdce706.c", i32 97, i32 10}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/clk-cdce706.c", i32 97, i32 18}
!86 = distinct !{null, !87, !"cdce706_pll_name", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-cdce706.c", i32 96, i32 27}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/clk-cdce706.c", i32 577, i32 3}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @cdce706_register_dividers.__UNIQUE_ID_ddebug303, !89, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!92 = !{ptr @cdce706_divider_ops, !93, !"cdce706_divider_ops", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-cdce706.c", i32 373, i32 29}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-cdce706.c", i32 282, i32 2}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cdce706_divider_recalc_rate.__UNIQUE_ID_ddebug292, !95, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-cdce706.c", i32 297, i32 2}
!100 = !{ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug293, !99, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-cdce706.c", i32 336, i32 5}
!103 = !{ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug298, !102, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-cdce706.c", i32 344, i32 3}
!106 = !{ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug299, !105, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!107 = !{ptr @.str.37, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-cdce706.c", i32 351, i32 2}
!109 = !{ptr @cdce706_divider_round_rate.__UNIQUE_ID_ddebug300, !108, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-cdce706.c", i32 363, i32 2}
!112 = !{ptr @cdce706_divider_set_rate.__UNIQUE_ID_ddebug301, !111, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!113 = !{ptr @cdce706_divider_parent_name, !114, !"cdce706_divider_parent_name", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-cdce706.c", i32 100, i32 27}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 2}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 8}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 14}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 20}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 26}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-cdce706.c", i32 105, i32 32}
!127 = !{ptr @cdce706_divider_name, !128, !"cdce706_divider_name", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-cdce706.c", i32 104, i32 20}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-cdce706.c", i32 606, i32 3}
!131 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cdce706_register_clkouts.__UNIQUE_ID_ddebug304, !130, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!133 = !{ptr @cdce706_clkout_ops, !134, !"cdce706_clkout_ops", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-cdce706.c", i32 436, i32 29}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 2}
!137 = !{ptr @.str.48, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 14}
!139 = !{ptr @.str.49, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 26}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 38}
!143 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 50}
!145 = !{ptr @.str.52, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/clk-cdce706.c", i32 109, i32 62}
!147 = distinct !{null, !148, !"cdce706_clkout_name", i1 false, i1 false}
!148 = !{!"../drivers/clk/clk-cdce706.c", i32 108, i32 27}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/clk-cdce706.c", i32 623, i32 3}
!151 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @of_clk_cdce_get._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @of_clk_cdce_get._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @cdce706_dt_match, !155, !"cdce706_dt_match", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-cdce706.c", i32 677, i32 34}
!156 = !{ptr @cdce706_id, !157, !"cdce706_id", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-cdce706.c", i32 684, i32 35}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"auto-init"}
!168 = !{i64 2148737959, i64 2148737964, i64 2148737977, i64 2148738021, i64 2148738055, i64 2148738076}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{i64 2148646678, i64 2148646958, i64 2148647292, i64 2148647626}
