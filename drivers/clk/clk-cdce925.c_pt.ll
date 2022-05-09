; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-cdce925.c_pt.bc'
source_filename = "../drivers/clk/clk-cdce925.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.clk_cdce925_chip_info = type { i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.clk_cdce925_chip = type { ptr, ptr, ptr, [4 x %struct.clk_cdce925_pll], [9 x %struct.clk_cdce925_output] }
%struct.clk_cdce925_pll = type { %struct.clk_hw, ptr, i8, i16, i16 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_cdce925_output = type { %struct.clk_hw, ptr, i8, i16 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_clk_cdce925__301_843_cdce925_driver_init6 = internal global ptr @cdce925_driver_init, section ".initcall6.init", align 4
@cdce925_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @cdce925_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_cdce925_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @cdce925_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cdce925_driver_exit = internal global ptr @cdce925_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [60 x i8] c"clk_cdce925.author=Mike Looijmans <mike.looijmans@topic.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [54 x i8] c"clk_cdce925.description=TI CDCE913/925/937/949 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [41 x i8] c"clk_cdce925.file=drivers/clk/clk-cdce925\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"clk_cdce925.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cdce925\00", [24 x i8] zeroinitializer }, align 32
@clk_cdce925_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cdce913\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cdce925\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cdce937\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cdce949\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cdce925_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cdce913\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"cdce925\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"cdce937\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"cdce949\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"configuration0\00", [17 x i8] zeroinitializer }, align 32
@__const.cdce925_probe.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str.1, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@cdce925_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_cdce925\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdce925_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/clk-cdce925.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddout\00", [25 x i8] zeroinitializer }, align 32
@clk_cdce925_chip_info_tbl = internal constant { [4 x %struct.clk_cdce925_chip_info], [32 x i8] } { [4 x %struct.clk_cdce925_chip_info] [%struct.clk_cdce925_chip_info { i32 1, i32 3 }, %struct.clk_cdce925_chip_info { i32 2, i32 5 }, %struct.clk_cdce925_chip_info { i32 3, i32 7 }, %struct.clk_cdce925_chip_info { i32 4, i32 9 }], [32 x i8] zeroinitializer }, align 32
@cdce925_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_cdce925_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @cdce925_regmap_i2c_write, ptr null, ptr null, ptr null, ptr null, ptr @cdce925_regmap_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"clk_cdce925:676:(&config)->lock\00", [32 x i8] zeroinitializer }, align 32
@cdce925_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 678, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr = internal global ptr @cdce925_probe._entry, section ".printk_index", align 4
@cdce925_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 685, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing parent clock\0A\00", [42 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.14 = internal global ptr @cdce925_probe._entry.12, section ".printk_index", align 4
@cdce925_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.15, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parent is: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xtal-load-pf\00", [19 x i8] zeroinitializer }, align 32
@cdce925_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cdce925_pll_prepare, ptr @cdce925_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce925_pll_recalc_rate, ptr @cdce925_pll_round_rate, ptr null, ptr null, ptr null, ptr @cdce925_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%pOFn.pll%d\00", [20 x i8] zeroinitializer }, align 32
@cdce925_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 714, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed register PLL %d\0A\00", [40 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.20 = internal global ptr @cdce925_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PLL%d\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@cdce925_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 727, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to set PLL frequency %ud\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.25 = internal global ptr @cdce925_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spread-spectrum\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spread-spectrum-center\00", [41 x i8] zeroinitializer }, align 32
@cdce925_clk_y1_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cdce925_clk_prepare, ptr @cdce925_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce925_clk_recalc_rate, ptr @cdce925_clk_y1_round_rate, ptr null, ptr null, ptr null, ptr @cdce925_clk_y1_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%pOFn.Y1\00", [23 x i8] zeroinitializer }, align 32
@cdce925_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 756, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock registration Y1 failed\0A\00", [34 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.31 = internal global ptr @cdce925_probe._entry.29, section ".printk_index", align 4
@cdce925_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @cdce925_clk_prepare, ptr @cdce925_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdce925_clk_recalc_rate, ptr @cdce925_clk_round_rate, ptr null, ptr null, ptr null, ptr @cdce925_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pOFn.Y%d\00", [22 x i8] zeroinitializer }, align 32
@cdce925_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 796, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clock registration failed\0A\00", [37 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.35 = internal global ptr @cdce925_probe._entry.33, section ".printk_index", align 4
@cdce925_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 805, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to add OF clock provider\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce925_probe._entry_ptr.38 = internal global ptr @cdce925_probe._entry.36, section ".printk_index", align 4
@cdce925_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 622, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable %s: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdce925_regulator_enable\00", [39 x i8] zeroinitializer }, align 32
@cdce925_regulator_enable._entry_ptr = internal global ptr @cdce925_regulator_enable._entry, section ".printk_index", align 4
@cdce925_regmap_i2c_write.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdce925_regmap_i2c_write\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s(%zu) %#x %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@cdce925_regmap_i2c_read.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 -110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdce925_regmap_i2c_read\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(%zu, %zu) %#x %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@cdce925_pll_prepare.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.45, ptr @.str.4, ptr @.str.46, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdce925_pll_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s invalid q=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@cdce925_pll_prepare.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.45, ptr @.str.4, ptr @.str.47, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s invalid r=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@cdce925_pll_prepare.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.45, ptr @.str.4, ptr @.str.48, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s n=%d m=%d p=%d q=%d r=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@cdce925_pll_set_rate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdce925_pll_set_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: rate %lu outside PLL range.\0A\00", [63 x i8] zeroinitializer }, align 32
@cdce925_pll_set_rate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.49, ptr @.str.4, ptr @.str.51, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: rate %lu less than parent rate %lu.\0A\00", [55 x i8] zeroinitializer }, align 32
@of_clk_cdce925_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_clk_cdce925_get\00", [45 x i8] zeroinitializer }, align 32
@of_clk_cdce925_get._entry_ptr = internal global ptr @of_clk_cdce925_get._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"cdce925_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 835, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 837, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"clk_cdce925_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 826, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"cdce925_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 817, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 651, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 657, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 659, i32 47 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 663, i32 47 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"clk_cdce925_chip_info_tbl\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 40, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"regmap_cdce925_bus\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 632, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 675, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 678, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 685, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 688, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 690, i32 33 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"cdce925_pll_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 280, i32 29 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 706, i32 43 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 714, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 717, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 722, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 725, i32 5 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 730, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 732, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c"cdce925_clk_y1_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 512, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 748, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 756, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"cdce925_clk_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 465, i32 29 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 765, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 796, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 805, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 622, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 538, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 583, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 243, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 248, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 251, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 168, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 173, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.234 = private constant [29 x i8] c"../drivers/clk/clk-cdce925.c\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 599, i32 3 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_cdce925_driver_exit, ptr @__initcall__kmod_clk_cdce925__301_843_cdce925_driver_init6, ptr @cdce925_driver_exit, ptr @cdce925_probe._entry, ptr @cdce925_probe._entry.12, ptr @cdce925_probe._entry.18, ptr @cdce925_probe._entry.23, ptr @cdce925_probe._entry.29, ptr @cdce925_probe._entry.33, ptr @cdce925_probe._entry.36, ptr @cdce925_probe._entry_ptr, ptr @cdce925_probe._entry_ptr.14, ptr @cdce925_probe._entry_ptr.20, ptr @cdce925_probe._entry_ptr.25, ptr @cdce925_probe._entry_ptr.31, ptr @cdce925_probe._entry_ptr.35, ptr @cdce925_probe._entry_ptr.38, ptr @cdce925_regulator_enable._entry, ptr @cdce925_regulator_enable._entry_ptr, ptr @of_clk_cdce925_get._entry, ptr @of_clk_cdce925_get._entry_ptr, ptr @cdce925_driver, ptr @.str, ptr @clk_cdce925_of_match, ptr @cdce925_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @clk_cdce925_chip_info_tbl, ptr @cdce925_probe._key, ptr @regmap_cdce925_bus, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @cdce925_pll_ops, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @cdce925_clk_y1_ops, ptr @.str.28, ptr @.str.30, ptr @cdce925_clk_ops, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_cdce925_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_cdce925_chip_info_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_cdce925_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_clk_y1_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdce925_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_clk_cdce925_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cdce925_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdce925_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @cdce925_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %pll_clk_name = alloca [4 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  %value = alloca i32, align 4
  %child_name = alloca [6 x i8], align 1
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #12
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pll_clk_name) #12
  %3 = call ptr @memset(ptr %pll_clk_name, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #12
  %4 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #12
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %value, align 4, !annotation !136
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %child_name) #12
  %6 = call ptr @memset(ptr %child_name, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #12
  %7 = call ptr @memcpy(ptr %config, ptr @__const.cdce925_probe.config, i32 172)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_probe, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !137

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce925_probe.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cdce925_regulator_enable.exit, label %if.end.i

if.end.i:                                         ; preds = %do.end
  %call3.i = tail call i32 @regulator_enable(ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.6, i32 noundef %call3.i) #15
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cdce925_regulator_disable, ptr noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end8, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call i32 @regulator_disable(ptr noundef %call.i) #12
  br label %cleanup

cdce925_regulator_enable.exit:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end5.i
  %call.i353 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  %cmp.i.i354 = icmp ugt ptr %call.i353, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i354, label %cdce925_regulator_enable.exit366, label %if.end.i358

if.end.i358:                                      ; preds = %if.end8
  %call3.i356 = tail call i32 @regulator_enable(ptr noundef %call.i353) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i356)
  %tobool.not.i357 = icmp eq i32 %call3.i356, 0
  br i1 %tobool.not.i357, label %if.end5.i362, label %do.end.i359

do.end.i359:                                      ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.7, i32 noundef %call3.i356) #15
  br label %cleanup

if.end5.i362:                                     ; preds = %if.end.i358
  %call.i.i360 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cdce925_regulator_disable, ptr noundef %call.i353) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i360)
  %tobool.not.i.i361 = icmp eq i32 %call.i.i360, 0
  br i1 %tobool.not.i.i361, label %if.end13, label %if.then.i.i364

if.then.i.i364:                                   ; preds = %if.end5.i362
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i363 = tail call i32 @regulator_disable(ptr noundef %call.i353) #12
  br label %cleanup

cdce925_regulator_enable.exit366:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %call.i353 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end5.i362
  %call.i367 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 288, i32 noundef 3520) #12
  %tobool16.not = icmp eq ptr %call.i367, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %i2c_client = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 1
  %10 = ptrtoint ptr %i2c_client to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %i2c_client, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.clk_cdce925_chip_info], ptr @clk_cdce925_chip_info_tbl, i32 0, i32 %12
  %chip_info = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 2
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %chip_info, align 4
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %15, 4
  %sub = or i32 %mul, 15
  %max_register = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 19
  %16 = ptrtoint ptr %max_register to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %max_register, align 4
  %call23 = call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_cdce925_bus, ptr noundef %dev, ptr noundef nonnull %config, ptr noundef nonnull @cdce925_probe._key, ptr noundef nonnull @.str.8) #12
  %17 = ptrtoint ptr %call.i367 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call23, ptr %call.i367, align 4
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end29, label %if.end33

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #15
  %18 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i367, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end18
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i367, ptr %driver_data.i.i, align 4
  %call34 = call ptr @of_clk_get_parent_name(ptr noundef %1, i32 noundef 0) #12
  %22 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call34, ptr %parent_name, align 4
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %do.body42

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  br label %cleanup

do.body42:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_probe, %if.then54)) #12
          to label %do.end58 [label %if.then54], !srcloc !137

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent_name, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce925_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %24) #12
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  %call.i.i368 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i368)
  %cmp = icmp sgt i32 %call.i.i368, -1
  br i1 %cmp, label %if.then60, label %do.end58.if.end63_crit_edge

do.end58.if.end63_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then60:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i367, align 4
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %shl = shl i32 %28, 3
  %and = and i32 %shl, 248
  %call62 = call i32 @regmap_write(ptr noundef %26, i32 noundef 5, i32 noundef %and) #12
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %do.end58.if.end63_crit_edge
  %29 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i367, align 4
  %call.i369 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 1, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %31 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i367, align 4
  %call.i370 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 2, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cdce925_pll_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %35 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %36 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %num_parents, align 4
  %37 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip_info, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp70389 = icmp sgt i32 %40, 0
  br i1 %cmp70389, label %if.end63.for.body_crit_edge, label %if.end63.for.end_crit_edge

if.end63.for.end_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end63.for.body_crit_edge
  %i.0390 = phi i32 [ %add94, %for.inc.for.body_crit_edge ], [ 0, %if.end63.for.body_crit_edge ]
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call73 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.17, ptr noundef %42, i32 noundef %i.0390) #12
  %arrayidx74 = getelementptr [4 x ptr], ptr %pll_clk_name, i32 0, i32 %i.0390
  %43 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call73, ptr %arrayidx74, align 4
  %44 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call73, ptr %init, align 4
  %arrayidx76 = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 3, i32 %i.0390
  %chip = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 3, i32 %i.0390, i32 1
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i367, ptr %chip, align 4
  %init79 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx76, i32 0, i32 2
  %46 = ptrtoint ptr %init79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %init, ptr %init79, align 4
  %conv = trunc i32 %i.0390 to i8
  %index = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 3, i32 %i.0390, i32 2
  %47 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv, ptr %index, align 4
  %call86 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %i.0390) #15
  br label %error

if.end93:                                         ; preds = %for.body
  %add94 = add nuw nsw i32 %i.0390, 1
  %call95 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %child_name, ptr noundef nonnull @.str.21, i32 noundef %add94)
  %call97 = call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull %child_name) #12
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end93.for.inc_crit_edge, label %if.end100

if.end93.for.inc_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end100:                                        ; preds = %if.end93
  %call.i.i371 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call97, ptr noundef nonnull @.str.22, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i371)
  %tobool102.not = icmp sgt i32 %call.i.i371, -1
  br i1 %tobool102.not, label %if.then103, label %if.end100.if.end115_crit_edge

if.end100.if.end115_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then103:                                       ; preds = %if.end100
  %clk = getelementptr inbounds %struct.clk_hw, ptr %arrayidx76, i32 0, i32 1
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %50 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value, align 4
  %call107 = call i32 @clk_set_rate(ptr noundef %49, i32 noundef %51) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then103.if.end115_crit_edge, label %do.end112

if.then103.if.end115_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

do.end112:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %53) #15
  br label %if.end115

if.end115:                                        ; preds = %do.end112, %if.then103.if.end115_crit_edge, %if.end100.if.end115_crit_edge
  %call.i.i372 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call97, ptr noundef nonnull @.str.26, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i372)
  %tobool117.not = icmp sgt i32 %call.i.i372, -1
  br i1 %tobool117.not, label %if.then118, label %if.end115.if.end132_crit_edge

if.end115.if.end132_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end132

if.then118:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  %call.i373 = call ptr @of_find_property(ptr noundef nonnull %call97, ptr noundef nonnull @.str.27, ptr noundef null) #12
  %tobool.i.not = icmp eq ptr %call.i373, null
  %54 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i367, align 4
  %mul123 = shl i32 %i.0390, 4
  %add124 = add i32 %mul123, 22
  %conv125 = select i1 %tobool.i.not, i32 0, i32 128
  %call.i374 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %add124, i32 noundef 128, i32 noundef %conv125, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %56 = ptrtoint ptr %call.i367 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i367, align 4
  %add129 = add i32 %mul123, 18
  %58 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %value, align 4
  %and130 = and i32 %59, 7
  %call.i375 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef %add129, i32 noundef 7, i32 noundef %and130, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end132

if.end132:                                        ; preds = %if.then118, %if.end115.if.end132_crit_edge
  call void @of_node_put(ptr noundef nonnull %call97) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end132, %if.end93.for.inc_crit_edge
  %60 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %chip_info, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %cmp70 = icmp slt i32 %add94, %63
  br i1 %cmp70, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end63.for.end_crit_edge
  %64 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @cdce925_clk_y1_ops, ptr %ops, align 4
  %65 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %flags, align 4
  %66 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 1, ptr %num_parents, align 4
  %67 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %parent_name, ptr %parent_names, align 4
  %68 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node, align 8
  %call139 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %69) #12
  %70 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call139, ptr %init, align 4
  %clk141 = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4
  %chip143 = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 0, i32 1
  %71 = ptrtoint ptr %chip143 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i367, ptr %chip143, align 4
  %init147 = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %init147 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %init, ptr %init147, align 4
  %index150 = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 0, i32 2
  %73 = ptrtoint ptr %index150 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %index150, align 4
  %pdiv = getelementptr inbounds %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 0, i32 3
  %74 = ptrtoint ptr %pdiv to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 1, ptr %pdiv, align 2
  %call157 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %clk141) #12
  %75 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool159.not = icmp eq i32 %call157, 0
  br i1 %tobool159.not, label %if.end165, label %do.end163

do.end163:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #15
  br label %error

if.end165:                                        ; preds = %for.end
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @cdce925_clk_ops, ptr %ops, align 4
  %78 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4, ptr %flags, align 4
  %79 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %num_parents, align 4
  %arrayidx202 = getelementptr inbounds [4 x ptr], ptr %pll_clk_name, i32 0, i32 3
  %arrayidx199 = getelementptr inbounds [4 x ptr], ptr %pll_clk_name, i32 0, i32 2
  %arrayidx196 = getelementptr inbounds [4 x ptr], ptr %pll_clk_name, i32 0, i32 1
  br label %for.cond169

for.cond169:                                      ; preds = %sw.epilog.for.cond169_crit_edge, %if.end165
  %i.1 = phi i32 [ 1, %if.end165 ], [ %add176, %sw.epilog.for.cond169_crit_edge ]
  %80 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chip_info, align 4
  %num_outputs = getelementptr inbounds %struct.clk_cdce925_chip_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %num_outputs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_outputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %83)
  %cmp171 = icmp slt i32 %i.1, %83
  %84 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %of_node, align 8
  br i1 %cmp171, label %for.body173, label %for.end219

for.body173:                                      ; preds = %for.cond169
  %add176 = add nuw nsw i32 %i.1, 1
  %call177 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.32, ptr noundef %85, i32 noundef %add176) #12
  %86 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call177, ptr %init, align 4
  %arrayidx180 = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 %i.1
  %chip181 = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 %i.1, i32 1
  %87 = ptrtoint ptr %chip181 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i367, ptr %chip181, align 4
  %init185 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx180, i32 0, i32 2
  %88 = ptrtoint ptr %init185 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %init, ptr %init185, align 4
  %conv186 = trunc i32 %i.1 to i8
  %index189 = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 %i.1, i32 2
  %89 = ptrtoint ptr %index189 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv186, ptr %index189, align 4
  %pdiv192 = getelementptr %struct.clk_cdce925_chip, ptr %call.i367, i32 0, i32 4, i32 %i.1, i32 3
  %90 = ptrtoint ptr %pdiv192 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %pdiv192, align 2
  %91 = zext i32 %i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.1, label %for.body173.sw.epilog_crit_edge [
    i32 1, label %for.body173.sw.epilog.sink.split_crit_edge
    i32 2, label %for.body173.sw.epilog.sink.split_crit_edge406
    i32 3, label %for.body173.sw.bb195_crit_edge
    i32 4, label %for.body173.sw.bb195_crit_edge407
    i32 5, label %for.body173.sw.bb198_crit_edge
    i32 6, label %for.body173.sw.bb198_crit_edge408
    i32 7, label %for.body173.sw.bb201_crit_edge
    i32 8, label %for.body173.sw.bb201_crit_edge409
  ]

for.body173.sw.bb201_crit_edge409:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb201

for.body173.sw.bb201_crit_edge:                   ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb201

for.body173.sw.bb198_crit_edge408:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb198

for.body173.sw.bb198_crit_edge:                   ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb198

for.body173.sw.bb195_crit_edge407:                ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb195

for.body173.sw.bb195_crit_edge:                   ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb195

for.body173.sw.epilog.sink.split_crit_edge406:    ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

for.body173.sw.epilog.sink.split_crit_edge:       ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

for.body173.sw.epilog_crit_edge:                  ; preds = %for.body173
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb195:                                         ; preds = %for.body173.sw.bb195_crit_edge, %for.body173.sw.bb195_crit_edge407
  br label %sw.epilog.sink.split

sw.bb198:                                         ; preds = %for.body173.sw.bb198_crit_edge, %for.body173.sw.bb198_crit_edge408
  br label %sw.epilog.sink.split

sw.bb201:                                         ; preds = %for.body173.sw.bb201_crit_edge, %for.body173.sw.bb201_crit_edge409
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb201, %sw.bb198, %sw.bb195, %for.body173.sw.epilog.sink.split_crit_edge, %for.body173.sw.epilog.sink.split_crit_edge406
  %arrayidx202.sink = phi ptr [ %arrayidx202, %sw.bb201 ], [ %arrayidx199, %sw.bb198 ], [ %arrayidx196, %sw.bb195 ], [ %pll_clk_name, %for.body173.sw.epilog.sink.split_crit_edge ], [ %pll_clk_name, %for.body173.sw.epilog.sink.split_crit_edge406 ]
  %92 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx202.sink, ptr %parent_names, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body173.sw.epilog_crit_edge
  %call208 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %arrayidx180) #12
  %93 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init, align 4
  call void @kfree(ptr noundef %94) #12
  %tobool210.not = icmp eq i32 %call208, 0
  br i1 %tobool210.not, label %sw.epilog.for.cond169_crit_edge, label %do.end214

sw.epilog.for.cond169_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond169

do.end214:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #15
  br label %error

for.end219:                                       ; preds = %for.cond169
  %call222 = call i32 @of_clk_add_hw_provider(ptr noundef %85, ptr noundef nonnull @of_clk_cdce925_get, ptr noundef nonnull %call.i367) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call222)
  %tobool223.not = icmp eq i32 %call222, 0
  br i1 %tobool223.not, label %for.end219.error_crit_edge, label %do.end227

for.end219.error_crit_edge:                       ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

do.end227:                                        ; preds = %for.end219
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37) #15
  br label %error

error:                                            ; preds = %do.end227, %for.end219.error_crit_edge, %do.end214, %do.end163, %do.end91
  %err.0 = phi i32 [ %call86, %do.end91 ], [ %call157, %do.end163 ], [ %call208, %do.end214 ], [ 0, %do.end227 ], [ 0, %for.end219.error_crit_edge ]
  %95 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chip_info, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp233391 = icmp sgt i32 %98, 0
  br i1 %cmp233391, label %error.for.body235_crit_edge, label %error.cleanup_crit_edge

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

error.for.body235_crit_edge:                      ; preds = %error
  br label %for.body235

for.body235:                                      ; preds = %for.body235.for.body235_crit_edge, %error.for.body235_crit_edge
  %i.2392 = phi i32 [ %inc238, %for.body235.for.body235_crit_edge ], [ 0, %error.for.body235_crit_edge ]
  %arrayidx236 = getelementptr [4 x ptr], ptr %pll_clk_name, i32 0, i32 %i.2392
  %99 = ptrtoint ptr %arrayidx236 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx236, align 4
  call void @kfree(ptr noundef %100) #12
  %inc238 = add nuw nsw i32 %i.2392, 1
  %101 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %chip_info, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 4
  %cmp233 = icmp slt i32 %inc238, %104
  br i1 %cmp233, label %for.body235.for.body235_crit_edge, label %for.body235.cleanup_crit_edge

for.body235.cleanup_crit_edge:                    ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body235.for.body235_crit_edge:                ; preds = %for.body235
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body235

cleanup:                                          ; preds = %for.body235.cleanup_crit_edge, %error.cleanup_crit_edge, %do.end39, %do.end29, %if.end13.cleanup_crit_edge, %cdce925_regulator_enable.exit366, %if.then.i.i364, %do.end.i359, %cdce925_regulator_enable.exit, %if.then.i.i, %do.end.i
  %retval.0 = phi i32 [ %20, %do.end29 ], [ -19, %do.end39 ], [ %8, %cdce925_regulator_enable.exit ], [ %9, %cdce925_regulator_enable.exit366 ], [ -12, %if.end13.cleanup_crit_edge ], [ %call.i.i, %if.then.i.i ], [ %call3.i, %do.end.i ], [ %call.i.i360, %if.then.i.i364 ], [ %call3.i356, %do.end.i359 ], [ %err.0, %error.cleanup_crit_edge ], [ %err.0, %for.body235.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %child_name) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pll_clk_name) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_clk_cdce925_get(ptr nocapture noundef readonly %clkspec, ptr noundef readnone %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp ugt i32 %1, 8
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, i32 noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx2 = getelementptr %struct.clk_cdce925_chip, ptr %_data, i32 0, i32 4, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %arrayidx2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdce925_regulator_disable(ptr noundef %regulator) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @regulator_disable(ptr noundef %regulator) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_regmap_i2c_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  %reg_data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data) #12
  %0 = getelementptr inbounds [2 x i8], ptr %reg_data, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp.not = icmp eq i32 %count, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  %3 = or i8 %2, -128
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %reg_data, align 1
  %arrayidx3 = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_regmap_i2c_write.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_regmap_i2c_write, %if.then8)) #12
          to label %do.end [label %if.then8], !srcloc !137

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reg_data, align 1
  %conv11 = zext i8 %9 to i32
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %0, align 1
  %conv13 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce925_regmap_i2c_write.__UNIQUE_ID_ddebug297, ptr noundef %context, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef 2, i32 noundef %conv11, i32 noundef %conv13) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %reg_data, i32 noundef 2, i16 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp16 = icmp eq i32 %call.i, 2
  br i1 %cmp16, label %do.end.cleanup_crit_edge, label %if.else, !prof !138

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp25 = icmp slt i32 %call.i, 0
  %call15. = select i1 %cmp25, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ %call15., %if.else ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_regmap_i2c_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #2 align 64 {
entry:
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  %reg_data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #12
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg_data) #12
  %2 = getelementptr inbounds [2 x i8], ptr %reg_data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr i8, ptr %context, i32 -30
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 2
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %reg_data, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val_size)
  %cmp4 = icmp eq i32 %val_size, 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg, align 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %11 = or i8 %10, -128
  %12 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %reg_data, align 1
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %reg_data, align 1
  %conv15 = trunc i32 %val_size to i8
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15, ptr %2, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then5
  %.sink = phi i16 [ 1, %if.then5 ], [ 2, %if.else ]
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %.sink, ptr %15, align 4
  %arrayidx21 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %5, ptr %arrayidx21, align 4
  %flags24 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags24, align 2
  %conv25 = trunc i32 %val_size to i16
  %len27 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len27 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv25, ptr %len27, align 4
  %buf29 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %buf29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %val, ptr %buf29, align 4
  %adapter = getelementptr i8, ptr %context, i32 -8
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %xfer, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp31 = icmp eq i32 %call, 2
  br i1 %cmp31, label %do.body, label %if.else50, !prof !138

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_regmap_i2c_read.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_regmap_i2c_read, %if.then44)) #12
          to label %cleanup [label %if.then44], !srcloc !137

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg_data, align 1
  %conv47 = zext i8 %24 to i32
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val, align 1
  %conv48 = zext i8 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdce925_regmap_i2c_read.__UNIQUE_ID_ddebug298, ptr noundef %context, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 1, i32 noundef %val_size, i32 noundef %conv47, i32 noundef %conv48) #12
  br label %cleanup

if.else50:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp51 = icmp slt i32 %call, 0
  %call. = select i1 %cmp51, i32 %call, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else50, %if.then44, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then44 ], [ %call., %if.else50 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg_data) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_pll_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n1 = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %n1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n1, align 4
  %m2 = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %m2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %m2, align 2
  %index = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %mul = shl i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool4.not = icmp eq i16 %1, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.if.then_crit_edge, label %lor.lhs.false5

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false5:                                   ; preds = %entry
  %conv6 = zext i16 %3 to i32
  %conv7 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp = icmp eq i16 %3, %1
  br i1 %cmp, label %lor.lhs.false5.if.then_crit_edge, label %if.else

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %entry.if.then_crit_edge
  %chip = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %conv9 = zext i8 %mul to i32
  %add = add nuw nsw i32 %conv9, 20
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false5
  %10 = udiv i16 %1, %3
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %10)
  %cmp.i = icmp ugt i16 %10, 15
  br i1 %cmp.i, label %if.else.cdce925_pll_calc_p.exit_crit_edge, label %while.cond.preheader.i

if.else.cdce925_pll_calc_p.exit_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calc_p.exit

while.cond.preheader.i:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp614.i = icmp ugt i16 %10, 1
  br i1 %cmp614.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.cdce925_pll_calc_p.exit_crit_edge

while.cond.preheader.i.cdce925_pll_calc_p.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calc_p.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %r.016.i = phi i16 [ %11, %while.body.i.while.body.i_crit_edge ], [ %10, %while.cond.preheader.i.while.body.i_crit_edge ]
  %p.015.i = phi i8 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 4, %while.cond.preheader.i.while.body.i_crit_edge ]
  %11 = lshr i16 %r.016.i, 1
  %dec.i = add nsw i8 %p.015.i, -1
  %cmp6.i = icmp ugt i16 %r.016.i, 3
  br i1 %cmp6.i, label %while.body.i.while.body.i_crit_edge, label %cdce925_pll_calc_p.exit.loopexit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cdce925_pll_calc_p.exit.loopexit:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %phi.cast = zext i8 %dec.i to i32
  br label %cdce925_pll_calc_p.exit

cdce925_pll_calc_p.exit:                          ; preds = %cdce925_pll_calc_p.exit.loopexit, %while.cond.preheader.i.cdce925_pll_calc_p.exit_crit_edge, %if.else.cdce925_pll_calc_p.exit_crit_edge
  %retval.0.i181 = phi i32 [ 0, %if.else.cdce925_pll_calc_p.exit_crit_edge ], [ 4, %while.cond.preheader.i.cdce925_pll_calc_p.exit_crit_edge ], [ %phi.cast, %cdce925_pll_calc_p.exit.loopexit ]
  %mul13 = shl i32 %conv7, %retval.0.i181
  %conv15 = and i32 %mul13, 65535
  %div = udiv i32 %conv15, %conv6
  %conv18 = and i32 %div, 255
  %12 = add nsw i32 %conv18, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %12)
  %13 = icmp ult i32 %12, -48
  br i1 %13, label %do.body, label %if.end33

do.body:                                          ; preds = %cdce925_pll_calc_p.exit
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_pll_prepare, %if.then31)) #12
          to label %cleanup [label %if.then31], !srcloc !137

if.then31:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdce925_pll_prepare.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %conv18) #12
  br label %cleanup

if.end33:                                         ; preds = %cdce925_pll_calc_p.exit
  %mul37 = mul nuw nsw i32 %conv18, %conv6
  %sub = sub i32 %mul13, %mul37
  %conv39 = and i32 %sub, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %conv39)
  %cmp40 = icmp ugt i32 %conv39, 511
  br i1 %cmp40, label %do.body43, label %do.body61

do.body43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_pll_prepare, %if.then55)) #12
          to label %cleanup [label %if.then55], !srcloc !137

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdce925_pll_prepare.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %conv39) #12
  br label %cleanup

do.body61:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_pll_prepare, %if.then73)) #12
          to label %do.end81 [label %if.then73], !srcloc !137

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdce925_pll_prepare.__UNIQUE_ID_ddebug292, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.45, i32 noundef %conv7, i32 noundef %conv6, i32 noundef %retval.0.i181, i32 noundef %conv18, i32 noundef %conv39) #12
  br label %do.end81

do.end81:                                         ; preds = %if.then73, %do.body61
  %14 = lshr i16 %1, 4
  %and = shl nuw nsw i32 %conv7, 4
  %15 = lshr i32 %sub, 5
  %and88 = and i32 %15, 15
  %and92 = shl i32 %sub, 3
  %16 = lshr i32 %div, 3
  %and96 = and i32 %16, 7
  %and101 = shl nuw nsw i32 %div, 5
  %shl104 = shl nuw nsw i32 %retval.0.i181, 2
  %or105 = or i32 %and101, %shl104
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i, align 4
  %call.i182 = tail call ptr @clk_get_parent(ptr noundef %18) #12
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %call.i182) #12
  %call1.i.frozen = freeze i32 %call1.i
  %conv6.frozen = freeze i32 %conv6
  %div.i = udiv i32 %call1.i.frozen, %conv6.frozen
  %19 = mul i32 %div.i, %conv6.frozen
  %rem3.i.decomposed = sub i32 %call1.i.frozen, %19
  %mul.i = mul i32 %div.i, %conv7
  %mul6.i = mul nuw i32 %rem3.i.decomposed, %conv7
  %div8.i = udiv i32 %mul6.i, %conv6
  %add.i = add i32 %div8.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 174999999, i32 %add.i)
  %cmp.i183 = icmp ugt i32 %add.i, 174999999
  br i1 %cmp.i183, label %do.end81.cdce925_pll_calc_range_bits.exit_crit_edge, label %if.end.i

do.end81.cdce925_pll_calc_range_bits.exit_crit_edge: ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calc_range_bits.exit

if.end.i:                                         ; preds = %do.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 149999999, i32 %add.i)
  %cmp10.i = icmp ugt i32 %add.i, 149999999
  br i1 %cmp10.i, label %if.end.i.cdce925_pll_calc_range_bits.exit_crit_edge, label %if.end13.i

if.end.i.cdce925_pll_calc_range_bits.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calc_range_bits.exit

if.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 124999999, i32 %add.i)
  %cmp14.i = icmp ugt i32 %add.i, 124999999
  %..i = zext i1 %cmp14.i to i32
  br label %cdce925_pll_calc_range_bits.exit

cdce925_pll_calc_range_bits.exit:                 ; preds = %if.end13.i, %if.end.i.cdce925_pll_calc_range_bits.exit_crit_edge, %do.end81.cdce925_pll_calc_range_bits.exit_crit_edge
  %retval.0.i184 = phi i32 [ 3, %do.end81.cdce925_pll_calc_range_bits.exit_crit_edge ], [ 2, %if.end.i.cdce925_pll_calc_range_bits.exit_crit_edge ], [ %..i, %if.end13.i ]
  %chip113 = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 1
  %conv115 = zext i8 %mul to i32
  %add116 = add nuw nsw i32 %conv115, 24
  %20 = ptrtoint ptr %chip113 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip113, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = and i16 %14, 255
  %conv119 = zext i16 %24 to i32
  %call120 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add116, i32 noundef %conv119) #12
  %25 = ptrtoint ptr %chip113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip113, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %add117.1 = add nuw nsw i32 %conv115, 25
  %and.masked = and i32 %and, 240
  %conv119.1 = or i32 %and88, %and.masked
  %call120.1 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef %add117.1, i32 noundef %conv119.1) #12
  %29 = ptrtoint ptr %chip113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chip113, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %add117.2 = add nuw nsw i32 %conv115, 26
  %and92.masked = and i32 %and92, 248
  %conv119.2 = or i32 %and92.masked, %and96
  %call120.2 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %add117.2, i32 noundef %conv119.2) #12
  %33 = ptrtoint ptr %chip113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chip113, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %add117.3 = add nuw nsw i32 %conv115, 27
  %or105.masked = and i32 %or105, 252
  %conv119.3 = or i32 %retval.0.i184, %or105.masked
  %call120.3 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef %add117.3, i32 noundef %conv119.3) #12
  %37 = ptrtoint ptr %chip113 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chip113, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %add124 = add nuw nsw i32 %conv115, 20
  %call.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %add124, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cleanup

cleanup:                                          ; preds = %cdce925_pll_calc_range_bits.exit, %if.then55, %do.body43, %if.then31, %do.body, %if.then
  %retval.0 = phi i32 [ -22, %if.then31 ], [ -22, %if.then55 ], [ 0, %cdce925_pll_calc_range_bits.exit ], [ 0, %if.then ], [ -22, %do.body ], [ -22, %do.body43 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdce925_pll_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %mul = shl i8 %1, 4
  %chip = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %conv2 = zext i8 %mul to i32
  %add = add nuw nsw i32 %conv2, 20
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdce925_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %n = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %n, align 4
  %m = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %m, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not.i = icmp eq i16 %1, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp.i = icmp eq i16 %3, %1
  %or.cond22.i = or i1 %cmp.i, %or.cond.i
  br i1 %or.cond22.i, label %entry.cdce925_pll_calculate_rate.exit_crit_edge, label %if.end.i

entry.cdce925_pll_calculate_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calculate_rate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = zext i16 %1 to i32
  %conv.i = zext i16 %3 to i32
  %conv.i.frozen = freeze i32 %conv.i
  %div.i = udiv i32 %parent_rate, %conv.i.frozen
  %4 = mul i32 %div.i, %conv.i.frozen
  %rem7.i.decomposed = sub i32 %parent_rate, %4
  %mul.i = mul i32 %div.i, %conv3.i
  %mul10.i = mul nuw i32 %rem7.i.decomposed, %conv3.i
  %div12.i = udiv i32 %mul10.i, %conv.i
  %add.i = add i32 %div12.i, %mul.i
  br label %cdce925_pll_calculate_rate.exit

cdce925_pll_calculate_rate.exit:                  ; preds = %if.end.i, %entry.cdce925_pll_calculate_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ %parent_rate, %entry.cdce925_pll_calculate_rate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not.i = icmp ult i32 %1, %rate
  br i1 %cmp.not.i, label %if.else.i, label %entry.cdce925_pll_calculate_rate.exit_crit_edge

entry.cdce925_pll_calculate_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calculate_rate.exit

if.else.i:                                        ; preds = %entry
  %2 = tail call i32 @llvm.umin.i32(i32 %rate, i32 230000000) #12
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 80000000) #12
  %call.i = tail call i32 @gcd(i32 noundef %3, i32 noundef %1) #16
  %div.i = udiv i32 %1, %call.i
  %div7.i = udiv i32 %3, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div7.i)
  %cmp837.i = icmp ugt i32 %div7.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.i)
  %cmp938.i = icmp ugt i32 %div.i, 511
  %or.cond39.i = or i1 %cmp938.i, %cmp837.i
  br i1 %or.cond39.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.cdce925_pll_find_rate.exit_crit_edge

if.else.i.cdce925_pll_find_rate.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_find_rate.exit

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %um.041.i = phi i32 [ %shr10.i, %while.body.i.while.body.i_crit_edge ], [ %div.i, %if.else.i.while.body.i_crit_edge ]
  %un.040.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %div7.i, %if.else.i.while.body.i_crit_edge ]
  %shr.i = lshr i32 %un.040.i, 1
  %shr10.i = lshr i32 %um.041.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %un.040.i)
  %cmp8.i = icmp ugt i32 %un.040.i, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %um.041.i)
  %cmp9.i = icmp ugt i32 %um.041.i, 1023
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.cdce925_pll_find_rate.exit_crit_edge

while.body.i.cdce925_pll_find_rate.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_find_rate.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

cdce925_pll_find_rate.exit:                       ; preds = %while.body.i.cdce925_pll_find_rate.exit_crit_edge, %if.else.i.cdce925_pll_find_rate.exit_crit_edge
  %un.0.lcssa.i = phi i32 [ %div7.i, %if.else.i.cdce925_pll_find_rate.exit_crit_edge ], [ %shr.i, %while.body.i.cdce925_pll_find_rate.exit_crit_edge ]
  %um.0.lcssa.i = phi i32 [ %div.i, %if.else.i.cdce925_pll_find_rate.exit_crit_edge ], [ %shr10.i, %while.body.i.cdce925_pll_find_rate.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %un.0.lcssa.i)
  %cmp11.i = icmp eq i32 %un.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %um.0.lcssa.i)
  %cmp14.i = icmp eq i32 %um.0.lcssa.i, 0
  %4 = trunc i32 %un.0.lcssa.i to i16
  %conv.i = select i1 %cmp11.i, i16 1, i16 %4
  %5 = trunc i32 %um.0.lcssa.i to i16
  %conv17.i = select i1 %cmp14.i, i16 1, i16 %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv17.i)
  %tobool.not.i = icmp eq i16 %conv17.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool1.not.i = icmp eq i16 %conv.i, 0
  %or.cond.i2 = or i1 %tobool1.not.i, %tobool.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %conv17.i, i16 %conv.i)
  %cmp.i = icmp eq i16 %conv17.i, %conv.i
  %or.cond22.i = or i1 %cmp.i, %or.cond.i2
  br i1 %or.cond22.i, label %cdce925_pll_find_rate.exit.cdce925_pll_calculate_rate.exit_crit_edge, label %if.end.i

cdce925_pll_find_rate.exit.cdce925_pll_calculate_rate.exit_crit_edge: ; preds = %cdce925_pll_find_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_pll_calculate_rate.exit

if.end.i:                                         ; preds = %cdce925_pll_find_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  %conv3.i = zext i16 %conv.i to i32
  %conv.i3 = zext i16 %conv17.i to i32
  %.frozen = freeze i32 %1
  %conv.i3.frozen = freeze i32 %conv.i3
  %div.i4 = udiv i32 %.frozen, %conv.i3.frozen
  %6 = mul i32 %div.i4, %conv.i3.frozen
  %rem7.i.decomposed = sub i32 %.frozen, %6
  %mul.i = mul i32 %div.i4, %conv3.i
  %mul10.i = mul nuw i32 %rem7.i.decomposed, %conv3.i
  %div12.i = udiv i32 %mul10.i, %conv.i3
  %add.i = add i32 %div12.i, %mul.i
  br label %cdce925_pll_calculate_rate.exit

cdce925_pll_calculate_rate.exit:                  ; preds = %if.end.i, %cdce925_pll_find_rate.exit.cdce925_pll_calculate_rate.exit_crit_edge, %entry.cdce925_pll_calculate_rate.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end.i ], [ %1, %cdce925_pll_find_rate.exit.cdce925_pll_calculate_rate.exit_crit_edge ], [ %1, %entry.cdce925_pll_calculate_rate.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_pll_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp = icmp eq i32 %rate, %parent_rate
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %m = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %m, align 2
  %n = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 4
  %1 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %n, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = add i32 %rate, -230000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -150000001, i32 %2)
  %3 = icmp ult i32 %2, -150000001
  br i1 %3, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_pll_set_rate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_pll_set_rate, %if.then9)) #12
          to label %cleanup [label %if.then9], !srcloc !137

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdce925_pll_set_rate.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %rate) #12
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp12 = icmp ult i32 %rate, %parent_rate
  br i1 %cmp12, label %do.body14, label %if.end30

do.body14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdce925_pll_set_rate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdce925_pll_set_rate, %if.then26)) #12
          to label %cleanup [label %if.then26], !srcloc !137

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cdce925_pll_set_rate.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %rate, i32 noundef %parent_rate) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end11
  %n31 = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 4
  %m32 = getelementptr inbounds %struct.clk_cdce925_pll, ptr %hw, i32 0, i32 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ugt i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %n31 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %n31, align 2
  br label %cdce925_pll_find_rate.exit

if.else.i:                                        ; preds = %if.end30
  %call.i = tail call i32 @gcd(i32 noundef %rate, i32 noundef %parent_rate) #16
  %div.i = udiv i32 %parent_rate, %call.i
  %div7.i = udiv i32 %rate, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %div7.i)
  %cmp837.i = icmp ugt i32 %div7.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div.i)
  %cmp938.i = icmp ugt i32 %div.i, 511
  %or.cond39.i = or i1 %cmp938.i, %cmp837.i
  br i1 %or.cond39.i, label %if.else.i.while.body.i_crit_edge, label %if.else.i.while.end.i_crit_edge

if.else.i.while.end.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.else.i.while.body.i_crit_edge:                 ; preds = %if.else.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.i.while.body.i_crit_edge
  %um.041.i = phi i32 [ %shr10.i, %while.body.i.while.body.i_crit_edge ], [ %div.i, %if.else.i.while.body.i_crit_edge ]
  %un.040.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %div7.i, %if.else.i.while.body.i_crit_edge ]
  %shr.i = lshr i32 %un.040.i, 1
  %shr10.i = lshr i32 %um.041.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %un.040.i)
  %cmp8.i = icmp ugt i32 %un.040.i, 8191
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %um.041.i)
  %cmp9.i = icmp ugt i32 %um.041.i, 1023
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.else.i.while.end.i_crit_edge
  %un.0.lcssa.i = phi i32 [ %div7.i, %if.else.i.while.end.i_crit_edge ], [ %shr.i, %while.body.i.while.end.i_crit_edge ]
  %um.0.lcssa.i = phi i32 [ %div.i, %if.else.i.while.end.i_crit_edge ], [ %shr10.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %un.0.lcssa.i)
  %cmp11.i = icmp eq i32 %un.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %um.0.lcssa.i)
  %cmp14.i = icmp eq i32 %um.0.lcssa.i, 0
  %5 = trunc i32 %un.0.lcssa.i to i16
  %conv.i = select i1 %cmp11.i, i16 1, i16 %5
  %6 = ptrtoint ptr %n31 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %n31, align 2
  %7 = trunc i32 %um.0.lcssa.i to i16
  %conv17.i = select i1 %cmp14.i, i16 1, i16 %7
  br label %cdce925_pll_find_rate.exit

cdce925_pll_find_rate.exit:                       ; preds = %while.end.i, %if.then.i
  %storemerge.i = phi i16 [ %conv17.i, %while.end.i ], [ 0, %if.then.i ]
  %8 = ptrtoint ptr %m32 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %storemerge.i, ptr %m32, align 2
  br label %cleanup

cleanup:                                          ; preds = %cdce925_pll_find_rate.exit, %if.then26, %do.body14, %if.then9, %do.body, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %cdce925_pll_find_rate.exit ], [ -22, %if.then9 ], [ -22, %if.then26 ], [ -22, %do.body ], [ -22, %do.body14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_clk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pdiv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pdiv, align 2
  tail call fastcc void @cdce925_clk_set_pdiv(ptr noundef %hw, i16 noundef zeroext %1)
  %index.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index.i, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %3, label %entry.cdce925_clk_activate.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %entry.sw.bb1.i_crit_edge
    i8 2, label %entry.sw.bb1.i_crit_edge3
    i8 3, label %entry.sw.bb5.i_crit_edge
    i8 4, label %entry.sw.bb5.i_crit_edge4
    i8 5, label %entry.sw.bb9.i_crit_edge
    i8 6, label %entry.sw.bb9.i_crit_edge5
    i8 7, label %entry.sw.bb13.i_crit_edge
    i8 8, label %entry.sw.bb13.i_crit_edge6
  ]

entry.sw.bb13.i_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

entry.sw.bb13.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb13.i

entry.sw.bb9.i_crit_edge5:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i

entry.sw.bb9.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb9.i

entry.sw.bb5.i_crit_edge4:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

entry.sw.bb5.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

entry.sw.bb1.i_crit_edge3:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1.i

entry.cdce925_clk_activate.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_clk_activate.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 2, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cdce925_clk_activate.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge3
  %chip2.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip2.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 20, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cdce925_clk_activate.exit

sw.bb5.i:                                         ; preds = %entry.sw.bb5.i_crit_edge, %entry.sw.bb5.i_crit_edge4
  %chip6.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %chip6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip6.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 36, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cdce925_clk_activate.exit

sw.bb9.i:                                         ; preds = %entry.sw.bb9.i_crit_edge, %entry.sw.bb9.i_crit_edge5
  %chip10.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 1
  %17 = ptrtoint ptr %chip10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip10.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 52, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cdce925_clk_activate.exit

sw.bb13.i:                                        ; preds = %entry.sw.bb13.i_crit_edge, %entry.sw.bb13.i_crit_edge6
  %chip14.i = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 1
  %21 = ptrtoint ptr %chip14.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chip14.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 68, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %cdce925_clk_activate.exit

cdce925_clk_activate.exit:                        ; preds = %sw.bb13.i, %sw.bb9.i, %sw.bb5.i, %sw.bb1.i, %sw.bb.i, %entry.cdce925_clk_activate.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdce925_clk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cdce925_clk_set_pdiv(ptr noundef %hw, i16 noundef zeroext 0)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdce925_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdiv = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pdiv to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pdiv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %1 to i32
  %div = udiv i32 %parent_rate, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdce925_clk_y1_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not.i = icmp ugt i32 %1, %rate
  br i1 %cmp.not.i, label %cdce925_y1_calc_divider.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cdce925_y1_calc_divider.exit:                     ; preds = %if.end.i
  %div12.i = lshr i32 %rate, 1
  %add.i = add i32 %1, %div12.i
  %div3.i = udiv i32 %add.i, %rate
  %2 = tail call i32 @llvm.umin.i32(i32 %div3.i, i32 1023) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %cdce925_y1_calc_divider.exit.cleanup_crit_edge, label %cdce925_y1_calc_divider.exit.if.then_crit_edge

cdce925_y1_calc_divider.exit.if.then_crit_edge:   ; preds = %cdce925_y1_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

cdce925_y1_calc_divider.exit.cleanup_crit_edge:   ; preds = %cdce925_y1_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %cdce925_y1_calc_divider.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i9 = phi i32 [ %2, %cdce925_y1_calc_divider.exit.if.then_crit_edge ], [ 1, %if.end.i.if.then_crit_edge ]
  %div = udiv i32 %1, %retval.0.i9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %cdce925_y1_calc_divider.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %if.then ], [ 0, %cdce925_y1_calc_divider.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cdce925_clk_y1_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  br i1 %tobool.not.i, label %entry.cdce925_y1_calc_divider.exit_crit_edge, label %if.end.i

entry.cdce925_y1_calc_divider.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_y1_calc_divider.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ult i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.cdce925_y1_calc_divider.exit_crit_edge

if.end.i.cdce925_y1_calc_divider.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_y1_calc_divider.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i = lshr i32 %rate, 1
  %add.i = add i32 %div12.i, %parent_rate
  %div3.i = udiv i32 %add.i, %rate
  %0 = tail call i32 @llvm.umin.i32(i32 %div3.i, i32 1023) #12
  %conv.i = trunc i32 %0 to i16
  br label %cdce925_y1_calc_divider.exit

cdce925_y1_calc_divider.exit:                     ; preds = %if.end2.i, %if.end.i.cdce925_y1_calc_divider.exit_crit_edge, %entry.cdce925_y1_calc_divider.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end2.i ], [ 0, %entry.cdce925_y1_calc_divider.exit_crit_edge ], [ 1, %if.end.i.cdce925_y1_calc_divider.exit_crit_edge ]
  %pdiv = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %pdiv to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %retval.0.i, ptr %pdiv, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdce925_clk_set_pdiv(ptr nocapture noundef readonly %data, i16 noundef zeroext %pdiv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb12
    i8 3, label %sw.bb17
    i8 4, label %sw.bb22
    i8 5, label %sw.bb27
    i8 6, label %sw.bb32
    i8 7, label %sw.bb37
    i8 8, label %sw.bb42
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %conv1 = zext i16 %pdiv to i32
  %7 = lshr i32 %conv1, 8
  %and = and i32 %7, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2, i32 noundef 3, i32 noundef %and, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %and5 = and i32 %conv1, 255
  %call6 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 3, i32 noundef %and5) #12
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip8 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %chip8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip8, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %conv10 = zext i16 %pdiv to i32
  %call.i66 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 22, i32 noundef 127, i32 noundef %conv10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip13 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %chip13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip13, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %conv15 = zext i16 %pdiv to i32
  %call.i67 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 23, i32 noundef 127, i32 noundef %conv15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip18 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %chip18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip18, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %conv20 = zext i16 %pdiv to i32
  %call.i68 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 38, i32 noundef 127, i32 noundef %conv20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip23 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %24 = ptrtoint ptr %chip23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip23, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %conv25 = zext i16 %pdiv to i32
  %call.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 39, i32 noundef 127, i32 noundef %conv25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip28 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %chip28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip28, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %conv30 = zext i16 %pdiv to i32
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 54, i32 noundef 127, i32 noundef %conv30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip33 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %32 = ptrtoint ptr %chip33 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip33, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %conv35 = zext i16 %pdiv to i32
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 55, i32 noundef 127, i32 noundef %conv35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip38 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %chip38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip38, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %conv40 = zext i16 %pdiv to i32
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 70, i32 noundef 127, i32 noundef %conv40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %chip43 = getelementptr inbounds %struct.clk_cdce925_output, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %chip43 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chip43, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %conv45 = zext i16 %pdiv to i32
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 71, i32 noundef 127, i32 noundef %conv45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdce925_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  br i1 %tobool.not.i, label %entry.cdce925_calc_divider.exit_crit_edge, label %if.end.i

entry.cdce925_calc_divider.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not.i = icmp ugt i32 %1, %rate
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.cdce925_calc_divider.exit_crit_edge

if.end.i.cdce925_calc_divider.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i = lshr i32 %rate, 1
  %add.i = add i32 %1, %div12.i
  %div3.i = udiv i32 %add.i, %rate
  %2 = tail call i32 @llvm.umin.i32(i32 %div3.i, i32 127) #12
  %conv.i = trunc i32 %2 to i16
  br label %cdce925_calc_divider.exit

cdce925_calc_divider.exit:                        ; preds = %if.end2.i, %if.end.i.cdce925_calc_divider.exit_crit_edge, %entry.cdce925_calc_divider.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end2.i ], [ 0, %entry.cdce925_calc_divider.exit_crit_edge ], [ 1, %if.end.i.cdce925_calc_divider.exit_crit_edge ]
  %conv = zext i16 %retval.0.i to i32
  %div = udiv i32 %1, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %rate)
  %cmp.not = icmp eq i32 %div, %rate
  br i1 %cmp.not, label %cdce925_calc_divider.exit.if.end_crit_edge, label %if.then

cdce925_calc_divider.exit.if.end_crit_edge:       ; preds = %cdce925_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %cdce925_calc_divider.exit
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk.i, align 4
  %call.i = tail call ptr @clk_get_parent(ptr noundef %4) #12
  %call1.i = tail call ptr @clk_get_parent(ptr noundef %call.i) #12
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %call1.i) #12
  %rem.i = urem i32 %call2.i, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i = icmp eq i32 %rem.i, 0
  br i1 %cmp.i, label %if.then.cdce925_clk_best_parent_rate.exit_crit_edge, label %if.end.i19

if.then.cdce925_clk_best_parent_rate.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_clk_best_parent_rate.exit

if.end.i19:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 -80000000, i32 %rate)
  %cmp3.i = icmp ugt i32 %rate, -80000000
  br i1 %cmp3.i, label %if.end.i19.cond.false9.i_crit_edge, label %cond.end.i

if.end.i19.cond.false9.i_crit_edge:               ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false9.i

cond.end.i:                                       ; preds = %if.end.i19
  %sub.i = add nuw i32 %rate, 79999999
  %div.i = udiv i32 %sub.i, %rate
  %phi.cast.i = trunc i32 %div.i to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1796876, i32 %rate)
  %cmp6.i = icmp ult i32 %rate, 1796876
  br i1 %cmp6.i, label %cond.end.i.cond.end10.i_crit_edge, label %cond.end.i.cond.false9.i_crit_edge

cond.end.i.cond.false9.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false9.i

cond.end.i.cond.end10.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end10.i

cond.false9.i:                                    ; preds = %cond.end.i.cond.false9.i_crit_edge, %if.end.i19.cond.false9.i_crit_edge
  %cond85.i = phi i16 [ %phi.cast.i, %cond.end.i.cond.false9.i_crit_edge ], [ 1, %if.end.i19.cond.false9.i_crit_edge ]
  %div4.i = udiv i32 230000000, %rate
  br label %cond.end10.i

cond.end10.i:                                     ; preds = %cond.false9.i, %cond.end.i.cond.end10.i_crit_edge
  %cond86.i = phi i16 [ %cond85.i, %cond.false9.i ], [ %phi.cast.i, %cond.end.i.cond.end10.i_crit_edge ]
  %cond11.i = phi i32 [ %div4.i, %cond.false9.i ], [ 127, %cond.end.i.cond.end10.i_crit_edge ]
  %conv13.i = zext i16 %cond86.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond11.i, i32 %conv13.i)
  %cmp15.i = icmp ult i32 %cond11.i, %conv13.i
  br i1 %cmp15.i, label %cond.end10.i.cdce925_clk_best_parent_rate.exit_crit_edge, label %for.cond.preheader.i

cond.end10.i.cdce925_clk_best_parent_rate.exit_crit_edge: ; preds = %cond.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_clk_best_parent_rate.exit

for.cond.preheader.i:                             ; preds = %cond.end10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond11.i, i32 %conv13.i)
  %cmp2189.i = icmp ugt i32 %cond11.i, %conv13.i
  br i1 %cmp2189.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %conv1994.i = phi i32 [ %conv19.i, %cleanup.i.for.body.i_crit_edge ], [ %conv13.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %best_rate_error.093.i = phi i32 [ %best_rate_error.2.i, %cleanup.i.for.body.i_crit_edge ], [ %rate, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pdiv_now.091.i = phi i16 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ %cond86.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %pdiv_best.090.i = phi i16 [ %pdiv_best.2.i, %cleanup.i.for.body.i_crit_edge ], [ %cond86.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %conv1994.i, %rate
  %call24.i = tail call i32 @clk_round_rate(ptr noundef %call.i, i32 noundef %mul.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 1
  br i1 %cmp25.i, label %for.body.i.cleanup.i_crit_edge, label %if.end28.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %div3087.i = udiv i32 %call24.i, %conv1994.i
  %sub31.i = sub i32 %div3087.i, %rate
  %5 = tail call i32 @llvm.abs.i32(i32 %sub31.i, i1 false) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %best_rate_error.093.i)
  %cmp40.i = icmp ult i32 %5, %best_rate_error.093.i
  %pdiv_best.1.i = select i1 %cmp40.i, i16 %pdiv_now.091.i, i16 %pdiv_best.090.i
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %best_rate_error.093.i) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end28.i, %for.body.i.cleanup.i_crit_edge
  %pdiv_best.2.i = phi i16 [ %pdiv_best.1.i, %if.end28.i ], [ %pdiv_best.090.i, %for.body.i.cleanup.i_crit_edge ]
  %best_rate_error.2.i = phi i32 [ %6, %if.end28.i ], [ %best_rate_error.093.i, %for.body.i.cleanup.i_crit_edge ]
  %inc.i = add i16 %pdiv_now.091.i, 1
  %conv19.i = zext i16 %inc.i to i32
  %cmp21.i = icmp ugt i32 %cond11.i, %conv19.i
  br i1 %cmp21.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.loopexit.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  %.pre.i = zext i16 %pdiv_best.2.i to i32
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond.preheader.i.for.end.i_crit_edge
  %conv47.pre-phi.i = phi i32 [ %.pre.i, %for.end.loopexit.i ], [ %conv13.i, %for.cond.preheader.i.for.end.i_crit_edge ]
  %mul48.i = mul i32 %conv47.pre-phi.i, %rate
  br label %cdce925_clk_best_parent_rate.exit

cdce925_clk_best_parent_rate.exit:                ; preds = %for.end.i, %cond.end10.i.cdce925_clk_best_parent_rate.exit_crit_edge, %if.then.cdce925_clk_best_parent_rate.exit_crit_edge
  %retval.0.i20 = phi i32 [ %mul48.i, %for.end.i ], [ %call2.i, %if.then.cdce925_clk_best_parent_rate.exit_crit_edge ], [ 0, %cond.end10.i.cdce925_clk_best_parent_rate.exit_crit_edge ]
  br i1 %tobool.not.i, label %cdce925_clk_best_parent_rate.exit.cdce925_calc_divider.exit31_crit_edge, label %if.end.i23

cdce925_clk_best_parent_rate.exit.cdce925_calc_divider.exit31_crit_edge: ; preds = %cdce925_clk_best_parent_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit31

if.end.i23:                                       ; preds = %cdce925_clk_best_parent_rate.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i20, i32 %rate)
  %cmp.not.i22 = icmp ugt i32 %retval.0.i20, %rate
  br i1 %cmp.not.i22, label %if.end2.i28, label %if.end.i23.cdce925_calc_divider.exit31_crit_edge

if.end.i23.cdce925_calc_divider.exit31_crit_edge: ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit31

if.end2.i28:                                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i24 = lshr i32 %rate, 1
  %add.i25 = add i32 %retval.0.i20, %div12.i24
  %div3.i26 = udiv i32 %add.i25, %rate
  %7 = tail call i32 @llvm.umin.i32(i32 %div3.i26, i32 127) #12
  %conv.i27 = trunc i32 %7 to i16
  br label %cdce925_calc_divider.exit31

cdce925_calc_divider.exit31:                      ; preds = %if.end2.i28, %if.end.i23.cdce925_calc_divider.exit31_crit_edge, %cdce925_clk_best_parent_rate.exit.cdce925_calc_divider.exit31_crit_edge
  %retval.0.i29 = phi i16 [ %conv.i27, %if.end2.i28 ], [ 0, %cdce925_clk_best_parent_rate.exit.cdce925_calc_divider.exit31_crit_edge ], [ 1, %if.end.i23.cdce925_calc_divider.exit31_crit_edge ]
  %8 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i20, ptr %parent_rate, align 4
  br label %if.end

if.end:                                           ; preds = %cdce925_calc_divider.exit31, %cdce925_calc_divider.exit.if.end_crit_edge
  %l_parent_rate.0 = phi i32 [ %retval.0.i20, %cdce925_calc_divider.exit31 ], [ %1, %cdce925_calc_divider.exit.if.end_crit_edge ]
  %divider.0 = phi i16 [ %retval.0.i29, %cdce925_calc_divider.exit31 ], [ %retval.0.i, %cdce925_calc_divider.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %divider.0)
  %tobool.not = icmp eq i16 %divider.0, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %conv5 = zext i16 %divider.0 to i32
  %div6 = udiv i32 %l_parent_rate.0, %conv5
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %div6, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cdce925_clk_set_rate(ptr nocapture noundef writeonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not.i = icmp eq i32 %rate, 0
  br i1 %tobool.not.i, label %entry.cdce925_calc_divider.exit_crit_edge, label %if.end.i

entry.cdce925_calc_divider.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.not.i = icmp ult i32 %rate, %parent_rate
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.cdce925_calc_divider.exit_crit_edge

if.end.i.cdce925_calc_divider.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cdce925_calc_divider.exit

if.end2.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %div12.i = lshr i32 %rate, 1
  %add.i = add i32 %div12.i, %parent_rate
  %div3.i = udiv i32 %add.i, %rate
  %0 = tail call i32 @llvm.umin.i32(i32 %div3.i, i32 127) #12
  %conv.i = trunc i32 %0 to i16
  br label %cdce925_calc_divider.exit

cdce925_calc_divider.exit:                        ; preds = %if.end2.i, %if.end.i.cdce925_calc_divider.exit_crit_edge, %entry.cdce925_calc_divider.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end2.i ], [ 0, %entry.cdce925_calc_divider.exit_crit_edge ], [ 1, %if.end.i.cdce925_calc_divider.exit_crit_edge ]
  %pdiv = getelementptr inbounds %struct.clk_cdce925_output, ptr %hw, i32 0, i32 3
  %1 = ptrtoint ptr %pdiv to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %retval.0.i, ptr %pdiv, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !118, !120, !121, !122, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_clk_cdce925__301_843_cdce925_driver_init6, !1, !"__initcall__kmod_clk_cdce925__301_843_cdce925_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-cdce925.c", i32 843, i32 1}
!2 = !{ptr @__exitcall_cdce925_driver_exit, !1, !"__exitcall_cdce925_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-cdce925.c", i32 845, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-cdce925.c", i32 846, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-cdce925.c", i32 847, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-cdce925.c", i32 837, i32 11}
!12 = !{ptr @cdce925_driver, !13, !"cdce925_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-cdce925.c", i32 835, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-cdce925.c", i32 651, i32 11}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-cdce925.c", i32 657, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cdce925_probe.__UNIQUE_ID_ddebug299, !17, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-cdce925.c", i32 659, i32 47}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-cdce925.c", i32 663, i32 47}
!26 = !{ptr @cdce925_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-cdce925.c", i32 675, i32 17}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-cdce925.c", i32 678, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cdce925_probe._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @cdce925_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/clk-cdce925.c", i32 685, i32 3}
!37 = !{ptr @cdce925_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cdce925_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/clk-cdce925.c", i32 688, i32 2}
!41 = !{ptr @cdce925_probe.__UNIQUE_ID_ddebug300, !40, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-cdce925.c", i32 690, i32 33}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-cdce925.c", i32 706, i32 43}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-cdce925.c", i32 714, i32 4}
!48 = !{ptr @cdce925_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @cdce925_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/clk-cdce925.c", i32 717, i32 23}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-cdce925.c", i32 722, i32 4}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/clk-cdce925.c", i32 725, i32 5}
!56 = !{ptr @cdce925_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdce925_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/clk-cdce925.c", i32 730, i32 4}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-cdce925.c", i32 732, i32 5}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/clk-cdce925.c", i32 748, i32 36}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/clk-cdce925.c", i32 756, i32 3}
!66 = !{ptr @cdce925_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cdce925_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/clk-cdce925.c", i32 765, i32 37}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/clk-cdce925.c", i32 796, i32 4}
!72 = !{ptr @cdce925_probe._entry.33, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cdce925_probe._entry_ptr.35, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-cdce925.c", i32 805, i32 3}
!76 = !{ptr @cdce925_probe._entry.36, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cdce925_probe._entry_ptr.38, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-cdce925.c", i32 622, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @cdce925_regulator_enable._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @cdce925_regulator_enable._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @clk_cdce925_chip_info_tbl, !84, !"clk_cdce925_chip_info_tbl", i1 false, i1 false}
!84 = !{!"../drivers/clk/clk-cdce925.c", i32 40, i32 43}
!85 = !{ptr @regmap_cdce925_bus, !86, !"regmap_cdce925_bus", i1 false, i1 false}
!86 = !{!"../drivers/clk/clk-cdce925.c", i32 632, i32 26}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-cdce925.c", i32 538, i32 2}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @cdce925_regmap_i2c_write.__UNIQUE_ID_ddebug297, !88, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/clk-cdce925.c", i32 583, i32 3}
!93 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cdce925_regmap_i2c_read.__UNIQUE_ID_ddebug298, !92, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!95 = !{ptr @cdce925_pll_ops, !96, !"cdce925_pll_ops", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-cdce925.c", i32 280, i32 29}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/clk-cdce925.c", i32 243, i32 4}
!99 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug290, !98, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-cdce925.c", i32 248, i32 4}
!103 = !{ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug291, !102, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-cdce925.c", i32 251, i32 3}
!106 = !{ptr @cdce925_pll_prepare.__UNIQUE_ID_ddebug292, !105, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-cdce925.c", i32 168, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cdce925_pll_set_rate.__UNIQUE_ID_ddebug288, !108, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-cdce925.c", i32 173, i32 3}
!113 = !{ptr @cdce925_pll_set_rate.__UNIQUE_ID_ddebug289, !112, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!114 = !{ptr @cdce925_clk_y1_ops, !115, !"cdce925_clk_y1_ops", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-cdce925.c", i32 512, i32 29}
!116 = !{ptr @cdce925_clk_ops, !117, !"cdce925_clk_ops", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-cdce925.c", i32 465, i32 29}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-cdce925.c", i32 599, i32 3}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @of_clk_cdce925_get._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @of_clk_cdce925_get._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @clk_cdce925_of_match, !124, !"clk_cdce925_of_match", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-cdce925.c", i32 826, i32 34}
!125 = !{ptr @cdce925_id, !126, !"cdce925_id", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-cdce925.c", i32 817, i32 35}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
!137 = !{i64 2148741445, i64 2148741450, i64 2148741463, i64 2148741507, i64 2148741541, i64 2148741562}
!138 = !{!"branch_weights", i32 2000, i32 1}
