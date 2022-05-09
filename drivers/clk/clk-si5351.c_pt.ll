; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-si5351.c_pt.bc'
source_filename = "../drivers/clk/clk-si5351.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.si5351_platform_data = type { [2 x i32], [8 x %struct.si5351_clkout_config] }
%struct.si5351_clkout_config = type { i32, i32, i32, i32, i8, i8, i32 }
%struct.si5351_driver_data = type { i32, ptr, ptr, ptr, ptr, %struct.clk_hw, ptr, ptr, %struct.clk_hw, [2 x %struct.si5351_hw_data], ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.si5351_hw_data = type { %struct.clk_hw, ptr, %struct.si5351_parameters, i8 }
%struct.si5351_parameters = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_clk_si5351__298_1670_si5351_driver_init6 = internal global ptr @si5351_driver_init, section ".initcall6.init", align 4
@si5351_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @si5351_i2c_probe, ptr @si5351_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @si5351_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @si5351_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_si5351_driver_exit = internal global ptr @si5351_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [73 x i8] c"clk_si5351.author=Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [71 x i8] c"clk_si5351.description=Silicon Labs Si5351A/B/C clock generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [39 x i8] c"clk_si5351.file=drivers/clk/clk-si5351\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [23 x i8] c"clk_si5351.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si5351\00", [25 x i8] zeroinitializer }, align 32
@si5351_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5351a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5351a-msop\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5351b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,si5351c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@si5351_i2c_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"si5351a\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"si5351a-msop\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"si5351b\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"si5351c\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1409, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missing parent clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"si5351_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-si5351.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr = internal global ptr @si5351_i2c_probe._entry, section ".printk_index", align 4
@si5351_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si5351_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @si5351_regmap_is_writeable, ptr null, ptr @si5351_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 187, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"clk_si5351:1413:(&si5351_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1415, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.11 = internal global ptr @si5351_i2c_probe._entry.9, section ".printk_index", align 4
@si5351_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 1432, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to reparent pll %d to %d\0A\00", [63 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.14 = internal global ptr @si5351_i2c_probe._entry.12, section ".printk_index", align 4
@si5351_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 1443, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to reparent multisynth %d to %d\0A\00", [56 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.17 = internal global ptr @si5351_i2c_probe._entry.15, section ".printk_index", align 4
@si5351_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 1452, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to reparent clkout %d to %d\0A\00", [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.20 = internal global ptr @si5351_i2c_probe._entry.18, section ".printk_index", align 4
@si5351_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 1461, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed set drive strength of clkout%d to %d\0A\00", [51 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.23 = internal global ptr @si5351_i2c_probe._entry.21, section ".printk_index", align 4
@si5351_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1470, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed set disable state of clkout%d to %d\0A\00", [52 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.26 = internal global ptr @si5351_i2c_probe._entry.24, section ".printk_index", align 4
@si5351_xtal_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5351_xtal_prepare, ptr @si5351_xtal_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1488, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to register %s\0A\00", [41 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.29 = internal global ptr @si5351_i2c_probe._entry.27, section ".printk_index", align 4
@si5351_clkin_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5351_clkin_prepare, ptr @si5351_clkin_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5351_clkin_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1506, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.31 = internal global ptr @si5351_i2c_probe._entry.30, section ".printk_index", align 4
@si5351_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5351_pll_recalc_rate, ptr @si5351_pll_round_rate, ptr null, ptr @si5351_pll_set_parent, ptr @si5351_pll_get_parent, ptr @si5351_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1528, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.33 = internal global ptr @si5351_i2c_probe._entry.32, section ".printk_index", align 4
@si5351_vxco_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5351_vxco_prepare, ptr @si5351_vxco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5351_vxco_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr @si5351_vxco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1552, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.35 = internal global ptr @si5351_i2c_probe._entry.34, section ".printk_index", align 4
@si5351_msynth_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108], [32 x i8] zeroinitializer }, align 32
@si5351_msynth_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5351_msynth_recalc_rate, ptr @si5351_msynth_round_rate, ptr null, ptr @si5351_msynth_set_parent, ptr @si5351_msynth_get_parent, ptr @si5351_msynth_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1591, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.37 = internal global ptr @si5351_i2c_probe._entry.36, section ".printk_index", align 4
@si5351_clkout_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], [32 x i8] zeroinitializer }, align 32
@si5351_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @si5351_clkout_prepare, ptr @si5351_clkout_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @si5351_clkout_recalc_rate, ptr @si5351_clkout_round_rate, ptr null, ptr @si5351_clkout_set_parent, ptr @si5351_clkout_get_parent, ptr @si5351_clkout_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1619, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.39 = internal global ptr @si5351_i2c_probe._entry.38, section ".printk_index", align 4
@si5351_i2c_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.4, ptr @.str.5, i32 1630, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot set rate : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.42 = internal global ptr @si5351_i2c_probe._entry.40, section ".printk_index", align 4
@si5351_i2c_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.4, ptr @.str.5, i32 1638, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to add clk provider\0A\00", [36 x i8] zeroinitializer }, align 32
@si5351_i2c_probe._entry_ptr.45 = internal global ptr @si5351_i2c_probe._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"silabs,pll-source\00", [46 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 1187, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid pll %d on pll-source prop\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si5351_dt_parse\00", [16 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr = internal global ptr @si5351_dt_parse._entry, section ".printk_index", align 4
@si5351_dt_parse._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 1194, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing pll-source for pll %d\0A\00", [33 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.51 = internal global ptr @si5351_dt_parse._entry.49, section ".printk_index", align 4
@si5351_dt_parse._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.5, i32 1206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid parent %d for pll %d\0A\00", [34 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.54 = internal global ptr @si5351_dt_parse._entry.52, section ".printk_index", align 4
@si5351_dt_parse._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.5, i32 1213, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.56 = internal global ptr @si5351_dt_parse._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.5, i32 1222, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"missing reg property of %pOFn\0A\00", [33 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.60 = internal global ptr @si5351_dt_parse._entry.58, section ".printk_index", align 4
@si5351_dt_parse._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.5, i32 1228, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid clkout %d\0A\00", [45 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.63 = internal global ptr @si5351_dt_parse._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"silabs,multisynth-source\00", [39 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.48, ptr @.str.5, i32 1246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid parent %d for multisynth %d\0A\00", [59 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.67 = internal global ptr @si5351_dt_parse._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"silabs,clock-source\00", [44 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.48, ptr @.str.5, i32 1269, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid parent %d for clkout %d\0A\00", [63 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.71 = internal global ptr @si5351_dt_parse._entry.69, section ".printk_index", align 4
@si5351_dt_parse._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.48, ptr @.str.5, i32 1278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.73 = internal global ptr @si5351_dt_parse._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"silabs,drive-strength\00", [42 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.48, ptr @.str.5, i32 1295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid drive strength %d for clkout %d\0A\00", [55 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.77 = internal global ptr @si5351_dt_parse._entry.75, section ".printk_index", align 4
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"silabs,disable-state\00", [43 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.48, ptr @.str.5, i32 1322, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid disable state %d for clkout %d\0A\00", [56 x i8] zeroinitializer }, align 32
@si5351_dt_parse._entry_ptr.81 = internal global ptr @si5351_dt_parse._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"silabs,pll-master\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"silabs,pll-reset\00", [47 x i8] zeroinitializer }, align 32
@si5351_clkin_recalc_rate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.86, ptr @.str.5, ptr @.str.87, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_si5351\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si5351_clkin_recalc_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s - clkin div = %d, rate = %lu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si5351_plla\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si5351_pllb\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"si5351_vxco\00", [20 x i8] zeroinitializer }, align 32
@si5351_pll_recalc_rate.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.91, ptr @.str.5, ptr @.str.92, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si5351_pll_recalc_rate\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%s - %s: p1 = %lu, p2 = %lu, p3 = %lu, parent_rate = %lu, rate = %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@si5351_reg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 91, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read from reg%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"si5351_reg_read\00", [16 x i8] zeroinitializer }, align 32
@si5351_reg_read._entry_ptr = internal global ptr @si5351_reg_read._entry, section ".printk_index", align 4
@si5351_pll_round_rate.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.95, ptr @.str.5, ptr @.str.96, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"si5351_pll_round_rate\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s - %s: a = %lu, b = %lu, c = %lu, parent_rate = %lu, rate = %lu\0A\00", [61 x i8] zeroinitializer }, align 32
@si5351_pll_set_rate.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.97, ptr @.str.5, ptr @.str.92, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si5351_pll_set_rate\00", [44 x i8] zeroinitializer }, align 32
@si5351_vxco_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.5, i32 311, ptr @.str.100, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VXCO currently unsupported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"si5351_vxco_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@si5351_vxco_prepare._entry_ptr = internal global ptr @si5351_vxco_prepare._entry, section ".printk_index", align 4
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms0\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms1\00", [28 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms2\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms3\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms4\00", [28 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms5\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms6\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ms7\00", [28 x i8] zeroinitializer }, align 32
@si5351_msynth_recalc_rate.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.109, ptr @.str.5, ptr @.str.110, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"si5351_msynth_recalc_rate\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"%s - %s: p1 = %lu, p2 = %lu, p3 = %lu, m = %lu, parent_rate = %lu, rate = %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@si5351_msynth_round_rate.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.111, ptr @.str.5, ptr @.str.112, i8 0, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si5351_msynth_round_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"%s - %s: a = %lu, b = %lu, c = %lu, divby4 = %d, parent_rate = %lu, rate = %lu\0A\00", [48 x i8] zeroinitializer }, align 32
@si5351_msynth_set_rate.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.113, ptr @.str.5, ptr @.str.114, i8 0, i8 -61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si5351_msynth_set_rate\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%s - %s: p1 = %lu, p2 = %lu, p3 = %lu, divby4 = %d, parent_rate = %lu, rate = %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk0\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk1\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk2\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk3\00", [27 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk4\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk5\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk6\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk7\00", [27 x i8] zeroinitializer }, align 32
@_si5351_clkout_reset_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.5, i32 921, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Reset bit didn't clear\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_si5351_clkout_reset_pll\00", [39 x i8] zeroinitializer }, align 32
@_si5351_clkout_reset_pll._entry_ptr = internal global ptr @_si5351_clkout_reset_pll._entry, section ".printk_index", align 4
@_si5351_clkout_reset_pll.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.124, ptr @.str.5, ptr @.str.125, i8 0, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s - %s: pll = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@si5351_clkout_round_rate.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.126, ptr @.str.5, ptr @.str.127, i8 1, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"si5351_clkout_round_rate\00", [39 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s - %s: rdiv = %u, parent_rate = %lu, rate = %lu\0A\00", [45 x i8] zeroinitializer }, align 32
@si5351_clkout_set_rate.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.85, ptr @.str.128, ptr @.str.5, ptr @.str.127, i8 1, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"si5351_clkout_set_rate\00", [41 x i8] zeroinitializer }, align 32
@si53351_of_clk_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.5, i32 1351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid index %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"si53351_of_clk_get\00", [45 x i8] zeroinitializer }, align 32
@si53351_of_clk_get._entry_ptr = internal global ptr @si53351_of_clk_get._entry, section ".printk_index", align 4
@switch.table.si5351_i2c_probe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.135 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 4, i64 5, i64 6, i64 7, i64 8, i64 10, i64 11, i64 12, i64 13, i64 14, i64 173, i64 174, i64 175, i64 176, i64 178, i64 179, i64 180, i64 181, i64 182]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 177]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 7]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"si5351_driver\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1661, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1663, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"si5351_dt_ids\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1153, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"si5351_i2c_ids\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1652, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1396, i32 46 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1397, i32 47 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1409, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [21 x i8] c"si5351_regmap_config\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 206, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1413, i32 20 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1415, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1430, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1441, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1450, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1459, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1468, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant [16 x i8] c"si5351_xtal_ops\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 235, i32 29 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1488, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"si5351_clkin_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 296, i32 29 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1505, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [15 x i8] c"si5351_pll_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 532, i32 29 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1528, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant [16 x i8] c"si5351_vxco_ops\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 332, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1552, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"si5351_msynth_names\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 73, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant [18 x i8] c"si5351_msynth_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 788, i32 29 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1590, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c"si5351_clkout_names\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 76, i32 27 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"si5351_clkout_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1139, i32 29 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1618, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1629, i32 5 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1638, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1184, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1186, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1193, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1204, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1212, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1220, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1221, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1228, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1232, i32 36 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1244, i32 5 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1251, i32 36 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1267, i32 6 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1276, i32 5 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1283, i32 36 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1293, i32 5 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1300, i32 36 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1320, i32 5 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1327, i32 36 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1331, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1334, i32 33 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 290, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 71, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 71, i32 17 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 71, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 436, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 90, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 494, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 523, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 311, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 9 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 16 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 23 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 30 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 37 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 44 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 74, i32 51 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 634, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 747, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 779, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 10 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 18 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 26 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 34 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 42 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 50 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 77, i32 58 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 921, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 923, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1080, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1131, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.515 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.516 = private constant [28 x i8] c"../drivers/clk/clk-si5351.c\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.516, i32 1351, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [30 x i8] c"switch.table.si5351_i2c_probe\00", align 1
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_si5351_driver_exit, ptr @__initcall__kmod_clk_si5351__298_1670_si5351_driver_init6, ptr @_si5351_clkout_reset_pll._entry, ptr @_si5351_clkout_reset_pll._entry_ptr, ptr @si53351_of_clk_get._entry, ptr @si53351_of_clk_get._entry_ptr, ptr @si5351_driver_exit, ptr @si5351_dt_parse._entry, ptr @si5351_dt_parse._entry.49, ptr @si5351_dt_parse._entry.52, ptr @si5351_dt_parse._entry.55, ptr @si5351_dt_parse._entry.58, ptr @si5351_dt_parse._entry.61, ptr @si5351_dt_parse._entry.65, ptr @si5351_dt_parse._entry.69, ptr @si5351_dt_parse._entry.72, ptr @si5351_dt_parse._entry.75, ptr @si5351_dt_parse._entry.79, ptr @si5351_dt_parse._entry_ptr, ptr @si5351_dt_parse._entry_ptr.51, ptr @si5351_dt_parse._entry_ptr.54, ptr @si5351_dt_parse._entry_ptr.56, ptr @si5351_dt_parse._entry_ptr.60, ptr @si5351_dt_parse._entry_ptr.63, ptr @si5351_dt_parse._entry_ptr.67, ptr @si5351_dt_parse._entry_ptr.71, ptr @si5351_dt_parse._entry_ptr.73, ptr @si5351_dt_parse._entry_ptr.77, ptr @si5351_dt_parse._entry_ptr.81, ptr @si5351_i2c_probe._entry, ptr @si5351_i2c_probe._entry.12, ptr @si5351_i2c_probe._entry.15, ptr @si5351_i2c_probe._entry.18, ptr @si5351_i2c_probe._entry.21, ptr @si5351_i2c_probe._entry.24, ptr @si5351_i2c_probe._entry.27, ptr @si5351_i2c_probe._entry.30, ptr @si5351_i2c_probe._entry.32, ptr @si5351_i2c_probe._entry.34, ptr @si5351_i2c_probe._entry.36, ptr @si5351_i2c_probe._entry.38, ptr @si5351_i2c_probe._entry.40, ptr @si5351_i2c_probe._entry.43, ptr @si5351_i2c_probe._entry.9, ptr @si5351_i2c_probe._entry_ptr, ptr @si5351_i2c_probe._entry_ptr.11, ptr @si5351_i2c_probe._entry_ptr.14, ptr @si5351_i2c_probe._entry_ptr.17, ptr @si5351_i2c_probe._entry_ptr.20, ptr @si5351_i2c_probe._entry_ptr.23, ptr @si5351_i2c_probe._entry_ptr.26, ptr @si5351_i2c_probe._entry_ptr.29, ptr @si5351_i2c_probe._entry_ptr.31, ptr @si5351_i2c_probe._entry_ptr.33, ptr @si5351_i2c_probe._entry_ptr.35, ptr @si5351_i2c_probe._entry_ptr.37, ptr @si5351_i2c_probe._entry_ptr.39, ptr @si5351_i2c_probe._entry_ptr.42, ptr @si5351_i2c_probe._entry_ptr.45, ptr @si5351_reg_read._entry, ptr @si5351_reg_read._entry_ptr, ptr @si5351_vxco_prepare._entry, ptr @si5351_vxco_prepare._entry_ptr, ptr @si5351_driver, ptr @.str, ptr @si5351_dt_ids, ptr @si5351_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @si5351_i2c_probe._key, ptr @si5351_regmap_config, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @si5351_xtal_ops, ptr @.str.28, ptr @si5351_clkin_ops, ptr @si5351_pll_ops, ptr @si5351_vxco_ops, ptr @si5351_msynth_names, ptr @si5351_msynth_ops, ptr @si5351_clkout_names, ptr @si5351_clkout_ops, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @switch.table.si5351_i2c_probe], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_xtal_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_clkin_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_vxco_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_msynth_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_msynth_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_clkout_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_i2c_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_dt_parse._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_reg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si5351_vxco_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_si5351_clkout_reset_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si53351_of_clk_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.si5351_i2c_probe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @si5351_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @si5351_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @si5351_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_i2c_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %num.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %init = alloca %struct.clk_init_data, align 4
  %parent_names = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %2 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_names) #7
  %3 = getelementptr inbounds [4 x ptr], ptr %parent_names, i32 0, i32 1
  %4 = getelementptr inbounds [4 x ptr], ptr %parent_names, i32 0, i32 2
  %5 = getelementptr inbounds [4 x ptr], ptr %parent_names, i32 0, i32 3
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = call ptr @memset(ptr %parent_names, i32 255, i32 16)
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #7
  %9 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %num.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 200, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.si5351_dt_parse.exit.thread_crit_edge, label %if.end3.i

if.end.i.si5351_dt_parse.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %si5351_dt_parse.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.46, ptr noundef null) #7
  %call5.i = call ptr @of_prop_next_u32(ptr noundef %call4.i, ptr noundef null, ptr noundef nonnull %num.i) #7
  %tobool6.not251.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not251.i, label %if.end3.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end3.i.for.end.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp20.not.i = icmp eq i32 %1, 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.0252.i = phi ptr [ %call5.i, %for.body.lr.ph.i ], [ %call33.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp7.i = icmp sgt i32 %12, 1
  br i1 %cmp7.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %12) #10
  br label %si5351_dt_parse.exit.thread

if.end10.i:                                       ; preds = %for.body.i
  %call11.i = call ptr @of_prop_next_u32(ptr noundef %call4.i, ptr noundef nonnull %p.0252.i, ptr noundef nonnull %val.i) #7
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50, i32 noundef %14) #10
  br label %si5351_dt_parse.exit.thread

if.end18.i:                                       ; preds = %if.end10.i
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end31.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num.i, align 4
  br label %for.inc.i

sw.bb19.i:                                        ; preds = %if.end18.i
  %20 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num.i, align 4
  br i1 %cmp20.not.i, label %sw.bb19.i.for.inc.i_crit_edge, label %do.end24.i

sw.bb19.i.for.inc.i_crit_edge:                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

do.end24.i:                                       ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef %21) #10
  br label %si5351_dt_parse.exit.thread

do.end31.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %16, i32 noundef %23) #10
  br label %si5351_dt_parse.exit.thread

for.inc.i:                                        ; preds = %sw.bb19.i.for.inc.i_crit_edge, %sw.bb.i
  %.sink311.i = phi i32 [ %19, %sw.bb.i ], [ %21, %sw.bb19.i.for.inc.i_crit_edge ]
  %.sink.i = phi i32 [ 1, %sw.bb.i ], [ 2, %sw.bb19.i.for.inc.i_crit_edge ]
  %arrayidx.i = getelementptr [2 x i32], ptr %call.i.i, i32 0, i32 %.sink311.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %arrayidx.i, align 4
  %call33.i = call ptr @of_prop_next_u32(ptr noundef %call4.i, ptr noundef nonnull %call11.i, ptr noundef nonnull %num.i) #7
  %tobool6.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool6.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end3.i.for.end.i_crit_edge
  %call34.i = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef null) #7
  %cmp36.not253.i = icmp eq ptr %call34.i, null
  br i1 %cmp36.not253.i, label %for.end.i.for.end156.i_crit_edge, label %for.body37.lr.ph.i

for.end.i.for.end156.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156.i

for.body37.lr.ph.i:                               ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp47.i = icmp eq i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp86.not.i = icmp eq i32 %1, 4
  br label %for.body37.i

for.body37.i:                                     ; preds = %if.end146.i.for.body37.i_crit_edge, %for.body37.lr.ph.i
  %child.0254.i = phi ptr [ %call34.i, %for.body37.lr.ph.i ], [ %call155.i, %if.end146.i.for.body37.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.57, ptr noundef nonnull %num.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool39.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool39.not.i, label %if.end45.i, label %do.end43.i

do.end43.i:                                       ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.59, ptr noundef nonnull %child.0254.i) #10
  br label %put_child.i

if.end45.i:                                       ; preds = %for.body37.i
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp46.i = icmp sgt i32 %26, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp48.i = icmp sgt i32 %26, 2
  %or.cond256.i = select i1 %cmp47.i, i1 %cmp48.i, i1 %cmp46.i
  br i1 %or.cond256.i, label %do.end52.i, label %if.end54.i

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62, i32 noundef %26) #10
  br label %put_child.i

if.end54.i:                                       ; preds = %if.end45.i
  %call.i.i219.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.64, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i219.i)
  %tobool56.not.i = icmp sgt i32 %call.i.i219.i, -1
  br i1 %tobool56.not.i, label %if.then57.i, label %if.end54.i.if.end70.i_crit_edge

if.end54.i.if.end70.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then57.i:                                      ; preds = %if.end54.i
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %28, label %do.end67.i [
    i32 0, label %if.then57.i.if.end70.sink.split.i_crit_edge
    i32 1, label %sw.bb60.i
  ]

if.then57.i.if.end70.sink.split.i_crit_edge:      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.sink.split.i

sw.bb60.i:                                        ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.sink.split.i

do.end67.i:                                       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66, i32 noundef %28, i32 noundef %31) #10
  br label %put_child.i

if.end70.sink.split.i:                            ; preds = %sw.bb60.i, %if.then57.i.if.end70.sink.split.i_crit_edge
  %.sink312.i = phi i32 [ 2, %sw.bb60.i ], [ 1, %if.then57.i.if.end70.sink.split.i_crit_edge ]
  %32 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink313.i = load i32, ptr %num.i, align 4
  %arrayidx59.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %.sink313.i
  %33 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink312.i, ptr %arrayidx59.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.sink.split.i, %if.end54.i.if.end70.i_crit_edge
  %call.i.i220.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i220.i)
  %tobool72.not.i = icmp sgt i32 %call.i.i220.i, -1
  br i1 %tobool72.not.i, label %if.then73.i, label %if.end70.i.if.end102.i_crit_edge

if.end70.i.if.end102.i_crit_edge:                 ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

if.then73.i:                                      ; preds = %if.end70.i
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %35, label %do.end99.i [
    i32 0, label %if.then73.i.if.end102.sink.split.i_crit_edge
    i32 1, label %sw.bb77.i
    i32 2, label %sw.bb81.i
    i32 3, label %sw.bb85.i
  ]

if.then73.i.if.end102.sink.split.i_crit_edge:     ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.sink.split.i

sw.bb77.i:                                        ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.sink.split.i

sw.bb81.i:                                        ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.sink.split.i

sw.bb85.i:                                        ; preds = %if.then73.i
  br i1 %cmp86.not.i, label %sw.bb85.i.if.end102.sink.split.i_crit_edge, label %do.end90.i

sw.bb85.i.if.end102.sink.split.i_crit_edge:       ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.sink.split.i

do.end90.i:                                       ; preds = %sw.bb85.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef 3, i32 noundef %38) #10
  br label %put_child.i

do.end99.i:                                       ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef %35, i32 noundef %40) #10
  br label %put_child.i

if.end102.sink.split.i:                           ; preds = %sw.bb85.i.if.end102.sink.split.i_crit_edge, %sw.bb81.i, %sw.bb77.i, %if.then73.i.if.end102.sink.split.i_crit_edge
  %.sink314.i = phi i32 [ 2, %sw.bb77.i ], [ 3, %sw.bb81.i ], [ 1, %if.then73.i.if.end102.sink.split.i_crit_edge ], [ 4, %sw.bb85.i.if.end102.sink.split.i_crit_edge ]
  %41 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.sink315.i = load i32, ptr %num.i, align 4
  %clkout_src.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %.sink315.i, i32 1
  %42 = ptrtoint ptr %clkout_src.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink314.i, ptr %clkout_src.i, align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end102.sink.split.i, %if.end70.i.if.end102.i_crit_edge
  %call.i.i221.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.74, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i221.i)
  %tobool104.not.i = icmp sgt i32 %call.i.i221.i, -1
  br i1 %tobool104.not.i, label %if.then105.i, label %if.end102.i.if.end115.i_crit_edge

if.end102.i.if.end115.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i

if.then105.i:                                     ; preds = %if.end102.i
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %44, label %do.end112.i [
    i32 2, label %if.then105.i.sw.bb106.i_crit_edge
    i32 4, label %if.then105.i.sw.bb106.i_crit_edge898
    i32 6, label %if.then105.i.sw.bb106.i_crit_edge899
    i32 8, label %if.then105.i.sw.bb106.i_crit_edge900
  ]

if.then105.i.sw.bb106.i_crit_edge900:             ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

if.then105.i.sw.bb106.i_crit_edge899:             ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

if.then105.i.sw.bb106.i_crit_edge898:             ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

if.then105.i.sw.bb106.i_crit_edge:                ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb106.i

sw.bb106.i:                                       ; preds = %if.then105.i.sw.bb106.i_crit_edge, %if.then105.i.sw.bb106.i_crit_edge898, %if.then105.i.sw.bb106.i_crit_edge899, %if.then105.i.sw.bb106.i_crit_edge900
  %46 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num.i, align 4
  %drive.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %47, i32 2
  %48 = ptrtoint ptr %drive.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %44, ptr %drive.i, align 4
  br label %if.end115.i

do.end112.i:                                      ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.76, i32 noundef %44, i32 noundef %50) #10
  br label %put_child.i

if.end115.i:                                      ; preds = %sw.bb106.i, %if.end102.i.if.end115.i_crit_edge
  %call.i.i222.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.78, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i222.i)
  %tobool117.not.i = icmp sgt i32 %call.i.i222.i, -1
  br i1 %tobool117.not.i, label %if.then118.i, label %if.end115.i.if.end140.i_crit_edge

if.end115.i.if.end140.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i

if.then118.i:                                     ; preds = %if.end115.i
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %53 = icmp ult i32 %52, 4
  br i1 %53, label %switch.lookup, label %do.end137.i

do.end137.i:                                      ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.80, i32 noundef %52, i32 noundef %55) #10
  br label %put_child.i

switch.lookup:                                    ; preds = %if.then118.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.offset = add i32 %52, 1
  %56 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.sink317.i = load i32, ptr %num.i, align 4
  %disable_state.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %.sink317.i, i32 3
  %57 = ptrtoint ptr %disable_state.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %switch.offset, ptr %disable_state.i, align 4
  br label %if.end140.i

if.end140.i:                                      ; preds = %switch.lookup, %if.end115.i.if.end140.i_crit_edge
  %call.i.i223.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i223.i)
  %tobool142.not.i = icmp sgt i32 %call.i.i223.i, -1
  br i1 %tobool142.not.i, label %if.then143.i, label %if.end140.i.if.end146.i_crit_edge

if.end140.i.if.end146.i_crit_edge:                ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146.i

if.then143.i:                                     ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val.i, align 4
  %60 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num.i, align 4
  %rate.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %61, i32 6
  %62 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %59, ptr %rate.i, align 4
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then143.i, %if.end140.i.if.end146.i_crit_edge
  %call.i224.i = call ptr @of_find_property(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.83, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i224.i, null
  %63 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num.i, align 4
  %pll_master.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %64, i32 4
  %frombool.i = zext i1 %tobool.i.i to i8
  %65 = ptrtoint ptr %pll_master.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %frombool.i, ptr %pll_master.i, align 4
  %call.i225.i = call ptr @of_find_property(ptr noundef nonnull %child.0254.i, ptr noundef nonnull @.str.84, ptr noundef null) #7
  %tobool.i226.i = icmp ne ptr %call.i225.i, null
  %66 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num.i, align 4
  %pll_reset.i = getelementptr %struct.si5351_platform_data, ptr %call.i.i, i32 0, i32 1, i32 %67, i32 5
  %frombool153.i = zext i1 %tobool.i226.i to i8
  %68 = ptrtoint ptr %pll_reset.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %frombool153.i, ptr %pll_reset.i, align 1
  %call155.i = call ptr @of_get_next_child(ptr noundef nonnull %8, ptr noundef nonnull %child.0254.i) #7
  %cmp36.not.i = icmp eq ptr %call155.i, null
  br i1 %cmp36.not.i, label %if.end146.i.for.end156.i_crit_edge, label %if.end146.i.for.body37.i_crit_edge

if.end146.i.for.body37.i_crit_edge:               ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body37.i

if.end146.i.for.end156.i_crit_edge:               ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end156.i

for.end156.i:                                     ; preds = %if.end146.i.for.end156.i_crit_edge, %for.end.i.for.end156.i_crit_edge
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %69 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  br label %if.end

put_child.i:                                      ; preds = %do.end137.i, %do.end112.i, %do.end99.i, %do.end90.i, %do.end67.i, %do.end52.i, %do.end43.i
  call void @of_node_put(ptr noundef nonnull %child.0254.i) #7
  br label %si5351_dt_parse.exit.thread

si5351_dt_parse.exit.thread:                      ; preds = %put_child.i, %do.end31.i, %do.end24.i, %do.end16.i, %do.end.i, %if.end.i.si5351_dt_parse.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.si5351_dt_parse.exit.thread_crit_edge ], [ -22, %put_child.i ], [ -22, %do.end16.i ], [ -22, %do.end24.i ], [ -22, %do.end31.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #7
  br label %cleanup

if.end:                                           ; preds = %for.end156.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #7
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %70 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %platform_data, align 8
  %tobool1.not = icmp eq ptr %71, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 136, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client9 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 1
  %73 = ptrtoint ptr %client9 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %client, ptr %client9, align 4
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %1, ptr %call.i, align 4
  %call12 = call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.1) #7
  %pxtal = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 3
  %75 = ptrtoint ptr %pxtal to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call12, ptr %pxtal, align 4
  %call14 = call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.2) #7
  %pclkin = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 6
  %76 = ptrtoint ptr %pclkin to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call14, ptr %pclkin, align 4
  %77 = ptrtoint ptr %pxtal to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pxtal, align 4
  %cmp = icmp eq ptr %78, inttoptr (i32 -517 to ptr)
  %cmp19 = icmp eq ptr %call14, inttoptr (i32 -517 to ptr)
  %or.cond = select i1 %cmp, i1 true, i1 %cmp19
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end21

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %cmp.i632 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i632, label %land.lhs.true, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end21
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %80)
  %cmp25.not = icmp ne i32 %80, 4
  %cmp.i633 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %or.cond691 = select i1 %cmp25.not, i1 true, i1 %cmp.i633
  br i1 %or.cond691, label %do.end, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %call32 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @si5351_regmap_config, ptr noundef nonnull @si5351_i2c_probe._key, ptr noundef nonnull @.str.8) #7
  %regmap = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 2
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call32, ptr %regmap, align 4
  %cmp.i634 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i634, label %do.end38, label %if.end42

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10) #10
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %84 = ptrtoint ptr %83 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %call.i635 = call i32 @regmap_write(ptr noundef %call32, i32 noundef 2, i32 noundef 240) #7
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %86)
  %cmp45.not = icmp eq i32 %86, 4
  br i1 %cmp45.not, label %if.end42.if.end48_crit_edge, label %if.then46

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %call.i.i637 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 15, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end42.if.end48_crit_edge
  %89 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp1.i = icmp eq i32 %90, 0
  br i1 %cmp1.i, label %if.end48.for.inc_crit_edge, label %if.end6.i

if.end48.for.inc_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end6.i:                                        ; preds = %if.end48
  %91 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %92)
  %cmp7.not.i = icmp eq i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp9.not.i = icmp eq i32 %90, 1
  %or.cond.i = or i1 %cmp9.not.i, %cmp7.not.i
  br i1 %or.cond.i, label %if.end12.i, label %if.end6.i.do.end55_crit_edge

if.end6.i.do.end55_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %conv2.i.i = select i1 %cmp9.not.i, i32 0, i32 4
  %call.i.i.i640 = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 15, i32 noundef 4, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.inc

do.end55:                                         ; preds = %if.end6.i.1.do.end55_crit_edge, %if.end6.i.do.end55_crit_edge
  %n.0723.lcssa = phi i32 [ 0, %if.end6.i.do.end55_crit_edge ], [ 1, %if.end6.i.1.do.end55_crit_edge ]
  %arrayidx.le = getelementptr [2 x i32], ptr %71, i32 0, i32 %n.0723.lcssa
  %95 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %n.0723.lcssa, i32 noundef %96) #10
  br label %cleanup

for.inc:                                          ; preds = %if.end12.i, %if.end48.for.inc_crit_edge
  %arrayidx.1 = getelementptr [2 x i32], ptr %71, i32 0, i32 1
  %97 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp1.i.1 = icmp eq i32 %98, 0
  br i1 %cmp1.i.1, label %for.inc.for.body62.preheader_crit_edge, label %if.end6.i.1

for.inc.for.body62.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62.preheader

if.end6.i.1:                                      ; preds = %for.inc
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %cmp7.not.i.1 = icmp eq i32 %100, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %98)
  %cmp9.not.i.1 = icmp eq i32 %98, 1
  %or.cond.i.1 = or i1 %cmp9.not.i.1, %cmp7.not.i.1
  br i1 %or.cond.i.1, label %if.end12.i.1, label %if.end6.i.1.do.end55_crit_edge

if.end6.i.1.do.end55_crit_edge:                   ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end12.i.1:                                     ; preds = %if.end6.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %conv2.i.i.1 = select i1 %cmp9.not.i.1, i32 0, i32 8
  %call.i.i.i640.1 = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 15, i32 noundef 8, i32 noundef %conv2.i.i.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %for.body62.preheader

for.body62.preheader:                             ; preds = %if.end12.i.1, %for.inc.for.body62.preheader_crit_edge
  br label %for.body62

for.body62:                                       ; preds = %_si5351_clkout_set_disable_state.exit.for.body62_crit_edge, %for.body62.preheader
  %n.1725 = phi i32 [ %inc115, %_si5351_clkout_set_disable_state.exit.for.body62_crit_edge ], [ 0, %for.body62.preheader ]
  %arrayidx63 = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.1725
  %103 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i642 = icmp eq i32 %104, 0
  br i1 %cmp.i642, label %for.body62.if.end.i651_crit_edge, label %if.end3.i648

for.body62.if.end.i651_crit_edge:                 ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i651

if.end3.i648:                                     ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = add nuw nsw i32 %n.1725, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %104)
  %cmp4.i = icmp eq i32 %104, 1
  %105 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap, align 4
  %conv2.i.i646 = select i1 %cmp4.i, i32 0, i32 32
  %call.i.i.i647 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef %conv.i, i32 noundef 32, i32 noundef %conv2.i.i646, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end.i651

if.end.i651:                                      ; preds = %if.end3.i648, %for.body62.if.end.i651_crit_edge
  %clkout_src = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.1725, i32 1
  %107 = ptrtoint ptr %clkout_src to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %clkout_src, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %108, label %if.end.i651.if.end87_crit_edge [
    i32 1, label %if.end.i651.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

if.end.i651.sw.epilog.i_crit_edge:                ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i651.if.end87_crit_edge:                   ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

sw.bb1.i:                                         ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #9
  %switch.and.i = and i32 %n.1725, 2147483643
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %phi.cast.i = select i1 %switch.selectcmp.i, i32 12, i32 8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i651
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i651
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %111)
  %cmp8.not.i = icmp eq i32 %111, 4
  br i1 %cmp8.not.i, label %sw.bb7.i.sw.epilog.i_crit_edge, label %do.end82

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i.sw.epilog.i_crit_edge, %sw.bb6.i, %sw.bb1.i, %if.end.i651.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb6.i ], [ 12, %if.end.i651.sw.epilog.i_crit_edge ], [ 4, %sw.bb7.i.sw.epilog.i_crit_edge ], [ %phi.cast.i, %sw.bb1.i ]
  %conv.i652 = add nuw nsw i32 %n.1725, 16
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call.i.i.i655 = call i32 @regmap_update_bits_base(ptr noundef %113, i32 noundef %conv.i652, i32 noundef 12, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end87

do.end82:                                         ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %clkout_src to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %clkout_src, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %n.1725, i32 noundef %115) #10
  br label %cleanup

if.end87:                                         ; preds = %sw.epilog.i, %if.end.i651.if.end87_crit_edge
  %drive = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.1725, i32 2
  %116 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %drive, align 4
  %switch.tableidx = add i32 %117, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %118 = icmp ult i32 %switch.tableidx, 7
  br i1 %118, label %switch.hole_check, label %if.end87._si5351_clkout_set_drive_strength.exit_crit_edge

if.end87._si5351_clkout_set_drive_strength.exit_crit_edge: ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_set_drive_strength.exit

switch.hole_check:                                ; preds = %if.end87
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 85, %switch.maskindex
  %119 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %switch.lobit.not = icmp eq i8 %119, 0
  br i1 %switch.lobit.not, label %switch.hole_check._si5351_clkout_set_drive_strength.exit_crit_edge, label %switch.lookup831

switch.hole_check._si5351_clkout_set_drive_strength.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_set_drive_strength.exit

switch.lookup831:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.si5351_i2c_probe, i32 0, i32 %switch.tableidx
  %120 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %120)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv.i658 = add nuw nsw i32 %n.1725, 16
  %121 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap, align 4
  %call.i.i.i661 = call i32 @regmap_update_bits_base(ptr noundef %122, i32 noundef %conv.i658, i32 noundef 3, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %_si5351_clkout_set_drive_strength.exit

_si5351_clkout_set_drive_strength.exit:           ; preds = %switch.lookup831, %switch.hole_check._si5351_clkout_set_drive_strength.exit_crit_edge, %if.end87._si5351_clkout_set_drive_strength.exit_crit_edge
  %disable_state = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.1725, i32 3
  %123 = ptrtoint ptr %disable_state to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %disable_state, align 4
  %switch.tableidx833 = add i32 %124, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx833)
  %125 = icmp ult i32 %switch.tableidx833, 4
  br i1 %125, label %sw.epilog.i670, label %_si5351_clkout_set_drive_strength.exit._si5351_clkout_set_disable_state.exit_crit_edge

_si5351_clkout_set_drive_strength.exit._si5351_clkout_set_disable_state.exit_crit_edge: ; preds = %_si5351_clkout_set_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_set_disable_state.exit

sw.epilog.i670:                                   ; preds = %_si5351_clkout_set_drive_strength.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n.1725)
  %cmp.i663 = icmp ult i32 %n.1725, 4
  %mul.i = shl nuw i32 %n.1725, 1
  %mul3.i = add nuw nsw i32 %mul.i, 248
  %cond4.i = select i1 %cmp.i663, i32 %mul.i, i32 %mul3.i
  %conv6.i = and i32 %cond4.i, 254
  %shl.i = shl i32 3, %conv6.i
  %shl15.i = shl i32 %switch.tableidx833, %conv6.i
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %conv.i.i666 = select i1 %cmp.i663, i32 24, i32 25
  %conv1.i.i667 = and i32 %shl.i, 255
  %conv2.i.i668 = and i32 %shl15.i, 255
  %call.i.i.i669 = call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef %conv.i.i666, i32 noundef %conv1.i.i667, i32 noundef %conv2.i.i668, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %_si5351_clkout_set_disable_state.exit

_si5351_clkout_set_disable_state.exit:            ; preds = %sw.epilog.i670, %_si5351_clkout_set_drive_strength.exit._si5351_clkout_set_disable_state.exit_crit_edge
  %inc115 = add nuw nsw i32 %n.1725, 1
  %exitcond.not = icmp eq i32 %inc115, 8
  br i1 %exitcond.not, label %for.end116, label %_si5351_clkout_set_disable_state.exit.for.body62_crit_edge

_si5351_clkout_set_disable_state.exit.for.body62_crit_edge: ; preds = %_si5351_clkout_set_disable_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62

for.end116:                                       ; preds = %_si5351_clkout_set_disable_state.exit
  %128 = getelementptr inbounds i8, ptr %init, i32 8
  %129 = call ptr @memset(ptr %128, i32 0, i32 16)
  %130 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @.str.1, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %131 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @si5351_xtal_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %132 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %flags, align 4
  %133 = ptrtoint ptr %pxtal to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %pxtal, align 4
  %cmp.i671 = icmp ugt ptr %134, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i671, label %for.end116.if.end125_crit_edge, label %if.then119

for.end116.if.end125_crit_edge:                   ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then119:                                       ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  %call121 = call ptr @__clk_get_name(ptr noundef %134) #7
  %pxtal_name = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 4
  %135 = ptrtoint ptr %pxtal_name to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call121, ptr %pxtal_name, align 4
  %parent_names123 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %136 = ptrtoint ptr %parent_names123 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %pxtal_name, ptr %parent_names123, align 4
  %num_parents124 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %137 = ptrtoint ptr %num_parents124 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %num_parents124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then119, %for.end116.if.end125_crit_edge
  %xtal = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 5
  %init126 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 5, i32 2
  %138 = ptrtoint ptr %init126 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %init, ptr %init126, align 4
  %call129 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %xtal) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end137, label %do.end134

do.end134:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %140) #10
  br label %cleanup

if.end137:                                        ; preds = %if.end125
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp139 = icmp eq i32 %142, 4
  br i1 %cmp139, label %if.then140, label %if.end137.if.end164_crit_edge

if.end137.if.end164_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

if.then140:                                       ; preds = %if.end137
  %143 = getelementptr inbounds i8, ptr %init, i32 8
  %144 = call ptr @memset(ptr %143, i32 0, i32 20)
  %145 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @.str.2, ptr %init, align 4
  %146 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @si5351_clkin_ops, ptr %ops, align 4
  %147 = ptrtoint ptr %pclkin to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pclkin, align 4
  %cmp.i672 = icmp ugt ptr %148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i672, label %if.then140.if.end151_crit_edge, label %if.then145

if.then140.if.end151_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

if.then145:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #9
  %call147 = call ptr @__clk_get_name(ptr noundef %148) #7
  %pclkin_name = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 7
  %149 = ptrtoint ptr %pclkin_name to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call147, ptr %pclkin_name, align 4
  %parent_names149 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %150 = ptrtoint ptr %parent_names149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %pclkin_name, ptr %parent_names149, align 4
  %num_parents150 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %151 = ptrtoint ptr %num_parents150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 1, ptr %num_parents150, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %if.then140.if.end151_crit_edge
  %clkin = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 8
  %init152 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 8, i32 2
  %152 = ptrtoint ptr %init152 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %init, ptr %init152, align 4
  %call155 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %clkin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end151.if.end164_crit_edge, label %do.end160

if.end151.if.end164_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end164

do.end160:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  %153 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %154) #10
  br label %cleanup

if.end164:                                        ; preds = %if.end151.if.end164_crit_edge, %if.end137.if.end164_crit_edge
  %155 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %156)
  %cmp166 = icmp eq i32 %156, 4
  %conv = select i1 %cmp166, i8 2, i8 1
  %157 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr @.str.1, ptr %parent_names, align 4
  %158 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @.str.2, ptr %3, align 4
  %pll = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9
  %num = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  %159 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 0, ptr %num, align 4
  %drvdata172 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %160 = ptrtoint ptr %drvdata172 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call.i, ptr %drvdata172, align 4
  %init175 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 0, i32 0, i32 2
  %161 = ptrtoint ptr %init175 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %init, ptr %init175, align 4
  %162 = getelementptr inbounds i8, ptr %init, i32 12
  %163 = call ptr @memset(ptr %162, i32 0, i32 12)
  %164 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.88, ptr %init, align 4
  %165 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr @si5351_pll_ops, ptr %ops, align 4
  %166 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %flags, align 4
  %parent_names179 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %167 = ptrtoint ptr %parent_names179 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %parent_names, ptr %parent_names179, align 4
  %num_parents180 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %168 = ptrtoint ptr %num_parents180 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv, ptr %num_parents180, align 4
  %call185 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %pll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end193, label %do.end190

do.end190:                                        ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %170) #10
  br label %cleanup

if.end193:                                        ; preds = %if.end164
  %arrayidx195 = getelementptr %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 1
  %num196 = getelementptr %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 1, i32 3
  %171 = ptrtoint ptr %num196 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 1, ptr %num196, align 4
  %drvdata199 = getelementptr %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 1, i32 1
  %172 = ptrtoint ptr %drvdata199 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i, ptr %drvdata199, align 4
  %init203 = getelementptr %struct.si5351_driver_data, ptr %call.i, i32 0, i32 9, i32 1, i32 0, i32 2
  %173 = ptrtoint ptr %init203 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %init, ptr %init203, align 4
  %174 = getelementptr inbounds i8, ptr %init, i32 12
  %175 = call ptr @memset(ptr %174, i32 0, i32 12)
  %176 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %177)
  %cmp205 = icmp eq i32 %177, 3
  %.str.90..str.89 = select i1 %cmp205, ptr @.str.90, ptr @.str.89
  %si5351_vxco_ops.si5351_pll_ops = select i1 %cmp205, ptr @si5351_vxco_ops, ptr @si5351_pll_ops
  %.parent_names = select i1 %cmp205, ptr null, ptr %parent_names
  %.conv = select i1 %cmp205, i8 0, i8 %conv
  %178 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %.str.90..str.89, ptr %init, align 4
  %179 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %si5351_vxco_ops.si5351_pll_ops, ptr %ops, align 4
  %180 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %flags, align 4
  %181 = ptrtoint ptr %parent_names179 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %.parent_names, ptr %parent_names179, align 4
  %182 = ptrtoint ptr %num_parents180 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 %.conv, ptr %num_parents180, align 4
  %call224 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %arrayidx195) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end232, label %do.end229

do.end229:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %184) #10
  br label %cleanup

if.end232:                                        ; preds = %if.end193
  %185 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %186)
  %cmp234 = icmp eq i32 %186, 2
  %187 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @.str.88, ptr %parent_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %186)
  %cmp240 = icmp eq i32 %186, 3
  %.str.90..str.89630 = select i1 %cmp240, ptr @.str.90, ptr @.str.89
  %188 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %.str.90..str.89630, ptr %3, align 4
  %conv248 = select i1 %cmp234, i32 3, i32 8
  %189 = mul nuw nsw i32 %conv248, 36
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %189, i32 noundef 3520) #7
  %msynth = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 10
  %190 = ptrtoint ptr %msynth to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %call5.i.i, ptr %msynth, align 4
  %call5.i.i673 = call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef %189, i32 noundef 3520) #7
  %191 = ptrtoint ptr %msynth to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr = load ptr, ptr %msynth, align 4
  %clkout253 = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 11
  %192 = ptrtoint ptr %clkout253 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call5.i.i673, ptr %clkout253, align 4
  %num_clkout = getelementptr inbounds %struct.si5351_driver_data, ptr %call.i, i32 0, i32 12
  %193 = ptrtoint ptr %num_clkout to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %conv248, ptr %num_clkout, align 4
  %tobool256.not = icmp eq ptr %.pr, null
  %tobool258.not = icmp eq ptr %call5.i.i673, null
  %or.cond692 = select i1 %tobool256.not, i1 true, i1 %tobool258.not
  br i1 %or.cond692, label %do.end271, label %for.body292.preheader, !prof !274

for.body292.preheader:                            ; preds = %if.end232
  %194 = getelementptr inbounds i8, ptr %init, i32 8
  br label %for.body292

do.end271:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1570, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

for.cond288:                                      ; preds = %for.body292
  %inc331 = add nuw nsw i32 %n.2728, 1
  %exitcond764.not = icmp eq i32 %inc331, %conv248
  br i1 %exitcond764.not, label %for.end332, label %for.cond288.for.body292_crit_edge

for.cond288.for.body292_crit_edge:                ; preds = %for.cond288
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body292

for.body292:                                      ; preds = %for.cond288.for.body292_crit_edge, %for.body292.preheader
  %n.2728 = phi i32 [ %inc331, %for.cond288.for.body292_crit_edge ], [ 0, %for.body292.preheader ]
  %conv293 = trunc i32 %n.2728 to i8
  %195 = ptrtoint ptr %msynth to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %msynth, align 4
  %num296 = getelementptr %struct.si5351_hw_data, ptr %196, i32 %n.2728, i32 3
  %197 = ptrtoint ptr %num296 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 %conv293, ptr %num296, align 4
  %198 = load ptr, ptr %msynth, align 4
  %drvdata299 = getelementptr %struct.si5351_hw_data, ptr %198, i32 %n.2728, i32 1
  %199 = ptrtoint ptr %drvdata299 to i32
  call void @__asan_store4_noabort(i32 %199)
  store ptr %call.i, ptr %drvdata299, align 4
  %200 = load ptr, ptr %msynth, align 4
  %init303 = getelementptr %struct.si5351_hw_data, ptr %200, i32 %n.2728, i32 0, i32 2
  %201 = ptrtoint ptr %init303 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %init, ptr %init303, align 4
  %202 = call ptr @memset(ptr %194, i32 0, i32 16)
  %arrayidx304 = getelementptr [8 x ptr], ptr @si5351_msynth_names, i32 0, i32 %n.2728
  %203 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx304, align 4
  %205 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %init, align 4
  %206 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr @si5351_msynth_ops, ptr %ops, align 4
  %207 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 0, ptr %flags, align 4
  %pll_master = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.2728, i32 4
  %208 = ptrtoint ptr %pll_master to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %pll_master, align 4, !range !275
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool310.not = icmp eq i8 %209, 0
  %spec.store.select = select i1 %tobool310.not, i32 0, i32 4
  %210 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %spec.store.select, ptr %flags, align 4
  %211 = ptrtoint ptr %parent_names179 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %parent_names, ptr %parent_names179, align 4
  %212 = ptrtoint ptr %num_parents180 to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 2, ptr %num_parents180, align 4
  %213 = ptrtoint ptr %msynth to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %msynth, align 4
  %arrayidx319 = getelementptr %struct.si5351_hw_data, ptr %214, i32 %n.2728
  %call321 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %arrayidx319) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call321)
  %tobool322.not = icmp eq i32 %call321, 0
  br i1 %tobool322.not, label %for.cond288, label %do.end326

do.end326:                                        ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #9
  %215 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %216) #10
  br label %cleanup

for.end332:                                       ; preds = %for.cond288
  %217 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %218)
  %cmp334 = icmp eq i32 %218, 4
  %conv337 = select i1 %cmp334, i8 4, i8 3
  %219 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr @.str.1, ptr %4, align 4
  %220 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr @.str.2, ptr %5, align 4
  %221 = getelementptr inbounds i8, ptr %init, i32 8
  br label %for.body344

for.body344:                                      ; preds = %for.inc413.for.body344_crit_edge, %for.end332
  %n.3729 = phi i32 [ 0, %for.end332 ], [ %inc414, %for.inc413.for.body344_crit_edge ]
  %arrayidx345 = getelementptr [8 x ptr], ptr @si5351_msynth_names, i32 0, i32 %n.3729
  %222 = ptrtoint ptr %arrayidx345 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %arrayidx345, align 4
  %224 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %223, ptr %parent_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %n.3729)
  %cmp347 = icmp ult i32 %n.3729, 4
  %.str.101..str.105 = select i1 %cmp347, ptr @.str.101, ptr @.str.105
  %225 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %.str.101..str.105, ptr %3, align 4
  %conv351 = trunc i32 %n.3729 to i8
  %226 = ptrtoint ptr %clkout253 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %clkout253, align 4
  %num354 = getelementptr %struct.si5351_hw_data, ptr %227, i32 %n.3729, i32 3
  %228 = ptrtoint ptr %num354 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 %conv351, ptr %num354, align 4
  %229 = load ptr, ptr %clkout253, align 4
  %drvdata357 = getelementptr %struct.si5351_hw_data, ptr %229, i32 %n.3729, i32 1
  %230 = ptrtoint ptr %drvdata357 to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call.i, ptr %drvdata357, align 4
  %231 = load ptr, ptr %clkout253, align 4
  %init361 = getelementptr %struct.si5351_hw_data, ptr %231, i32 %n.3729, i32 0, i32 2
  %232 = ptrtoint ptr %init361 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %init, ptr %init361, align 4
  %233 = call ptr @memset(ptr %221, i32 0, i32 16)
  %arrayidx362 = getelementptr [8 x ptr], ptr @si5351_clkout_names, i32 0, i32 %n.3729
  %234 = ptrtoint ptr %arrayidx362 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %arrayidx362, align 4
  %236 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %235, ptr %init, align 4
  %237 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %237)
  store ptr @si5351_clkout_ops, ptr %ops, align 4
  %238 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %flags, align 4
  %clkout_src368 = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.3729, i32 1
  %239 = ptrtoint ptr %clkout_src368 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %clkout_src368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %240)
  %cmp369 = icmp eq i32 %240, 1
  %spec.store.select631 = select i1 %cmp369, i32 4, i32 0
  %241 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %spec.store.select631, ptr %flags, align 4
  %242 = ptrtoint ptr %parent_names179 to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr %parent_names, ptr %parent_names179, align 4
  %243 = ptrtoint ptr %num_parents180 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 %conv337, ptr %num_parents180, align 4
  %244 = ptrtoint ptr %clkout253 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %clkout253, align 4
  %arrayidx380 = getelementptr %struct.si5351_hw_data, ptr %245, i32 %n.3729
  %call382 = call i32 @devm_clk_hw_register(ptr noundef %dev.i, ptr noundef %arrayidx380) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end390, label %do.end387

do.end387:                                        ; preds = %for.body344
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %init, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %247) #10
  br label %cleanup

if.end390:                                        ; preds = %for.body344
  %rate = getelementptr %struct.si5351_platform_data, ptr %71, i32 0, i32 1, i32 %n.3729, i32 6
  %248 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %cmp393.not = icmp eq i32 %249, 0
  br i1 %cmp393.not, label %if.end390.for.inc413_crit_edge, label %if.then395

if.end390.for.inc413_crit_edge:                   ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc413

if.then395:                                       ; preds = %if.end390
  %250 = ptrtoint ptr %clkout253 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %clkout253, align 4
  %clk = getelementptr %struct.si5351_hw_data, ptr %251, i32 %n.3729, i32 0, i32 1
  %252 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %clk, align 4
  %call403 = call i32 @clk_set_rate(ptr noundef %253, i32 noundef %249) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call403)
  %cmp404.not = icmp eq i32 %call403, 0
  br i1 %cmp404.not, label %if.then395.for.inc413_crit_edge, label %do.end409

if.then395.for.inc413_crit_edge:                  ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc413

do.end409:                                        ; preds = %if.then395
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.41, i32 noundef %call403) #10
  br label %for.inc413

for.inc413:                                       ; preds = %do.end409, %if.then395.for.inc413_crit_edge, %if.end390.for.inc413_crit_edge
  %inc414 = add nuw nsw i32 %n.3729, 1
  %exitcond765.not = icmp eq i32 %inc414, %conv248
  br i1 %exitcond765.not, label %for.end415, label %for.inc413.for.body344_crit_edge

for.inc413.for.body344_crit_edge:                 ; preds = %for.inc413
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body344

for.end415:                                       ; preds = %for.inc413
  %254 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %of_node.i, align 8
  %call417 = call i32 @of_clk_add_hw_provider(ptr noundef %255, ptr noundef nonnull @si53351_of_clk_get, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call417)
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %for.end415.cleanup_crit_edge, label %do.end422

for.end415.cleanup_crit_edge:                     ; preds = %for.end415
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end422:                                        ; preds = %for.end415
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end422, %for.end415.cleanup_crit_edge, %do.end387, %do.end326, %do.end271, %do.end229, %do.end190, %do.end160, %do.end134, %do.end82, %do.end55, %do.end38, %do.end, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %si5351_dt_parse.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ %84, %do.end38 ], [ -22, %do.end55 ], [ -22, %do.end82 ], [ %call129, %do.end134 ], [ %call155, %do.end160 ], [ %call185, %do.end190 ], [ %call224, %do.end229 ], [ -12, %do.end271 ], [ %call321, %do.end326 ], [ %call382, %do.end387 ], [ %call417, %do.end422 ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ -517, %if.end8.cleanup_crit_edge ], [ 0, %for.end415.cleanup_crit_edge ], [ %retval.0.i.ph, %si5351_dt_parse.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @si53351_of_clk_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_clkout = getelementptr inbounds %struct.si5351_driver_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %num_clkout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clkout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp ult i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %clkout = getelementptr inbounds %struct.si5351_driver_data, ptr %data, i32 0, i32 11
  %4 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkout, align 4
  %arrayidx2 = getelementptr %struct.si5351_hw_data, ptr %5, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %arrayidx2, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si5351_regmap_is_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %reg, label %if.end16 [
    i32 182, label %entry.return_crit_edge
    i32 181, label %entry.return_crit_edge36
    i32 180, label %entry.return_crit_edge37
    i32 179, label %entry.return_crit_edge38
    i32 178, label %entry.return_crit_edge39
    i32 176, label %entry.return_crit_edge40
    i32 175, label %entry.return_crit_edge41
    i32 174, label %entry.return_crit_edge42
    i32 173, label %entry.return_crit_edge43
    i32 14, label %entry.return_crit_edge44
    i32 13, label %entry.return_crit_edge45
    i32 12, label %entry.return_crit_edge46
    i32 11, label %entry.return_crit_edge47
    i32 10, label %entry.return_crit_edge48
    i32 8, label %entry.return_crit_edge49
    i32 7, label %entry.return_crit_edge50
    i32 6, label %entry.return_crit_edge51
    i32 5, label %entry.return_crit_edge52
    i32 4, label %entry.return_crit_edge53
    i32 0, label %entry.return_crit_edge54
  ]

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %if.end16, %entry.return_crit_edge, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end16 ], [ false, %entry.return_crit_edge36 ], [ false, %entry.return_crit_edge37 ], [ false, %entry.return_crit_edge38 ], [ false, %entry.return_crit_edge39 ], [ false, %entry.return_crit_edge40 ], [ false, %entry.return_crit_edge41 ], [ false, %entry.return_crit_edge42 ], [ false, %entry.return_crit_edge43 ], [ false, %entry.return_crit_edge44 ], [ false, %entry.return_crit_edge45 ], [ false, %entry.return_crit_edge46 ], [ false, %entry.return_crit_edge47 ], [ false, %entry.return_crit_edge48 ], [ false, %entry.return_crit_edge49 ], [ false, %entry.return_crit_edge50 ], [ false, %entry.return_crit_edge51 ], [ false, %entry.return_crit_edge52 ], [ false, %entry.return_crit_edge53 ], [ false, %entry.return_crit_edge54 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @si5351_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 177, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_xtal_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 187, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si5351_xtal_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 187, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkin_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 187, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si5351_clkin_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 187, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkin_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000000, i32 %parent_rate)
  %cmp = icmp ugt i32 %parent_rate, 160000000
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000000, i32 %parent_rate)
  %cmp1 = icmp ugt i32 %parent_rate, 80000000
  br i1 %cmp1, label %if.else.if.end10_crit_edge, label %if.else4

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000000, i32 %parent_rate)
  %cmp5 = icmp ugt i32 %parent_rate, 40000000
  %spec.select = select i1 %cmp5, i8 64, i8 0
  %div726 = zext i1 %cmp5 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.else4, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %div726.sink = phi i32 [ %div726, %if.else4 ], [ 3, %entry.if.end10_crit_edge ], [ 2, %if.else.if.end10_crit_edge ]
  %idiv.0 = phi i8 [ %spec.select, %if.else4 ], [ -64, %entry.if.end10_crit_edge ], [ -128, %if.else.if.end10_crit_edge ]
  %spec.select29 = lshr i32 %parent_rate, %div726.sink
  %regmap.i = getelementptr i8, ptr %hw, i32 -32
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %idiv.0 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 192, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_clkin_recalc_rate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_clkin_recalc_rate, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !276

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr i8, ptr %hw, i32 -36
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = lshr exact i8 %idiv.0, 6
  %5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 1, %5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_clkin_recalc_rate.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, i32 noundef %shl, i32 noundef %spec.select29) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end10
  ret i32 %spec.select29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_pll_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  %valid = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  %conv2 = select i1 %cmp, i8 26, i8 34
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  tail call fastcc void @si5351_read_parameters(ptr noundef %5, i8 noundef zeroext %conv2, ptr noundef %params)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 4
  %mul = mul i32 %9, %7
  %conv12 = zext i32 %mul to i64
  %mul15 = shl i32 %7, 9
  %conv16 = zext i32 %mul15 to i64
  %add = add nuw nsw i64 %conv12, %conv16
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p2, align 4
  %conv18 = zext i32 %11 to i64
  %add19 = add nuw nsw i64 %add, %conv18
  %conv20 = zext i32 %parent_rate to i64
  %mul21 = mul i64 %add19, %conv20
  %mul24 = shl i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul21)
  %cmp198 = icmp ult i64 %mul21, 4294967296
  br i1 %cmp198, label %if.then202, label %if.else208, !prof !277

if.then202:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv203 = trunc i64 %mul21 to i32
  %div206 = udiv i32 %conv203, %mul24
  br label %if.end212

if.else208:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul24, i64 %mul21) #11, !srcloc !278
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  %extract.t359 = trunc i64 %asmresult1.i to i32
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then202
  %rate.0.off0 = phi i32 [ %div206, %if.then202 ], [ %extract.t359, %if.else208 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_pll_recalc_rate.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_pll_recalc_rate, %if.then223)) #7
          to label %cleanup [label %if.then223], !srcloc !276

if.then223:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata224 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %drvdata224 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata224, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %call225 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %17 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %params, align 4
  %19 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p2, align 4
  %21 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %p3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_pll_recalc_rate.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, ptr noundef %call225, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %parent_rate, i32 noundef %rate.0.off0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then223, %if.end212, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %if.end.cleanup_crit_edge ], [ %rate.0.off0, %if.end212 ], [ %rate.0.off0, %if.then223 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_pll_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #2 align 64 {
entry:
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #7
  %0 = tail call i32 @llvm.umax.i32(i32 %rate, i32 600000000)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 900000000)
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div)
  %cmp4 = icmp ult i32 %div, 15
  %mul = mul i32 %3, 15
  %spec.select = select i1 %cmp4, i32 %mul, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %div)
  %cmp7 = icmp ugt i32 %div, 90
  %mul9 = mul i32 %3, 90
  %spec.select717 = select i1 %cmp7, i32 %mul9, i32 %spec.select
  %rem = urem i32 %spec.select717, %3
  %conv = zext i32 %rem to i64
  %mul12 = mul nuw nsw i64 %conv, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul12)
  %cmp185 = icmp ult i64 %mul12, 4294967296
  br i1 %cmp185, label %if.then189, label %if.else195, !prof !277

if.then189:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv190 = trunc i64 %mul12 to i32
  %div193 = udiv i32 %conv190, %3
  br label %if.end199

if.else195:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %mul12) #11, !srcloc !278
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t721 = trunc i64 %asmresult1.i to i32
  br label %if.end199

if.end199:                                        ; preds = %if.else195, %if.then189
  %lltmp.0.off0 = phi i32 [ %div193, %if.then189 ], [ %extract.t721, %if.else195 ]
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b, align 4
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lltmp.0.off0)
  %tobool202.not = icmp eq i32 %lltmp.0.off0, 0
  br i1 %tobool202.not, label %if.end199.if.end204_crit_edge, label %if.then203

if.end199.if.end204_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

if.then203:                                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  call void @rational_best_approximation(i32 noundef %lltmp.0.off0, i32 noundef 1000000, i32 noundef 1048574, i32 noundef 1048575, ptr noundef nonnull %b, ptr noundef nonnull %c) #7
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %c, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then203, %if.end199.if.end204_crit_edge
  %8 = phi i32 [ %.pr, %if.then203 ], [ 1, %if.end199.if.end204_crit_edge ]
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %p3, align 4
  %10 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %b, align 4
  %mul205 = shl i32 %11, 7
  %mul205.frozen = freeze i32 %mul205
  %.frozen = freeze i32 %8
  %div211 = udiv i32 %mul205.frozen, %.frozen
  %12 = mul i32 %div211, %.frozen
  %rem206.decomposed = sub i32 %mul205.frozen, %12
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem206.decomposed, ptr %p2, align 4
  %mul208 = shl i32 %div, 7
  %add214 = add i32 %mul208, -512
  %sub217 = add i32 %add214, %div211
  %14 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub217, ptr %params, align 4
  %15 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %parent_rate, align 4
  %conv218 = zext i32 %16 to i64
  %conv219 = zext i32 %11 to i64
  %mul220 = mul nuw i64 %conv218, %conv219
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul220)
  %cmp422 = icmp ult i64 %mul220, 4294967296
  br i1 %cmp422, label %if.then430, label %if.else436, !prof !277

if.then430:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %conv431 = trunc i64 %mul220 to i32
  %div434 = udiv i32 %conv431, %8
  br label %if.end440

if.else436:                                       ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #9
  %17 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %mul220) #11, !srcloc !278
  %asmresult1.i670 = extractvalue { i64, i64 } %17, 1
  %extract.t725 = trunc i64 %asmresult1.i670 to i32
  br label %if.end440

if.end440:                                        ; preds = %if.else436, %if.then430
  %lltmp.1.off0 = phi i32 [ %div434, %if.then430 ], [ %extract.t725, %if.else436 ]
  %mul443 = mul i32 %16, %div
  %add444 = add i32 %lltmp.1.off0, %mul443
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_pll_round_rate.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_pll_round_rate, %if.then454)) #7
          to label %do.end [label %if.then454], !srcloc !276

if.then454:                                       ; preds = %if.end440
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %call455 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %22 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b, align 4
  %24 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %c, align 4
  %26 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %parent_rate, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_pll_round_rate.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, ptr noundef %call455, i32 noundef %div, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %add444) #7
  br label %do.end

do.end:                                           ; preds = %if.then454, %if.end440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  ret i32 %add444
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_pll_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp1.not = icmp eq i8 %index, 0
  %or.cond = or i1 %cmp1.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp4 = icmp ugt i8 %index, 1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp3.i = icmp ugt i8 %5, 2
  br i1 %cmp3.i, label %if.end7.cleanup_crit_edge, label %if.end12.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  %regmap.i.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i = select i1 %cmp.i, i32 4, i32 8
  %conv2.i.i = select i1 %cmp1.not, i32 0, i32 %conv1.i.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 15, i32 noundef %conv1.i.i, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12.i, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end12.i ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @si5351_pll_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 15, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef 15) #10
  br label %si5351_reg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %phi.cast = and i32 %10, 255
  br label %si5351_reg_read.exit

si5351_reg_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %conv2 = select i1 %cmp, i32 4, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and = and i32 %retval.0.i, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %conv6 = zext i1 %tobool.not to i8
  ret i8 %conv6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %conv2 = select i1 %cmp, i8 26, i8 34
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  tail call fastcc void @si5351_write_parameters(ptr noundef %3, i8 noundef zeroext %conv2, ptr noundef %params)
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num, align 4
  %add = add i8 %7, 22
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %add to i32
  %conv2.i = select i1 %cmp8, i32 64, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv.i, i32 noundef 64, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drvdata, align 4
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp15 = icmp eq i8 %15, 0
  %conv18 = select i1 %cmp15, i32 32, i32 128
  %regmap.i42 = getelementptr inbounds %struct.si5351_driver_data, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i42, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 177, i32 noundef %conv18) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_pll_set_rate.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_pll_set_rate, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %call25 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %22 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %params, align 4
  %24 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %p2, align 4
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_pll_set_rate.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.97, ptr noundef %call25, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %parent_rate, i32 noundef %rate) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @si5351_read_parameters(ptr nocapture noundef readonly %drvdata, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %params) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = and i8 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %0)
  %switch = icmp eq i8 %0, 90
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %buf, align 8
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 2
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %reg to i32
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i) #10
  br label %si5351_reg_read.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %phi.cast = and i32 %8, 255
  br label %si5351_reg_read.exit

si5351_reg_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %9 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %params, align 4
  %p2 = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 1
  %10 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %p2, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %12 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %13 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %15 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %16 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %17 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %regmap.i46 = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 2
  %18 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i46, align 4
  %conv.i47 = zext i8 %reg to i32
  %call.i48 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %conv.i47, ptr noundef nonnull %buf, i32 noundef 8) #7
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %16, align 2
  %22 = and i8 %21, 3
  %and = zext i8 %22 to i32
  %shl = shl nuw nsw i32 %and, 16
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %15, align 1
  %conv7 = zext i8 %24 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %or = or i32 %shl, %shl8
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %14, align 4
  %conv10 = zext i8 %26 to i32
  %or11 = or i32 %or, %conv10
  %27 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or11, ptr %params, align 4
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %13, align 1
  %30 = and i8 %29, 15
  %and15 = zext i8 %30 to i32
  %shl16 = shl nuw nsw i32 %and15, 16
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %12, align 2
  %conv18 = zext i8 %32 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or20 = or i32 %shl16, %shl19
  %33 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %11, align 1
  %conv22 = zext i8 %34 to i32
  %or23 = or i32 %or20, %conv22
  %p224 = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 1
  %35 = ptrtoint ptr %p224 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or23, ptr %p224, align 4
  %36 = and i8 %29, -16
  %and27 = zext i8 %36 to i32
  %shl28 = shl nuw nsw i32 %and27, 12
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf, align 8
  %conv30 = zext i8 %38 to i32
  %shl31 = shl nuw nsw i32 %conv30, 8
  %or32 = or i32 %shl31, %shl28
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %17, align 1
  %conv34 = zext i8 %40 to i32
  %or35 = or i32 %or32, %conv34
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %si5351_reg_read.exit
  %or35.sink = phi i32 [ %or35, %sw.default ], [ 1, %si5351_reg_read.exit ]
  %p336 = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 2
  %41 = ptrtoint ptr %p336 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or35.sink, ptr %p336, align 4
  %valid = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 3
  %42 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %valid, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @si5351_write_parameters(ptr nocapture noundef readonly %drvdata, i8 noundef zeroext %reg, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %buf = alloca [8 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 2
  %1 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 3
  %2 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 4
  %3 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 5
  %4 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 6
  %5 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 7
  %6 = and i8 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %6)
  %switch = icmp eq i8 %6, 90
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %params, align 4
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %reg to i32
  %conv1.i = and i32 %8, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef %conv.i, i32 noundef %conv1.i) #7
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %11 = getelementptr inbounds [8 x i8], ptr %buf, i32 0, i32 1
  %p3 = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 2
  %12 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p3, align 4
  %and3 = lshr i32 %13, 8
  %conv5 = trunc i32 %and3 to i8
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv5, ptr %buf, align 1
  %conv9 = trunc i32 %13 to i8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9, ptr %11, align 1
  %add = add i8 %reg, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i68 = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i68, align 4
  %conv.i69 = zext i8 %add to i32
  %call.i70 = call i32 @regmap_read(ptr noundef %18, i32 noundef %conv.i69, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 1
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i69) #10
  br label %si5351_reg_read.exit

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %22 to i8
  %phi.bo = and i8 %conv2.i, -4
  br label %si5351_reg_read.exit

si5351_reg_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %phi.bo, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %params, align 4
  %and19 = lshr i32 %24, 16
  %25 = trunc i32 %and19 to i8
  %26 = and i8 %25, 3
  %conv24 = or i8 %26, %retval.0.i
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv24, ptr %0, align 1
  %and26 = lshr i32 %24, 8
  %conv29 = trunc i32 %and26 to i8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv29, ptr %1, align 1
  %conv33 = trunc i32 %24 to i8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv33, ptr %2, align 1
  %30 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %p3, align 4
  %and36 = lshr i32 %31, 12
  %shr37 = and i32 %and36, 240
  %p2 = getelementptr inbounds %struct.si5351_parameters, ptr %params, i32 0, i32 1
  %32 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p2, align 4
  %and38 = lshr i32 %33, 16
  %shr39 = and i32 %and38, 15
  %or40 = or i32 %shr39, %shr37
  %conv41 = trunc i32 %or40 to i8
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv41, ptr %3, align 1
  %and44 = lshr i32 %33, 8
  %conv47 = trunc i32 %and44 to i8
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv47, ptr %4, align 1
  %conv51 = trunc i32 %33 to i8
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv51, ptr %5, align 1
  %37 = ptrtoint ptr %regmap.i68 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i68, align 4
  %conv.i72 = zext i8 %reg to i32
  %call.i73 = call i32 @regmap_raw_write(ptr noundef %38, i32 noundef %conv.i72, ptr noundef nonnull %buf, i32 noundef 8) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %si5351_reg_read.exit, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_vxco_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.98) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @si5351_vxco_unprepare(ptr nocapture noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si5351_vxco_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @si5351_vxco_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_msynth_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.i = icmp ugt i8 %1, 5
  %conv.i = add i8 %1, 84
  %2 = shl i8 %1, 3
  %conv2.i = add i8 %2, 42
  %retval.0.i363 = select i1 %cmp.i, i8 %conv.i, i8 %conv2.i
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  %valid = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 3
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drvdata, align 4
  tail call fastcc void @si5351_read_parameters(ptr noundef %6, i8 noundef zeroext %retval.0.i363, ptr noundef %params)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv2 = zext i32 %parent_rate to i64
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %8)
  %cmp = icmp ugt i8 %8, 5
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %params, align 4
  br label %if.end39

if.else:                                          ; preds = %if.end
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp9 = icmp eq i32 %12, 0
  br i1 %cmp9, label %if.else.cleanup_crit_edge, label %if.else12

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else12:                                        ; preds = %if.else
  %drvdata13 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %drvdata13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata13, align 4
  %add = add i8 %retval.0.i363, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %14, i32 0, i32 2
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %conv.i364 = zext i8 %add to i32
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %conv.i364, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %si5351_reg_read.exit, label %si5351_reg_read.exit.thread

si5351_reg_read.exit.thread:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i364) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.else21

si5351_reg_read.exit:                             ; preds = %if.else12
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %22 = and i32 %21, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %22)
  %cmp18 = icmp eq i32 %22, 12
  br i1 %cmp18, label %si5351_reg_read.exit.if.else217_crit_edge, label %si5351_reg_read.exit.if.else21_crit_edge

si5351_reg_read.exit.if.else21_crit_edge:         ; preds = %si5351_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else21

si5351_reg_read.exit.if.else217_crit_edge:        ; preds = %si5351_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else217

if.else21:                                        ; preds = %si5351_reg_read.exit.if.else21_crit_edge, %si5351_reg_read.exit.thread
  %23 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p3, align 4
  %mul = shl i32 %24, 7
  %conv24 = zext i32 %mul to i64
  %mul25 = mul nuw i64 %conv24, %conv2
  %25 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %params, align 4
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p2, align 4
  %reass.add = add i32 %26, 512
  %reass.mul = mul i32 %reass.add, %24
  %add36 = add i32 %reass.mul, %28
  br label %if.end39

if.end39:                                         ; preds = %if.else21, %if.then6
  %rate.0 = phi i64 [ %conv2, %if.then6 ], [ %mul25, %if.else21 ]
  %m.0 = phi i32 [ %10, %if.then6 ], [ %add36, %if.else21 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %m.0)
  %cmp40 = icmp eq i32 %m.0, 0
  br i1 %cmp40, label %if.end39.cleanup_crit_edge, label %if.end39.if.else217_crit_edge

if.end39.if.else217_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else217

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else217:                                       ; preds = %if.end39.if.else217_crit_edge, %si5351_reg_read.exit.if.else217_crit_edge
  %m.0380 = phi i32 [ %m.0, %if.end39.if.else217_crit_edge ], [ 4, %si5351_reg_read.exit.if.else217_crit_edge ]
  %rate.0379 = phi i64 [ %rate.0, %if.end39.if.else217_crit_edge ], [ %conv2, %si5351_reg_read.exit.if.else217_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate.0379)
  %cmp219 = icmp ult i64 %rate.0379, 4294967296
  br i1 %cmp219, label %if.then223, label %if.else229, !prof !277

if.then223:                                       ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #9
  %conv224 = trunc i64 %rate.0379 to i32
  %div227 = udiv i32 %conv224, %m.0380
  br label %if.end233

if.else229:                                       ; preds = %if.else217
  call void @__sanitizer_cov_trace_pc() #9
  %29 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %m.0380, i64 %rate.0379) #11, !srcloc !278
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  %extract.t403 = trunc i64 %asmresult1.i to i32
  br label %if.end233

if.end233:                                        ; preds = %if.else229, %if.then223
  %rate.1.off0 = phi i32 [ %div227, %if.then223 ], [ %extract.t403, %if.else229 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_msynth_recalc_rate.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_msynth_recalc_rate, %if.then244)) #7
          to label %cleanup [label %if.then244], !srcloc !276

if.then244:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata245 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %30 = ptrtoint ptr %drvdata245 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drvdata245, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %call246 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %params, align 4
  %p2250 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %p2250 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %p2250, align 4
  %p3252 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %p3252 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %p3252, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_msynth_recalc_rate.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, ptr noundef %call246, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %m.0380, i32 noundef %parent_rate, i32 noundef %rate.1.off0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then244, %if.end233, %if.end39.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %parent_rate, %if.else.cleanup_crit_edge ], [ 0, %if.end39.cleanup_crit_edge ], [ %rate.1.off0, %if.end233 ], [ %rate.1.off0, %if.then244 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_msynth_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #2 align 64 {
entry:
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #7
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  %2 = tail call i32 @llvm.umin.i32(i32 %rate, i32 150000000)
  %spec.select = select i1 %cmp, i32 %2, i32 %rate
  %3 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 160000000)
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 1000000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %4)
  %cmp12 = icmp ugt i32 %4, 150000000
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else213, label %if.then16

if.then16:                                        ; preds = %entry
  br i1 %cmp12, label %if.then16.if.end211_crit_edge, label %if.then197

if.then16.if.end211_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end211

if.then197:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %div201 = udiv i32 900000000, %4
  br label %if.end211

if.end211:                                        ; preds = %if.then197, %if.then16.if.end211_crit_edge
  %a.0 = phi i32 [ 4, %if.then16.if.end211_crit_edge ], [ %div201, %if.then197 ]
  %5 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %b, align 4
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %c, align 4
  %mul212 = mul i32 %a.0, %4
  %7 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul212, ptr %parent_rate, align 4
  br label %if.end474

if.else213:                                       ; preds = %entry
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp216 = icmp ugt i8 %9, 5
  br i1 %cmp216, label %if.then218, label %if.else231

if.then218:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %parent_rate, align 4
  %div2201041 = lshr i32 %4, 1
  %add221 = add i32 %11, %div2201041
  %div222 = udiv i32 %add221, %4
  %12 = tail call i32 @llvm.umax.i32(i32 %div222, i32 6)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 254)
  %14 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %b, align 4
  %15 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %c, align 4
  br label %if.end474

if.else231:                                       ; preds = %if.else213
  %16 = tail call i32 @llvm.umin.i32(i32 %4, i32 150000000)
  %17 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %parent_rate, align 4
  %.frozen = freeze i32 %18
  %.frozen1169 = freeze i32 %16
  %div235 = udiv i32 %.frozen, %.frozen1169
  %19 = tail call i32 @llvm.umax.i32(i32 %div235, i32 6)
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 1800)
  %21 = mul i32 %div235, %.frozen1169
  %rem244.decomposed = sub i32 %.frozen, %21
  %conv245 = zext i32 %rem244.decomposed to i64
  %mul247 = mul nuw nsw i64 %conv245, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul247)
  %cmp449 = icmp ult i64 %mul247, 4294967296
  br i1 %cmp449, label %if.then457, label %if.else463, !prof !277

if.then457:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #9
  %conv458 = trunc i64 %mul247 to i32
  %div461 = udiv i32 %conv458, %16
  br label %if.end467

if.else463:                                       ; preds = %if.else231
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %16, i64 %mul247) #11, !srcloc !278
  %asmresult1.i1066 = extractvalue { i64, i64 } %22, 1
  %extract.t1168 = trunc i64 %asmresult1.i1066 to i32
  br label %if.end467

if.end467:                                        ; preds = %if.else463, %if.then457
  %lltmp.1.off0 = phi i32 [ %div461, %if.then457 ], [ %extract.t1168, %if.else463 ]
  %23 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %b, align 4
  %24 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lltmp.1.off0)
  %tobool470.not = icmp eq i32 %lltmp.1.off0, 0
  br i1 %tobool470.not, label %if.end467.if.end474_crit_edge, label %if.then471

if.end467.if.end474_crit_edge:                    ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end474

if.then471:                                       ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #9
  call void @rational_best_approximation(i32 noundef %lltmp.1.off0, i32 noundef 1000000, i32 noundef 1048574, i32 noundef 1048575, ptr noundef nonnull %b, ptr noundef nonnull %c) #7
  br label %if.end474

if.end474:                                        ; preds = %if.then471, %if.end467.if.end474_crit_edge, %if.then218, %if.end211
  %divby4.1.shrunk = phi i1 [ %cmp12, %if.end211 ], [ %cmp12, %if.then218 ], [ false, %if.then471 ], [ false, %if.end467.if.end474_crit_edge ]
  %a.1 = phi i32 [ %a.0, %if.end211 ], [ %13, %if.then218 ], [ %20, %if.then471 ], [ %20, %if.end467.if.end474_crit_edge ]
  %divby4.1 = zext i1 %divby4.1.shrunk to i32
  %25 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parent_rate, align 4
  %conv475 = zext i32 %26 to i64
  %27 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %c, align 4
  %conv476 = zext i32 %28 to i64
  %mul477 = mul nuw i64 %conv476, %conv475
  %mul479 = mul i32 %28, %a.1
  %29 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %b, align 4
  %add480 = add i32 %mul479, %30
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul477)
  %cmp681 = icmp ult i64 %mul477, 4294967296
  br i1 %cmp681, label %if.then689, label %if.else695, !prof !277

if.then689:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #9
  %conv690 = trunc i64 %mul477 to i32
  %div693 = udiv i32 %conv690, %add480
  br label %if.end699

if.else695:                                       ; preds = %if.end474
  call void @__sanitizer_cov_trace_pc() #9
  %31 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add480, i64 %mul477) #11, !srcloc !278
  %asmresult1.i1088 = extractvalue { i64, i64 } %31, 1
  %extract.t1163 = trunc i64 %asmresult1.i1088 to i32
  br label %if.end699

if.end699:                                        ; preds = %if.else695, %if.then689
  %lltmp.2.off0 = phi i32 [ %div693, %if.then689 ], [ %extract.t1163, %if.else695 ]
  br i1 %divby4.1.shrunk, label %if.then703, label %if.else706

if.then703:                                       ; preds = %if.end699
  call void @__sanitizer_cov_trace_pc() #9
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %p3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %p3, align 4
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %p2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %p2, align 4
  %34 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %params, align 4
  br label %do.body

if.else706:                                       ; preds = %if.end699
  %35 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %36)
  %cmp709 = icmp ugt i8 %36, 5
  %params712 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  %p3713 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  br i1 %cmp709, label %if.then711, label %if.else718

if.then711:                                       ; preds = %if.else706
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %p3713 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %p3713, align 4
  %p2715 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %p2715 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %p2715, align 4
  %39 = ptrtoint ptr %params712 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %a.1, ptr %params712, align 4
  br label %do.body

if.else718:                                       ; preds = %if.else706
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %p3713 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %28, ptr %p3713, align 4
  %mul721 = shl i32 %30, 7
  %mul721.frozen = freeze i32 %mul721
  %.frozen1170 = freeze i32 %28
  %div729 = udiv i32 %mul721.frozen, %.frozen1170
  %41 = mul i32 %div729, %.frozen1170
  %rem722.decomposed = sub i32 %mul721.frozen, %41
  %p2724 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %p2724 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rem722.decomposed, ptr %p2724, align 4
  %mul725 = shl i32 %a.1, 7
  %add732 = add i32 %mul725, -512
  %sub735 = add i32 %add732, %div729
  %43 = ptrtoint ptr %params712 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub735, ptr %params712, align 4
  br label %do.body

do.body:                                          ; preds = %if.else718, %if.then711, %if.then703
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_msynth_round_rate.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_msynth_round_rate, %if.then747)) #7
          to label %do.end [label %if.then747], !srcloc !276

if.then747:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %44 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4
  %call748 = call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %48 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %b, align 4
  %50 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %c, align 4
  %52 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %parent_rate, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_msynth_round_rate.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111, ptr noundef %call748, i32 noundef %a.1, i32 noundef %49, i32 noundef %51, i32 noundef %divby4.1, i32 noundef %53, i32 noundef %lltmp.2.off0) #7
  br label %do.end

do.end:                                           ; preds = %if.then747, %do.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #7
  ret i32 %lltmp.2.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_msynth_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp1.i = icmp ugt i8 %1, 8
  br i1 %cmp1.i, label %entry._si5351_msynth_reparent.exit_crit_edge, label %if.end3.i

entry._si5351_msynth_reparent.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_msynth_reparent.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp = icmp eq i8 %index, 0
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %conv.i = add nuw nsw i32 %conv, 16
  %regmap.i.i = getelementptr inbounds %struct.si5351_driver_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %conv2.i.i = select i1 %cmp, i32 0, i32 32
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv.i, i32 noundef 32, i32 noundef %conv2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %_si5351_msynth_reparent.exit

_si5351_msynth_reparent.exit:                     ; preds = %if.end3.i, %entry._si5351_msynth_reparent.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ -22, %entry._si5351_msynth_reparent.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @si5351_msynth_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 4
  %add = add i8 %3, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %add to i32
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i) #10
  br label %si5351_reg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %conv2.i = trunc i32 %10 to i8
  %phi.bo = lshr i8 %conv2.i, 5
  %phi.bo5 = and i8 %phi.bo, 1
  br label %si5351_reg_read.exit

si5351_reg_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %phi.bo5, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_msynth_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.i = icmp ugt i8 %1, 5
  %conv.i = add i8 %1, 84
  %2 = shl i8 %1, 3
  %conv2.i = add i8 %2, 42
  %retval.0.i52 = select i1 %cmp.i, i8 %conv.i, i8 %conv2.i
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  %params = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2
  tail call fastcc void @si5351_write_parameters(ptr noundef %4, i8 noundef zeroext %retval.0.i52, ptr noundef %params)
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %rate)
  %cmp = icmp ugt i32 %rate, 150000000
  %spec.select = zext i1 %cmp to i32
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %6)
  %cmp4 = icmp ult i8 %6, 6
  br i1 %cmp4, label %if.then6, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drvdata, align 4
  %add = add i8 %retval.0.i52, 2
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv.i53 = zext i8 %add to i32
  %conv2.i54 = select i1 %cmp, i32 12, i32 0
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %conv.i53, i32 noundef 12, i32 noundef %conv2.i54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %13 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num, align 4
  %add15 = add i8 %14, 16
  %p2 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp18 = icmp eq i32 %16, 0
  %regmap.i55 = getelementptr inbounds %struct.si5351_driver_data, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i55, align 4
  %conv.i56 = zext i8 %add15 to i32
  %conv2.i57 = select i1 %cmp18, i32 64, i32 0
  %call.i.i58 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %conv.i56, i32 noundef 64, i32 noundef %conv2.i57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body

do.body:                                          ; preds = %if.then6, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_msynth_set_rate.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_msynth_set_rate, %if.then29)) #7
          to label %do.end [label %if.then29], !srcloc !276

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %call31 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %23 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %params, align 4
  %p234 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %p234 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p234, align 4
  %p3 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %p3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %p3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_msynth_set_rate.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, ptr noundef %call31, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %spec.select, i32 noundef %parent_rate, i32 noundef %rate) #7
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkout_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num, align 4
  %add = add i8 %7, 16
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %add to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv.i, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num, align 4
  %idxprom = zext i8 %11 to i32
  %pll_reset = getelementptr %struct.si5351_platform_data, ptr %5, i32 0, i32 1, i32 %idxprom, i32 5
  %12 = ptrtoint ptr %pll_reset to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pll_reset, align 1, !range !275
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drvdata, align 4
  tail call fastcc void @_si5351_clkout_reset_pll(ptr noundef %15, i32 noundef %idxprom)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  %18 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num, align 4
  %conv9 = zext i8 %19 to i32
  %shl = shl nuw i32 1, %conv9
  %regmap.i19 = getelementptr inbounds %struct.si5351_driver_data, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i19, align 4
  %conv1.i = and i32 %shl, 255
  %call.i.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3, i32 noundef %conv1.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @si5351_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 4
  %add = add i8 %3, 16
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %add to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv.i, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata, align 4
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 4
  %conv4 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv4
  %regmap.i15 = getelementptr inbounds %struct.si5351_driver_data, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %regmap.i15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i15, align 4
  %conv1.i = and i32 %shl, 255
  %call.i.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3, i32 noundef %conv1.i, i32 noundef %conv1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkout_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp = icmp ult i8 %1, 6
  %2 = shl nuw nsw i8 %1, 3
  %add = add nuw nsw i8 %2, 44
  %narrow = select i1 %cmp, i8 %add, i8 92
  %reg.0 = zext i8 %narrow to i32
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %4, i32 0, i32 2
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %reg.0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %reg.0) #10
  br label %si5351_reg_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i, align 4
  %conv2.i30 = trunc i32 %11 to i8
  br label %si5351_reg_read.exit

si5351_reg_read.exit:                             ; preds = %if.end.i, %do.end.i
  %retval.0.i31 = phi i8 [ 0, %do.end.i ], [ %conv2.i30, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp9 = icmp eq i8 %13, 6
  %14 = lshr i8 %retval.0.i31, 4
  %rdiv.0.in = select i1 %cmp9, i8 %retval.0.i31, i8 %14
  %rdiv.0 = and i8 %rdiv.0.in, 7
  %conv21 = zext i8 %rdiv.0 to i32
  %shr22 = lshr i32 %parent_rate, %conv21
  ret i32 %shr22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkout_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp = icmp ugt i8 %1, 5
  %2 = tail call i32 @llvm.umin.i32(i32 %rate, i32 150000000)
  %spec.select = select i1 %cmp, i32 %2, i32 %rate
  %3 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 160000000)
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 8000)
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %4)
  %cmp1387 = icmp ult i32 %4, 1000000
  br i1 %cmp1387, label %while.body, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  %mul = shl nuw nsw i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %4)
  %cmp13 = icmp ult i32 %4, 500000
  br i1 %cmp13, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %mul.1 = shl nuw nsw i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %4)
  %cmp13.1 = icmp ult i32 %4, 250000
  br i1 %cmp13.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %mul.2 = shl nuw nsw i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %4)
  %cmp13.2 = icmp ult i32 %4, 125000
  br i1 %cmp13.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %mul.3 = shl nuw nsw i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62500, i32 %4)
  %cmp13.3 = icmp ult i32 %4, 62500
  br i1 %cmp13.3, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %mul.4 = shl nuw nsw i32 %4, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 31250, i32 %4)
  %cmp13.4 = icmp ult i32 %4, 31250
  br i1 %cmp13.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #9
  %mul.5 = shl nuw nsw i32 %4, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %4)
  %cmp13.5 = icmp ult i32 %4, 15625
  %mul.6 = shl nuw nsw i32 %4, 7
  %spec.select91 = select i1 %cmp13.5, i32 7, i32 6
  %spec.select92 = select i1 %cmp13.5, i32 %mul.6, i32 %mul.5
  br label %while.end

while.end:                                        ; preds = %while.body.5, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %rdiv.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ %spec.select91, %while.body.5 ]
  %rate.addr.1.lcssa = phi i32 [ %4, %while.cond.preheader.while.end_crit_edge ], [ %mul, %while.body.while.end_crit_edge ], [ %mul.1, %while.body.1.while.end_crit_edge ], [ %mul.2, %while.body.2.while.end_crit_edge ], [ %mul.3, %while.body.3.while.end_crit_edge ], [ %mul.4, %while.body.4.while.end_crit_edge ], [ %spec.select92, %while.body.5 ]
  %5 = ptrtoint ptr %parent_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %rate.addr.1.lcssa, ptr %parent_rate, align 4
  br label %if.end41

do.body:                                          ; preds = %entry
  %6 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %parent_rate, align 4
  %sub = sub i32 %7, %4
  %8 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %shr = lshr i32 %7, 1
  %sub25 = sub nsw i32 %shr, %4
  %9 = tail call i32 @llvm.abs.i32(i32 %sub25, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %8)
  %cmp34 = icmp ugt i32 %9, %8
  br i1 %cmp34, label %do.body.if.end41_crit_edge, label %do.body.1

do.body.if.end41_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.1:                                        ; preds = %do.body
  %shr.1 = lshr i32 %7, 2
  %sub25.1 = sub nsw i32 %shr.1, %4
  %10 = tail call i32 @llvm.abs.i32(i32 %sub25.1, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %9)
  %cmp34.1 = icmp ugt i32 %10, %9
  br i1 %cmp34.1, label %do.body.1.if.end41_crit_edge, label %do.body.2

do.body.1.if.end41_crit_edge:                     ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.2:                                        ; preds = %do.body.1
  %shr.2 = lshr i32 %7, 3
  %sub25.2 = sub nsw i32 %shr.2, %4
  %11 = tail call i32 @llvm.abs.i32(i32 %sub25.2, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp34.2 = icmp ugt i32 %11, %10
  br i1 %cmp34.2, label %do.body.2.if.end41_crit_edge, label %do.body.3

do.body.2.if.end41_crit_edge:                     ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.3:                                        ; preds = %do.body.2
  %shr.3 = lshr i32 %7, 4
  %sub25.3 = sub nsw i32 %shr.3, %4
  %12 = tail call i32 @llvm.abs.i32(i32 %sub25.3, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp34.3 = icmp ugt i32 %12, %11
  br i1 %cmp34.3, label %do.body.3.if.end41_crit_edge, label %do.body.4

do.body.3.if.end41_crit_edge:                     ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.4:                                        ; preds = %do.body.3
  %shr.4 = lshr i32 %7, 5
  %sub25.4 = sub nsw i32 %shr.4, %4
  %13 = tail call i32 @llvm.abs.i32(i32 %sub25.4, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp34.4 = icmp ugt i32 %13, %12
  br i1 %cmp34.4, label %do.body.4.if.end41_crit_edge, label %do.body.5

do.body.4.if.end41_crit_edge:                     ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.5:                                        ; preds = %do.body.4
  %shr.5 = lshr i32 %7, 6
  %sub25.5 = sub nsw i32 %shr.5, %4
  %14 = tail call i32 @llvm.abs.i32(i32 %sub25.5, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp34.5 = icmp ugt i32 %14, %13
  br i1 %cmp34.5, label %do.body.5.if.end41_crit_edge, label %do.body.6

do.body.5.if.end41_crit_edge:                     ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body.6:                                        ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #9
  %shr.6 = lshr i32 %7, 7
  %sub25.6 = sub nsw i32 %shr.6, %4
  %15 = tail call i32 @llvm.abs.i32(i32 %sub25.6, i1 true)
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp34.6 = icmp ugt i32 %15, %14
  %spec.select93 = select i1 %cmp34.6, i32 6, i32 7
  br label %if.end41

if.end41:                                         ; preds = %do.body.6, %do.body.5.if.end41_crit_edge, %do.body.4.if.end41_crit_edge, %do.body.3.if.end41_crit_edge, %do.body.2.if.end41_crit_edge, %do.body.1.if.end41_crit_edge, %do.body.if.end41_crit_edge, %while.end
  %rdiv.2 = phi i32 [ %rdiv.0.lcssa, %while.end ], [ 0, %do.body.if.end41_crit_edge ], [ 1, %do.body.1.if.end41_crit_edge ], [ 2, %do.body.2.if.end41_crit_edge ], [ 3, %do.body.3.if.end41_crit_edge ], [ 4, %do.body.4.if.end41_crit_edge ], [ 5, %do.body.5.if.end41_crit_edge ], [ %spec.select93, %do.body.6 ]
  %16 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %parent_rate, align 4
  %conv42 = and i32 %rdiv.2, 255
  %shr43 = lshr i32 %17, %conv42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_clkout_round_rate.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_clkout_round_rate, %if.then50)) #7
          to label %do.end55 [label %if.then50], !srcloc !276

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %18 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drvdata, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %call51 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %shl = shl nuw i32 1, %conv42
  %22 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %parent_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_clkout_round_rate.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.126, ptr noundef %call51, i32 noundef %shl, i32 noundef %23, i32 noundef %shr43) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %if.end41
  ret i32 %shr43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkout_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 4
  %conv4 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.i = icmp ugt i8 %3, 8
  br i1 %cmp.i, label %entry._si5351_clkout_reparent.exit_crit_edge, label %if.end.i

entry._si5351_clkout_reparent.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_reparent.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %index)
  %4 = icmp ult i8 %index, 4
  %switch.idx.cast = zext i8 %index to i32
  %switch.offset = add nuw nsw i32 %switch.idx.cast, 1
  %parent.0 = select i1 %4, i32 %switch.offset, i32 0
  %5 = zext i32 %parent.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %parent.0, label %if.end.i._si5351_clkout_reparent.exit_crit_edge [
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb7.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i._si5351_clkout_reparent.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_reparent.exit

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.and.i = and i32 %conv4, 251
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %phi.cast.i = select i1 %switch.selectcmp.i, i32 12, i32 8
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp8.not.i = icmp eq i32 %7, 4
  br i1 %cmp8.not.i, label %sw.bb7.i.sw.epilog.i_crit_edge, label %sw.bb7.i._si5351_clkout_reparent.exit_crit_edge

sw.bb7.i._si5351_clkout_reparent.exit_crit_edge:  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_si5351_clkout_reparent.exit

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb7.i.sw.epilog.i_crit_edge, %sw.bb6.i, %sw.bb1.i, %if.end.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 0, %sw.bb6.i ], [ 12, %if.end.i.sw.epilog.i_crit_edge ], [ 4, %sw.bb7.i.sw.epilog.i_crit_edge ], [ %phi.cast.i, %sw.bb1.i ]
  %conv.i = add nuw nsw i32 %conv4, 16
  %regmap.i.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %conv.i, i32 noundef 12, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %_si5351_clkout_reparent.exit

_si5351_clkout_reparent.exit:                     ; preds = %sw.epilog.i, %sw.bb7.i._si5351_clkout_reparent.exit_crit_edge, %if.end.i._si5351_clkout_reparent.exit_crit_edge, %entry._si5351_clkout_reparent.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %entry._si5351_clkout_reparent.exit_crit_edge ], [ -22, %sw.bb7.i._si5351_clkout_reparent.exit_crit_edge ], [ 0, %if.end.i._si5351_clkout_reparent.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @si5351_clkout_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num, align 4
  %add = add i8 %3, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %add to i32
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %si5351_reg_read.exit, label %si5351_reg_read.exit.thread

si5351_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %sw.epilog

si5351_reg_read.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %11 = shl i32 %10, 1
  %switch.shiftamt = and i32 %11, 24
  %switch.downshift = lshr i32 66306, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %si5351_reg_read.exit, %si5351_reg_read.exit.thread
  %index.0 = phi i8 [ 2, %si5351_reg_read.exit.thread ], [ %switch.masked, %si5351_reg_read.exit ]
  ret i8 %index.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si5351_clkout_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %parent_rate, %rate
  %0 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %shr = lshr i32 %parent_rate, 1
  %sub4 = sub i32 %shr, %rate
  %1 = tail call i32 @llvm.abs.i32(i32 %sub4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %0)
  %cmp12 = icmp ugt i32 %1, %0
  br i1 %cmp12, label %entry.do.end_crit_edge, label %do.body.1

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.1:                                        ; preds = %entry
  %shr.1 = lshr i32 %parent_rate, 2
  %sub4.1 = sub i32 %shr.1, %rate
  %2 = tail call i32 @llvm.abs.i32(i32 %sub4.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp12.1 = icmp ugt i32 %2, %1
  br i1 %cmp12.1, label %do.body.1.do.end_crit_edge, label %do.body.2

do.body.1.do.end_crit_edge:                       ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.2:                                        ; preds = %do.body.1
  %shr.2 = lshr i32 %parent_rate, 3
  %sub4.2 = sub i32 %shr.2, %rate
  %3 = tail call i32 @llvm.abs.i32(i32 %sub4.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %2)
  %cmp12.2 = icmp ugt i32 %3, %2
  br i1 %cmp12.2, label %do.body.2.do.end_crit_edge, label %do.body.3

do.body.2.do.end_crit_edge:                       ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.3:                                        ; preds = %do.body.2
  %shr.3 = lshr i32 %parent_rate, 4
  %sub4.3 = sub i32 %shr.3, %rate
  %4 = tail call i32 @llvm.abs.i32(i32 %sub4.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp12.3 = icmp ugt i32 %4, %3
  br i1 %cmp12.3, label %do.body.3.do.end_crit_edge, label %do.body.4

do.body.3.do.end_crit_edge:                       ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.4:                                        ; preds = %do.body.3
  %shr.4 = lshr i32 %parent_rate, 5
  %sub4.4 = sub i32 %shr.4, %rate
  %5 = tail call i32 @llvm.abs.i32(i32 %sub4.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp12.4 = icmp ugt i32 %5, %4
  br i1 %cmp12.4, label %do.body.4.do.end_crit_edge, label %do.body.5

do.body.4.do.end_crit_edge:                       ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.5:                                        ; preds = %do.body.4
  %shr.5 = lshr i32 %parent_rate, 6
  %sub4.5 = sub i32 %shr.5, %rate
  %6 = tail call i32 @llvm.abs.i32(i32 %sub4.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %5)
  %cmp12.5 = icmp ugt i32 %6, %5
  br i1 %cmp12.5, label %do.body.5.do.end_crit_edge, label %do.body.6

do.body.5.do.end_crit_edge:                       ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.body.6:                                        ; preds = %do.body.5
  call void @__sanitizer_cov_trace_pc() #9
  %shr.6 = lshr i32 %parent_rate, 7
  %sub4.6 = sub i32 %shr.6, %rate
  %7 = tail call i32 @llvm.abs.i32(i32 %sub4.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %6)
  %cmp12.6 = icmp ugt i32 %7, %6
  %spec.select = select i1 %cmp12.6, i8 6, i8 7
  br label %do.end

do.end:                                           ; preds = %do.body.6, %do.body.5.do.end_crit_edge, %do.body.4.do.end_crit_edge, %do.body.3.do.end_crit_edge, %do.body.2.do.end_crit_edge, %do.body.1.do.end_crit_edge, %entry.do.end_crit_edge
  %rdiv.0.lcssa = phi i8 [ 0, %entry.do.end_crit_edge ], [ 1, %do.body.1.do.end_crit_edge ], [ 2, %do.body.2.do.end_crit_edge ], [ 3, %do.body.3.do.end_crit_edge ], [ 4, %do.body.4.do.end_crit_edge ], [ 5, %do.body.5.do.end_crit_edge ], [ %spec.select, %do.body.6 ]
  %num = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %9, label %sw.default [
    i8 6, label %sw.bb
    i8 7, label %sw.bb16
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata, align 4
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %conv2.i = zext i8 %rdiv.0.lcssa to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 92, i32 noundef 7, i32 noundef %conv2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata17 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %drvdata17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drvdata17, align 4
  %shl = shl nuw nsw i8 %rdiv.0.lcssa, 4
  %regmap.i73 = getelementptr inbounds %struct.si5351_driver_data, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regmap.i73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i73, align 4
  %conv2.i74 = zext i8 %shl to i32
  %call.i.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 92, i32 noundef 112, i32 noundef %conv2.i74, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %drvdata21 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %19 = ptrtoint ptr %drvdata21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i = icmp ugt i8 %9, 5
  %conv.i = add i8 %9, 84
  %21 = shl i8 %9, 3
  %conv2.i76 = add i8 %21, 42
  %retval.0.i77 = select i1 %cmp.i, i8 %conv.i, i8 %conv2.i76
  %add = add i8 %retval.0.i77, 2
  %shl28 = shl nuw nsw i8 %rdiv.0.lcssa, 4
  %regmap.i78 = getelementptr inbounds %struct.si5351_driver_data, ptr %20, i32 0, i32 2
  %22 = ptrtoint ptr %regmap.i78 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i78, align 4
  %conv.i79 = zext i8 %add to i32
  %conv2.i80 = zext i8 %shl28 to i32
  %call.i.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %conv.i79, i32 noundef 112, i32 noundef %conv2.i80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb
  %drvdata31 = getelementptr inbounds %struct.si5351_hw_data, ptr %hw, i32 0, i32 1
  %24 = ptrtoint ptr %drvdata31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drvdata31, align 4
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %num, align 4
  %add34 = add i8 %27, 16
  %regmap.i82 = getelementptr inbounds %struct.si5351_driver_data, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %regmap.i82 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i82, align 4
  %conv.i83 = zext i8 %add34 to i32
  %call.i.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef %conv.i83, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @si5351_clkout_set_rate.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@si5351_clkout_set_rate, %if.then42)) #7
          to label %do.end49 [label %if.then42], !srcloc !276

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %drvdata31 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drvdata31, align 4
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %call44 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  %conv45 = zext i8 %rdiv.0.lcssa to i32
  %shl46 = shl nuw i32 1, %conv45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @si5351_clkout_set_rate.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef %call44, i32 noundef %shl46, i32 noundef %parent_rate, i32 noundef %rate) #7
  br label %do.end49

do.end49:                                         ; preds = %if.then42, %sw.epilog
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_si5351_clkout_reset_pll(ptr nocapture noundef readonly %drvdata, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = add i32 %num, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !273
  %regmap.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %conv, 255
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %si5351_reg_read.exit, label %si5351_reg_read.exit.thread

si5351_reg_read.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 1
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.93, i32 noundef %conv.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #7
  br label %cleanup

si5351_reg_read.exit:                             ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #7
  %7 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %v, align 4, !annotation !273
  %and4 = and i32 %6, 12
  %8 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %and4, label %sw.epilog [
    i32 0, label %si5351_reg_read.exit.cleanup_crit_edge
    i32 4, label %si5351_reg_read.exit.cleanup_crit_edge125
  ]

si5351_reg_read.exit.cleanup_crit_edge125:        ; preds = %si5351_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

si5351_reg_read.exit.cleanup_crit_edge:           ; preds = %si5351_reg_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %si5351_reg_read.exit
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %conv1.i = select i1 %tobool.not, i32 32, i32 128
  %call.i90 = call i32 @regmap_write(ptr noundef %10, i32 noundef 177, i32 noundef %conv1.i) #7
  %call6 = call i64 @ktime_get() #7
  %add.i = add i64 %call6, 20000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %sw.epilog
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call15 = call i32 @regmap_read(ptr noundef %12, i32 noundef 177, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %for.cond.lor.end_crit_edge

for.cond.lor.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.lhs.false:                                    ; preds = %for.cond
  %13 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v, align 4
  %and18 = and i32 %14, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call23 = call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call29 = call i32 @regmap_read(ptr noundef %16, i32 noundef 177, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool35.not = icmp eq i32 %call29, 0
  br i1 %tobool35.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %17 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %v, align 4
  %and37 = and i32 %18, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.rhs.do.body50_crit_edge, label %lor.rhs.do.end48_crit_edge

lor.rhs.do.end48_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

lor.rhs.do.body50_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %for.cond.lor.end_crit_edge
  %tobool35.not102 = phi i32 [ %call29, %for.end.lor.end_crit_edge ], [ %call15, %for.cond.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool35.not102)
  %cmp43 = icmp slt i32 %tobool35.not102, 0
  br i1 %cmp43, label %lor.end.do.end48_crit_edge, label %lor.end.do.body50_crit_edge

lor.end.do.body50_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body50

lor.end.do.end48_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

do.end48:                                         ; preds = %lor.end.do.end48_crit_edge, %lor.rhs.do.end48_crit_edge
  %client = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 1
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.123) #10
  br label %do.body50

do.body50:                                        ; preds = %do.end48, %lor.end.do.body50_crit_edge, %lor.rhs.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_si5351_clkout_reset_pll.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_si5351_clkout_reset_pll, %if.then57)) #7
          to label %cleanup [label %if.then57], !srcloc !276

if.then57:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %client58 = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 1
  %21 = ptrtoint ptr %client58 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client58, align 4
  %dev59 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %clkout = getelementptr inbounds %struct.si5351_driver_data, ptr %drvdata, i32 0, i32 11
  %23 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clkout, align 4
  %arrayidx = getelementptr %struct.si5351_hw_data, ptr %24, i32 %num
  %call60 = call ptr @clk_hw_get_name(ptr noundef %arrayidx) #7
  %not.tobool.not = xor i1 %tobool.not, true
  %cond64 = zext i1 %not.tobool.not to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_si5351_clkout_reset_pll.__UNIQUE_ID_ddebug295, ptr noundef %dev59, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.124, ptr noundef %call60, i32 noundef %cond64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %do.body50, %si5351_reg_read.exit.cleanup_crit_edge, %si5351_reg_read.exit.cleanup_crit_edge125, %si5351_reg_read.exit.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !114, !116, !118, !119, !120, !122, !123, !125, !127, !128, !129, !131, !133, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !156, !158, !160, !162, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177, !179, !180, !182, !184, !185, !186, !187, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !257, !258, !259, !260, !262}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__initcall__kmod_clk_si5351__298_1670_si5351_driver_init6, !1, !"__initcall__kmod_clk_si5351__298_1670_si5351_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-si5351.c", i32 1670, i32 1}
!2 = !{ptr @__exitcall_si5351_driver_exit, !1, !"__exitcall_si5351_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-si5351.c", i32 1672, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-si5351.c", i32 1673, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-si5351.c", i32 1674, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-si5351.c", i32 1663, i32 11}
!12 = !{ptr @si5351_driver, !13, !"si5351_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-si5351.c", i32 1661, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-si5351.c", i32 1396, i32 46}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-si5351.c", i32 1397, i32 47}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-si5351.c", i32 1409, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @si5351_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @si5351_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @si5351_i2c_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-si5351.c", i32 1413, i32 20}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/clk-si5351.c", i32 1415, i32 3}
!31 = !{ptr @si5351_i2c_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @si5351_i2c_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-si5351.c", i32 1430, i32 4}
!35 = !{ptr @si5351_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @si5351_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/clk-si5351.c", i32 1441, i32 4}
!39 = !{ptr @si5351_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @si5351_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/clk-si5351.c", i32 1450, i32 4}
!43 = !{ptr @si5351_i2c_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @si5351_i2c_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-si5351.c", i32 1459, i32 4}
!47 = !{ptr @si5351_i2c_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @si5351_i2c_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-si5351.c", i32 1468, i32 4}
!51 = !{ptr @si5351_i2c_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @si5351_i2c_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-si5351.c", i32 1488, i32 3}
!55 = !{ptr @si5351_i2c_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @si5351_i2c_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @si5351_i2c_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-si5351.c", i32 1505, i32 4}
!59 = !{ptr @si5351_i2c_probe._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @si5351_i2c_probe._entry.32, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/clk/clk-si5351.c", i32 1528, i32 3}
!62 = !{ptr @si5351_i2c_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @si5351_i2c_probe._entry.34, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-si5351.c", i32 1552, i32 3}
!65 = !{ptr @si5351_i2c_probe._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @si5351_i2c_probe._entry.36, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/clk/clk-si5351.c", i32 1590, i32 4}
!68 = !{ptr @si5351_i2c_probe._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @si5351_i2c_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-si5351.c", i32 1618, i32 4}
!71 = !{ptr @si5351_i2c_probe._entry_ptr.39, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/clk-si5351.c", i32 1629, i32 5}
!74 = !{ptr @si5351_i2c_probe._entry.40, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @si5351_i2c_probe._entry_ptr.42, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/clk-si5351.c", i32 1638, i32 3}
!78 = !{ptr @si5351_i2c_probe._entry.43, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @si5351_i2c_probe._entry_ptr.45, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/clk-si5351.c", i32 1184, i32 2}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-si5351.c", i32 1186, i32 4}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @si5351_dt_parse._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @si5351_dt_parse._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-si5351.c", i32 1193, i32 4}
!89 = !{ptr @si5351_dt_parse._entry.49, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @si5351_dt_parse._entry_ptr.51, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/clk-si5351.c", i32 1204, i32 5}
!93 = !{ptr @si5351_dt_parse._entry.52, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @si5351_dt_parse._entry_ptr.54, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @si5351_dt_parse._entry.55, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-si5351.c", i32 1212, i32 4}
!97 = !{ptr @si5351_dt_parse._entry_ptr.56, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/clk-si5351.c", i32 1220, i32 35}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/clk-si5351.c", i32 1221, i32 4}
!102 = !{ptr @si5351_dt_parse._entry.58, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @si5351_dt_parse._entry_ptr.60, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.62, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/clk-si5351.c", i32 1228, i32 4}
!106 = !{ptr @si5351_dt_parse._entry.61, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @si5351_dt_parse._entry_ptr.63, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-si5351.c", i32 1232, i32 36}
!110 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/clk-si5351.c", i32 1244, i32 5}
!112 = !{ptr @si5351_dt_parse._entry.65, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @si5351_dt_parse._entry_ptr.67, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/clk-si5351.c", i32 1251, i32 36}
!116 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/clk-si5351.c", i32 1267, i32 6}
!118 = !{ptr @si5351_dt_parse._entry.69, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @si5351_dt_parse._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @si5351_dt_parse._entry.72, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-si5351.c", i32 1276, i32 5}
!122 = !{ptr @si5351_dt_parse._entry_ptr.73, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.74, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-si5351.c", i32 1283, i32 36}
!125 = !{ptr @.str.76, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-si5351.c", i32 1293, i32 5}
!127 = !{ptr @si5351_dt_parse._entry.75, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @si5351_dt_parse._entry_ptr.77, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.78, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-si5351.c", i32 1300, i32 36}
!131 = !{ptr @.str.80, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-si5351.c", i32 1320, i32 5}
!133 = !{ptr @si5351_dt_parse._entry.79, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @si5351_dt_parse._entry_ptr.81, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.82, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-si5351.c", i32 1327, i32 36}
!137 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-si5351.c", i32 1331, i32 33}
!139 = !{ptr @.str.84, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-si5351.c", i32 1334, i32 33}
!141 = !{ptr @si5351_regmap_config, !142, !"si5351_regmap_config", i1 false, i1 false}
!142 = !{!"../drivers/clk/clk-si5351.c", i32 206, i32 35}
!143 = distinct !{null, !144, !"si5351_input_names", i1 false, i1 false}
!144 = !{!"../drivers/clk/clk-si5351.c", i32 67, i32 27}
!145 = !{ptr @si5351_xtal_ops, !146, !"si5351_xtal_ops", i1 false, i1 false}
!146 = !{!"../drivers/clk/clk-si5351.c", i32 235, i32 29}
!147 = !{ptr @si5351_clkin_ops, !148, !"si5351_clkin_ops", i1 false, i1 false}
!148 = !{!"../drivers/clk/clk-si5351.c", i32 296, i32 29}
!149 = !{ptr @.str.85, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/clk-si5351.c", i32 290, i32 2}
!151 = !{ptr @.str.86, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.87, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @si5351_clkin_recalc_rate.__UNIQUE_ID_ddebug288, !150, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!154 = !{ptr @.str.88, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/clk-si5351.c", i32 71, i32 2}
!156 = !{ptr @.str.89, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/clk-si5351.c", i32 71, i32 17}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/clk-si5351.c", i32 71, i32 32}
!160 = distinct !{null, !161, !"si5351_pll_names", i1 false, i1 false}
!161 = !{!"../drivers/clk/clk-si5351.c", i32 70, i32 27}
!162 = !{ptr @si5351_pll_ops, !163, !"si5351_pll_ops", i1 false, i1 false}
!163 = !{!"../drivers/clk/clk-si5351.c", i32 532, i32 29}
!164 = !{ptr @.str.91, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-si5351.c", i32 436, i32 2}
!166 = !{ptr @.str.92, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @si5351_pll_recalc_rate.__UNIQUE_ID_ddebug289, !165, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!168 = !{ptr @.str.93, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/clk-si5351.c", i32 90, i32 3}
!170 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @si5351_reg_read._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @si5351_reg_read._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/clk-si5351.c", i32 494, i32 2}
!175 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @si5351_pll_round_rate.__UNIQUE_ID_ddebug290, !174, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/clk-si5351.c", i32 523, i32 2}
!179 = !{ptr @si5351_pll_set_rate.__UNIQUE_ID_ddebug291, !178, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!180 = !{ptr @si5351_vxco_ops, !181, !"si5351_vxco_ops", i1 false, i1 false}
!181 = !{!"../drivers/clk/clk-si5351.c", i32 332, i32 29}
!182 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/clk-si5351.c", i32 311, i32 2}
!184 = !{ptr @.str.99, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @si5351_vxco_prepare._entry, !183, !"_entry", i1 false, i1 false}
!187 = !{ptr @si5351_vxco_prepare._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 2}
!190 = !{ptr @.str.102, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 9}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 16}
!194 = !{ptr @.str.104, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 23}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 30}
!198 = !{ptr @.str.106, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 37}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 44}
!202 = !{ptr @.str.108, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/clk-si5351.c", i32 74, i32 51}
!204 = !{ptr @si5351_msynth_names, !205, !"si5351_msynth_names", i1 false, i1 false}
!205 = !{!"../drivers/clk/clk-si5351.c", i32 73, i32 27}
!206 = !{ptr @si5351_msynth_ops, !207, !"si5351_msynth_ops", i1 false, i1 false}
!207 = !{!"../drivers/clk/clk-si5351.c", i32 788, i32 29}
!208 = !{ptr @.str.109, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/clk-si5351.c", i32 634, i32 2}
!210 = !{ptr @.str.110, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @si5351_msynth_recalc_rate.__UNIQUE_ID_ddebug292, !209, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!212 = !{ptr @.str.111, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/clk-si5351.c", i32 747, i32 2}
!214 = !{ptr @.str.112, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @si5351_msynth_round_rate.__UNIQUE_ID_ddebug293, !213, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!216 = !{ptr @.str.113, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/clk-si5351.c", i32 779, i32 2}
!218 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @si5351_msynth_set_rate.__UNIQUE_ID_ddebug294, !217, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!220 = !{ptr @.str.115, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 2}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 10}
!224 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 18}
!226 = !{ptr @.str.118, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 26}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 34}
!230 = !{ptr @.str.120, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 42}
!232 = !{ptr @.str.121, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 50}
!234 = !{ptr @.str.122, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/clk-si5351.c", i32 77, i32 58}
!236 = !{ptr @si5351_clkout_names, !237, !"si5351_clkout_names", i1 false, i1 false}
!237 = !{!"../drivers/clk/clk-si5351.c", i32 76, i32 27}
!238 = !{ptr @si5351_clkout_ops, !239, !"si5351_clkout_ops", i1 false, i1 false}
!239 = !{!"../drivers/clk/clk-si5351.c", i32 1139, i32 29}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/clk-si5351.c", i32 921, i32 3}
!242 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @_si5351_clkout_reset_pll._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @_si5351_clkout_reset_pll._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.125, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/clk-si5351.c", i32 923, i32 2}
!247 = !{ptr @_si5351_clkout_reset_pll.__UNIQUE_ID_ddebug295, !246, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!248 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/clk-si5351.c", i32 1080, i32 2}
!250 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @si5351_clkout_round_rate.__UNIQUE_ID_ddebug296, !249, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/clk-si5351.c", i32 1131, i32 2}
!254 = !{ptr @si5351_clkout_set_rate.__UNIQUE_ID_ddebug297, !253, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/clk-si5351.c", i32 1351, i32 3}
!257 = !{ptr @.str.130, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @si53351_of_clk_get._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @si53351_of_clk_get._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @si5351_dt_ids, !261, !"si5351_dt_ids", i1 false, i1 false}
!261 = !{!"../drivers/clk/clk-si5351.c", i32 1153, i32 34}
!262 = !{ptr @si5351_i2c_ids, !263, !"si5351_i2c_ids", i1 false, i1 false}
!263 = !{!"../drivers/clk/clk-si5351.c", i32 1652, i32 35}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{!"auto-init"}
!274 = !{!"branch_weights", i32 2002, i32 2000}
!275 = !{i8 0, i8 2}
!276 = !{i64 2148994805, i64 2148994810, i64 2148994823, i64 2148994867, i64 2148994901, i64 2148994922}
!277 = !{!"branch_weights", i32 2000, i32 1}
!278 = !{i64 2148227852, i64 2148228132, i64 2148228466, i64 2148228800}
