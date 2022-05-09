; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-lmk04832.c_pt.bc'
source_filename = "../drivers/clk/clk-lmk04832.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lmk04832_device_info = type { i16, i8, i32, [2 x i32], [2 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lmk04832 = type { ptr, ptr, i32, i32, i32, i32, ptr, %struct.clk_hw, %struct.clk_hw, i32, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.lmk_clkout = type { ptr, %struct.clk_hw, i8, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.lmk_dclk = type { ptr, %struct.clk_hw, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__initcall__kmod_clk_lmk04832__566_1577_lmk04832_driver_init6 = internal global ptr @lmk04832_driver_init, section ".initcall6.init", align 4
@lmk04832_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @lmk04832_id, ptr @lmk04832_probe, ptr @lmk04832_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lmk04832_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lmk04832_driver_exit = internal global ptr @lmk04832_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author567 = internal constant [49 x i8] c"clk_lmk04832.author=Liam Beguin <lvb@xiphos.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description568 = internal constant [52 x i8] c"clk_lmk04832.description=Texas Instruments LMK04832\00", section ".modinfo", align 1
@__UNIQUE_ID_file569 = internal constant [43 x i8] c"clk_lmk04832.file=drivers/clk/clk-lmk04832\00", section ".modinfo", align 1
@__UNIQUE_ID_license570 = internal constant [28 x i8] c"clk_lmk04832.license=GPL v2\00", section ".modinfo", align 1
@lmk04832_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"lmk04832\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lmk04832\00", [23 x i8] zeroinitializer }, align 32
@lmk04832_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lmk04832\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lmk04832_device_info = internal constant { [1 x %struct.lmk04832_device_info], [40 x i8] } { [1 x %struct.lmk04832_device_info] [%struct.lmk04832_device_info { i16 25553, i8 112, i32 14, [2 x i32] [i32 2440, i32 2580], [2 x i32] [i32 2945, i32 3255] }], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oscin\00", [26 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get oscin clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lmk04832_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/clk-lmk04832.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr = internal global ptr @lmk04832_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,vco-hz\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,sysref-ddly\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,sysref-mux\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,sync-mode\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,sysref-pulse-count\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"missing reg property in child: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.16 = internal global ptr @lmk04832_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,clkout-fmt\00", [18 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1464, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid format for clkout%02d\0A\00", [33 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.20 = internal global ptr @lmk04832_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,clkout-sysref\00", [47 x i8] zeroinitializer }, align 32
@lmk04832_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 0, i32 0, i32 8, ptr @lmk04832_regmap_wr_regs, ptr @lmk04832_regmap_rd_regs, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1365, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 128, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"clk_lmk04832:1470:(&regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: regmap allocation failed: %ld\0A\00", [61 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.25 = internal global ptr @lmk04832_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,spi-4wire-rdbk\00", [46 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"unsupported device type: pid 0x%04x, maskrev 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.29 = internal global ptr @lmk04832_probe._entry.27, section ".printk_index", align 4
@lmk04832_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1499, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to init device clock path\0A\00", [62 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.32 = internal global ptr @lmk04832_probe._entry.30, section ".printk_index", align 4
@lmk04832_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1504, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setting VCO rate to %u Hz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.36 = internal global ptr @lmk04832_probe._entry.33, section ".printk_index", align 4
@lmk04832_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.3, ptr @.str.4, i32 1507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set VCO rate\0A\00", [40 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.39 = internal global ptr @lmk04832_probe._entry.37, section ".printk_index", align 4
@lmk04832_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 1514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to init SYNC/SYSREF clock path\0A\00", [57 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.42 = internal global ptr @lmk04832_probe._entry.40, section ".printk_index", align 4
@lmk04832_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 1521, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to register clk %d\0A\00", [37 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.45 = internal global ptr @lmk04832_probe._entry.43, section ".printk_index", align 4
@lmk04832_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 1530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add provider (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@lmk04832_probe._entry_ptr.48 = internal global ptr @lmk04832_probe._entry.46, section ".printk_index", align 4
@lmk04832_set_spi_rdbk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 1350, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"setting up 4-wire mode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lmk04832_set_spi_rdbk\00", [42 x i8] zeroinitializer }, align 32
@lmk04832_set_spi_rdbk._entry_ptr = internal global ptr @lmk04832_set_spi_rdbk._entry, section ".printk_index", align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lmk-vco\00", [24 x i8] zeroinitializer }, align 32
@lmk04832_vco_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @lmk04832_vco_prepare, ptr @lmk04832_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @lmk04832_vco_is_enabled, ptr null, ptr null, ptr null, ptr @lmk04832_vco_recalc_rate, ptr @lmk04832_vco_round_rate, ptr null, ptr null, ptr null, ptr @lmk04832_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.lmk04832_vco_recalc_rate.pll2_p = private unnamed_addr constant [8 x i32] [i32 8, i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@lmk04832_vco_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"PLL2 parameters out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lmk04832_vco_round_rate\00", [40 x i8] zeroinitializer }, align 32
@lmk04832_vco_round_rate._entry_ptr = internal global ptr @lmk04832_vco_round_rate._entry, section ".printk_index", align 4
@lmk04832_check_vco_ranges._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 433, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%lu Hz is out of VCO ranges\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lmk04832_check_vco_ranges\00", [38 x i8] zeroinitializer }, align 32
@lmk04832_check_vco_ranges._entry_ptr = internal global ptr @lmk04832_check_vco_ranges._entry, section ".printk_index", align 4
@lmk04832_vco_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to determine PLL2 parameters\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lmk04832_vco_set_rate\00", [42 x i8] zeroinitializer }, align 32
@lmk04832_vco_set_rate._entry_ptr = internal global ptr @lmk04832_vco_set_rate._entry, section ".printk_index", align 4
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lmk-sclk\00", [23 x i8] zeroinitializer }, align 32
@lmk04832_sclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @lmk04832_sclk_prepare, ptr @lmk04832_sclk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @lmk04832_sclk_is_enabled, ptr null, ptr null, ptr null, ptr @lmk04832_sclk_recalc_rate, ptr @lmk04832_sclk_round_rate, ptr null, ptr null, ptr null, ptr @lmk04832_sclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@lmk04832_sclk_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.4, i32 898, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SYSREF divider out of range\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lmk04832_sclk_round_rate\00", [39 x i8] zeroinitializer }, align 32
@lmk04832_sclk_round_rate._entry_ptr = internal global ptr @lmk04832_sclk_round_rate._entry, section ".printk_index", align 4
@lmk04832_sclk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.61, ptr @.str.4, i32 918, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lmk04832_sclk_set_rate\00", [41 x i8] zeroinitializer }, align 32
@lmk04832_sclk_set_rate._entry_ptr = internal global ptr @lmk04832_sclk_set_rate._entry, section ".printk_index", align 4
@lmk04832_sclk_set_rate._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.4, i32 934, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SYNC sequence failed\0A\00", [42 x i8] zeroinitializer }, align 32
@lmk04832_sclk_set_rate._entry_ptr.64 = internal global ptr @lmk04832_sclk_set_rate._entry.62, section ".printk_index", align 4
@__const.lmk04832_clkout_set_ddly.dclk_div_adj = private unnamed_addr constant [8 x i32] [i32 0, i32 0, i32 -2, i32 -2, i32 0, i32 3, i32 -1, i32 0], align 4
@lmk04832_clkout_set_ddly._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 684, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DCLKX_Y_DDLY out of range (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lmk04832_clkout_set_ddly\00", [39 x i8] zeroinitializer }, align 32
@lmk04832_clkout_set_ddly._entry_ptr = internal global ptr @lmk04832_clkout_set_ddly._entry, section ".printk_index", align 4
@lmk04832_clkout_set_ddly.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.66, ptr @.str.4, ptr @.str.68, i8 0, i8 -81, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_lmk04832\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"clkout%02u: sysref_ddly=%u, dclkx_y_ddly=%u, dclk_div_adj=%+d, dclkx_y_hs=%u, sclkx_y_ddly=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@__const.lmk04832_register_clkout.name = private unnamed_addr constant [13 x i8] c"lmk-clkoutXX\00", align 1
@__const.lmk04832_register_clkout.dclk_name = private unnamed_addr constant [14 x i8] c"lmk-dclkXX_YY\00", align 1
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lmk-dclk%02d_%02d\00", [46 x i8] zeroinitializer }, align 32
@lmk04832_dclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @lmk04832_dclk_prepare, ptr @lmk04832_dclk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @lmk04832_dclk_is_enabled, ptr null, ptr null, ptr null, ptr @lmk04832_dclk_recalc_rate, ptr @lmk04832_dclk_round_rate, ptr null, ptr null, ptr null, ptr @lmk04832_dclk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lmk-clkout%02d\00", [17 x i8] zeroinitializer }, align 32
@lmk04832_clkout_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @lmk04832_clkout_prepare, ptr @lmk04832_clkout_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @lmk04832_clkout_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lmk04832_clkout_set_parent, ptr @lmk04832_clkout_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@lmk04832_dclk_round_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 1080, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s_div out of range\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lmk04832_dclk_round_rate\00", [39 x i8] zeroinitializer }, align 32
@lmk04832_dclk_round_rate._entry_ptr = internal global ptr @lmk04832_dclk_round_rate._entry, section ".printk_index", align 4
@lmk04832_dclk_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.74, ptr @.str.4, i32 1101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lmk04832_dclk_set_rate\00", [41 x i8] zeroinitializer }, align 32
@lmk04832_dclk_set_rate._entry_ptr = internal global ptr @lmk04832_dclk_set_rate._entry, section ".printk_index", align 4
@lmk04832_dclk_set_rate._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.74, ptr @.str.4, i32 1147, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@lmk04832_dclk_set_rate._entry_ptr.76 = internal global ptr @lmk04832_dclk_set_rate._entry.75, section ".printk_index", align 4
@lmk04832_clkout_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 1216, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"prepared %s but format is powerdown\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lmk04832_clkout_prepare\00", [40 x i8] zeroinitializer }, align 32
@lmk04832_clkout_prepare._entry_ptr = internal global ptr @lmk04832_clkout_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [19 x i64] [i64 17, i64 32, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 12, i64 13, i64 366, i64 371, i64 375, i64 386, i64 387, i64 388, i64 389, i64 392, i64 1365]
@__sancov_gen_cov_switch_values.80 = internal global [20 x i64] [i64 18, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 12, i64 13, i64 366, i64 371, i64 375, i64 386, i64 387, i64 388, i64 389, i64 392, i64 1365]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"lmk04832_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1568, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"lmk04832_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1556, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1570, i32 11 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"lmk04832_of_id\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1562, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"lmk04832_device_info\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 197, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1395, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1397, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1405, i32 55 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1430, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1433, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1436, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1440, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1444, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1450, i32 37 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1452, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1458, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1463, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1467, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 310, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1470, i32 16 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1472, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1482, i32 38 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1491, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1499, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1504, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1507, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1514, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1521, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1530, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1350, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 592, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant [17 x i8] c"lmk04832_vco_ops\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 573, i32 29 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 504, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 433, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 535, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 954, i32 14 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"lmk04832_sclk_ops\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 939, i32 29 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 898, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 918, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 934, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 683, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 699, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1298, i32 22 }
@___asan_gen_.307 = private unnamed_addr constant [18 x i8] c"lmk04832_dclk_ops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1152, i32 29 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1317, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1319, i32 17 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c"lmk04832_clkout_ops\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1280, i32 29 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1080, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1101, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1147, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [30 x i8] c"../drivers/clk/clk-lmk04832.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1215, i32 3 }
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author567, ptr @__UNIQUE_ID_description568, ptr @__UNIQUE_ID_file569, ptr @__UNIQUE_ID_license570, ptr @__exitcall_lmk04832_driver_exit, ptr @__initcall__kmod_clk_lmk04832__566_1577_lmk04832_driver_init6, ptr @lmk04832_check_vco_ranges._entry, ptr @lmk04832_check_vco_ranges._entry_ptr, ptr @lmk04832_clkout_prepare._entry, ptr @lmk04832_clkout_prepare._entry_ptr, ptr @lmk04832_clkout_set_ddly._entry, ptr @lmk04832_clkout_set_ddly._entry_ptr, ptr @lmk04832_dclk_round_rate._entry, ptr @lmk04832_dclk_round_rate._entry_ptr, ptr @lmk04832_dclk_set_rate._entry, ptr @lmk04832_dclk_set_rate._entry.75, ptr @lmk04832_dclk_set_rate._entry_ptr, ptr @lmk04832_dclk_set_rate._entry_ptr.76, ptr @lmk04832_driver_exit, ptr @lmk04832_probe._entry, ptr @lmk04832_probe._entry.14, ptr @lmk04832_probe._entry.18, ptr @lmk04832_probe._entry.23, ptr @lmk04832_probe._entry.27, ptr @lmk04832_probe._entry.30, ptr @lmk04832_probe._entry.33, ptr @lmk04832_probe._entry.37, ptr @lmk04832_probe._entry.40, ptr @lmk04832_probe._entry.43, ptr @lmk04832_probe._entry.46, ptr @lmk04832_probe._entry_ptr, ptr @lmk04832_probe._entry_ptr.16, ptr @lmk04832_probe._entry_ptr.20, ptr @lmk04832_probe._entry_ptr.25, ptr @lmk04832_probe._entry_ptr.29, ptr @lmk04832_probe._entry_ptr.32, ptr @lmk04832_probe._entry_ptr.36, ptr @lmk04832_probe._entry_ptr.39, ptr @lmk04832_probe._entry_ptr.42, ptr @lmk04832_probe._entry_ptr.45, ptr @lmk04832_probe._entry_ptr.48, ptr @lmk04832_sclk_round_rate._entry, ptr @lmk04832_sclk_round_rate._entry_ptr, ptr @lmk04832_sclk_set_rate._entry, ptr @lmk04832_sclk_set_rate._entry.62, ptr @lmk04832_sclk_set_rate._entry_ptr, ptr @lmk04832_sclk_set_rate._entry_ptr.64, ptr @lmk04832_set_spi_rdbk._entry, ptr @lmk04832_set_spi_rdbk._entry_ptr, ptr @lmk04832_vco_round_rate._entry, ptr @lmk04832_vco_round_rate._entry_ptr, ptr @lmk04832_vco_set_rate._entry, ptr @lmk04832_vco_set_rate._entry_ptr, ptr @lmk04832_driver, ptr @lmk04832_id, ptr @.str, ptr @lmk04832_of_id, ptr @lmk04832_device_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @lmk04832_probe._key, ptr @regmap_config, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @lmk04832_vco_ops, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @lmk04832_sclk_ops, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @lmk04832_dclk_ops, ptr @.str.70, ptr @.str.71, ptr @lmk04832_clkout_ops, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_device_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_set_spi_rdbk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_vco_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_vco_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_check_vco_ranges._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_vco_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_sclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_sclk_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_sclk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_sclk_set_rate._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_clkout_set_ddly._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_dclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_clkout_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_dclk_round_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_dclk_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_dclk_set_rate._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lmk04832_clkout_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lmk04832_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lmk04832_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lmk04832_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_probe(ptr noundef %spi) #2 align 64 {
entry:
  %name.i = alloca [13 x i8], align 1
  %dclk_name.i = alloca [14 x i8], align 1
  %parent_names.i = alloca [2 x ptr], align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %rdbk_pin = alloca i32, align 4
  %tmp = alloca [3 x i8], align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rdbk_pin) #9
  %0 = ptrtoint ptr %rdbk_pin to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %rdbk_pin, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp) #9
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp, align 1, !annotation !182
  %2 = getelementptr inbounds [3 x i8], ptr %tmp, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !182
  %4 = getelementptr inbounds [3 x i8], ptr %tmp, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !182
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #9
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 72, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup206_crit_edge, label %if.end

entry.cleanup206_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi, ptr %call.i, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  %oscin = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %oscin to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5, ptr %oscin, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.2) #12
  %12 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %oscin, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup206

if.end12:                                         ; preds = %if.end
  %call.i316 = tail call i32 @clk_prepare(ptr noundef %call5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end12.cleanup206_crit_edge

if.end12.cleanup206_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup206

if.end.i:                                         ; preds = %if.end12
  %call1.i = tail call i32 @clk_enable(ptr noundef %call5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end17, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %call5) #9
  br label %cleanup206

if.end17:                                         ; preds = %if.end.i
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 3) #9
  %reset_gpio = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %reset_gpio, align 4
  %num_channels = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %7, i32 2
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels, align 4
  %shr = lshr i32 %17, 1
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 20) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !183

devm_kcalloc.exit.thread:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %dclk340 = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %dclk340 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dclk340, align 4
  br label %err_disable_oscin

devm_kcalloc.exit:                                ; preds = %if.end17
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = extractvalue { i32, i1 } %18, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %23, i32 noundef 3520) #9
  %dclk = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 11
  %24 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %dclk, align 4
  %tobool23.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool23.not, label %devm_kcalloc.exit.err_disable_oscin_crit_edge, label %if.end25

devm_kcalloc.exit.err_disable_oscin_crit_edge:    ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_oscin

if.end25:                                         ; preds = %devm_kcalloc.exit
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 28) #9
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %devm_kcalloc.exit320.thread, label %devm_kcalloc.exit320, !prof !183

devm_kcalloc.exit320.thread:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %clkout343 = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %clkout343 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %clkout343, align 4
  br label %err_disable_oscin

devm_kcalloc.exit320:                             ; preds = %if.end25
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %30 = extractvalue { i32, i1 } %25, 0
  %call5.i.i317 = tail call noalias ptr @devm_kmalloc(ptr noundef %29, i32 noundef %30, i32 noundef 3520) #9
  %clkout = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 12
  %31 = ptrtoint ptr %clkout to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i317, ptr %clkout, align 4
  %tobool30.not = icmp eq ptr %call5.i.i317, null
  br i1 %tobool30.not, label %devm_kcalloc.exit320.err_disable_oscin_crit_edge, label %if.end32

devm_kcalloc.exit320.err_disable_oscin_crit_edge: ; preds = %devm_kcalloc.exit320
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_oscin

if.end32:                                         ; preds = %devm_kcalloc.exit320
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %34 = shl nuw nsw i32 %17, 2
  %spec.select.i350 = add nuw nsw i32 %34, 4
  %call.i322 = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %spec.select.i350, i32 noundef 3520) #9
  %clk_data = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 13
  %35 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i322, ptr %clk_data, align 4
  %tobool38.not = icmp eq ptr %call.i322, null
  br i1 %tobool38.not, label %if.end32.err_disable_oscin_crit_edge, label %if.end40

if.end32.err_disable_oscin_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_oscin

if.end40:                                         ; preds = %if.end32
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  %vco_rate = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 9
  %call.i323 = tail call i32 @device_property_read_u32_array(ptr noundef %37, ptr noundef nonnull @.str.8, ptr noundef %vco_rate, i32 noundef 1) #9
  %sysref_ddly = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %sysref_ddly to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 8, ptr %sysref_ddly, align 4
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i324 = tail call i32 @device_property_read_u32_array(ptr noundef %40, ptr noundef nonnull @.str.9, ptr noundef %sysref_ddly, i32 noundef 1) #9
  %sysref_mux = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 3
  %41 = ptrtoint ptr %sysref_mux to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %sysref_mux, align 4
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %call.i325 = tail call i32 @device_property_read_u32_array(ptr noundef %43, ptr noundef nonnull @.str.10, ptr noundef %sysref_mux, i32 noundef 1) #9
  %sync_mode = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %sync_mode, align 4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call.i326 = tail call i32 @device_property_read_u32_array(ptr noundef %46, ptr noundef nonnull @.str.11, ptr noundef %sync_mode, i32 noundef 1) #9
  %sysref_pulse_cnt = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 4
  %47 = ptrtoint ptr %sysref_pulse_cnt to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 4, ptr %sysref_pulse_cnt, align 4
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call.i327 = tail call i32 @device_property_read_u32_array(ptr noundef %49, ptr noundef nonnull @.str.12, ptr noundef %sysref_pulse_cnt, i32 noundef 1) #9
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 8
  %call56 = tail call ptr @of_get_next_child(ptr noundef %53, ptr noundef null) #9
  %cmp.not355 = icmp eq ptr %call56, null
  br i1 %cmp.not355, label %if.end40.for.end_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  br label %for.body

if.end40.for.end_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end40.for.body_crit_edge
  %child.0356 = phi ptr [ %call88, %for.inc.for.body_crit_edge ], [ %call56, %if.end40.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #9
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %reg, align 4, !annotation !182
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0356, ptr noundef nonnull @.str.13, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool58.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool58.not, label %if.end64, label %cleanup

if.end64:                                         ; preds = %for.body
  %55 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clkout, align 4
  %57 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %reg, align 4
  %format = getelementptr %struct.lmk_clkout, ptr %56, i32 %58, i32 3
  %call.i.i328 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0356, ptr noundef nonnull @.str.17, ptr noundef %format, i32 noundef 1, i32 noundef 0) #9
  %59 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clkout, align 4
  %61 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %reg, align 4
  %format70 = getelementptr %struct.lmk_clkout, ptr %60, i32 %62, i32 3
  %63 = ptrtoint ptr %format70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %format70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %64)
  %cmp71 = icmp ult i32 %64, 10
  %65 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp72 = icmp ne i32 %65, 0
  %or.cond = select i1 %cmp71, i1 true, i1 %cmp72
  %66 = freeze i1 %or.cond
  br i1 %66, label %if.end64.for.inc_crit_edge, label %switch.early.test

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test:                                ; preds = %if.end64
  %67 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %do.end80 [
    i32 10, label %switch.early.test.for.inc_crit_edge
    i32 8, label %switch.early.test.for.inc_crit_edge389
  ]

switch.early.test.for.inc_crit_edge389:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

switch.early.test.for.inc_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end80:                                         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.19, i32 noundef %62) #12
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %full_name = getelementptr inbounds %struct.device_node, ptr %child.0356, i32 0, i32 2
  %72 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %full_name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.15, ptr noundef %73) #12
  call void @of_node_put(ptr noundef nonnull %child.0356) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  br label %err_disable_oscin

for.inc:                                          ; preds = %do.end80, %switch.early.test.for.inc_crit_edge, %switch.early.test.for.inc_crit_edge389, %if.end64.for.inc_crit_edge
  %call.i329 = call ptr @of_find_property(ptr noundef nonnull %child.0356, ptr noundef nonnull @.str.21, ptr noundef null) #9
  %tobool.i = icmp ne ptr %call.i329, null
  %74 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clkout, align 4
  %76 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %reg, align 4
  %sysref = getelementptr %struct.lmk_clkout, ptr %75, i32 %77, i32 2
  %frombool = zext i1 %tobool.i to i8
  %78 = ptrtoint ptr %sysref to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %frombool, ptr %sysref, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #9
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %of_node87 = getelementptr inbounds %struct.device, ptr %80, i32 0, i32 27
  %81 = ptrtoint ptr %of_node87 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node87, align 8
  %call88 = call ptr @of_get_next_child(ptr noundef %82, ptr noundef nonnull %child.0356) #9
  %cmp.not = icmp eq ptr %call88, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end40.for.end_crit_edge
  %call90 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @regmap_config, ptr noundef nonnull @lmk04832_probe._key, ptr noundef nonnull @.str.22) #9
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 1
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call90, ptr %regmap, align 4
  %cmp.i330 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i330, label %do.end96, label %if.end102

do.end96:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  %86 = ptrtoint ptr %call90 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.3, i32 noundef %86) #12
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 4
  %89 = ptrtoint ptr %88 to i32
  br label %err_disable_oscin

if.end102:                                        ; preds = %for.end
  %call104 = call i32 @regmap_write(ptr noundef %call90, i32 noundef 0, i32 noundef 128) #9
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %90 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mode, align 8
  %and = and i32 %91, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool105.not = icmp eq i32 %and, 0
  br i1 %tobool105.not, label %if.then106, label %if.end102.if.end113_crit_edge

if.end102.if.end113_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.then106:                                       ; preds = %if.end102
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  %call.i331 = call i32 @device_property_read_u32_array(ptr noundef %93, ptr noundef nonnull @.str.26, ptr noundef nonnull %rdbk_pin, i32 noundef 1) #9
  %94 = ptrtoint ptr %rdbk_pin to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rdbk_pin, align 4
  %call109 = call fastcc i32 @lmk04832_set_spi_rdbk(ptr noundef nonnull %call.i, i32 noundef %95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.then106.if.end113_crit_edge, label %if.then106.err_disable_oscin_crit_edge

if.then106.err_disable_oscin_crit_edge:           ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_disable_oscin

if.then106.if.end113_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113

if.end113:                                        ; preds = %if.then106.if.end113_crit_edge, %if.end102.if.end113_crit_edge
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call115 = call i32 @regmap_bulk_read(ptr noundef %97, i32 noundef 4, ptr noundef nonnull %tmp, i32 noundef 3) #9
  %98 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tmp, align 1
  %conv = zext i8 %99 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %2, align 1
  %conv118 = zext i8 %101 to i32
  %or = or i32 %shl, %conv118
  call void @__sanitizer_cov_trace_const_cmp4(i32 25553, i32 %or)
  %cmp120.not = icmp eq i32 %or, 25553
  br i1 %cmp120.not, label %lor.lhs.false, label %if.end113.do.end130_crit_edge

if.end113.do.end130_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end130

lor.lhs.false:                                    ; preds = %if.end113
  %102 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %4, align 1
  %maskrev = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %7, i32 1
  %104 = ptrtoint ptr %maskrev to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %maskrev, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %105)
  %cmp125.not = icmp eq i8 %103, %105
  br i1 %cmp125.not, label %if.end140, label %lor.lhs.false.do.end130_crit_edge

lor.lhs.false.do.end130_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end130

do.end130:                                        ; preds = %lor.lhs.false.do.end130_crit_edge, %if.end113.do.end130_crit_edge
  %106 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call.i, align 4
  %108 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %4, align 1
  %conv139 = zext i8 %109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.28, i32 noundef %or, i32 noundef %conv139) #12
  br label %err_disable_oscin

if.end140:                                        ; preds = %lor.lhs.false
  %call141 = call fastcc i32 @lmk04832_register_vco(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end148, label %do.end146

do.end146:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.31) #12
  br label %err_disable_oscin

if.end148:                                        ; preds = %if.end140
  %112 = ptrtoint ptr %vco_rate to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %vco_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool150.not = icmp eq i32 %113, 0
  br i1 %tobool150.not, label %if.end148.if.end166_crit_edge, label %do.end154

if.end148.if.end166_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

do.end154:                                        ; preds = %if.end148
  %114 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %115, ptr noundef nonnull @.str.34, i32 noundef %113) #12
  %clk = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 7, i32 1
  %116 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %clk, align 4
  %118 = ptrtoint ptr %vco_rate to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vco_rate, align 4
  %call158 = call i32 @clk_set_rate(ptr noundef %117, i32 noundef %119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %do.end154.if.end166_crit_edge, label %do.end163

do.end154.if.end166_crit_edge:                    ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end166

do.end163:                                        ; preds = %do.end154
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.38) #12
  br label %err_disable_vco

if.end166:                                        ; preds = %do.end154.if.end166_crit_edge, %if.end148.if.end166_crit_edge
  %call167 = call fastcc i32 @lmk04832_register_sclk(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167)
  %tobool168.not = icmp eq i32 %call167, 0
  br i1 %tobool168.not, label %for.body179.lr.ph, label %do.end172

for.body179.lr.ph:                                ; preds = %if.end166
  %122 = getelementptr inbounds [2 x ptr], ptr %parent_names.i, i32 0, i32 1
  %vco.i = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 7
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %sclk.i = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 8
  %parent_names34.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %17, i32 1)
  br label %for.body179

do.end172:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #11
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.41) #12
  br label %err_disable_vco

for.body179:                                      ; preds = %for.inc188.for.body179_crit_edge, %for.body179.lr.ph
  %i.0358 = phi i32 [ 0, %for.body179.lr.ph ], [ %inc, %for.inc188.for.body179_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %name.i) #9
  %125 = call ptr @memcpy(ptr %name.i, ptr @__const.lmk04832_register_clkout.name, i32 13)
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %dclk_name.i) #9
  %126 = call ptr @memcpy(ptr %dclk_name.i, ptr @__const.lmk04832_register_clkout.dclk_name, i32 14)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %127 = call ptr @memset(ptr %init.i, i32 255, i32 28)
  %i.0358.frozen = freeze i32 %i.0358
  %div.i = sdiv i32 %i.0358.frozen, 2
  %128 = mul i32 %div.i, 2
  %rem.i.decomposed = sub i32 %i.0358.frozen, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.i332 = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.i332, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body179
  %add.i = add nuw i32 %i.0358, 1
  %call.i333 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %dclk_name.i, ptr noundef nonnull @.str.69, i32 noundef %i.0358, i32 noundef %add.i) #9
  %129 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %dclk_name.i, ptr %init.i, align 4
  %call3.i = call ptr @clk_hw_get_name(ptr noundef %vco.i) #9
  %130 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @lmk04832_dclk_ops, ptr %ops.i, align 4
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 4, ptr %flags.i, align 4
  %132 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %num_parents.i, align 4
  %conv.i = trunc i32 %i.0358 to i8
  %133 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dclk, align 4
  %id.i = getelementptr %struct.lmk_dclk, ptr %134, i32 %div.i, i32 2
  %135 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv.i, ptr %id.i, align 4
  %136 = load ptr, ptr %dclk, align 4
  %arrayidx6.i = getelementptr %struct.lmk_dclk, ptr %136, i32 %div.i
  %137 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call.i, ptr %arrayidx6.i, align 4
  %138 = load ptr, ptr %dclk, align 4
  %init10.i = getelementptr %struct.lmk_dclk, ptr %138, i32 %div.i, i32 1, i32 2
  %139 = ptrtoint ptr %init10.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %init.i, ptr %init10.i, align 4
  %140 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call.i, align 4
  %142 = load ptr, ptr %dclk, align 4
  %hw13.i = getelementptr %struct.lmk_dclk, ptr %142, i32 %div.i, i32 1
  %call14.i = call i32 @devm_clk_hw_register(ptr noundef %141, ptr noundef %hw13.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i334 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i334, label %if.then.i.if.end18.i_crit_edge, label %lmk04832_register_clkout.exit.thread

if.then.i.if.end18.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

lmk04832_register_clkout.exit.thread:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %dclk_name.i) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name.i) #9
  br label %do.end185

if.else.i:                                        ; preds = %for.body179
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add i32 %i.0358, -1
  %call17.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %dclk_name.i, ptr noundef nonnull @.str.69, i32 noundef %sub.i, i32 noundef %i.0358) #9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then.i.if.end18.i_crit_edge
  %143 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %144, i32 0, i32 27
  %145 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %of_node.i, align 8
  %call.i.i335 = call i32 @of_property_read_string_helper(ptr noundef %146, ptr noundef nonnull @.str.70, ptr noundef nonnull %init.i, i32 noundef 1, i32 noundef %i.0358) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i335)
  %tobool22.not.i = icmp sgt i32 %call.i.i335, -1
  br i1 %tobool22.not.i, label %if.end18.i.lmk04832_register_clkout.exit_crit_edge, label %if.then23.i

if.end18.i.lmk04832_register_clkout.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lmk04832_register_clkout.exit

if.then23.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.71, i32 noundef %i.0358) #9
  %147 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %name.i, ptr %init.i, align 4
  br label %lmk04832_register_clkout.exit

lmk04832_register_clkout.exit:                    ; preds = %if.then23.i, %if.end18.i.lmk04832_register_clkout.exit_crit_edge
  %148 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %dclk_name.i, ptr %parent_names.i, align 4
  %call31.i = call ptr @clk_hw_get_name(ptr noundef %sclk.i) #9
  %149 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call31.i, ptr %122, align 4
  %150 = ptrtoint ptr %parent_names34.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %parent_names.i, ptr %parent_names34.i, align 4
  %151 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @lmk04832_clkout_ops, ptr %ops.i, align 4
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 132, ptr %flags.i, align 4
  %153 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 2, ptr %num_parents.i, align 4
  %conv38.i = trunc i32 %i.0358 to i8
  %154 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %clkout, align 4
  %id40.i = getelementptr %struct.lmk_clkout, ptr %155, i32 %i.0358, i32 4
  %156 = ptrtoint ptr %id40.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv38.i, ptr %id40.i, align 4
  %157 = load ptr, ptr %clkout, align 4
  %arrayidx42.i = getelementptr %struct.lmk_clkout, ptr %157, i32 %i.0358
  %158 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i, ptr %arrayidx42.i, align 4
  %159 = load ptr, ptr %clkout, align 4
  %init47.i = getelementptr %struct.lmk_clkout, ptr %159, i32 %i.0358, i32 1, i32 2
  %160 = ptrtoint ptr %init47.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %init.i, ptr %init47.i, align 4
  %161 = load ptr, ptr %clkout, align 4
  %hw50.i = getelementptr %struct.lmk_clkout, ptr %161, i32 %i.0358, i32 1
  %162 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %clk_data, align 4
  %arrayidx51.i = getelementptr %struct.clk_hw_onecell_data, ptr %163, i32 0, i32 1, i32 %i.0358
  %164 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %hw50.i, ptr %arrayidx51.i, align 4
  %165 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap, align 4
  %add53.i = add nsw i32 %rem.i.decomposed, 259
  %167 = shl i32 %i.0358, 2
  %mul.i = and i32 %167, -8
  %add54.i = add i32 %add53.i, %mul.i
  %168 = load ptr, ptr %clkout, align 4
  %sysref.i = getelementptr %struct.lmk_clkout, ptr %168, i32 %i.0358, i32 2
  %169 = ptrtoint ptr %sysref.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %sysref.i, align 4, !range !184
  %171 = shl nuw nsw i8 %170, 5
  %shl.i = zext i8 %171 to i32
  %call.i139.i = call i32 @regmap_update_bits_base(ptr noundef %166, i32 noundef %add54.i, i32 noundef 32, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %172 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %call.i, align 4
  %174 = ptrtoint ptr %clkout to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %clkout, align 4
  %hw88.i = getelementptr %struct.lmk_clkout, ptr %175, i32 %i.0358, i32 1
  %call89.i = call i32 @devm_clk_hw_register(ptr noundef %173, ptr noundef %hw88.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names.i) #9
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %dclk_name.i) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool181.not = icmp eq i32 %call89.i, 0
  br i1 %tobool181.not, label %for.inc188, label %lmk04832_register_clkout.exit.do.end185_crit_edge

lmk04832_register_clkout.exit.do.end185_crit_edge: ; preds = %lmk04832_register_clkout.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end185

do.end185:                                        ; preds = %lmk04832_register_clkout.exit.do.end185_crit_edge, %lmk04832_register_clkout.exit.thread
  %retval.0.i336349 = phi i32 [ %call14.i, %lmk04832_register_clkout.exit.thread ], [ %call89.i, %lmk04832_register_clkout.exit.do.end185_crit_edge ]
  %176 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.44, i32 noundef %i.0358) #12
  br label %err_disable_vco

for.inc188:                                       ; preds = %lmk04832_register_clkout.exit
  %inc = add nuw i32 %i.0358, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end189, label %for.inc188.for.body179_crit_edge

for.inc188.for.body179_crit_edge:                 ; preds = %for.inc188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body179

for.end189:                                       ; preds = %for.inc188
  %178 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %clk_data, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %17, ptr %179, align 4
  %181 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %call.i, align 4
  %of_node193 = getelementptr inbounds %struct.device, ptr %182, i32 0, i32 27
  %183 = ptrtoint ptr %of_node193 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %of_node193, align 8
  %185 = load ptr, ptr %clk_data, align 4
  %call195 = call i32 @of_clk_add_hw_provider(ptr noundef %184, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %185) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end202, label %do.end200

do.end200:                                        ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #11
  %186 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %187, ptr noundef nonnull @.str.47, i32 noundef %call195) #12
  br label %err_disable_vco

if.end202:                                        ; preds = %for.end189
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %188 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup206

err_disable_vco:                                  ; preds = %do.end200, %do.end185, %do.end172, %do.end163
  %ret.0 = phi i32 [ %call158, %do.end163 ], [ %call167, %do.end172 ], [ %retval.0.i336349, %do.end185 ], [ %call195, %do.end200 ]
  %clk204 = getelementptr inbounds %struct.lmk04832, ptr %call.i, i32 0, i32 7, i32 1
  %189 = ptrtoint ptr %clk204 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %clk204, align 4
  call void @clk_disable(ptr noundef %190) #9
  call void @clk_unprepare(ptr noundef %190) #9
  br label %err_disable_oscin

err_disable_oscin:                                ; preds = %err_disable_vco, %do.end146, %do.end130, %if.then106.err_disable_oscin_crit_edge, %do.end96, %cleanup, %if.end32.err_disable_oscin_crit_edge, %devm_kcalloc.exit320.err_disable_oscin_crit_edge, %devm_kcalloc.exit320.thread, %devm_kcalloc.exit.err_disable_oscin_crit_edge, %devm_kcalloc.exit.thread
  %ret.1 = phi i32 [ %call.i.i, %cleanup ], [ %89, %do.end96 ], [ -22, %do.end130 ], [ %call141, %do.end146 ], [ %ret.0, %err_disable_vco ], [ %call109, %if.then106.err_disable_oscin_crit_edge ], [ -12, %devm_kcalloc.exit.err_disable_oscin_crit_edge ], [ -12, %devm_kcalloc.exit320.err_disable_oscin_crit_edge ], [ -12, %if.end32.err_disable_oscin_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit320.thread ]
  %191 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %oscin, align 4
  call void @clk_disable(ptr noundef %192) #9
  call void @clk_unprepare(ptr noundef %192) #9
  br label %cleanup206

cleanup206:                                       ; preds = %err_disable_oscin, %if.end202, %if.then3.i, %if.end12.cleanup206_crit_edge, %do.end, %entry.cleanup206_crit_edge
  %retval.0 = phi i32 [ %14, %do.end ], [ %ret.1, %err_disable_oscin ], [ 0, %if.end202 ], [ -12, %entry.cleanup206_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i316, %if.end12.cleanup206_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rdbk_pin) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %oscin = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oscin, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmk04832_set_spi_rdbk(ptr nocapture noundef readonly %lmk, i32 noundef %rdbk_pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lmk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmk, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.49) #12
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %rdbk_pin)
  %4 = icmp ult i32 %rdbk_pin, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.offset = add i32 %rdbk_pin, 328
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef %switch.offset, i32 noundef 51) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %switch.lookup ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmk04832_register_vco(ptr noundef %lmk) unnamed_addr #2 align 64 {
entry:
  %parent_names = alloca [1 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_names) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %2 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.51, ptr %init, align 4
  %oscin = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 6
  %3 = ptrtoint ptr %oscin to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oscin, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %4) #9
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %parent_names, align 4
  %parent_names1 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_names, ptr %parent_names1, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @lmk04832_vco_ops, ptr %ops, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %num_parents, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 312, i32 noundef 96, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 319, i32 noundef 160, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool49.not = icmp eq i32 %call.i114, 0
  br i1 %tobool49.not, label %if.end51, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end51:                                         ; preds = %if.end
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i115 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 354, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool54.not = icmp eq i32 %call.i115, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %if.end51
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call91 = call i32 @regmap_write(ptr noundef %16, i32 noundef 366, i32 noundef 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end94:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %vco = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 7
  %init95 = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %init95 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %init, ptr %init95, align 4
  %18 = ptrtoint ptr %lmk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmk, align 4
  %call97 = call i32 @devm_clk_hw_register(ptr noundef %19, ptr noundef %vco) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.end56.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call97, %if.end94 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i114, %if.end.cleanup_crit_edge ], [ %call.i115, %if.end51.cleanup_crit_edge ], [ %call91, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_names) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmk04832_register_sclk(ptr noundef %lmk) unnamed_addr #2 align 64 {
entry:
  %parent_names = alloca [1 x ptr], align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_names) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #9
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.58, ptr %init, align 4
  %vco = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 7
  %call = tail call ptr @clk_hw_get_name(ptr noundef %vco) #9
  %3 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %parent_names, align 4
  %parent_names1 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %4 = ptrtoint ptr %parent_names1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parent_names, ptr %parent_names1, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lmk04832_sclk_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 1
  %sysref_mux = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 3
  %8 = ptrtoint ptr %sysref_mux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysref_mux, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %and16 = and i32 %9, 3
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 313, i32 noundef 3, i32 noundef %and16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %entry
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %sysref_ddly = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 5
  %14 = ptrtoint ptr %sysref_ddly to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sysref_ddly, align 4
  %and38 = and i32 %15, 255
  %call39 = call i32 @regmap_write(ptr noundef %13, i32 noundef 317, i32 noundef %and38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %sysref_ddly to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sysref_ddly, align 4
  %and61 = lshr i32 %19, 8
  %shr62 = and i32 %and61, 31
  %call63 = call i32 @regmap_write(ptr noundef %17, i32 noundef 316, i32 noundef %shr62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %if.end42
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %sysref_pulse_cnt = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 4
  %22 = ptrtoint ptr %sysref_pulse_cnt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sysref_pulse_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  %24 = call i32 @llvm.ctlz.i32(i32 %23, i1 true) #9, !range !185
  %sub.i.op.i = xor i32 %24, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  %call78 = call i32 @regmap_write(ptr noundef %21, i32 noundef 318, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end81:                                         ; preds = %if.end66
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i231 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 320, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231)
  %tobool116.not = icmp eq i32 %call.i231, 0
  br i1 %tobool116.not, label %do.end174, label %if.end81.cleanup_crit_edge

if.end81.cleanup_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end174:                                        ; preds = %if.end81
  %sync_mode = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 2
  %27 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync_mode, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %and178 = and i32 %28, 3
  %or179 = or i32 %and178, 16
  %call180 = call i32 @regmap_write(ptr noundef %30, i32 noundef 323, i32 noundef %or179) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %do.end174.cleanup_crit_edge

do.end174.cleanup_crit_edge:                      ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end183:                                        ; preds = %do.end174
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call185 = call i32 @regmap_write(ptr noundef %32, i32 noundef 324, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %tobool186.not = icmp eq i32 %call185, 0
  br i1 %tobool186.not, label %if.end188, label %if.end183.cleanup_crit_edge

if.end183.cleanup_crit_edge:                      ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end188:                                        ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #11
  %sclk = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 8
  %init189 = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 8, i32 2
  %33 = ptrtoint ptr %init189 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %init, ptr %init189, align 4
  %34 = ptrtoint ptr %lmk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmk, align 4
  %call191 = call i32 @devm_clk_hw_register(ptr noundef %35, ptr noundef %sclk) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %if.end183.cleanup_crit_edge, %do.end174.cleanup_crit_edge, %if.end81.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call191, %if.end188 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call39, %if.end20.cleanup_crit_edge ], [ %call63, %if.end42.cleanup_crit_edge ], [ %call78, %if.end66.cleanup_crit_edge ], [ %call.i231, %if.end81.cleanup_crit_edge ], [ %call180, %do.end174.cleanup_crit_edge ], [ %call185, %if.end183.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_names) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lmk04832_regmap_wr_regs(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %reg, label %sw.caserange [
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge7
    i32 12, label %entry.sw.bb2_crit_edge
    i32 13, label %entry.sw.bb2_crit_edge8
    i32 3, label %entry.sw.bb2_crit_edge9
    i32 4, label %entry.sw.bb2_crit_edge10
    i32 5, label %entry.sw.bb2_crit_edge11
    i32 6, label %entry.sw.bb2_crit_edge12
    i32 366, label %entry.return_crit_edge13
    i32 371, label %entry.return_crit_edge14
    i32 375, label %entry.return_crit_edge15
    i32 392, label %entry.return_crit_edge16
    i32 1365, label %entry.return_crit_edge17
    i32 386, label %entry.return_crit_edge18
    i32 387, label %entry.return_crit_edge19
    i32 388, label %entry.return_crit_edge20
    i32 389, label %entry.return_crit_edge21
  ]

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge8, %entry.sw.bb2_crit_edge9, %entry.sw.bb2_crit_edge10, %entry.sw.bb2_crit_edge11, %entry.sw.bb2_crit_edge12
  br label %return

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %1)
  %inbounds = icmp ult i32 %1, 108
  br label %return

return:                                           ; preds = %sw.caserange, %sw.bb2, %entry.return_crit_edge, %entry.return_crit_edge7, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21
  %retval.0 = phi i1 [ false, %sw.bb2 ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ %inbounds, %sw.caserange ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lmk04832_regmap_rd_regs(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %reg, label %sw.caserange [
    i32 12, label %entry.return_crit_edge
    i32 13, label %entry.return_crit_edge6
    i32 366, label %entry.return_crit_edge7
    i32 371, label %entry.return_crit_edge8
    i32 375, label %entry.return_crit_edge9
    i32 392, label %entry.return_crit_edge10
    i32 1365, label %entry.return_crit_edge11
    i32 386, label %entry.return_crit_edge12
    i32 387, label %entry.return_crit_edge13
    i32 388, label %entry.return_crit_edge14
    i32 389, label %entry.return_crit_edge15
    i32 0, label %entry.return_crit_edge16
    i32 1, label %entry.return_crit_edge17
    i32 2, label %entry.return_crit_edge18
    i32 3, label %entry.return_crit_edge19
    i32 4, label %entry.return_crit_edge20
    i32 5, label %entry.return_crit_edge21
    i32 6, label %entry.return_crit_edge22
  ]

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = add i32 %reg, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %1)
  %inbounds = icmp ult i32 %1, 108
  br label %return

return:                                           ; preds = %sw.caserange, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ %inbounds, %sw.caserange ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_vco_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 371, i32 noundef 96, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 320, i32 noundef 112, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmk04832_vco_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 371, i32 noundef 96, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 320, i32 noundef 96, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_vco_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %tmp1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp1) #9
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp1, align 4, !annotation !182
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 320, ptr noundef nonnull %tmp1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp1, align 4
  %and = lshr i32 %4, 4
  %and31 = lshr i32 %4, 5
  %shr56 = or i32 %and, %and31
  %and49 = lshr i32 %4, 6
  %or57 = or i32 %shr56, %and49
  %or51 = and i32 %or57, 1
  %5 = xor i32 %or51, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %do.end13 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_vco_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #2 align 64 {
entry:
  %pll2_misc = alloca i32, align 4
  %tmp1 = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll2_misc) #9
  %0 = ptrtoint ptr %pll2_misc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pll2_misc, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp1) #9
  %1 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp1, align 1, !annotation !182
  %2 = getelementptr inbounds [3 x i8], ptr %tmp1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !182
  %4 = getelementptr inbounds [3 x i8], ptr %tmp1, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !182
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef 354, ptr noundef nonnull %pll2_misc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %entry
  %8 = ptrtoint ptr %pll2_misc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pll2_misc, align 4
  %and = lshr i32 %9, 5
  %shr = and i32 %and, 7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call16 = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 358, ptr noundef nonnull %tmp1, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.end39, label %do.end13.cleanup_crit_edge

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end39:                                         ; preds = %do.end13
  %12 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp1, align 1
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %2, align 1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call104 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 352, ptr noundef nonnull %tmp1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %do.end131, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end131:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  %conv70 = zext i8 %15 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %conv42 = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv42, 16
  %and43 = and i32 %shl, 196608
  %or = or i32 %shl71, %and43
  %conv99 = zext i8 %17 to i32
  %or102 = or i32 %or, %conv99
  %20 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tmp1, align 1
  %conv134 = zext i8 %21 to i32
  %shl135 = shl nuw nsw i32 %conv134, 8
  %and136 = and i32 %shl135, 3840
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %2, align 1
  %conv163 = zext i8 %23 to i32
  %or166 = or i32 %and136, %conv163
  %24 = ptrtoint ptr %pll2_misc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pll2_misc, align 4
  %and183 = and i32 %25, 1
  %shl185 = shl i32 %prate, %and183
  %arrayidx186 = getelementptr [8 x i32], ptr @__const.lmk04832_vco_recalc_rate.pll2_p, i32 0, i32 %shr
  %26 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx186, align 4
  %mul = mul i32 %27, %or102
  %mul187 = mul i32 %mul, %shl185
  %div = udiv i32 %mul187, %or166
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %do.end39.cleanup_crit_edge, %do.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div, %do.end131 ], [ %call, %entry.cleanup_crit_edge ], [ %call16, %do.end13.cleanup_crit_edge ], [ %call104, %do.end39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll2_misc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_vco_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %div.i = udiv i32 %rate, 1000000
  %call1.i = tail call ptr @spi_get_device_id(ptr noundef %1) #9
  %driver_data.i = getelementptr inbounds %struct.spi_device_id, ptr %call1.i, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data.i, align 4
  %vco0_range.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 3
  %4 = ptrtoint ptr %vco0_range.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vco0_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx4.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %7)
  %cmp5.not.i = icmp ugt i32 %div.i, %7
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %vco1_range.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 4
  %8 = ptrtoint ptr %vco1_range.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vco1_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %9)
  %cmp7.not.i = icmp ult i32 %div.i, %9
  br i1 %cmp7.not.i, label %if.end.i.lmk04832_check_vco_ranges.exit_crit_edge, label %land.lhs.true8.i

if.end.i.lmk04832_check_vco_ranges.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lmk04832_check_vco_ranges.exit

land.lhs.true8.i:                                 ; preds = %if.end.i
  %arrayidx10.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %11)
  %cmp11.not.i = icmp ugt i32 %div.i, %11
  br i1 %cmp11.not.i, label %land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge, label %land.lhs.true8.i.if.end_crit_edge

land.lhs.true8.i.if.end_crit_edge:                ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lmk04832_check_vco_ranges.exit

lmk04832_check_vco_ranges.exit:                   ; preds = %land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge, %if.end.i.lmk04832_check_vco_ranges.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %rate) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %14 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prate, align 4
  %call.i = tail call i32 @gcd(i32 noundef %rate, i32 noundef %15) #13
  %div147.i = lshr i32 %call.i, 1
  %add.i = add i32 %div147.i, %rate
  %div2.i = udiv i32 %add.i, %call.i
  %add7.i = add i32 %div147.i, %15
  %div8.i = udiv i32 %add7.i, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div2.i)
  %cmp.i = icmp ugt i32 %div2.i, 4
  %shr.i = lshr i32 %div2.i, 2
  %shl.i = shl i32 %div8.i, 2
  %pll2_r.0.i = select i1 %cmp.i, i32 %div8.i, i32 %shl.i
  %pll2_n.0.i = select i1 %cmp.i, i32 %shr.i, i32 %div2.i
  %16 = add nsw i32 %pll2_n.0.i, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262143, i32 %16)
  %17 = icmp ult i32 %16, -262143
  %18 = add i32 %pll2_r.0.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %18)
  %19 = icmp ult i32 %18, -4095
  %or.cond.i = select i1 %17, i1 true, i1 %19
  br i1 %or.cond.i, label %if.end.do.end_crit_edge, label %lmk04832_calc_pll2_params.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lmk04832_calc_pll2_params.exit:                   ; preds = %if.end
  %mul19.i = shl i32 %15, 2
  %mul20.i = mul i32 %mul19.i, %pll2_n.0.i
  %div2348.i = lshr i32 %pll2_r.0.i, 1
  %add24.i = add i32 %div2348.i, %mul20.i
  %div25.i = udiv i32 %add24.i, %pll2_r.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div25.i)
  %cmp2 = icmp slt i32 %div25.i, 0
  br i1 %cmp2, label %lmk04832_calc_pll2_params.exit.do.end_crit_edge, label %if.end4

lmk04832_calc_pll2_params.exit.do.end_crit_edge:  ; preds = %lmk04832_calc_pll2_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lmk04832_calc_pll2_params.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i2025 = phi i32 [ %div25.i, %lmk04832_calc_pll2_params.exit.do.end_crit_edge ], [ -22, %if.end.do.end_crit_edge ]
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end4:                                          ; preds = %lmk04832_calc_pll2_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %div25.i, i32 %rate)
  %cmp5.not = icmp eq i32 %div25.i, %rate
  %call1. = select i1 %cmp5.not, i32 %div25.i, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %lmk04832_check_vco_ranges.exit
  %retval.0 = phi i32 [ %retval.0.i2025, %do.end ], [ -34, %lmk04832_check_vco_ranges.exit ], [ %call1., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_vco_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %div.i = udiv i32 %rate, 1000000
  %call1.i = tail call ptr @spi_get_device_id(ptr noundef %1) #9
  %driver_data.i = getelementptr inbounds %struct.spi_device_id, ptr %call1.i, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data.i, align 4
  %vco0_range.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 3
  %4 = ptrtoint ptr %vco0_range.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vco0_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %5)
  %cmp.not.i = icmp ult i32 %div.i, %5
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %arrayidx4.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %7)
  %cmp5.not.i = icmp ugt i32 %div.i, %7
  br i1 %cmp5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.do.end14_crit_edge

land.lhs.true.i.do.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %vco1_range.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 4
  %8 = ptrtoint ptr %vco1_range.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vco1_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %9)
  %cmp7.not.i = icmp ult i32 %div.i, %9
  br i1 %cmp7.not.i, label %if.end.i.lmk04832_check_vco_ranges.exit_crit_edge, label %land.lhs.true8.i

if.end.i.lmk04832_check_vco_ranges.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lmk04832_check_vco_ranges.exit

land.lhs.true8.i:                                 ; preds = %if.end.i
  %arrayidx10.i = getelementptr [1 x %struct.lmk04832_device_info], ptr @lmk04832_device_info, i32 0, i32 %3, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %11)
  %cmp11.not.i = icmp ugt i32 %div.i, %11
  br i1 %cmp11.not.i, label %land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge, label %land.lhs.true8.i.do.end14_crit_edge

land.lhs.true8.i.do.end14_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end14

land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lmk04832_check_vco_ranges.exit

lmk04832_check_vco_ranges.exit:                   ; preds = %land.lhs.true8.i.lmk04832_check_vco_ranges.exit_crit_edge, %if.end.i.lmk04832_check_vco_ranges.exit_crit_edge
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.54, i32 noundef %rate) #12
  br label %cleanup

do.end14:                                         ; preds = %land.lhs.true8.i.do.end14_crit_edge, %land.lhs.true.i.do.end14_crit_edge
  %retval.0.i.ph = phi i32 [ 32, %land.lhs.true8.i.do.end14_crit_edge ], [ 0, %land.lhs.true.i.do.end14_crit_edge ]
  %regmap = getelementptr i8, ptr %hw, i32 -24
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 312, i32 noundef 96, i32 noundef %retval.0.i.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %do.end14
  %call.i201 = tail call i32 @gcd(i32 noundef %rate, i32 noundef %prate) #13
  %div147.i = lshr i32 %call.i201, 1
  %add.i = add i32 %div147.i, %rate
  %div2.i = udiv i32 %add.i, %call.i201
  %add7.i = add i32 %div147.i, %prate
  %div8.i = udiv i32 %add7.i, %call.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div2.i)
  %cmp.i = icmp ugt i32 %div2.i, 4
  %shr.i = lshr i32 %div2.i, 2
  %shl.i = shl i32 %div8.i, 2
  %pll2_r.0.i = select i1 %cmp.i, i32 %div8.i, i32 %shl.i
  %pll2_n.0.i = select i1 %cmp.i, i32 %shr.i, i32 %div2.i
  %16 = add nsw i32 %pll2_n.0.i, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262143, i32 %16)
  %17 = icmp ult i32 %16, -262143
  %18 = add i32 %pll2_r.0.i, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4095, i32 %18)
  %19 = icmp ult i32 %18, -4095
  %or.cond.i = select i1 %17, i1 true, i1 %19
  br i1 %or.cond.i, label %if.end20.do.end26_crit_edge, label %lmk04832_calc_pll2_params.exit

if.end20.do.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

lmk04832_calc_pll2_params.exit:                   ; preds = %if.end20
  %mul19.i = shl i32 %prate, 2
  %mul20.i = mul i32 %mul19.i, %pll2_n.0.i
  %div2348.i = lshr i32 %pll2_r.0.i, 1
  %add24.i = add i32 %div2348.i, %mul20.i
  %div25.i = udiv i32 %add24.i, %pll2_r.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div25.i)
  %cmp22 = icmp slt i32 %div25.i, 0
  br i1 %cmp22, label %lmk04832_calc_pll2_params.exit.do.end26_crit_edge, label %if.end27

lmk04832_calc_pll2_params.exit.do.end26_crit_edge: ; preds = %lmk04832_calc_pll2_params.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

do.end26:                                         ; preds = %lmk04832_calc_pll2_params.exit.do.end26_crit_edge, %if.end20.do.end26_crit_edge
  %retval.0.i202217 = phi i32 [ %div25.i, %lmk04832_calc_pll2_params.exit.do.end26_crit_edge ], [ -22, %if.end20.do.end26_crit_edge ]
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.56) #12
  br label %cleanup

if.end27:                                         ; preds = %lmk04832_calc_pll2_params.exit
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %and45 = lshr i32 %pll2_r.0.i, 8
  %shr = and i32 %and45, 7
  %call.i203 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 352, i32 noundef 15, i32 noundef %shr, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool47.not = icmp eq i32 %call.i203, 0
  br i1 %tobool47.not, label %if.end49, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end27
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %and67 = and i32 %pll2_r.0.i, 255
  %call69 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 353, i32 noundef %and67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %do.end94, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end94:                                         ; preds = %if.end49
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i204 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 354, i32 noundef 224, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool99.not = icmp eq i32 %call.i204, 0
  br i1 %tobool99.not, label %if.end101, label %do.end94.cleanup_crit_edge

do.end94.cleanup_crit_edge:                       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end101:                                        ; preds = %do.end94
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %and119 = lshr i32 %pll2_n.0.i, 16
  %call121 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 358, i32 noundef %and119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end124, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end124:                                        ; preds = %if.end101
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %and142 = lshr i32 %pll2_n.0.i, 8
  %shr143 = and i32 %and142, 255
  %call144 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 359, i32 noundef %shr143) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end147:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %and165 = and i32 %pll2_n.0.i, 255
  %call167 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 360, i32 noundef %and165) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end147, %if.end124.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %do.end94.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %do.end26, %do.end14.cleanup_crit_edge, %lmk04832_check_vco_ranges.exit
  %retval.0 = phi i32 [ %retval.0.i202217, %do.end26 ], [ %call167, %if.end147 ], [ -34, %lmk04832_check_vco_ranges.exit ], [ %call.i, %do.end14.cleanup_crit_edge ], [ %call.i203, %if.end27.cleanup_crit_edge ], [ %call69, %if.end49.cleanup_crit_edge ], [ %call.i204, %do.end94.cleanup_crit_edge ], [ %call121, %if.end101.cleanup_crit_edge ], [ %call144, %if.end124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_sclk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %hw, i32 -36
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 320, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmk04832_sclk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %hw, i32 -36
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 320, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_sclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %tmp1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp1) #9
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp1, align 4, !annotation !182
  %regmap = getelementptr i8, ptr %hw, i32 -36
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 320, ptr noundef nonnull %tmp1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp1, align 4
  %and = lshr i32 %4, 2
  %shr = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shr, %do.end13 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_sclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #2 align 64 {
entry:
  %tmp1 = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp1) #9
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp1, align 1, !annotation !182
  %1 = getelementptr inbounds [2 x i8], ptr %tmp1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !182
  %regmap = getelementptr i8, ptr %hw, i32 -36
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef 314, ptr noundef nonnull %tmp1, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end13:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %7 = and i8 %6, 31
  %and = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %and, 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  %conv16 = zext i8 %9 to i32
  %or = or i32 %shl, %conv16
  %div24 = lshr i32 %or, 1
  %add = add i32 %div24, %prate
  %div18 = udiv i32 %add, %or
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div18, %do.end13 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp1) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_sclk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %div22 = lshr i32 %rate, 1
  %add = add i32 %1, %div22
  %div2 = udiv i32 %add, %rate
  %2 = add i32 %div2, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8185, i32 %2)
  %3 = icmp ult i32 %2, -8185
  br i1 %3, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -40
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.59) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div623 = lshr i32 %div2, 1
  %add7 = add i32 %div623, %1
  %div8 = udiv i32 %add7, %div2
  call void @__sanitizer_cov_trace_cmp4(i32 %div8, i32 %rate)
  %cmp10.not = icmp eq i32 %div8, %rate
  %div8. = select i1 %cmp10.not, i32 %div8, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %div8., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_sclk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -40
  %div68 = lshr i32 %rate, 1
  %add = add i32 %div68, %prate
  %div2 = udiv i32 %add, %rate
  %0 = add i32 %div2, -8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8185, i32 %0)
  %1 = icmp ult i32 %0, -8185
  br i1 %1, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %regmap = getelementptr i8, ptr %hw, i32 -36
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %and = lshr i32 %div2, 8
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 314, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end21, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %and39 = and i32 %div2, 255
  %call41 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 315, i32 noundef %and39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44:                                         ; preds = %if.end21
  %call45 = tail call fastcc i32 @lmk04832_sclk_sync_sequence(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.end44.cleanup.sink.split_crit_edge

if.end44.cleanup.sink.split_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end44.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.63.sink = phi ptr [ @.str.59, %entry.cleanup.sink.split_crit_edge ], [ @.str.63, %if.end44.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call45, %if.end44.cleanup.sink.split_crit_edge ]
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.63.sink) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ %call41, %if.end21.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmk04832_sclk_sync_sequence(ptr nocapture noundef readonly %lmk) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 320, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %clk_data = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 13
  %2 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp282.not = icmp eq i32 %5, 0
  br i1 %cmp282.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %add = add i32 %i.0283, 2
  %6 = ptrtoint ptr %clk_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %cmp = icmp ult i32 %add, %9
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0283 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call13 = tail call fastcc i32 @lmk04832_clkout_set_ddly(ptr noundef %lmk, i32 noundef %i.0283)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i274 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 313, i32 noundef 67, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i274)
  %tobool51.not = icmp eq i32 %call.i274, 0
  br i1 %tobool51.not, label %if.end53, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %for.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i275 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 323, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool72.not = icmp eq i32 %call.i275, 0
  br i1 %tobool72.not, label %if.end74, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end53
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call76 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 324, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end74
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i276 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 323, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %tobool98.not = icmp eq i32 %call.i276, 0
  br i1 %tobool98.not, label %if.end100, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end100:                                        ; preds = %if.end79
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i277 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 323, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool119.not = icmp eq i32 %call.i277, 0
  br i1 %tobool119.not, label %if.end121, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end121:                                        ; preds = %if.end100
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i278 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 323, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %tobool140.not = icmp eq i32 %call.i278, 0
  br i1 %tobool140.not, label %if.end142, label %if.end121.cleanup_crit_edge

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end142:                                        ; preds = %if.end121
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i279 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 323, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %tobool161.not = icmp eq i32 %call.i279, 0
  br i1 %tobool161.not, label %if.end163, label %if.end142.cleanup_crit_edge

if.end142.cleanup_crit_edge:                      ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end163:                                        ; preds = %if.end142
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call165 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 324, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %do.end188, label %if.end163.cleanup_crit_edge

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end188:                                        ; preds = %if.end163
  %sysref_mux = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 3
  %26 = ptrtoint ptr %sysref_mux to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sysref_mux, align 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %and191 = and i32 %27, 3
  %call.i280 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 313, i32 noundef 3, i32 noundef %and191, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i280)
  %tobool193.not = icmp eq i32 %call.i280, 0
  br i1 %tobool193.not, label %do.end218, label %do.end188.cleanup_crit_edge

do.end188.cleanup_crit_edge:                      ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end218:                                        ; preds = %do.end188
  call void @__sanitizer_cov_trace_pc() #11
  %sync_mode = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 2
  %30 = ptrtoint ptr %sync_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sync_mode, align 4
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %and222 = and i32 %31, 3
  %call.i281 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 323, i32 noundef 3, i32 noundef %and222, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end218, %do.end188.cleanup_crit_edge, %if.end163.cleanup_crit_edge, %if.end142.cleanup_crit_edge, %if.end121.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i274, %for.end.cleanup_crit_edge ], [ %call.i275, %if.end53.cleanup_crit_edge ], [ %call76, %if.end74.cleanup_crit_edge ], [ %call.i276, %if.end79.cleanup_crit_edge ], [ %call.i277, %if.end100.cleanup_crit_edge ], [ %call.i278, %if.end121.cleanup_crit_edge ], [ %call.i279, %if.end142.cleanup_crit_edge ], [ %call165, %if.end163.cleanup_crit_edge ], [ %call.i280, %do.end188.cleanup_crit_edge ], [ %call.i281, %do.end218 ], [ %call13, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lmk04832_clkout_set_ddly(ptr nocapture noundef readonly %lmk, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %lsb = alloca i32, align 4
  %msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb) #9
  %0 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %lsb, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #9
  %1 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %msb, align 4, !annotation !182
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %lmk, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %4 = shl i32 %id, 2
  %mul = and i32 %4, -8
  %add = add i32 %mul, 258
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_read(ptr noundef %6, i32 noundef 317, ptr noundef nonnull %lsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call19 = call i32 @regmap_read(ptr noundef %8, i32 noundef 316, ptr noundef nonnull %msb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end37, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msb, align 4
  %and = shl i32 %10, 8
  %shl = and i32 %and, 7936
  %11 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lsb, align 4
  %or = or i32 %shl, %12
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %add43 = add i32 %mul, 256
  %call44 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add43, ptr noundef nonnull %lsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %do.end37.cleanup_crit_edge

do.end37.cleanup_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %do.end37
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call52 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add, ptr noundef nonnull %msb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %do.end70, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end70:                                         ; preds = %if.end47
  %17 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msb, align 4
  %19 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lsb, align 4
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %add79 = add i32 %mul, 259
  %call80 = call i32 @regmap_read(ptr noundef %22, i32 noundef %add79, ptr noundef nonnull %lsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end98, label %do.end70.cleanup_crit_edge

do.end70.cleanup_crit_edge:                       ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end98:                                         ; preds = %do.end70
  %and72 = shl i32 %18, 8
  %shl74 = and i32 %and72, 768
  %or75 = or i32 %shl74, %20
  %23 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lsb, align 4
  %and100 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or75)
  %cmp = icmp ult i32 %or75, 6
  %spec.select = select i1 %cmp, i32 %or75, i32 7
  %arrayidx = getelementptr [8 x i32], ptr @__const.lmk04832_clkout_set_ddly.dclk_div_adj, i32 0, i32 %spec.select
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %.neg259 = add i32 %or, 1
  %27 = add i32 %and100, %26
  %sub103 = sub i32 %.neg259, %27
  %add104 = add i32 %sub103, 10
  %28 = add i32 %sub103, -16374
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16377, i32 %28)
  %29 = icmp ult i32 %28, -16377
  br i1 %29, label %do.end110, label %if.end111

do.end110:                                        ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %lmk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmk, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.65, i32 noundef %add104) #12
  br label %cleanup

if.end111:                                        ; preds = %do.end98
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %add115 = add i32 %mul, 262
  %call134 = call i32 @regmap_write(ptr noundef %33, i32 noundef %add115, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end137, label %if.end111.cleanup_crit_edge

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end137:                                        ; preds = %if.end111
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %add141 = add i32 %mul, 257
  %and158 = and i32 %add104, 255
  %call160 = call i32 @regmap_write(ptr noundef %35, i32 noundef %add141, i32 noundef %and158) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %do.body164, label %if.end137.cleanup_crit_edge

if.end137.cleanup_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body164:                                       ; preds = %if.end137
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lmk04832_clkout_set_ddly.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lmk04832_clkout_set_ddly, %if.then170)) #9
          to label %do.end180 [label %if.then170], !srcloc !186

if.then170:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %lmk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmk, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lmk04832_clkout_set_ddly.__UNIQUE_ID_ddebug370, ptr noundef %37, ptr noundef nonnull @.str.68, i32 noundef %id, i32 noundef %or, i32 noundef %add104, i32 noundef %26, i32 noundef %and100, i32 noundef 10) #9
  br label %do.end180

do.end180:                                        ; preds = %if.then170, %do.body164
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %and201 = lshr i32 %add104, 8
  %shr202 = and i32 %and201, 3
  %call.i257 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %add, i32 noundef 12, i32 noundef %shr202, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end180, %if.end137.cleanup_crit_edge, %if.end111.cleanup_crit_edge, %do.end110, %do.end70.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %do.end37.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end110 ], [ %call.i257, %do.end180 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ %call19, %if.end17.cleanup_crit_edge ], [ %call44, %do.end37.cleanup_crit_edge ], [ %call52, %if.end47.cleanup_crit_edge ], [ %call80, %do.end70.cleanup_crit_edge ], [ %call134, %if.end111.cleanup_crit_edge ], [ %call160, %if.end137.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_dclk_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %7, 3
  %add = add nuw nsw i32 %mul, 259
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmk04832_dclk_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %6 = lshr i8 %5, 1
  %7 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %7, 3
  %add = add nuw nsw i32 %mul, 259
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 16, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_dclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #9
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !182
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %7 = lshr i8 %6, 1
  %8 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %8, 3
  %add = add nuw nsw i32 %mul, 259
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %tmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end14, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp2, align 4
  %11 = lshr i32 %10, 4
  %.lobit = and i32 %11, 1
  %12 = xor i32 %.lobit, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end14 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_dclk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #2 align 64 {
entry:
  %lsb = alloca i32, align 4
  %msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb) #9
  %2 = ptrtoint ptr %lsb to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %lsb, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msb) #9
  %3 = ptrtoint ptr %msb to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %msb, align 4, !annotation !182
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %id, align 4
  %8 = lshr i8 %7, 1
  %9 = zext i8 %8 to i32
  %mul = shl nuw nsw i32 %9, 3
  %add = add nuw nsw i32 %mul, 256
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef %add, ptr noundef nonnull %lsb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 4
  %14 = lshr i8 %13, 1
  %15 = zext i8 %14 to i32
  %mul6 = shl nuw nsw i32 %15, 3
  %add7 = add nuw nsw i32 %mul6, 258
  %call8 = call i32 @regmap_read(ptr noundef %11, i32 noundef %add7, ptr noundef nonnull %msb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %msb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msb, align 4
  %and = shl i32 %17, 8
  %shl = and i32 %and, 768
  %18 = ptrtoint ptr %lsb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lsb, align 4
  %or = or i32 %shl, %19
  %div42 = lshr i32 %or, 1
  %add27 = add i32 %div42, %prate
  %div28 = udiv i32 %add27, %or
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div28, %do.end23 ], [ %call, %entry.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msb) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_dclk_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %div25 = lshr i32 %rate, 1
  %add = add i32 %1, %div25
  %div3 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rate)
  %cmp = icmp ult i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %div3)
  %cmp10 = icmp ugt i32 %div3, 1023
  %or.cond = or i1 %cmp, %cmp10
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div726 = lshr i32 %div3, 1
  %add8 = add i32 %div726, %1
  %div9 = udiv i32 %add8, %div3
  call void @__sanitizer_cov_trace_cmp4(i32 %div9, i32 %rate)
  %cmp11.not = icmp eq i32 %div9, %rate
  %div9. = select i1 %cmp11.not, i32 %div9, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %div9., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_dclk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %div149 = lshr i32 %rate, 1
  %add = add i32 %div149, %prate
  %div3 = udiv i32 %add, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %div3)
  %cmp = icmp ugt i32 %div3, 1023
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.72, ptr noundef %call) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %div3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %div3, label %if.end.if.end52_crit_edge [
    i32 1, label %if.then5
    i32 2, label %if.end.if.then31_crit_edge
    i32 3, label %if.end.if.then31_crit_edge152
  ]

if.end.if.then31_crit_edge152:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end.if.then31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then5:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 12
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = lshr i8 %8, 1
  %10 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %10, 3
  %add6 = add nuw nsw i32 %mul, 259
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %add6, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then5.if.end52_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5.if.end52_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then31:                                        ; preds = %if.end.if.then31_crit_edge, %if.end.if.then31_crit_edge152
  %regmap32 = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap32, align 4
  %id33 = getelementptr i8, ptr %hw, i32 12
  %13 = ptrtoint ptr %id33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id33, align 4
  %15 = lshr i8 %14, 1
  %16 = zext i8 %15 to i32
  %mul36 = shl nuw nsw i32 %16, 3
  %add37 = add nuw nsw i32 %mul36, 258
  %call.i150 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add37, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool39.not = icmp eq i32 %call.i150, 0
  br i1 %tobool39.not, label %if.end41, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.then31
  %17 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap32, align 4
  %19 = ptrtoint ptr %id33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id33, align 4
  %21 = lshr i8 %20, 1
  %22 = zext i8 %21 to i32
  %mul46 = shl nuw nsw i32 %22, 3
  %add47 = add nuw nsw i32 %mul46, 256
  %call48 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add47, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end41.if.end52_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41.if.end52_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.end52:                                         ; preds = %if.end41.if.end52_crit_edge, %if.then5.if.end52_crit_edge, %if.end.if.end52_crit_edge
  %regmap53 = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %regmap53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap53, align 4
  %id54 = getelementptr i8, ptr %hw, i32 12
  %25 = ptrtoint ptr %id54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id54, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i32
  %mul57 = shl nuw nsw i32 %28, 3
  %add58 = add nuw nsw i32 %mul57, 256
  %and = and i32 %div3, 255
  %call76 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %add58, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end79:                                         ; preds = %if.end52
  %29 = ptrtoint ptr %regmap53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap53, align 4
  %31 = ptrtoint ptr %id54 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %id54, align 4
  %33 = lshr i8 %32, 1
  %34 = zext i8 %33 to i32
  %mul84 = shl nuw nsw i32 %34, 3
  %add85 = add nuw nsw i32 %mul84, 258
  %and102 = lshr i32 %div3, 8
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %add85, i32 noundef 3, i32 noundef %and102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool105.not = icmp eq i32 %call.i151, 0
  br i1 %tobool105.not, label %if.end107, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end107:                                        ; preds = %if.end79
  %call108 = tail call fastcc i32 @lmk04832_sclk_sync_sequence(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end107.cleanup_crit_edge, label %do.end113

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end113:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.63) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %if.end107.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i150, %if.then31.cleanup_crit_edge ], [ %call48, %if.end41.cleanup_crit_edge ], [ %call76, %if.end52.cleanup_crit_edge ], [ %call.i151, %if.end79.cleanup_crit_edge ], [ %call108, %do.end113 ], [ 0, %if.end107.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_clkout_prepare(ptr noundef %hw) #2 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #9
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !182
  %format = getelementptr i8, ptr %hw, i32 16
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.77, ptr noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 20
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %11 = lshr i8 %10, 1
  %12 = zext i8 %11 to i32
  %mul = shl nuw nsw i32 %12, 3
  %add = add nuw nsw i32 %mul, 258
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %id, align 4
  %conv8 = zext i8 %16 to i32
  %rem = and i32 %conv8, 1
  %add9 = add nuw nsw i32 %rem, 259
  %17 = shl nuw nsw i32 %conv8, 2
  %mul13 = and i32 %17, 1016
  %add14 = add nuw nsw i32 %add9, %mul13
  %call15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add14, ptr noundef nonnull %tmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end33, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33:                                         ; preds = %if.end5
  %18 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp2, align 4
  %20 = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool36.not = icmp eq i32 %20, 0
  br i1 %tobool36.not, label %do.end33.if.end48_crit_edge, label %if.then37

do.end33.if.end48_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then37:                                        ; preds = %do.end33
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %id, align 4
  %25 = lshr i8 %24, 1
  %26 = zext i8 %25 to i32
  %mul42 = shl nuw nsw i32 %26, 3
  %add43 = add nuw nsw i32 %mul42, 260
  %call.i87 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %add43, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool45.not = icmp eq i32 %call.i87, 0
  br i1 %tobool45.not, label %if.then37.if.end48_crit_edge, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then37.if.end48_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end48:                                         ; preds = %if.then37.if.end48_crit_edge, %do.end33.if.end48_crit_edge
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %id, align 4
  %conv51 = zext i8 %30 to i32
  %31 = shl nuw nsw i32 %conv51, 2
  %mul53 = and i32 %31, 1016
  %add54 = add nuw nsw i32 %mul53, 263
  %rem57 = and i32 %conv51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem57)
  %tobool58.not = icmp eq i32 %rem57, 0
  %cond = select i1 %tobool58.not, i32 15, i32 240
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %mul63 = shl nuw nsw i32 %rem57, 2
  %shl = shl i32 %33, %mul63
  %call.i88 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add54, i32 noundef %cond, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then37.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i88, %if.end48 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call15, %if.end5.cleanup_crit_edge ], [ %call.i87, %if.then37.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lmk04832_clkout_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 20
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %6 = shl nuw nsw i32 %conv, 2
  %mul = and i32 %6, 1016
  %add = add nuw nsw i32 %mul, 263
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool.not, i32 15, i32 240
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %cond, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_clkout_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %clkoutx_y_pd = alloca i32, align 4
  %sclkx_y_pd = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clkoutx_y_pd) #9
  %2 = ptrtoint ptr %clkoutx_y_pd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %clkoutx_y_pd, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclkx_y_pd) #9
  %3 = ptrtoint ptr %sclkx_y_pd to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sclkx_y_pd, align 4, !annotation !182
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #9
  %4 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp2, align 4, !annotation !182
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 20
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %id, align 4
  %9 = lshr i8 %8, 1
  %10 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %10, 3
  %add = add nuw nsw i32 %mul, 258
  %call = call i32 @regmap_read(ptr noundef %6, i32 noundef %add, ptr noundef nonnull %clkoutx_y_pd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end14, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end14:                                         ; preds = %entry
  %11 = ptrtoint ptr %clkoutx_y_pd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clkoutx_y_pd, align 4
  %13 = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 4
  %conv20 = zext i8 %17 to i32
  %rem = and i32 %conv20, 1
  %add21 = add nuw nsw i32 %rem, 259
  %18 = shl nuw nsw i32 %conv20, 2
  %mul25 = and i32 %18, 1016
  %add26 = add nuw nsw i32 %add21, %mul25
  %call27 = call i32 @regmap_read(ptr noundef %15, i32 noundef %add26, ptr noundef nonnull %tmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %do.end45, label %do.end14.cleanup_crit_edge

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end45:                                         ; preds = %do.end14
  %.lobit = lshr exact i32 %13, 7
  %19 = xor i32 %.lobit, 1
  %20 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tmp2, align 4
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool49.not = icmp eq i32 %22, 0
  br i1 %tobool49.not, label %do.end45.if.end83_crit_edge, label %if.then50

do.end45.if.end83_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then50:                                        ; preds = %do.end45
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %id, align 4
  %27 = lshr i8 %26, 1
  %28 = zext i8 %27 to i32
  %mul55 = shl nuw nsw i32 %28, 3
  %add56 = add nuw nsw i32 %mul55, 260
  %call57 = call i32 @regmap_read(ptr noundef %24, i32 noundef %add56, ptr noundef nonnull %sclkx_y_pd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.then50
  br i1 %tobool17.not, label %do.end76, label %if.end60.if.end83_crit_edge

if.end60.if.end83_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

do.end76:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %sclkx_y_pd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sclkx_y_pd, align 4
  %31 = lshr i32 %30, 4
  %.lobit170 = and i32 %31, 1
  %32 = xor i32 %.lobit170, 1
  br label %if.end83

if.end83:                                         ; preds = %do.end76, %if.end60.if.end83_crit_edge, %do.end45.if.end83_crit_edge
  %enabled.0 = phi i32 [ %19, %do.end45.if.end83_crit_edge ], [ 0, %if.end60.if.end83_crit_edge ], [ %32, %do.end76 ]
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %35 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %id, align 4
  %37 = lshr i8 %36, 1
  %38 = zext i8 %37 to i32
  %mul88 = shl nuw nsw i32 %38, 3
  %add89 = add nuw nsw i32 %mul88, 263
  %call90 = call i32 @regmap_read(ptr noundef %34, i32 noundef %add89, ptr noundef nonnull %tmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id, align 4
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool97.not = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tmp2, align 4
  %44 = trunc i32 %43 to i8
  %45 = lshr i8 %44, 4
  %conv136 = and i8 %44, 15
  %fmt.0 = select i1 %tobool97.not, i8 %conv136, i8 %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled.0)
  %tobool138.not = icmp ne i32 %enabled.0, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fmt.0)
  %tobool140.not = icmp eq i8 %fmt.0, 0
  %narrow = select i1 %tobool138.not, i1 %tobool140.not, i1 false
  %46 = zext i1 %narrow to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %if.end83.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %46, %if.end93 ], [ %call, %entry.cleanup_crit_edge ], [ %call27, %do.end14.cleanup_crit_edge ], [ %call57, %if.then50.cleanup_crit_edge ], [ %call90, %if.end83.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclkx_y_pd) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clkoutx_y_pd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lmk04832_clkout_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %hw, i32 20
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %conv = zext i8 %1 to i32
  %rem = and i32 %conv, 1
  %add = add nuw nsw i32 %rem, 259
  %6 = shl nuw nsw i32 %conv, 2
  %mul = and i32 %6, 1016
  %add4 = add nuw nsw i32 %add, %mul
  %conv19 = zext i8 %index to i32
  %shl = shl nuw nsw i32 %conv19, 5
  %and20 = and i32 %shl, 32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4, i32 noundef 32, i32 noundef %and20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @lmk04832_clkout_get_parent(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #9
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !182
  %regmap = getelementptr inbounds %struct.lmk04832, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %id = getelementptr i8, ptr %hw, i32 20
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 4
  %conv = zext i8 %6 to i32
  %rem = and i32 %conv, 1
  %add = add nuw nsw i32 %rem, 259
  %7 = shl nuw nsw i32 %conv, 2
  %mul = and i32 %7, 1016
  %add5 = add nuw nsw i32 %add, %mul
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %add5, ptr noundef nonnull %tmp2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end18, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = trunc i32 %call to i8
  br label %cleanup

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tmp2, align 4
  %10 = trunc i32 %9 to i8
  %11 = lshr i8 %10, 5
  %conv21 = and i8 %11, 1
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %if.then
  %retval.0 = phi i8 [ %conv6, %if.then ], [ %conv21, %do.end18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #9
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !166, !168, !169, !170, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_clk_lmk04832__566_1577_lmk04832_driver_init6, !1, !"__initcall__kmod_clk_lmk04832__566_1577_lmk04832_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-lmk04832.c", i32 1577, i32 1}
!2 = !{ptr @__exitcall_lmk04832_driver_exit, !1, !"__exitcall_lmk04832_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author567, !4, !"__UNIQUE_ID_author567", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-lmk04832.c", i32 1579, i32 1}
!5 = !{ptr @__UNIQUE_ID_description568, !6, !"__UNIQUE_ID_description568", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-lmk04832.c", i32 1580, i32 1}
!7 = !{ptr @__UNIQUE_ID_file569, !8, !"__UNIQUE_ID_file569", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-lmk04832.c", i32 1581, i32 1}
!9 = !{ptr @__UNIQUE_ID_license570, !8, !"__UNIQUE_ID_license570", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-lmk04832.c", i32 1570, i32 11}
!12 = !{ptr @lmk04832_driver, !13, !"lmk04832_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-lmk04832.c", i32 1568, i32 26}
!14 = !{ptr @lmk04832_id, !15, !"lmk04832_id", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-lmk04832.c", i32 1556, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-lmk04832.c", i32 1395, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-lmk04832.c", i32 1397, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lmk04832_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lmk04832_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-lmk04832.c", i32 1405, i32 55}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-lmk04832.c", i32 1430, i32 37}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-lmk04832.c", i32 1433, i32 37}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-lmk04832.c", i32 1436, i32 37}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-lmk04832.c", i32 1440, i32 37}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-lmk04832.c", i32 1444, i32 37}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-lmk04832.c", i32 1450, i32 37}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-lmk04832.c", i32 1452, i32 4}
!42 = !{ptr @lmk04832_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @lmk04832_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/clk-lmk04832.c", i32 1458, i32 31}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/clk-lmk04832.c", i32 1463, i32 4}
!48 = !{ptr @lmk04832_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @lmk04832_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/clk-lmk04832.c", i32 1467, i32 33}
!52 = !{ptr @lmk04832_probe._key, !53, !"_key", i1 false, i1 false}
!53 = !{!"../drivers/clk/clk-lmk04832.c", i32 1470, i32 16}
!54 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-lmk04832.c", i32 1472, i32 3}
!57 = !{ptr @lmk04832_probe._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @lmk04832_probe._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-lmk04832.c", i32 1482, i32 38}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-lmk04832.c", i32 1491, i32 3}
!63 = !{ptr @lmk04832_probe._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lmk04832_probe._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-lmk04832.c", i32 1499, i32 3}
!67 = !{ptr @lmk04832_probe._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lmk04832_probe._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/clk-lmk04832.c", i32 1504, i32 3}
!71 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @lmk04832_probe._entry.33, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @lmk04832_probe._entry_ptr.36, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/clk-lmk04832.c", i32 1507, i32 4}
!76 = !{ptr @lmk04832_probe._entry.37, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @lmk04832_probe._entry_ptr.39, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/clk-lmk04832.c", i32 1514, i32 3}
!80 = !{ptr @lmk04832_probe._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @lmk04832_probe._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/clk-lmk04832.c", i32 1521, i32 4}
!84 = !{ptr @lmk04832_probe._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @lmk04832_probe._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/clk-lmk04832.c", i32 1530, i32 3}
!88 = !{ptr @lmk04832_probe._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lmk04832_probe._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @lmk04832_device_info, !91, !"lmk04832_device_info", i1 false, i1 false}
!91 = !{!"../drivers/clk/clk-lmk04832.c", i32 197, i32 42}
!92 = !{ptr @regmap_config, !93, !"regmap_config", i1 false, i1 false}
!93 = !{!"../drivers/clk/clk-lmk04832.c", i32 310, i32 35}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/clk-lmk04832.c", i32 1350, i32 2}
!96 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @lmk04832_set_spi_rdbk._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @lmk04832_set_spi_rdbk._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-lmk04832.c", i32 592, i32 14}
!101 = !{ptr @lmk04832_vco_ops, !102, !"lmk04832_vco_ops", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-lmk04832.c", i32 573, i32 29}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/clk-lmk04832.c", i32 504, i32 3}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @lmk04832_vco_round_rate._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @lmk04832_vco_round_rate._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/clk-lmk04832.c", i32 433, i32 2}
!110 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @lmk04832_check_vco_ranges._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @lmk04832_check_vco_ranges._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-lmk04832.c", i32 535, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @lmk04832_vco_set_rate._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @lmk04832_vco_set_rate._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/clk-lmk04832.c", i32 954, i32 14}
!120 = !{ptr @lmk04832_sclk_ops, !121, !"lmk04832_sclk_ops", i1 false, i1 false}
!121 = !{!"../drivers/clk/clk-lmk04832.c", i32 939, i32 29}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/clk-lmk04832.c", i32 898, i32 3}
!124 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @lmk04832_sclk_round_rate._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @lmk04832_sclk_round_rate._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-lmk04832.c", i32 918, i32 3}
!129 = !{ptr @lmk04832_sclk_set_rate._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @lmk04832_sclk_set_rate._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-lmk04832.c", i32 934, i32 3}
!133 = !{ptr @lmk04832_sclk_set_rate._entry.62, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @lmk04832_sclk_set_rate._entry_ptr.64, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-lmk04832.c", i32 683, i32 3}
!137 = !{ptr @.str.66, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @lmk04832_clkout_set_ddly._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @lmk04832_clkout_set_ddly._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/clk-lmk04832.c", i32 699, i32 2}
!142 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @lmk04832_clkout_set_ddly.__UNIQUE_ID_ddebug370, !141, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/clk-lmk04832.c", i32 1298, i32 22}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/clk-lmk04832.c", i32 1317, i32 8}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/clk-lmk04832.c", i32 1319, i32 17}
!150 = !{ptr @lmk04832_dclk_ops, !151, !"lmk04832_dclk_ops", i1 false, i1 false}
!151 = !{!"../drivers/clk/clk-lmk04832.c", i32 1152, i32 29}
!152 = !{ptr @.str.72, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/clk-lmk04832.c", i32 1080, i32 3}
!154 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @lmk04832_dclk_round_rate._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @lmk04832_dclk_round_rate._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/clk-lmk04832.c", i32 1101, i32 3}
!159 = !{ptr @lmk04832_dclk_set_rate._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @lmk04832_dclk_set_rate._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @lmk04832_dclk_set_rate._entry.75, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/clk/clk-lmk04832.c", i32 1147, i32 3}
!163 = !{ptr @lmk04832_dclk_set_rate._entry_ptr.76, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @lmk04832_clkout_ops, !165, !"lmk04832_clkout_ops", i1 false, i1 false}
!165 = !{!"../drivers/clk/clk-lmk04832.c", i32 1280, i32 29}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/clk-lmk04832.c", i32 1215, i32 3}
!168 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @lmk04832_clkout_prepare._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @lmk04832_clkout_prepare._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @lmk04832_of_id, !172, !"lmk04832_of_id", i1 false, i1 false}
!172 = !{!"../drivers/clk/clk-lmk04832.c", i32 1562, i32 34}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{!"auto-init"}
!183 = !{!"branch_weights", i32 1, i32 2000}
!184 = !{i8 0, i8 2}
!185 = !{i32 0, i32 33}
!186 = !{i64 2148795552, i64 2148795557, i64 2148795570, i64 2148795614, i64 2148795648, i64 2148795669}
