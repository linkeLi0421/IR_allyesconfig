; ModuleID = '/llk/IR_all_yes/drivers/phy/ti/phy-j721e-wiz.c_pt.bc'
source_filename = "../drivers/phy/ti/phy-j721e-wiz.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.wiz_clk_mux_sel = type { [4 x i32], ptr, i32, [4 x i32] }
%struct.wiz_clk_div_sel = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wiz = type { ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, [3 x ptr], [2 x ptr], ptr, ptr, i32, ptr, %struct.reset_controller_dev, ptr, i32, [4 x i32], [4 x ptr], [32 x ptr], %struct.clk_onecell_data }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.wiz_clk_mux = type { %struct.clk_hw, ptr, ptr, %struct.clk_init_data }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.wiz_phy_en_refclk = type { %struct.clk_hw, ptr, %struct.clk_init_data }
%struct.wiz_clk_divider = type { %struct.clk_hw, ptr, ptr, %struct.clk_init_data }

@__initcall__kmod_phy_j721e_wiz__225_1342_wiz_driver_init6 = internal global ptr @wiz_driver_init, section ".initcall6.init", align 4
@wiz_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wiz_probe, ptr @wiz_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wiz_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wiz_driver_exit = internal global ptr @wiz_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author226 = internal constant [44 x i8] c"phy_j721e_wiz.author=Texas Instruments Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [46 x i8] c"phy_j721e_wiz.description=TI J721E WIZ driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [48 x i8] c"phy_j721e_wiz.file=drivers/phy/ti/phy-j721e-wiz\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [29 x i8] c"phy_j721e_wiz.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wiz\00", [28 x i8] zeroinitializer }, align 32
@wiz_id_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-wiz-16g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,j721e-wiz-10g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am64-wiz-10g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serdes\00", [25 x i8] zeroinitializer }, align 32
@wiz_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1157, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get SERDES child DT node\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wiz_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/phy/ti/phy-j721e-wiz.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr = internal global ptr @wiz_probe._entry, section ".printk_index", align 4
@wiz_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get memory resource\0A\00", [33 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.9 = internal global ptr @wiz_probe._entry.7, section ".printk_index", align 4
@wiz_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wiz_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"phy_j721e_wiz:1173:(&wiz_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@wiz_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1175, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.13 = internal global ptr @wiz_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num-lanes\00", [22 x i8] zeroinitializer }, align 32
@wiz_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1182, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read num-lanes property\0A\00", [61 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.17 = internal global ptr @wiz_probe._entry.15, section ".printk_index", align 4
@wiz_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1187, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot support %d lanes\0A\00", [39 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.20 = internal global ptr @wiz_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"typec-dir\00", [22 x i8] zeroinitializer }, align 32
@wiz_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to request typec-dir gpio: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.24 = internal global ptr @wiz_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"typec-dir-debounce-ms\00", [42 x i8] zeroinitializer }, align 32
@wiz_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1206, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid typec-dir-debounce property\0A\00", [59 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.28 = internal global ptr @wiz_probe._entry.26, section ".printk_index", align 4
@wiz_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 1217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.30 = internal global ptr @wiz_probe._entry.29, section ".printk_index", align 4
@clk_mux_sel_10g = internal constant { [3 x %struct.wiz_clk_mux_sel], [40 x i8] } { [3 x %struct.wiz_clk_mux_sel] [%struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.60, i32 2, [4 x i32] [i32 0, i32 1, i32 0, i32 0] }, %struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.61, i32 2, [4 x i32] [i32 0, i32 1, i32 0, i32 0] }, %struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.62, i32 2, [4 x i32] [i32 0, i32 1, i32 0, i32 0] }], [40 x i8] zeroinitializer }, align 32
@clk_mux_sel_16g = internal constant { [3 x %struct.wiz_clk_mux_sel], [40 x i8] } { [3 x %struct.wiz_clk_mux_sel] [%struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.60, i32 0, [4 x i32] zeroinitializer }, %struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 0, i32 0, i32 0], ptr @.str.61, i32 0, [4 x i32] zeroinitializer }, %struct.wiz_clk_mux_sel { [4 x i32] [i32 1, i32 3, i32 0, i32 2], ptr @.str.62, i32 0, [4 x i32] zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@clk_div_sel = internal constant { [2 x %struct.wiz_clk_div_sel], [16 x i8] } { [2 x %struct.wiz_clk_div_sel] [%struct.wiz_clk_div_sel { ptr @clk_div_table, ptr @.str.63 }, %struct.wiz_clk_div_sel { ptr @clk_div_table, ptr @.str.64 }], [16 x i8] zeroinitializer }, align 32
@wiz_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 1245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to initialize regfields\0A\00", [32 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.33 = internal global ptr @wiz_probe._entry.31, section ".printk_index", align 4
@wiz_phy_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @wiz_phy_reset_assert, ptr @wiz_phy_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@wiz_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.3, ptr @.str.4, i32 1259, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to register reset controller\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.37 = internal global ptr @wiz_probe._entry.34, section ".printk_index", align 4
@wiz_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 1266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pm_runtime_get_sync failed\0A\00", [36 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.40 = internal global ptr @wiz_probe._entry.38, section ".printk_index", align 4
@wiz_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 1272, ptr @.str.36, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.43 = internal global ptr @wiz_probe._entry.41, section ".printk_index", align 4
@wiz_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.3, ptr @.str.4, i32 1287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WIZ initialization failed\0A\00", [37 x i8] zeroinitializer }, align 32
@wiz_probe._entry_ptr.46 = internal global ptr @wiz_probe._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s %s: Unable to create SERDES platform device\0A\00", [48 x i8] zeroinitializer }, align 32
@wiz_get_lane_phy_types._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.4, i32 1101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Getting \22serdes\22-node failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wiz_get_lane_phy_types\00", [41 x i8] zeroinitializer }, align 32
@wiz_get_lane_phy_types._entry_ptr = internal global ptr @wiz_get_lane_phy_types._entry, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"link\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@wiz_get_lane_phy_types._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.4, i32 1118, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Reading \22reg\22 from \22%s\22 failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wiz_get_lane_phy_types._entry_ptr.55 = internal global ptr @wiz_get_lane_phy_types._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns,num-lanes\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns,phy-type\00", [18 x i8] zeroinitializer }, align 32
@wiz_get_lane_phy_types.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.49, ptr @.str.4, ptr @.str.59, i8 1, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy_j721e_wiz\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Lanes %u-%u have phy-type %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll0-refclk\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll1-refclk\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"refclk-dig\00", [21 x i8] zeroinitializer }, align 32
@clk_div_table = internal constant { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmn-refclk-dig-div\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmn-refclk1-dig-div\00", [44 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"POR_EN reg field init failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wiz_regfield_init\00", [46 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr = internal global ptr @wiz_regfield_init._entry, section ".printk_index", align 4
@wiz_regfield_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PHY_RESET_N reg field init failed\0A\00", [61 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.69 = internal global ptr @wiz_regfield_init._entry.67, section ".printk_index", align 4
@wiz_regfield_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.4, i32 430, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PMA_CMN_REFCLK_INT_MODE reg field init failed\0A\00", [49 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.72 = internal global ptr @wiz_regfield_init._entry.70, section ".printk_index", align 4
@wiz_regfield_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.66, ptr @.str.4, i32 437, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PMA_CMN_REFCLK_MODE reg field init failed\0A\00", [53 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.75 = internal global ptr @wiz_regfield_init._entry.73, section ".printk_index", align 4
@wiz_regfield_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.66, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"PMA_CMN_REFCLK_DIG_DIV reg field init failed\0A\00", [50 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.78 = internal global ptr @wiz_regfield_init._entry.76, section ".printk_index", align 4
@wiz_regfield_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.66, ptr @.str.4, i32 453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PMA_CMN_REFCLK1_DIG_DIV reg field init failed\0A\00", [49 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.81 = internal global ptr @wiz_regfield_init._entry.79, section ".printk_index", align 4
@wiz_regfield_init._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.66, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PLL0_REFCLK_SEL reg field init failed\0A\00", [57 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.84 = internal global ptr @wiz_regfield_init._entry.82, section ".printk_index", align 4
@wiz_regfield_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.66, ptr @.str.4, i32 468, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PLL1_REFCLK_SEL reg field init failed\0A\00", [57 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.87 = internal global ptr @wiz_regfield_init._entry.85, section ".printk_index", align 4
@wiz_regfield_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.66, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"REFCLK_DIG_SEL reg field init failed\0A\00", [58 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.90 = internal global ptr @wiz_regfield_init._entry.88, section ".printk_index", align 4
@p_enable = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1152, i32 30, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1216, i32 30, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 30, i32 31, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 30, i32 31, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.66, ptr @.str.4, i32 490, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"P%d_ENABLE reg field init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.93 = internal global ptr @wiz_regfield_init._entry.91, section ".printk_index", align 4
@p_align = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1152, i32 29, i32 29, i32 0, i32 0 }, %struct.reg_field { i32 1216, i32 29, i32 29, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 29, i32 29, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 29, i32 29, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.66, ptr @.str.4, i32 497, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"P%d_ALIGN reg field init failed\0A\00", [63 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.96 = internal global ptr @wiz_regfield_init._entry.94, section ".printk_index", align 4
@p_raw_auto_start = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1152, i32 28, i32 28, i32 0, i32 0 }, %struct.reg_field { i32 1216, i32 28, i32 28, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 28, i32 28, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 28, i32 28, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.66, ptr @.str.4, i32 505, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"P%d_RAW_AUTO_START reg field init fail\0A\00", [56 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.99 = internal global ptr @wiz_regfield_init._entry.97, section ".printk_index", align 4
@p_standard_mode = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1152, i32 24, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 1216, i32 24, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 24, i32 25, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 24, i32 25, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.66, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"P%d_STANDARD_MODE reg field init fail\0A\00", [57 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.102 = internal global ptr @wiz_regfield_init._entry.100, section ".printk_index", align 4
@p0_fullrt_div = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1152, i32 22, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 1216, i32 22, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 1280, i32 22, i32 23, i32 0, i32 0 }, %struct.reg_field { i32 1344, i32 22, i32 23, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.66, ptr @.str.4, i32 519, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"P%d_FULLRT_DIV reg field init failed\0A\00", [58 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.105 = internal global ptr @wiz_regfield_init._entry.103, section ".printk_index", align 4
@p_mac_div_sel0 = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1156, i32 16, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 1220, i32 16, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 16, i32 22, i32 0, i32 0 }, %struct.reg_field { i32 1348, i32 16, i32 22, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.66, ptr @.str.4, i32 527, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"P%d_MAC_DIV_SEL0 reg field init fail\0A\00", [58 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.108 = internal global ptr @wiz_regfield_init._entry.106, section ".printk_index", align 4
@p_mac_div_sel1 = internal constant { [4 x %struct.reg_field], [48 x i8] } { [4 x %struct.reg_field] [%struct.reg_field { i32 1156, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1220, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1284, i32 0, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 1348, i32 0, i32 8, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.66, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"P%d_MAC_DIV_SEL1 reg field init fail\0A\00", [58 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.111 = internal global ptr @wiz_regfield_init._entry.109, section ".printk_index", align 4
@wiz_regfield_init._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.66, ptr @.str.4, i32 543, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LN10_SWAP reg field init failed\0A\00", [63 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.114 = internal global ptr @wiz_regfield_init._entry.112, section ".printk_index", align 4
@wiz_regfield_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.66, ptr @.str.4, i32 549, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PHY_EN_REFCLK reg field init failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wiz_regfield_init._entry_ptr.117 = internal global ptr @wiz_regfield_init._entry.115, section ".printk_index", align 4
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"core_ref_clk\00", [19 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 925, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"core_ref_clk clock not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wiz_clock_init\00", [17 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr = internal global ptr @wiz_clock_init._entry, section ".printk_index", align 4
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext_ref_clk\00", [20 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.120, ptr @.str.4, i32 939, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ext_ref_clk clock not found\0A\00", [35 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.124 = internal global ptr @wiz_clock_init._entry.122, section ".printk_index", align 4
@wiz_clock_init._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.120, ptr @.str.4, i32 954, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register wiz clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.127 = internal global ptr @wiz_clock_init._entry.125, section ".printk_index", align 4
@wiz_clock_init._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.120, ptr @.str.4, i32 962, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to get %s node\0A\00", [41 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.130 = internal global ptr @wiz_clock_init._entry.128, section ".printk_index", align 4
@wiz_clock_init._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.120, ptr @.str.4, i32 971, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register %s clock\0A\00", [35 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.133 = internal global ptr @wiz_clock_init._entry.131, section ".printk_index", align 4
@wiz_clock_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.120, ptr @.str.4, i32 983, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.135 = internal global ptr @wiz_clock_init._entry.134, section ".printk_index", align 4
@wiz_clock_init._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.120, ptr @.str.4, i32 992, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wiz_clock_init._entry_ptr.137 = internal global ptr @wiz_clock_init._entry.136, section ".printk_index", align 4
@wiz_clock_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.4, i32 892, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to register clk: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wiz_clock_register\00", [45 x i8] zeroinitializer }, align 32
@wiz_clock_register._entry_ptr = internal global ptr @wiz_clock_register._entry, section ".printk_index", align 4
@output_clk_names = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.149], [60 x i8] zeroinitializer }, align 32
@wiz_clock_register._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.4, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add phy-en-refclk\0A\00", [35 x i8] zeroinitializer }, align 32
@wiz_clock_register._entry_ptr.142 = internal global ptr @wiz_clock_register._entry.140, section ".printk_index", align 4
@wiz_clock_register._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.139, ptr @.str.4, i32 907, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to add clock provider: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@wiz_clock_register._entry_ptr.145 = internal global ptr @wiz_clock_register._entry.143, section ".printk_index", align 4
@wiz_mux_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.4, i32 671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get parent clk for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiz_mux_clk_register\00", [43 x i8] zeroinitializer }, align 32
@wiz_mux_clk_register._entry_ptr = internal global ptr @wiz_mux_clk_register._entry, section ".printk_index", align 4
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s_%s\00", [26 x i8] zeroinitializer }, align 32
@wiz_clk_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wiz_clk_mux_set_parent, ptr @wiz_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"phy-en-refclk\00", [18 x i8] zeroinitializer }, align 32
@wiz_phy_en_refclk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @wiz_phy_en_refclk_enable, ptr @wiz_phy_en_refclk_disable, ptr @wiz_phy_en_refclk_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiz_mux_of_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.4, i32 724, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SERDES clock must have parents\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wiz_mux_of_clk_register\00", [40 x i8] zeroinitializer }, align 32
@wiz_mux_of_clk_register._entry_ptr = internal global ptr @wiz_mux_of_clk_register._entry, section ".printk_index", align 4
@wiz_mux_of_clk_register._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.151, ptr @.str.4, i32 756, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wiz_mux_of_clk_register._entry_ptr.153 = internal global ptr @wiz_mux_of_clk_register._entry.152, section ".printk_index", align 4
@wiz_clk_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wiz_clk_div_recalc_rate, ptr @wiz_clk_div_round_rate, ptr null, ptr null, ptr null, ptr @wiz_clk_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wiz_div_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.154, ptr @.str.4, i32 844, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wiz_div_clk_register\00", [43 x i8] zeroinitializer }, align 32
@wiz_div_clk_register._entry_ptr = internal global ptr @wiz_div_clk_register._entry, section ".printk_index", align 4
@wiz_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.4, i32 382, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WIZ reset failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"wiz_init\00", [23 x i8] zeroinitializer }, align 32
@wiz_init._entry_ptr = internal global ptr @wiz_init._entry, section ".printk_index", align 4
@wiz_init._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WIZ mode select failed\0A\00", [40 x i8] zeroinitializer }, align 32
@wiz_init._entry_ptr.159 = internal global ptr @wiz_init._entry.157, section ".printk_index", align 4
@wiz_init._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Configuring P0 MAC DIV SEL failed\0A\00", [61 x i8] zeroinitializer }, align 32
@wiz_init._entry_ptr.162 = internal global ptr @wiz_init._entry.160, section ".printk_index", align 4
@wiz_init._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.156, ptr @.str.4, i32 400, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"WIZ interface initialization failed\0A\00", [59 x i8] zeroinitializer }, align 32
@wiz_init._entry_ptr.165 = internal global ptr @wiz_init._entry.163, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 9]
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"wiz_driver\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1334, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1338, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [13 x i8] c"wiz_id_table\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1081, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1155, i32 42 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1157, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1163, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [18 x i8] c"wiz_regmap_config\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1074, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1173, i32 11 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1175, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1180, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1182, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1187, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1192, i32 53 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1197, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1203, i32 36 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1206, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1217, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant [16 x i8] c"clk_mux_sel_10g\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 206, i32 37 }
@___asan_gen_.257 = private unnamed_addr constant [16 x i8] c"clk_mux_sel_16g\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 187, i32 37 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"clk_div_sel\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 239, i32 37 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1245, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [18 x i8] c"wiz_phy_reset_ops\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1069, i32 39 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1259, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1266, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1272, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1287, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1294, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1101, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1109, i32 34 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1110, i32 34 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1113, i32 39 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1116, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1121, i32 33 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1122, i32 33 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 1124, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 215, i32 16 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 221, i32 16 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 227, i32 16 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"clk_div_table\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 231, i32 35 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 242, i32 16 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 246, i32 16 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 416, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 423, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 430, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 437, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 444, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 453, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 461, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 468, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 482, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant [9 x i8] c"p_enable\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 95, i32 31 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 490, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant [8 x i8] c"p_align\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 104, i32 31 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 497, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"p_raw_auto_start\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 111, i32 31 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 504, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant [16 x i8] c"p_standard_mode\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 118, i32 31 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 512, i32 4 }
@___asan_gen_.449 = private unnamed_addr constant [14 x i8] c"p0_fullrt_div\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 125, i32 31 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 519, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant [15 x i8] c"p_mac_div_sel0\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 132, i32 31 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 526, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant [15 x i8] c"p_mac_div_sel1\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 139, i32 31 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 534, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 543, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 549, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 923, i32 26 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 925, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 937, i32 26 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 939, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 954, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 962, i32 4 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 970, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 983, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 991, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 892, i32 4 }
@___asan_gen_.542 = private unnamed_addr constant [17 x i8] c"output_clk_names\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 88, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 899, i32 3 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 907, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 670, i32 4 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 678, i32 39 }
@___asan_gen_.569 = private unnamed_addr constant [16 x i8] c"wiz_clk_mux_ops\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 640, i32 29 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 92, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant [22 x i8] c"wiz_phy_en_refclk_ops\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 585, i32 29 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 724, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 756, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant [16 x i8] c"wiz_clk_div_ops\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 795, i32 29 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 844, i32 3 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 382, i32 3 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 388, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 394, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.623 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.624 = private constant [34 x i8] c"../drivers/phy/ti/phy-j721e-wiz.c\00", align 1
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.624, i32 400, i32 3 }
@llvm.compiler.used = appending global [211 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_wiz_driver_exit, ptr @__initcall__kmod_phy_j721e_wiz__225_1342_wiz_driver_init6, ptr @wiz_clock_init._entry, ptr @wiz_clock_init._entry.122, ptr @wiz_clock_init._entry.125, ptr @wiz_clock_init._entry.128, ptr @wiz_clock_init._entry.131, ptr @wiz_clock_init._entry.134, ptr @wiz_clock_init._entry.136, ptr @wiz_clock_init._entry_ptr, ptr @wiz_clock_init._entry_ptr.124, ptr @wiz_clock_init._entry_ptr.127, ptr @wiz_clock_init._entry_ptr.130, ptr @wiz_clock_init._entry_ptr.133, ptr @wiz_clock_init._entry_ptr.135, ptr @wiz_clock_init._entry_ptr.137, ptr @wiz_clock_register._entry, ptr @wiz_clock_register._entry.140, ptr @wiz_clock_register._entry.143, ptr @wiz_clock_register._entry_ptr, ptr @wiz_clock_register._entry_ptr.142, ptr @wiz_clock_register._entry_ptr.145, ptr @wiz_div_clk_register._entry, ptr @wiz_div_clk_register._entry_ptr, ptr @wiz_driver_exit, ptr @wiz_get_lane_phy_types._entry, ptr @wiz_get_lane_phy_types._entry.53, ptr @wiz_get_lane_phy_types._entry_ptr, ptr @wiz_get_lane_phy_types._entry_ptr.55, ptr @wiz_init._entry, ptr @wiz_init._entry.157, ptr @wiz_init._entry.160, ptr @wiz_init._entry.163, ptr @wiz_init._entry_ptr, ptr @wiz_init._entry_ptr.159, ptr @wiz_init._entry_ptr.162, ptr @wiz_init._entry_ptr.165, ptr @wiz_mux_clk_register._entry, ptr @wiz_mux_clk_register._entry_ptr, ptr @wiz_mux_of_clk_register._entry, ptr @wiz_mux_of_clk_register._entry.152, ptr @wiz_mux_of_clk_register._entry_ptr, ptr @wiz_mux_of_clk_register._entry_ptr.153, ptr @wiz_probe._entry, ptr @wiz_probe._entry.11, ptr @wiz_probe._entry.15, ptr @wiz_probe._entry.18, ptr @wiz_probe._entry.22, ptr @wiz_probe._entry.26, ptr @wiz_probe._entry.29, ptr @wiz_probe._entry.31, ptr @wiz_probe._entry.34, ptr @wiz_probe._entry.38, ptr @wiz_probe._entry.41, ptr @wiz_probe._entry.44, ptr @wiz_probe._entry.7, ptr @wiz_probe._entry_ptr, ptr @wiz_probe._entry_ptr.13, ptr @wiz_probe._entry_ptr.17, ptr @wiz_probe._entry_ptr.20, ptr @wiz_probe._entry_ptr.24, ptr @wiz_probe._entry_ptr.28, ptr @wiz_probe._entry_ptr.30, ptr @wiz_probe._entry_ptr.33, ptr @wiz_probe._entry_ptr.37, ptr @wiz_probe._entry_ptr.40, ptr @wiz_probe._entry_ptr.43, ptr @wiz_probe._entry_ptr.46, ptr @wiz_probe._entry_ptr.9, ptr @wiz_regfield_init._entry, ptr @wiz_regfield_init._entry.100, ptr @wiz_regfield_init._entry.103, ptr @wiz_regfield_init._entry.106, ptr @wiz_regfield_init._entry.109, ptr @wiz_regfield_init._entry.112, ptr @wiz_regfield_init._entry.115, ptr @wiz_regfield_init._entry.67, ptr @wiz_regfield_init._entry.70, ptr @wiz_regfield_init._entry.73, ptr @wiz_regfield_init._entry.76, ptr @wiz_regfield_init._entry.79, ptr @wiz_regfield_init._entry.82, ptr @wiz_regfield_init._entry.85, ptr @wiz_regfield_init._entry.88, ptr @wiz_regfield_init._entry.91, ptr @wiz_regfield_init._entry.94, ptr @wiz_regfield_init._entry.97, ptr @wiz_regfield_init._entry_ptr, ptr @wiz_regfield_init._entry_ptr.102, ptr @wiz_regfield_init._entry_ptr.105, ptr @wiz_regfield_init._entry_ptr.108, ptr @wiz_regfield_init._entry_ptr.111, ptr @wiz_regfield_init._entry_ptr.114, ptr @wiz_regfield_init._entry_ptr.117, ptr @wiz_regfield_init._entry_ptr.69, ptr @wiz_regfield_init._entry_ptr.72, ptr @wiz_regfield_init._entry_ptr.75, ptr @wiz_regfield_init._entry_ptr.78, ptr @wiz_regfield_init._entry_ptr.81, ptr @wiz_regfield_init._entry_ptr.84, ptr @wiz_regfield_init._entry_ptr.87, ptr @wiz_regfield_init._entry_ptr.90, ptr @wiz_regfield_init._entry_ptr.93, ptr @wiz_regfield_init._entry_ptr.96, ptr @wiz_regfield_init._entry_ptr.99, ptr @wiz_driver, ptr @.str, ptr @wiz_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @wiz_probe._key, ptr @wiz_regmap_config, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @clk_mux_sel_10g, ptr @clk_mux_sel_16g, ptr @clk_div_sel, ptr @.str.32, ptr @wiz_phy_reset_ops, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @clk_div_table, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @p_enable, ptr @.str.92, ptr @p_align, ptr @.str.95, ptr @p_raw_auto_start, ptr @.str.98, ptr @p_standard_mode, ptr @.str.101, ptr @p0_fullrt_div, ptr @.str.104, ptr @p_mac_div_sel0, ptr @.str.107, ptr @p_mac_div_sel1, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.138, ptr @.str.139, ptr @output_clk_names, ptr @.str.141, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @wiz_clk_mux_ops, ptr @.str.149, ptr @wiz_phy_en_refclk_ops, ptr @.str.150, ptr @.str.151, ptr @wiz_clk_div_ops, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @.str.164], section "llvm.metadata"
@0 = internal global [153 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_id_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sel_10g to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sel_16g to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_div_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_phy_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_get_lane_phy_types._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_get_lane_phy_types._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_div_table to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_enable to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_align to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_raw_auto_start to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_standard_mode to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p0_fullrt_div to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_mac_div_sel0 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_mac_div_sel1 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_regfield_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_init._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_clk_names to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_register._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clock_register._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_mux_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_phy_en_refclk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_mux_of_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_mux_of_clk_register._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_clk_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_div_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_init._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_init._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wiz_init._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wiz_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wiz_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @wiz_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_name.i160.i = alloca [100 x i8], align 1
  %clk_name.i.i = alloca [100 x i8], align 1
  %clk_name.i.i.i = alloca [100 x i8], align 1
  %res = alloca %struct.resource, align 4
  %val = alloca i32, align 4
  %num_lanes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lanes) #8
  %5 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %num_lanes, align 4, !annotation !340
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 416, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %6 = ptrtoint ptr %call2 to i32
  %type = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %type, align 4
  %call3 = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @of_address_to_resource(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end13, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %err_addr_to_resource

if.end13:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %9
  %add.i = add i32 %sub.i, %11
  %call15 = call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %9, i32 noundef %add.i) #8
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %if.end13.err_addr_to_resource_crit_edge, label %if.end18

if.end13.err_addr_to_resource_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_addr_to_resource

if.end18:                                         ; preds = %if.end13
  %call19 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call15, ptr noundef nonnull @wiz_regmap_config, ptr noundef nonnull @wiz_probe._key, ptr noundef nonnull @.str.10) #8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  %12 = ptrtoint ptr %call19 to i32
  br label %err_addr_to_resource

if.end26:                                         ; preds = %if.end18
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %num_lanes, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool28.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool28.not, label %if.end33, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #11
  br label %err_addr_to_resource

if.end33:                                         ; preds = %if.end26
  %13 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp ugt i32 %14, 4
  br i1 %cmp, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %14) #11
  br label %err_addr_to_resource

if.end38:                                         ; preds = %if.end33
  %call39 = call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 1) #8
  %gpio_typec_dir = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 26
  %15 = ptrtoint ptr %gpio_typec_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call39, ptr %gpio_typec_dir, align 4
  %cmp.i290 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then42, label %if.end51

if.then42:                                        ; preds = %if.end38
  %cmp45.not = icmp eq ptr %call39, inttoptr (i32 -517 to ptr)
  br i1 %cmp45.not, label %if.then42.err_addr_to_resource_crit_edge, label %do.end49

if.then42.err_addr_to_resource_crit_edge:         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_addr_to_resource

do.end49:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %16) #11
  br label %err_addr_to_resource

if.end51:                                         ; preds = %if.end38
  %tobool53.not = icmp eq ptr %call39, null
  br i1 %tobool53.not, label %if.end51.if.end76_crit_edge, label %if.then54

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then54:                                        ; preds = %if.end51
  %typec_dir_delay = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 27
  %call.i.i291 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %typec_dir_delay, i32 noundef 1, i32 noundef 0) #8
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i291, i32 0) #8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.end61 [
    i32 -22, label %if.then64
    i32 0, label %if.then54.if.end66_crit_edge
  ]

if.then54.if.end66_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.end61:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %err_addr_to_resource

if.then64:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %typec_dir_delay to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 100, ptr %typec_dir_delay, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.then54.if.end66_crit_edge
  %20 = ptrtoint ptr %typec_dir_delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %typec_dir_delay, align 4
  %22 = add i32 %21, -1001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -901, i32 %22)
  %23 = icmp ult i32 %22, -901
  br i1 %23, label %if.then71, label %if.end66.if.end76_crit_edge

if.end66.if.end76_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %err_addr_to_resource

if.end76:                                         ; preds = %if.end66.if.end76_crit_edge, %if.end51.if.end76_crit_edge
  %call77 = call fastcc i32 @wiz_get_lane_phy_types(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  %dev81 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 22
  %24 = ptrtoint ptr %dev81 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev1, ptr %dev81, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call19, ptr %call.i, align 4
  %26 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_lanes, align 4
  %num_lanes83 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 23
  %28 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %num_lanes83, align 4
  %29 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type, align 4
  %.off = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, ptr @clk_mux_sel_10g, ptr @clk_mux_sel_16g
  %31 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 2
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %spec.select, ptr %31, align 4
  %clk_div_sel = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %clk_div_sel to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @clk_div_sel, ptr %clk_div_sel, align 4
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type, align 4
  %.off288 = add i32 %35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off288)
  %switch289 = icmp ult i32 %.off288, 2
  %.sink = select i1 %switch289, i32 1, i32 2
  %36 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %36, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %39 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_lanes83, align 4
  %41 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev81, align 4
  %call.i292 = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1028, i32 31, i32 31, i32 0, i32 0]) #8
  %por_en.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %por_en.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i292, ptr %por_en.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i292, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.65) #11
  br label %wiz_regfield_init.exit

if.end.i:                                         ; preds = %if.end80
  %call8.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1036, i32 31, i32 31, i32 0, i32 0]) #8
  %phy_reset_n.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %phy_reset_n.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i, ptr %phy_reset_n.i, align 4
  %cmp.i500.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i500.i, label %do.end14.i, label %if.end17.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.68) #11
  br label %wiz_regfield_init.exit

if.end17.i:                                       ; preds = %if.end.i
  %call18.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1032, i32 28, i32 29, i32 0, i32 0]) #8
  %pma_cmn_refclk_int_mode.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 15
  %45 = ptrtoint ptr %pma_cmn_refclk_int_mode.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call18.i, ptr %pma_cmn_refclk_int_mode.i, align 4
  %cmp.i501.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i501.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.71) #11
  br label %wiz_regfield_init.exit

if.end27.i:                                       ; preds = %if.end17.i
  %call28.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1032, i32 30, i32 31, i32 0, i32 0]) #8
  %pma_cmn_refclk_mode.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 16
  %46 = ptrtoint ptr %pma_cmn_refclk_mode.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call28.i, ptr %pma_cmn_refclk_mode.i, align 4
  %cmp.i502.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i502.i, label %do.end34.i, label %if.end37.i

do.end34.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.74) #11
  br label %wiz_regfield_init.exit

if.end37.i:                                       ; preds = %if.end27.i
  %call38.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1032, i32 26, i32 27, i32 0, i32 0]) #8
  %div_sel_field.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 20
  %47 = ptrtoint ptr %div_sel_field.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call38.i, ptr %div_sel_field.i, align 4
  %cmp.i503.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i503.i, label %do.end45.i, label %if.end49.i

do.end45.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.77) #11
  br label %wiz_regfield_init.exit

if.end49.i:                                       ; preds = %if.end37.i
  %48 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp.i293 = icmp eq i32 %49, 0
  br i1 %cmp.i293, label %if.then50.i, label %if.end49.i.if.end65.i_crit_edge

if.end49.i.if.end65.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

if.then50.i:                                      ; preds = %if.end49.i
  %call51.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1032, i32 24, i32 25, i32 0, i32 0]) #8
  %arrayidx53.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 20, i32 1
  %50 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call51.i, ptr %arrayidx53.i, align 4
  %cmp.i504.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i504.i, label %do.end60.i, label %if.then50.i.if.end65.i_crit_edge

if.then50.i.if.end65.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65.i

do.end60.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.80) #11
  br label %wiz_regfield_init.exit

if.end65.i:                                       ; preds = %if.then50.i.if.end65.i_crit_edge, %if.end49.i.if.end65.i_crit_edge
  %call66.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1036, i32 28, i32 28, i32 0, i32 0]) #8
  %mux_sel_field.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 19
  %51 = ptrtoint ptr %mux_sel_field.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call66.i, ptr %mux_sel_field.i, align 4
  %cmp.i505.i = icmp ugt ptr %call66.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i505.i, label %do.end74.i, label %if.end78.i

do.end74.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.83) #11
  br label %wiz_regfield_init.exit

if.end78.i:                                       ; preds = %if.end65.i
  %call79.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1036, i32 29, i32 29, i32 0, i32 0]) #8
  %arrayidx81.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 19, i32 1
  %52 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call79.i, ptr %arrayidx81.i, align 4
  %cmp.i506.i = icmp ugt ptr %call79.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i506.i, label %do.end88.i, label %if.end92.i

do.end88.i:                                       ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.86) #11
  br label %wiz_regfield_init.exit

if.end92.i:                                       ; preds = %if.end78.i
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type, align 4
  %.off.i = add i32 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  %..i = select i1 %switch.i, [5 x i32] [i32 1036, i32 24, i32 24, i32 0, i32 0], [5 x i32] [i32 1036, i32 24, i32 25, i32 0, i32 0]
  %call101.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %..i) #8
  %55 = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 19, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call101.i, ptr %55, align 4
  %cmp.i507.i = icmp ugt ptr %call101.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i507.i, label %do.end111.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp116545.i = icmp sgt i32 %40, 0
  br i1 %cmp116545.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

do.end111.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.89) #11
  br label %wiz_regfield_init.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0546.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx117.i = getelementptr [4 x %struct.reg_field], ptr @p_enable, i32 0, i32 %i.0546.i
  %57 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.unpack.i = load i32, ptr %arrayidx117.i, align 4
  %58 = insertvalue [5 x i32] undef, i32 %.unpack.i, 0
  %.elt428.i = getelementptr inbounds [5 x i32], ptr %arrayidx117.i, i32 0, i32 1
  %59 = ptrtoint ptr %.elt428.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.unpack429.i = load i32, ptr %.elt428.i, align 4
  %60 = insertvalue [5 x i32] %58, i32 %.unpack429.i, 1
  %.elt430.i = getelementptr inbounds [5 x i32], ptr %arrayidx117.i, i32 0, i32 2
  %61 = ptrtoint ptr %.elt430.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.unpack431.i = load i32, ptr %.elt430.i, align 4
  %62 = insertvalue [5 x i32] %60, i32 %.unpack431.i, 2
  %.elt432.i = getelementptr inbounds [5 x i32], ptr %arrayidx117.i, i32 0, i32 3
  %63 = ptrtoint ptr %.elt432.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack433.i = load i32, ptr %.elt432.i, align 4
  %64 = insertvalue [5 x i32] %62, i32 %.unpack433.i, 3
  %.elt434.i = getelementptr inbounds [5 x i32], ptr %arrayidx117.i, i32 0, i32 4
  %65 = ptrtoint ptr %.elt434.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack435.i = load i32, ptr %.elt434.i, align 4
  %66 = insertvalue [5 x i32] %64, i32 %.unpack435.i, 4
  %call118.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %66) #8
  %arrayidx119.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 8, i32 %i.0546.i
  %67 = ptrtoint ptr %arrayidx119.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call118.i, ptr %arrayidx119.i, align 4
  %cmp.i508.i = icmp ugt ptr %call118.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i508.i, label %do.end126.i, label %if.end130.i

do.end126.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.92, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end130.i:                                      ; preds = %for.body.i
  %arrayidx131.i = getelementptr [4 x %struct.reg_field], ptr @p_align, i32 0, i32 %i.0546.i
  %68 = ptrtoint ptr %arrayidx131.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.unpack436.i = load i32, ptr %arrayidx131.i, align 4
  %69 = insertvalue [5 x i32] undef, i32 %.unpack436.i, 0
  %.elt437.i = getelementptr inbounds [5 x i32], ptr %arrayidx131.i, i32 0, i32 1
  %70 = ptrtoint ptr %.elt437.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.unpack438.i = load i32, ptr %.elt437.i, align 4
  %71 = insertvalue [5 x i32] %69, i32 %.unpack438.i, 1
  %.elt439.i = getelementptr inbounds [5 x i32], ptr %arrayidx131.i, i32 0, i32 2
  %72 = ptrtoint ptr %.elt439.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.unpack440.i = load i32, ptr %.elt439.i, align 4
  %73 = insertvalue [5 x i32] %71, i32 %.unpack440.i, 2
  %.elt441.i = getelementptr inbounds [5 x i32], ptr %arrayidx131.i, i32 0, i32 3
  %74 = ptrtoint ptr %.elt441.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.unpack442.i = load i32, ptr %.elt441.i, align 4
  %75 = insertvalue [5 x i32] %73, i32 %.unpack442.i, 3
  %.elt443.i = getelementptr inbounds [5 x i32], ptr %arrayidx131.i, i32 0, i32 4
  %76 = ptrtoint ptr %.elt443.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.unpack444.i = load i32, ptr %.elt443.i, align 4
  %77 = insertvalue [5 x i32] %75, i32 %.unpack444.i, 4
  %call132.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %77) #8
  %arrayidx133.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 9, i32 %i.0546.i
  %78 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call132.i, ptr %arrayidx133.i, align 4
  %cmp.i509.i = icmp ugt ptr %call132.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i509.i, label %do.end140.i, label %if.end144.i

do.end140.i:                                      ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.95, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end144.i:                                      ; preds = %if.end130.i
  %arrayidx145.i = getelementptr [4 x %struct.reg_field], ptr @p_raw_auto_start, i32 0, i32 %i.0546.i
  %79 = ptrtoint ptr %arrayidx145.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %.unpack445.i = load i32, ptr %arrayidx145.i, align 4
  %80 = insertvalue [5 x i32] undef, i32 %.unpack445.i, 0
  %.elt446.i = getelementptr inbounds [5 x i32], ptr %arrayidx145.i, i32 0, i32 1
  %81 = ptrtoint ptr %.elt446.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.unpack447.i = load i32, ptr %.elt446.i, align 4
  %82 = insertvalue [5 x i32] %80, i32 %.unpack447.i, 1
  %.elt448.i = getelementptr inbounds [5 x i32], ptr %arrayidx145.i, i32 0, i32 2
  %83 = ptrtoint ptr %.elt448.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack449.i = load i32, ptr %.elt448.i, align 4
  %84 = insertvalue [5 x i32] %82, i32 %.unpack449.i, 2
  %.elt450.i = getelementptr inbounds [5 x i32], ptr %arrayidx145.i, i32 0, i32 3
  %85 = ptrtoint ptr %.elt450.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.unpack451.i = load i32, ptr %.elt450.i, align 4
  %86 = insertvalue [5 x i32] %84, i32 %.unpack451.i, 3
  %.elt452.i = getelementptr inbounds [5 x i32], ptr %arrayidx145.i, i32 0, i32 4
  %87 = ptrtoint ptr %.elt452.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %.unpack453.i = load i32, ptr %.elt452.i, align 4
  %88 = insertvalue [5 x i32] %86, i32 %.unpack453.i, 4
  %call146.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %88) #8
  %arrayidx147.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 10, i32 %i.0546.i
  %89 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call146.i, ptr %arrayidx147.i, align 4
  %cmp.i510.i = icmp ugt ptr %call146.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i510.i, label %do.end154.i, label %if.end158.i

do.end154.i:                                      ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.98, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end158.i:                                      ; preds = %if.end144.i
  %arrayidx159.i = getelementptr [4 x %struct.reg_field], ptr @p_standard_mode, i32 0, i32 %i.0546.i
  %90 = ptrtoint ptr %arrayidx159.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %.unpack454.i = load i32, ptr %arrayidx159.i, align 4
  %91 = insertvalue [5 x i32] undef, i32 %.unpack454.i, 0
  %.elt455.i = getelementptr inbounds [5 x i32], ptr %arrayidx159.i, i32 0, i32 1
  %92 = ptrtoint ptr %.elt455.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.unpack456.i = load i32, ptr %.elt455.i, align 4
  %93 = insertvalue [5 x i32] %91, i32 %.unpack456.i, 1
  %.elt457.i = getelementptr inbounds [5 x i32], ptr %arrayidx159.i, i32 0, i32 2
  %94 = ptrtoint ptr %.elt457.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %.unpack458.i = load i32, ptr %.elt457.i, align 4
  %95 = insertvalue [5 x i32] %93, i32 %.unpack458.i, 2
  %.elt459.i = getelementptr inbounds [5 x i32], ptr %arrayidx159.i, i32 0, i32 3
  %96 = ptrtoint ptr %.elt459.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %.unpack460.i = load i32, ptr %.elt459.i, align 4
  %97 = insertvalue [5 x i32] %95, i32 %.unpack460.i, 3
  %.elt461.i = getelementptr inbounds [5 x i32], ptr %arrayidx159.i, i32 0, i32 4
  %98 = ptrtoint ptr %.elt461.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %.unpack462.i = load i32, ptr %.elt461.i, align 4
  %99 = insertvalue [5 x i32] %97, i32 %.unpack462.i, 4
  %call160.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %99) #8
  %arrayidx161.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 11, i32 %i.0546.i
  %100 = ptrtoint ptr %arrayidx161.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %call160.i, ptr %arrayidx161.i, align 4
  %cmp.i511.i = icmp ugt ptr %call160.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i511.i, label %do.end168.i, label %if.end172.i

do.end168.i:                                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.101, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end172.i:                                      ; preds = %if.end158.i
  %arrayidx173.i = getelementptr [4 x %struct.reg_field], ptr @p0_fullrt_div, i32 0, i32 %i.0546.i
  %101 = ptrtoint ptr %arrayidx173.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.unpack463.i = load i32, ptr %arrayidx173.i, align 4
  %102 = insertvalue [5 x i32] undef, i32 %.unpack463.i, 0
  %.elt464.i = getelementptr inbounds [5 x i32], ptr %arrayidx173.i, i32 0, i32 1
  %103 = ptrtoint ptr %.elt464.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.unpack465.i = load i32, ptr %.elt464.i, align 4
  %104 = insertvalue [5 x i32] %102, i32 %.unpack465.i, 1
  %.elt466.i = getelementptr inbounds [5 x i32], ptr %arrayidx173.i, i32 0, i32 2
  %105 = ptrtoint ptr %.elt466.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.unpack467.i = load i32, ptr %.elt466.i, align 4
  %106 = insertvalue [5 x i32] %104, i32 %.unpack467.i, 2
  %.elt468.i = getelementptr inbounds [5 x i32], ptr %arrayidx173.i, i32 0, i32 3
  %107 = ptrtoint ptr %.elt468.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.unpack469.i = load i32, ptr %.elt468.i, align 4
  %108 = insertvalue [5 x i32] %106, i32 %.unpack469.i, 3
  %.elt470.i = getelementptr inbounds [5 x i32], ptr %arrayidx173.i, i32 0, i32 4
  %109 = ptrtoint ptr %.elt470.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %.unpack471.i = load i32, ptr %.elt470.i, align 4
  %110 = insertvalue [5 x i32] %108, i32 %.unpack471.i, 4
  %call174.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %110) #8
  %arrayidx175.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 14, i32 %i.0546.i
  %111 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call174.i, ptr %arrayidx175.i, align 4
  %cmp.i512.i = icmp ugt ptr %call174.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i512.i, label %do.end182.i, label %if.end186.i

do.end182.i:                                      ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.104, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end186.i:                                      ; preds = %if.end172.i
  %arrayidx187.i = getelementptr [4 x %struct.reg_field], ptr @p_mac_div_sel0, i32 0, i32 %i.0546.i
  %112 = ptrtoint ptr %arrayidx187.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %.unpack472.i = load i32, ptr %arrayidx187.i, align 4
  %113 = insertvalue [5 x i32] undef, i32 %.unpack472.i, 0
  %.elt473.i = getelementptr inbounds [5 x i32], ptr %arrayidx187.i, i32 0, i32 1
  %114 = ptrtoint ptr %.elt473.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %.unpack474.i = load i32, ptr %.elt473.i, align 4
  %115 = insertvalue [5 x i32] %113, i32 %.unpack474.i, 1
  %.elt475.i = getelementptr inbounds [5 x i32], ptr %arrayidx187.i, i32 0, i32 2
  %116 = ptrtoint ptr %.elt475.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %.unpack476.i = load i32, ptr %.elt475.i, align 4
  %117 = insertvalue [5 x i32] %115, i32 %.unpack476.i, 2
  %.elt477.i = getelementptr inbounds [5 x i32], ptr %arrayidx187.i, i32 0, i32 3
  %118 = ptrtoint ptr %.elt477.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.unpack478.i = load i32, ptr %.elt477.i, align 4
  %119 = insertvalue [5 x i32] %117, i32 %.unpack478.i, 3
  %.elt479.i = getelementptr inbounds [5 x i32], ptr %arrayidx187.i, i32 0, i32 4
  %120 = ptrtoint ptr %.elt479.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.unpack480.i = load i32, ptr %.elt479.i, align 4
  %121 = insertvalue [5 x i32] %119, i32 %.unpack480.i, 4
  %call188.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %121) #8
  %arrayidx189.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 12, i32 %i.0546.i
  %122 = ptrtoint ptr %arrayidx189.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call188.i, ptr %arrayidx189.i, align 4
  %cmp.i513.i = icmp ugt ptr %call188.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i513.i, label %do.end196.i, label %if.end200.i

do.end196.i:                                      ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.107, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

if.end200.i:                                      ; preds = %if.end186.i
  %arrayidx201.i = getelementptr [4 x %struct.reg_field], ptr @p_mac_div_sel1, i32 0, i32 %i.0546.i
  %123 = ptrtoint ptr %arrayidx201.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.unpack481.i = load i32, ptr %arrayidx201.i, align 4
  %124 = insertvalue [5 x i32] undef, i32 %.unpack481.i, 0
  %.elt482.i = getelementptr inbounds [5 x i32], ptr %arrayidx201.i, i32 0, i32 1
  %125 = ptrtoint ptr %.elt482.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %.unpack483.i = load i32, ptr %.elt482.i, align 4
  %126 = insertvalue [5 x i32] %124, i32 %.unpack483.i, 1
  %.elt484.i = getelementptr inbounds [5 x i32], ptr %arrayidx201.i, i32 0, i32 2
  %127 = ptrtoint ptr %.elt484.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %.unpack485.i = load i32, ptr %.elt484.i, align 4
  %128 = insertvalue [5 x i32] %126, i32 %.unpack485.i, 2
  %.elt486.i = getelementptr inbounds [5 x i32], ptr %arrayidx201.i, i32 0, i32 3
  %129 = ptrtoint ptr %.elt486.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.unpack487.i = load i32, ptr %.elt486.i, align 4
  %130 = insertvalue [5 x i32] %128, i32 %.unpack487.i, 3
  %.elt488.i = getelementptr inbounds [5 x i32], ptr %arrayidx201.i, i32 0, i32 4
  %131 = ptrtoint ptr %.elt488.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.unpack489.i = load i32, ptr %.elt488.i, align 4
  %132 = insertvalue [5 x i32] %130, i32 %.unpack489.i, 4
  %call202.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] %132) #8
  %arrayidx203.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 13, i32 %i.0546.i
  %133 = ptrtoint ptr %arrayidx203.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call202.i, ptr %arrayidx203.i, align 4
  %cmp.i514.i = icmp ugt ptr %call202.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i514.i, label %do.end210.i, label %for.inc.i

do.end210.i:                                      ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.110, i32 noundef %i.0546.i) #11
  br label %wiz_regfield_init.exit

for.inc.i:                                        ; preds = %if.end200.i
  %inc.i = add nuw nsw i32 %i.0546.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call215.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1040, i32 30, i32 30, i32 0, i32 0]) #8
  %typec_ln10_swap.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 21
  %134 = ptrtoint ptr %typec_ln10_swap.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call215.i, ptr %typec_ln10_swap.i, align 4
  %cmp.i515.i = icmp ugt ptr %call215.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i515.i, label %do.end221.i, label %if.end224.i

do.end221.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.113) #11
  br label %wiz_regfield_init.exit

if.end224.i:                                      ; preds = %for.end.i
  %call225.i = call ptr @devm_regmap_field_alloc(ptr noundef %42, ptr noundef %call19, [5 x i32] [i32 1036, i32 30, i32 30, i32 0, i32 0]) #8
  %phy_en_refclk.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 7
  %135 = ptrtoint ptr %phy_en_refclk.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call225.i, ptr %phy_en_refclk.i, align 4
  %cmp.i516.i = icmp ugt ptr %call225.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i516.i, label %do.end231.i, label %if.end224.i.if.end107_crit_edge

if.end224.i.if.end107_crit_edge:                  ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

do.end231.i:                                      ; preds = %if.end224.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.116) #11
  br label %wiz_regfield_init.exit

wiz_regfield_init.exit:                           ; preds = %do.end231.i, %do.end221.i, %do.end210.i, %do.end196.i, %do.end182.i, %do.end168.i, %do.end154.i, %do.end140.i, %do.end126.i, %do.end111.i, %do.end88.i, %do.end74.i, %do.end60.i, %do.end45.i, %do.end34.i, %do.end24.i, %do.end14.i, %do.end.i
  %phy_en_refclk.sink.i = phi ptr [ %phy_en_refclk.i, %do.end231.i ], [ %typec_ln10_swap.i, %do.end221.i ], [ %arrayidx203.i, %do.end210.i ], [ %arrayidx189.i, %do.end196.i ], [ %arrayidx175.i, %do.end182.i ], [ %arrayidx161.i, %do.end168.i ], [ %arrayidx147.i, %do.end154.i ], [ %arrayidx133.i, %do.end140.i ], [ %arrayidx119.i, %do.end126.i ], [ %55, %do.end111.i ], [ %arrayidx81.i, %do.end88.i ], [ %mux_sel_field.i, %do.end74.i ], [ %arrayidx53.i, %do.end60.i ], [ %div_sel_field.i, %do.end45.i ], [ %pma_cmn_refclk_mode.i, %do.end34.i ], [ %pma_cmn_refclk_int_mode.i, %do.end24.i ], [ %phy_reset_n.i, %do.end14.i ], [ %por_en.i, %do.end.i ]
  %136 = ptrtoint ptr %phy_en_refclk.sink.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phy_en_refclk.sink.i, align 4
  %tobool102.not = icmp eq ptr %137, null
  br i1 %tobool102.not, label %wiz_regfield_init.exit.if.end107_crit_edge, label %do.end106

wiz_regfield_init.exit.if.end107_crit_edge:       ; preds = %wiz_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

do.end106:                                        ; preds = %wiz_regfield_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %137 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  br label %err_addr_to_resource

if.end107:                                        ; preds = %wiz_regfield_init.exit.if.end107_crit_edge, %if.end224.i.if.end107_crit_edge
  %wiz_phy_reset_dev = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 25
  %dev108 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 25, i32 4
  %139 = ptrtoint ptr %dev108 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %dev1, ptr %dev108, align 4
  %140 = ptrtoint ptr %wiz_phy_reset_dev to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @wiz_phy_reset_ops, ptr %wiz_phy_reset_dev, align 4
  %owner = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 25, i32 1
  %141 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %owner, align 4
  %of_node109 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 25, i32 5
  %142 = ptrtoint ptr %of_node109 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %1, ptr %of_node109, align 4
  %143 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %num_lanes, align 4
  %add = add i32 %144, 1
  %nr_resets = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 25, i32 8
  %145 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %add, ptr %nr_resets, align 4
  %call110 = call i32 @devm_reset_controller_register(ptr noundef %dev1, ptr noundef %wiz_phy_reset_dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end115, label %if.end116

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.35) #11
  br label %err_addr_to_resource

if.end116:                                        ; preds = %if.end107
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %call.i294 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i294)
  %cmp118 = icmp slt i32 %call.i294, 0
  br i1 %cmp118, label %do.end122, label %if.end123

do.end122:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #11
  br label %err_get_sync

if.end123:                                        ; preds = %if.end116
  %146 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %31, align 4
  %148 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev81, align 4
  %call.i295 = call ptr @devm_clk_get(ptr noundef %149, ptr noundef nonnull @.str.118) #8
  %cmp.i.i296 = icmp ugt ptr %call.i295, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i296, label %do.end.i297, label %if.end.i301

do.end.i297:                                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.119) #11
  %150 = ptrtoint ptr %call.i295 to i32
  br label %wiz_clock_init.exit

if.end.i301:                                      ; preds = %if.end123
  %input_clks.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 29
  %151 = ptrtoint ptr %input_clks.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %call.i295, ptr %input_clks.i, align 4
  %call5.i = call i32 @clk_get_rate(ptr noundef %call.i295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999999, i32 %call5.i)
  %cmp.i298 = icmp ugt i32 %call5.i, 99999999
  %pma_cmn_refclk_int_mode.i299 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 15
  %152 = ptrtoint ptr %pma_cmn_refclk_int_mode.i299 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pma_cmn_refclk_int_mode.i299, align 4
  %..i300 = select i1 %cmp.i298, i32 1, i32 3
  %call.i150.i = call i32 @regmap_field_update_bits_base(ptr noundef %153, i32 noundef -1, i32 noundef %..i300, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call11.i = call ptr @devm_clk_get(ptr noundef %149, ptr noundef nonnull @.str.121) #8
  %cmp.i151.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151.i, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.123) #11
  %154 = ptrtoint ptr %call11.i to i32
  br label %wiz_clock_init.exit

if.end18.i:                                       ; preds = %if.end.i301
  %arrayidx20.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 29, i32 1
  %155 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %call11.i, ptr %arrayidx20.i, align 4
  %call21.i = call i32 @clk_get_rate(ptr noundef %call11.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 99999999, i32 %call21.i)
  %cmp22.i = icmp ugt i32 %call21.i, 99999999
  %pma_cmn_refclk_mode.i302 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 16
  %156 = ptrtoint ptr %pma_cmn_refclk_mode.i302 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pma_cmn_refclk_mode.i302, align 4
  %.332.i = select i1 %cmp22.i, i32 0, i32 2
  %call.i153.i = call i32 @regmap_field_update_bits_base(ptr noundef %157, i32 noundef -1, i32 noundef %.332.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %158 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp29.i = icmp eq i32 %159, 2
  br i1 %cmp29.i, label %if.then30.i, label %if.end18.i.for.body.i304_crit_edge

if.end18.i.for.body.i304_crit_edge:               ; preds = %if.end18.i
  br label %for.body.i304

if.then30.i:                                      ; preds = %if.end18.i
  %160 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %31, align 4
  %162 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dev81, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %163, i32 0, i32 27
  %164 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %of_node.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %wiz_mux_clk_register.exit.thread66.i.i.for.body.i.i_crit_edge, %if.then30.i
  %i.086.i.i = phi i32 [ %inc.i.i, %wiz_mux_clk_register.exit.thread66.i.i.for.body.i.i_crit_edge ], [ 0, %if.then30.i ]
  %arrayidx.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 19, i32 %i.086.i.i
  %166 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.wiz_clk_mux_sel, ptr %161, i32 %i.086.i.i
  %168 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev81, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i.i.i) #8
  %170 = call ptr @memset(ptr %clk_name.i.i.i, i32 255, i32 100)
  %call.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %169, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_mux_clk_register.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %num_parents2.i.i.i = getelementptr %struct.wiz_clk_mux_sel, ptr %161, i32 %i.086.i.i, i32 2
  %171 = ptrtoint ptr %num_parents2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_parents2.i.i.i, align 4
  %mul.i.i.i = shl i32 %172, 2
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i.i, i32 noundef 3520) #12
  %tobool4.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end.i.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_mux_clk_register.exit.thread.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp72.not.i.i.i = icmp eq i32 %172, 0
  br i1 %cmp72.not.i.i.i, label %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i.i.i

for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.body.i.i.i:                                   ; preds = %if.end11.i.i.i.for.body.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge
  %i.073.i.i.i = phi i32 [ %inc.i.i.i, %if.end11.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.wiz_clk_mux_sel, ptr %161, i32 %i.086.i.i, i32 3, i32 %i.073.i.i.i
  %173 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 29, i32 %174
  %175 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx7.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %176, null
  %cmp.i.i.i.i = icmp ugt ptr %176, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %wiz_mux_clk_register.exit.thread69.i.i, label %if.end11.i.i.i

wiz_mux_clk_register.exit.thread69.i.i:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i.i.i = getelementptr [17 x ptr], ptr @output_clk_names, i32 0, i32 %i.086.i.i
  %177 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx10.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.146, ptr noundef %178) #11
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i.i) #8
  br label %do.end.i.i

if.end11.i.i.i:                                   ; preds = %for.body.i.i.i
  %call12.i.i.i = call ptr @__clk_get_name(ptr noundef nonnull %176) #8
  %arrayidx13.i.i.i = getelementptr ptr, ptr %call9.i.i.i.i.i, i32 %i.073.i.i.i
  %179 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call12.i.i.i, ptr %arrayidx13.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.073.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %172
  br i1 %exitcond.not.i.i.i, label %if.end11.i.i.i.for.end.i.i.i_crit_edge, label %if.end11.i.i.i.for.body.i.i.i_crit_edge

if.end11.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

if.end11.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %if.end11.i.i.i.for.end.i.i.i_crit_edge, %for.cond.preheader.i.i.i.for.end.i.i.i_crit_edge
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 3
  %180 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i70.i.i.i = icmp eq ptr %181, null
  br i1 %tobool.not.i70.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.i.dev_name.exit.i.i.i_crit_edge

for.end.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %169, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %for.end.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %183, %if.end.i.i.i.i ], [ %181, %for.end.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  %arrayidx15.i.i.i = getelementptr [17 x ptr], ptr @output_clk_names, i32 0, i32 %i.086.i.i
  %184 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx15.i.i.i, align 4
  %call16.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i.i, i32 noundef 100, ptr noundef nonnull @.str.148, ptr noundef %retval.0.i.i.i.i, ptr noundef %185) #8
  %clk_data.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 3
  %ops.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 3, i32 1
  %186 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @wiz_clk_mux_ops, ptr %ops.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 3, i32 6
  %187 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 128, ptr %flags.i.i.i, align 4
  %parent_names17.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 3, i32 2
  %188 = ptrtoint ptr %parent_names17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %call9.i.i.i.i.i, ptr %parent_names17.i.i.i, align 4
  %conv.i.i.i = trunc i32 %172 to i8
  %num_parents18.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 3, i32 5
  %189 = ptrtoint ptr %num_parents18.i.i.i to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %conv.i.i.i, ptr %num_parents18.i.i.i, align 4
  %190 = ptrtoint ptr %clk_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %clk_name.i.i.i, ptr %clk_data.i.i.i, align 4
  %field20.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 1
  %191 = ptrtoint ptr %field20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %167, ptr %field20.i.i.i, align 4
  %table22.i.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i.i, i32 0, i32 2
  %192 = ptrtoint ptr %table22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %arrayidx4.i.i, ptr %table22.i.i.i, align 4
  %init23.i.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i.i, i32 0, i32 2
  %193 = ptrtoint ptr %init23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %clk_data.i.i.i, ptr %init23.i.i.i, align 4
  %call25.i.i.i = call ptr @devm_clk_register(ptr noundef %169, ptr noundef nonnull %call.i.i.i.i) #8
  %cmp.i71.i.i.i = icmp ugt ptr %call25.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71.i.i.i, label %wiz_mux_clk_register.exit.i.i, label %wiz_mux_clk_register.exit.thread66.i.i

wiz_mux_clk_register.exit.thread66.i.i:           ; preds = %dev_name.exit.i.i.i
  %arrayidx30.i.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 30, i32 %i.086.i.i
  %194 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call25.i.i.i, ptr %arrayidx30.i.i.i, align 4
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.086.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %wiz_mux_clk_register.exit.thread66.i.i.for.body.i.i_crit_edge

wiz_mux_clk_register.exit.thread66.i.i.for.body.i.i_crit_edge: ; preds = %wiz_mux_clk_register.exit.thread66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

wiz_mux_clk_register.exit.thread.i.i:             ; preds = %if.end.i.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge, %for.body.i.i.wiz_mux_clk_register.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i.i) #8
  br label %do.end.i.i

wiz_mux_clk_register.exit.i.i:                    ; preds = %dev_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %call25.i.i.i to i32
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i.i) #8
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %wiz_mux_clk_register.exit.i.i, %wiz_mux_clk_register.exit.thread.i.i, %wiz_mux_clk_register.exit.thread69.i.i
  %retval.0.i65.i.i = phi i32 [ -12, %wiz_mux_clk_register.exit.thread.i.i ], [ %195, %wiz_mux_clk_register.exit.i.i ], [ -22, %wiz_mux_clk_register.exit.thread69.i.i ]
  %arrayidx6.i.i = getelementptr [17 x ptr], ptr @output_clk_names, i32 0, i32 %i.086.i.i
  %196 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx6.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.138, ptr noundef %197) #11
  br label %do.end35.i

for.end.i.i:                                      ; preds = %wiz_mux_clk_register.exit.thread66.i.i
  %198 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev81, align 4
  %call.i.i54.i.i = call noalias ptr @devm_kmalloc(ptr noundef %199, i32 noundef 44, i32 noundef 3520) #8
  %tobool.not.i55.i.i = icmp eq ptr %call.i.i54.i.i, null
  br i1 %tobool.not.i55.i.i, label %for.end.i.i.do.end14.i.i_crit_edge, label %if.end.i60.i.i

for.end.i.i.do.end14.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end14.i.i

if.end.i60.i.i:                                   ; preds = %for.end.i.i
  %clk_data.i56.i.i = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %call.i.i54.i.i, i32 0, i32 2
  %ops.i57.i.i = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %call.i.i54.i.i, i32 0, i32 2, i32 1
  %200 = ptrtoint ptr %ops.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr @wiz_phy_en_refclk_ops, ptr %ops.i57.i.i, align 4
  %flags.i58.i.i = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %call.i.i54.i.i, i32 0, i32 2, i32 6
  %201 = ptrtoint ptr %flags.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %flags.i58.i.i, align 4
  %202 = ptrtoint ptr %clk_data.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr @.str.149, ptr %clk_data.i56.i.i, align 4
  %phy_en_refclk.i.i.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 7
  %203 = ptrtoint ptr %phy_en_refclk.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %phy_en_refclk.i.i.i, align 4
  %phy_en_refclk2.i.i.i = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %call.i.i54.i.i, i32 0, i32 1
  %205 = ptrtoint ptr %phy_en_refclk2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %204, ptr %phy_en_refclk2.i.i.i, align 4
  %init3.i.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i54.i.i, i32 0, i32 2
  %206 = ptrtoint ptr %init3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %clk_data.i56.i.i, ptr %init3.i.i.i, align 4
  %call5.i.i.i = call ptr @devm_clk_register(ptr noundef %199, ptr noundef nonnull %call.i.i54.i.i) #8
  %cmp.i.i59.i.i = icmp ugt ptr %call5.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i59.i.i, label %wiz_phy_en_refclk_register.exit.i.i, label %wiz_phy_en_refclk_register.exit.thread.i.i

wiz_phy_en_refclk_register.exit.thread.i.i:       ; preds = %if.end.i60.i.i
  %arrayidx.i61.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 30, i32 16
  %207 = ptrtoint ptr %arrayidx.i61.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call5.i.i.i, ptr %arrayidx.i61.i.i, align 4
  %output_clks.i.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 30
  %clk_data.i.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 31
  %208 = ptrtoint ptr %clk_data.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %output_clks.i.i, ptr %clk_data.i.i, align 4
  %clk_num.i.i = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 31, i32 1
  %209 = ptrtoint ptr %clk_num.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 32, ptr %clk_num.i.i, align 4
  %call18.i.i = call i32 @of_clk_add_provider(ptr noundef %165, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %tobool19.not.i.i = icmp eq i32 %call18.i.i, 0
  br i1 %tobool19.not.i.i, label %wiz_phy_en_refclk_register.exit.thread.i.i.for.cond.preheader_crit_edge, label %wiz_clock_register.exit.thread178.i

wiz_phy_en_refclk_register.exit.thread.i.i.for.cond.preheader_crit_edge: ; preds = %wiz_phy_en_refclk_register.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

wiz_phy_en_refclk_register.exit.i.i:              ; preds = %if.end.i60.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %call5.i.i.i to i32
  br label %do.end14.i.i

do.end14.i.i:                                     ; preds = %wiz_phy_en_refclk_register.exit.i.i, %for.end.i.i.do.end14.i.i_crit_edge
  %retval.0.i6277.i.i = phi i32 [ %210, %wiz_phy_en_refclk_register.exit.i.i ], [ -12, %for.end.i.i.do.end14.i.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.141) #11
  br label %do.end35.i

wiz_clock_register.exit.thread178.i:              ; preds = %wiz_phy_en_refclk_register.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %211 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %165, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.144, ptr noundef %212) #11
  br label %do.end35.i

do.end35.i:                                       ; preds = %wiz_clock_register.exit.thread178.i, %do.end14.i.i, %do.end.i.i
  %retval.0.i181.i = phi i32 [ %call18.i.i, %wiz_clock_register.exit.thread178.i ], [ %retval.0.i65.i.i, %do.end.i.i ], [ %retval.0.i6277.i.i, %do.end14.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.126) #11
  br label %wiz_clock_init.exit

for.cond57.preheader.i:                           ; preds = %wiz_mux_of_clk_register.exit.thread185.i
  %213 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %cmp58233.not.i = icmp eq i32 %214, 0
  br i1 %cmp58233.not.i, label %for.cond57.preheader.i.for.cond.preheader_crit_edge, label %for.cond57.preheader.i.for.body59.i_crit_edge

for.cond57.preheader.i.for.body59.i_crit_edge:    ; preds = %for.cond57.preheader.i
  br label %for.body59.i

for.cond57.preheader.i.for.cond.preheader_crit_edge: ; preds = %for.cond57.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.body.i304:                                    ; preds = %wiz_mux_of_clk_register.exit.thread185.i.for.body.i304_crit_edge, %if.end18.i.for.body.i304_crit_edge
  %i.0232.i = phi i32 [ %inc.i305, %wiz_mux_of_clk_register.exit.thread185.i.for.body.i304_crit_edge ], [ 0, %if.end18.i.for.body.i304_crit_edge ]
  %node_name40.i = getelementptr %struct.wiz_clk_mux_sel, ptr %147, i32 %i.0232.i, i32 1
  %215 = ptrtoint ptr %node_name40.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %node_name40.i, align 4
  %call41.i = call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef %216) #8
  %tobool42.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool42.not.i, label %do.end46.i, label %if.end47.i

do.end46.i:                                       ; preds = %for.body.i304
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.129, ptr noundef %216) #11
  br label %err.i

if.end47.i:                                       ; preds = %for.body.i304
  %arrayidx39.i = getelementptr %struct.wiz_clk_mux_sel, ptr %147, i32 %i.0232.i
  %arrayidx48.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 19, i32 %i.0232.i
  %217 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx48.i, align 4
  %219 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dev81, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  %221 = call ptr @memset(ptr %clk_name.i.i, i32 255, i32 100)
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %220, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end47.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge, label %if.end.i.i

if.end47.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_mux_of_clk_register.exit.thread.i

if.end.i.i:                                       ; preds = %if.end47.i
  %call2.i.i = call i32 @of_clk_get_parent_count(ptr noundef nonnull %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i.i)
  %cmp.i154.i = icmp ult i32 %call2.i.i, 2
  br i1 %cmp.i154.i, label %do.end.i155.i, label %if.end4.i.i

do.end.i155.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.150) #11
  br label %wiz_mux_of_clk_register.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %mul.i.i = shl i32 %call2.i.i, 2
  %call.i66.i.i = call noalias ptr @devm_kmalloc(ptr noundef %220, i32 noundef %mul.i.i, i32 noundef 3520) #8
  %tobool6.not.i.i = icmp eq ptr %call.i66.i.i, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge, label %if.end8.i.i

if.end4.i.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_mux_of_clk_register.exit.thread.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call9.i.i = call i32 @of_clk_parent_fill(ptr noundef nonnull %call41.i, ptr noundef nonnull %call.i66.i.i, i32 noundef %call2.i.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %220, i32 0, i32 3
  %222 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i156.i = icmp eq ptr %223, null
  br i1 %tobool.not.i.i156.i, label %if.end.i.i157.i, label %if.end8.i.i.dev_name.exit.i.i_crit_edge

if.end8.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i157.i:                                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %224 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %220, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i157.i, %if.end8.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %225, %if.end.i.i157.i ], [ %223, %if.end8.i.i.dev_name.exit.i.i_crit_edge ]
  %226 = ptrtoint ptr %call41.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %call41.i, align 4
  %call11.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i, i32 noundef 100, ptr noundef nonnull @.str.148, ptr noundef %retval.0.i.i.i, ptr noundef %227) #8
  %clk_data.i158.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 3
  %ops.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 3, i32 1
  %228 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store ptr @wiz_clk_mux_ops, ptr %ops.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 3, i32 6
  %229 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 128, ptr %flags.i.i, align 4
  %parent_names12.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 3, i32 2
  %230 = ptrtoint ptr %parent_names12.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call.i66.i.i, ptr %parent_names12.i.i, align 4
  %conv.i.i = trunc i32 %call2.i.i to i8
  %num_parents13.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 3, i32 5
  %231 = ptrtoint ptr %num_parents13.i.i to i32
  call void @__asan_store1_noabort(i32 %231)
  store i8 %conv.i.i, ptr %num_parents13.i.i, align 4
  %232 = ptrtoint ptr %clk_data.i158.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %clk_name.i.i, ptr %clk_data.i158.i, align 4
  %field16.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 1
  %233 = ptrtoint ptr %field16.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %218, ptr %field16.i.i, align 4
  %table17.i.i = getelementptr inbounds %struct.wiz_clk_mux, ptr %call.i.i.i, i32 0, i32 2
  %234 = ptrtoint ptr %table17.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %arrayidx39.i, ptr %table17.i.i, align 4
  %init18.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %235 = ptrtoint ptr %init18.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %clk_data.i158.i, ptr %init18.i.i, align 4
  %call20.i.i = call ptr @devm_clk_register(ptr noundef %220, ptr noundef nonnull %call.i.i.i) #8
  %cmp.i.i.i = icmp ugt ptr %call20.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %wiz_mux_of_clk_register.exit.i, label %if.end24.i.i

if.end24.i.i:                                     ; preds = %dev_name.exit.i.i
  %call25.i.i = call i32 @of_clk_add_provider(ptr noundef nonnull %call41.i, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call20.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %wiz_mux_of_clk_register.exit.thread185.i, label %do.end30.i.i

wiz_mux_of_clk_register.exit.thread185.i:         ; preds = %if.end24.i.i
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  call void @of_node_put(ptr noundef nonnull %call41.i) #8
  %inc.i305 = add nuw nsw i32 %i.0232.i, 1
  %exitcond.not.i306 = icmp eq i32 %inc.i305, 3
  br i1 %exitcond.not.i306, label %for.cond57.preheader.i, label %wiz_mux_of_clk_register.exit.thread185.i.for.body.i304_crit_edge

wiz_mux_of_clk_register.exit.thread185.i.for.body.i304_crit_edge: ; preds = %wiz_mux_of_clk_register.exit.thread185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i304

do.end30.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %220, ptr noundef nonnull @.str.144, ptr noundef nonnull %clk_name.i.i) #11
  br label %wiz_mux_of_clk_register.exit.thread.i

wiz_mux_of_clk_register.exit.thread.i:            ; preds = %do.end30.i.i, %if.end4.i.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge, %do.end.i155.i, %if.end47.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge
  %retval.0.i159.ph.i = phi i32 [ %call25.i.i, %do.end30.i.i ], [ -22, %do.end.i155.i ], [ -12, %if.end47.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge ], [ -12, %if.end4.i.i.wiz_mux_of_clk_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  br label %do.end55.i

wiz_mux_of_clk_register.exit.i:                   ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %call20.i.i to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i.i) #8
  br label %do.end55.i

do.end55.i:                                       ; preds = %wiz_mux_of_clk_register.exit.i, %wiz_mux_of_clk_register.exit.thread.i
  %retval.0.i159184.i = phi i32 [ %retval.0.i159.ph.i, %wiz_mux_of_clk_register.exit.thread.i ], [ %236, %wiz_mux_of_clk_register.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.132, ptr noundef %216) #11
  call void @of_node_put(ptr noundef nonnull %call41.i) #8
  br label %err.i

for.body59.i:                                     ; preds = %wiz_div_clk_register.exit.thread191.i.for.body59.i_crit_edge, %for.cond57.preheader.i.for.body59.i_crit_edge
  %i.1234.i = phi i32 [ %inc80.i, %wiz_div_clk_register.exit.thread191.i.for.body59.i_crit_edge ], [ 0, %for.cond57.preheader.i.for.body59.i_crit_edge ]
  %node_name61.i = getelementptr [2 x %struct.wiz_clk_div_sel], ptr @clk_div_sel, i32 0, i32 %i.1234.i, i32 1
  %237 = ptrtoint ptr %node_name61.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %node_name61.i, align 4
  %call62.i = call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef %238) #8
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %do.end67.i, label %if.end68.i

do.end67.i:                                       ; preds = %for.body59.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.129, ptr noundef %238) #11
  br label %err.i

if.end68.i:                                       ; preds = %for.body59.i
  %arrayidx60.i = getelementptr [2 x %struct.wiz_clk_div_sel], ptr @clk_div_sel, i32 0, i32 %i.1234.i
  %arrayidx69.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 20, i32 %i.1234.i
  %239 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %arrayidx69.i, align 4
  %241 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %arrayidx60.i, align 4
  %243 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev81, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %clk_name.i160.i) #8
  %245 = call ptr @memset(ptr %clk_name.i160.i, i32 255, i32 100)
  %call.i.i162.i = call noalias ptr @devm_kmalloc(ptr noundef %244, i32 noundef 48, i32 noundef 3520) #8
  %tobool.not.i163.i = icmp eq ptr %call.i.i162.i, null
  br i1 %tobool.not.i163.i, label %if.end68.i.wiz_div_clk_register.exit.thread.i_crit_edge, label %if.end.i166.i

if.end68.i.wiz_div_clk_register.exit.thread.i_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_div_clk_register.exit.thread.i

if.end.i166.i:                                    ; preds = %if.end68.i
  %init_name.i.i164.i = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 3
  %246 = ptrtoint ptr %init_name.i.i164.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %init_name.i.i164.i, align 8
  %tobool.not.i.i165.i = icmp eq ptr %247, null
  br i1 %tobool.not.i.i165.i, label %if.end.i.i167.i, label %if.end.i166.i.dev_name.exit.i169.i_crit_edge

if.end.i166.i.dev_name.exit.i169.i_crit_edge:     ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i169.i

if.end.i.i167.i:                                  ; preds = %if.end.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  %248 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %244, align 4
  br label %dev_name.exit.i169.i

dev_name.exit.i169.i:                             ; preds = %if.end.i.i167.i, %if.end.i166.i.dev_name.exit.i169.i_crit_edge
  %retval.0.i.i168.i = phi ptr [ %249, %if.end.i.i167.i ], [ %247, %if.end.i166.i.dev_name.exit.i169.i_crit_edge ]
  %250 = ptrtoint ptr %call62.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %call62.i, align 4
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i160.i, i32 noundef 100, ptr noundef nonnull @.str.148, ptr noundef %retval.0.i.i168.i, ptr noundef %251) #8
  %call.i53.i.i = call noalias ptr @devm_kmalloc(ptr noundef %244, i32 noundef 4, i32 noundef 3520) #8
  %tobool5.not.i.i = icmp eq ptr %call.i53.i.i, null
  br i1 %tobool5.not.i.i, label %dev_name.exit.i169.i.wiz_div_clk_register.exit.thread.i_crit_edge, label %if.end7.i.i

dev_name.exit.i169.i.wiz_div_clk_register.exit.thread.i_crit_edge: ; preds = %dev_name.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wiz_div_clk_register.exit.thread.i

if.end7.i.i:                                      ; preds = %dev_name.exit.i169.i
  %call8.i.i = call i32 @of_clk_parent_fill(ptr noundef nonnull %call62.i, ptr noundef nonnull %call.i53.i.i, i32 noundef 1) #8
  %clk_data.i170.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 3
  %ops.i171.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 3, i32 1
  %252 = ptrtoint ptr %ops.i171.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr @wiz_clk_div_ops, ptr %ops.i171.i, align 4
  %flags.i172.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 3, i32 6
  %253 = ptrtoint ptr %flags.i172.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 0, ptr %flags.i172.i, align 4
  %parent_names9.i.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 3, i32 2
  %254 = ptrtoint ptr %parent_names9.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %call.i53.i.i, ptr %parent_names9.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 3, i32 5
  %255 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 1, ptr %num_parents.i.i, align 4
  %256 = ptrtoint ptr %clk_data.i170.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %clk_name.i160.i, ptr %clk_data.i170.i, align 4
  %field12.i.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 1
  %257 = ptrtoint ptr %field12.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %240, ptr %field12.i.i, align 4
  %table13.i.i = getelementptr inbounds %struct.wiz_clk_divider, ptr %call.i.i162.i, i32 0, i32 2
  %258 = ptrtoint ptr %table13.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %242, ptr %table13.i.i, align 4
  %init14.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i162.i, i32 0, i32 2
  %259 = ptrtoint ptr %init14.i.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %clk_data.i170.i, ptr %init14.i.i, align 4
  %call16.i.i = call ptr @devm_clk_register(ptr noundef %244, ptr noundef nonnull %call.i.i162.i) #8
  %cmp.i.i173.i = icmp ugt ptr %call16.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i173.i, label %wiz_div_clk_register.exit.i, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.end7.i.i
  %call21.i.i = call i32 @of_clk_add_provider(ptr noundef nonnull %call62.i, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call16.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %wiz_div_clk_register.exit.thread191.i, label %do.end.i174.i

wiz_div_clk_register.exit.thread191.i:            ; preds = %if.end20.i.i
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i160.i) #8
  call void @of_node_put(ptr noundef nonnull %call62.i) #8
  %inc80.i = add nuw i32 %i.1234.i, 1
  %260 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %36, align 4
  %cmp58.i = icmp ult i32 %inc80.i, %261
  br i1 %cmp58.i, label %wiz_div_clk_register.exit.thread191.i.for.body59.i_crit_edge, label %wiz_div_clk_register.exit.thread191.i.for.cond.preheader_crit_edge

wiz_div_clk_register.exit.thread191.i.for.cond.preheader_crit_edge: ; preds = %wiz_div_clk_register.exit.thread191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

wiz_div_clk_register.exit.thread191.i.for.body59.i_crit_edge: ; preds = %wiz_div_clk_register.exit.thread191.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body59.i

do.end.i174.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.144, ptr noundef nonnull %clk_name.i160.i) #11
  br label %wiz_div_clk_register.exit.thread.i

wiz_div_clk_register.exit.thread.i:               ; preds = %do.end.i174.i, %dev_name.exit.i169.i.wiz_div_clk_register.exit.thread.i_crit_edge, %if.end68.i.wiz_div_clk_register.exit.thread.i_crit_edge
  %retval.0.i175.ph.i = phi i32 [ %call21.i.i, %do.end.i174.i ], [ -12, %if.end68.i.wiz_div_clk_register.exit.thread.i_crit_edge ], [ -12, %dev_name.exit.i169.i.wiz_div_clk_register.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i160.i) #8
  br label %do.end77.i

wiz_div_clk_register.exit.i:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %262 = ptrtoint ptr %call16.i.i to i32
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %clk_name.i160.i) #8
  br label %do.end77.i

do.end77.i:                                       ; preds = %wiz_div_clk_register.exit.i, %wiz_div_clk_register.exit.thread.i
  %retval.0.i175190.i = phi i32 [ %retval.0.i175.ph.i, %wiz_div_clk_register.exit.thread.i ], [ %262, %wiz_div_clk_register.exit.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.132, ptr noundef %238) #11
  call void @of_node_put(ptr noundef nonnull %call62.i) #8
  br label %err.i

err.i:                                            ; preds = %do.end77.i, %do.end67.i, %do.end55.i, %do.end46.i
  %ret.0.i = phi i32 [ %retval.0.i159184.i, %do.end55.i ], [ -22, %do.end46.i ], [ %retval.0.i175190.i, %do.end77.i ], [ -22, %do.end67.i ]
  call fastcc void @wiz_clock_cleanup(ptr noundef %call.i, ptr noundef %1) #8
  br label %wiz_clock_init.exit

wiz_clock_init.exit:                              ; preds = %err.i, %do.end35.i, %do.end16.i, %do.end.i297
  %retval.0.i307 = phi i32 [ %150, %do.end.i297 ], [ %154, %do.end16.i ], [ %ret.0.i, %err.i ], [ %retval.0.i181.i, %do.end35.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i307)
  %cmp125 = icmp slt i32 %retval.0.i307, 0
  br i1 %cmp125, label %do.end129, label %wiz_clock_init.exit.for.cond.preheader_crit_edge

wiz_clock_init.exit.for.cond.preheader_crit_edge: ; preds = %wiz_clock_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %wiz_clock_init.exit.for.cond.preheader_crit_edge, %wiz_div_clk_register.exit.thread191.i.for.cond.preheader_crit_edge, %for.cond57.preheader.i.for.cond.preheader_crit_edge, %wiz_phy_en_refclk_register.exit.thread.i.i.for.cond.preheader_crit_edge
  %263 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %num_lanes83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %264)
  %cmp132413.not = icmp eq i32 %264, 0
  br i1 %cmp132413.not, label %for.cond.preheader.if.then138.critedge_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then138.critedge_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.critedge

do.end129:                                        ; preds = %wiz_clock_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.42) #11
  br label %err_get_sync

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0414, 1
  %265 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %num_lanes83, align 4
  %cmp132 = icmp ult i32 %inc, %266
  br i1 %cmp132, label %for.cond.for.body_crit_edge, label %for.cond.if.then138.critedge_crit_edge

for.cond.if.then138.critedge_crit_edge:           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then138.critedge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0414 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 8, i32 %i.0414
  %267 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %arrayidx, align 4
  %call133 = call i32 @regmap_field_read(ptr noundef %268, ptr noundef nonnull %val) #8
  %269 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %val, align 4
  %and = and i32 %270, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool134.not = icmp eq i32 %and, 0
  br i1 %tobool134.not, label %for.cond, label %for.body.if.end146_crit_edge

for.body.if.end146_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

if.then138.critedge:                              ; preds = %for.cond.if.then138.critedge_crit_edge, %for.cond.preheader.if.then138.critedge_crit_edge
  %271 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %dev81, align 4
  %273 = ptrtoint ptr %por_en.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %por_en.i, align 4
  %call.i.i.i308 = call i32 @regmap_field_update_bits_base(ptr noundef %274, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i308)
  %tobool.not.i.i309 = icmp eq i32 %call.i.i.i308, 0
  br i1 %tobool.not.i.i309, label %wiz_reset.exit.i, label %if.then138.critedge.do.end144_crit_edge

if.then138.critedge.do.end144_crit_edge:          ; preds = %if.then138.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

wiz_reset.exit.i:                                 ; preds = %if.then138.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %275 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %275(i32 noundef 214748000) #8
  %276 = ptrtoint ptr %por_en.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %por_en.i, align 4
  %call.i10.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %277, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %tobool.not.i = icmp eq i32 %call.i10.i.i, 0
  br i1 %tobool.not.i, label %if.end.i310, label %wiz_reset.exit.i.do.end144_crit_edge

wiz_reset.exit.i.do.end144_crit_edge:             ; preds = %wiz_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.end.i310:                                      ; preds = %wiz_reset.exit.i
  %278 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_lanes83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp23.not.i.i = icmp eq i32 %279, 0
  br i1 %cmp23.not.i.i, label %if.end.i310.if.end146_crit_edge, label %if.end.i310.for.body.i.i312_crit_edge

if.end.i310.for.body.i.i312_crit_edge:            ; preds = %if.end.i310
  br label %for.body.i.i312

if.end.i310.if.end146_crit_edge:                  ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

for.body.i.i312:                                  ; preds = %for.inc.i.i.for.body.i.i312_crit_edge, %if.end.i310.for.body.i.i312_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i314, %for.inc.i.i.for.body.i.i312_crit_edge ], [ 0, %if.end.i310.for.body.i.i312_crit_edge ]
  %arrayidx.i.i311 = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 28, i32 %i.024.i.i
  %280 = ptrtoint ptr %arrayidx.i.i311 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx.i.i311, align 4
  %282 = zext i32 %281 to i64
  call void @__sanitizer_cov_trace_switch(i64 %282, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %281, label %for.body.i.i312.for.inc.i.i_crit_edge [
    i32 6, label %for.body.i.i312.if.end8.i.i313_crit_edge
    i32 9, label %if.then6.i.i
  ]

for.body.i.i312.if.end8.i.i313_crit_edge:         ; preds = %for.body.i.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i313

for.body.i.i312.for.inc.i.i_crit_edge:            ; preds = %for.body.i.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i312
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i313

if.end8.i.i313:                                   ; preds = %if.then6.i.i, %for.body.i.i312.if.end8.i.i313_crit_edge
  %mode.0.i.i = phi i32 [ 1, %if.then6.i.i ], [ 0, %for.body.i.i312.if.end8.i.i313_crit_edge ]
  %arrayidx9.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 11, i32 %i.024.i.i
  %283 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %arrayidx9.i.i, align 4
  %call.i.i38.i = call i32 @regmap_field_update_bits_base(ptr noundef %284, i32 noundef -1, i32 noundef %mode.0.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call.i.i38.i, 0
  br i1 %tobool.not.i39.i, label %if.end8.i.i313.for.inc.i.i_crit_edge, label %if.end8.i.i313.do.end144_crit_edge

if.end8.i.i313.do.end144_crit_edge:               ; preds = %if.end8.i.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.end8.i.i313.for.inc.i.i_crit_edge:             ; preds = %if.end8.i.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end8.i.i313.for.inc.i.i_crit_edge, %for.body.i.i312.for.inc.i.i_crit_edge
  %inc.i.i314 = add nuw i32 %i.024.i.i, 1
  %exitcond.not.i.i315 = icmp eq i32 %inc.i.i314, %279
  br i1 %exitcond.not.i.i315, label %if.end8.i, label %for.inc.i.i.for.body.i.i312_crit_edge

for.inc.i.i.for.body.i.i312_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i312

if.end8.i:                                        ; preds = %for.inc.i.i
  %285 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %285)
  %.pr.i = load i32, ptr %num_lanes83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp24.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp24.not.i.i, label %if.end8.i.if.end146_crit_edge, label %if.end8.i.for.body.i43.i_crit_edge

if.end8.i.for.body.i43.i_crit_edge:               ; preds = %if.end8.i
  br label %for.body.i43.i

if.end8.i.if.end146_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

for.body.i43.i:                                   ; preds = %for.inc.i49.i.for.body.i43.i_crit_edge, %if.end8.i.for.body.i43.i_crit_edge
  %i.025.i.i = phi i32 [ %inc.i47.i, %for.inc.i49.i.for.body.i43.i_crit_edge ], [ 0, %if.end8.i.for.body.i43.i_crit_edge ]
  %arrayidx.i42.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 28, i32 %i.025.i.i
  %286 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %arrayidx.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %287)
  %cmp2.i.i = icmp eq i32 %287, 9
  br i1 %cmp2.i.i, label %if.then.i.i, label %for.body.i43.i.for.inc.i49.i_crit_edge

for.body.i43.i.for.inc.i49.i_crit_edge:           ; preds = %for.body.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i49.i

if.then.i.i:                                      ; preds = %for.body.i43.i
  %arrayidx3.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 12, i32 %i.025.i.i
  %288 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %arrayidx3.i.i, align 4
  %call.i.i44.i = call i32 @regmap_field_update_bits_base(ptr noundef %289, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool.not.i45.i, label %if.end.i46.i, label %if.then.i.i.do.end144_crit_edge

if.then.i.i.do.end144_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.end.i46.i:                                     ; preds = %if.then.i.i
  %arrayidx5.i.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 13, i32 %i.025.i.i
  %290 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %arrayidx5.i.i, align 4
  %call.i23.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %291, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i23.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i46.i.for.inc.i49.i_crit_edge, label %if.end.i46.i.do.end144_crit_edge

if.end.i46.i.do.end144_crit_edge:                 ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.end.i46.i.for.inc.i49.i_crit_edge:             ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i49.i

for.inc.i49.i:                                    ; preds = %if.end.i46.i.for.inc.i49.i_crit_edge, %for.body.i43.i.for.inc.i49.i_crit_edge
  %inc.i47.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i48.i = icmp eq i32 %inc.i47.i, %.pr.i
  br i1 %exitcond.not.i48.i, label %if.end15.i, label %for.inc.i49.i.for.body.i43.i_crit_edge

for.inc.i49.i.for.body.i43.i_crit_edge:           ; preds = %for.inc.i49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43.i

if.end15.i:                                       ; preds = %for.inc.i49.i
  %292 = ptrtoint ptr %num_lanes83 to i32
  call void @__asan_load4_noabort(i32 %292)
  %.pr69.i = load i32, ptr %num_lanes83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr69.i)
  %cmp2.not.i.i = icmp eq i32 %.pr69.i, 0
  br i1 %cmp2.not.i.i, label %if.end15.i.if.end146_crit_edge, label %if.end15.i.for.body.i56.i_crit_edge

if.end15.i.for.body.i56.i_crit_edge:              ; preds = %if.end15.i
  br label %for.body.i56.i

if.end15.i.if.end146_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

for.cond.i.i:                                     ; preds = %if.end.i59.i
  %inc.i52.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i53.i = icmp eq i32 %inc.i52.i, %.pr69.i
  br i1 %exitcond.not.i53.i, label %for.cond.i.i.if.end146_crit_edge, label %for.cond.i.i.for.body.i56.i_crit_edge

for.cond.i.i.for.body.i56.i_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i56.i

for.cond.i.i.if.end146_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end146

for.body.i56.i:                                   ; preds = %for.cond.i.i.for.body.i56.i_crit_edge, %if.end15.i.for.body.i56.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i52.i, %for.cond.i.i.for.body.i56.i_crit_edge ], [ 0, %if.end15.i.for.body.i56.i_crit_edge ]
  %arrayidx.i54.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 9, i32 %i.03.i.i
  %293 = ptrtoint ptr %arrayidx.i54.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %arrayidx.i54.i, align 4
  %call.i.i55.i = call i32 @regmap_field_update_bits_base(ptr noundef %294, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i55.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i55.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i59.i, label %for.body.i56.i.do.end144_crit_edge

for.body.i56.i.do.end144_crit_edge:               ; preds = %for.body.i56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

if.end.i59.i:                                     ; preds = %for.body.i56.i
  %arrayidx3.i57.i = getelementptr %struct.wiz, ptr %call.i, i32 0, i32 10, i32 %i.03.i.i
  %295 = ptrtoint ptr %arrayidx3.i57.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx3.i57.i, align 4
  %call.i1.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %296, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool7.not.i58.i = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool7.not.i58.i, label %for.cond.i.i, label %if.end.i59.i.do.end144_crit_edge

if.end.i59.i.do.end144_crit_edge:                 ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end144

do.end144:                                        ; preds = %if.end.i59.i.do.end144_crit_edge, %for.body.i56.i.do.end144_crit_edge, %if.end.i46.i.do.end144_crit_edge, %if.then.i.i.do.end144_crit_edge, %if.end8.i.i313.do.end144_crit_edge, %wiz_reset.exit.i.do.end144_crit_edge, %if.then138.critedge.do.end144_crit_edge
  %.str.164.sink.i = phi ptr [ @.str.155, %if.then138.critedge.do.end144_crit_edge ], [ @.str.155, %wiz_reset.exit.i.do.end144_crit_edge ], [ @.str.164, %for.body.i56.i.do.end144_crit_edge ], [ @.str.164, %if.end.i59.i.do.end144_crit_edge ], [ @.str.161, %if.then.i.i.do.end144_crit_edge ], [ @.str.161, %if.end.i46.i.do.end144_crit_edge ], [ @.str.158, %if.end8.i.i313.do.end144_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i.i.i308, %if.then138.critedge.do.end144_crit_edge ], [ %call.i10.i.i, %wiz_reset.exit.i.do.end144_crit_edge ], [ %call.i1.i.i, %if.end.i59.i.do.end144_crit_edge ], [ %call.i.i55.i, %for.body.i56.i.do.end144_crit_edge ], [ %call.i23.i.i, %if.end.i46.i.do.end144_crit_edge ], [ %call.i.i44.i, %if.then.i.i.do.end144_crit_edge ], [ %call.i.i38.i, %if.end8.i.i313.do.end144_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull %.str.164.sink.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #11
  br label %err_wiz_init

if.end146:                                        ; preds = %for.cond.i.i.if.end146_crit_edge, %if.end15.i.if.end146_crit_edge, %if.end8.i.if.end146_crit_edge, %if.end.i310.if.end146_crit_edge, %for.body.if.end146_crit_edge
  %call147 = call ptr @of_platform_device_create(ptr noundef nonnull %call3, ptr noundef null, ptr noundef %dev1) #8
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %do.end157, label %if.end173

do.end157:                                        ; preds = %if.end146
  %call158 = call ptr @dev_driver_string(ptr noundef %dev1) #8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %297 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i318 = icmp eq ptr %298, null
  br i1 %tobool.not.i318, label %if.end.i319, label %do.end157.dev_name.exit_crit_edge

do.end157.dev_name.exit_crit_edge:                ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i319:                                      ; preds = %do.end157
  call void @__sanitizer_cov_trace_pc() #10
  %299 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i319, %do.end157.dev_name.exit_crit_edge
  %retval.0.i320 = phi ptr [ %300, %if.end.i319 ], [ %298, %do.end157.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1294, i32 noundef 9, ptr noundef nonnull @.str.47, ptr noundef %call158, ptr noundef %retval.0.i320) #8
  br label %err_wiz_init

if.end173:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #10
  %serdes_pdev174 = getelementptr inbounds %struct.wiz, ptr %call.i, i32 0, i32 24
  %301 = ptrtoint ptr %serdes_pdev174 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call147, ptr %serdes_pdev174, align 4
  call void @of_node_put(ptr noundef nonnull %call3) #8
  br label %cleanup

err_wiz_init:                                     ; preds = %dev_name.exit, %do.end144
  %ret.0 = phi i32 [ -12, %dev_name.exit ], [ %retval.0.ph.i, %do.end144 ]
  call fastcc void @wiz_clock_cleanup(ptr noundef nonnull %call.i, ptr noundef %1)
  br label %err_get_sync

err_get_sync:                                     ; preds = %err_wiz_init, %do.end129, %do.end122
  %ret.1 = phi i32 [ %call.i294, %do.end122 ], [ %retval.0.i307, %do.end129 ], [ %ret.0, %err_wiz_init ]
  %call.i321 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %err_addr_to_resource

err_addr_to_resource:                             ; preds = %err_get_sync, %do.end115, %do.end106, %if.then71, %do.end61, %do.end49, %if.then42.err_addr_to_resource_crit_edge, %do.end37, %do.end32, %do.end24, %if.end13.err_addr_to_resource_crit_edge, %do.end12
  %ret.2 = phi i32 [ %call7, %do.end12 ], [ %12, %do.end24 ], [ %call.i.i, %do.end32 ], [ -19, %do.end37 ], [ %16, %do.end49 ], [ -517, %if.then42.err_addr_to_resource_crit_edge ], [ %17, %do.end61 ], [ -22, %if.then71 ], [ %138, %do.end106 ], [ %call110, %do.end115 ], [ %ret.1, %err_get_sync ], [ -12, %if.end13.err_addr_to_resource_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %err_addr_to_resource, %if.end173, %if.end76.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_addr_to_resource ], [ 0, %if.end173 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %serdes_pdev2 = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %serdes_pdev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serdes_pdev2, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call4 = tail call i32 @of_platform_device_destroy(ptr noundef %dev3, ptr noundef null) #8
  tail call fastcc void @wiz_clock_cleanup(ptr noundef %3, ptr noundef %1)
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wiz_get_lane_phy_types(ptr noundef %dev, ptr nocapture noundef writeonly %wiz) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %num_lanes = alloca i32, align 4
  %phy_type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %1, ptr noundef nonnull @.str.1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #11
  br label %cleanup35

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #8
  %cmp.not63 = icmp eq ptr %call1, null
  br i1 %cmp.not63, label %if.end.cleanup35_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %if.end.for.body_crit_edge
  %subnode.064 = phi ptr [ %call33, %for.inc32.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !340
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_lanes) #8
  %3 = ptrtoint ptr %num_lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_lanes, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_type) #8
  %4 = ptrtoint ptr %phy_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %phy_type, align 4
  %call2 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %subnode.064, ptr noundef nonnull @.str.50) #8
  br i1 %call2, label %for.body.if.end5_crit_edge, label %lor.lhs.false

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

lor.lhs.false:                                    ; preds = %for.body
  %call3 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %subnode.064, ptr noundef nonnull @.str.51) #8
  br i1 %call3, label %lor.lhs.false.if.end5_crit_edge, label %lor.lhs.false.for.inc32_crit_edge

lor.lhs.false.for.inc32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

lor.lhs.false.if.end5_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %lor.lhs.false.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %subnode.064, ptr noundef nonnull @.str.52, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.end12, label %cleanup

if.end12:                                         ; preds = %if.end5
  %call.i.i54 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %subnode.064, ptr noundef nonnull @.str.56, ptr noundef nonnull %num_lanes, i32 noundef 1, i32 noundef 0) #8
  %call.i.i55 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %subnode.064, ptr noundef nonnull @.str.57, ptr noundef nonnull %phy_type, i32 noundef 1, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wiz_get_lane_phy_types.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wiz_get_lane_phy_types, %if.then20)) #8
          to label %do.end23 [label %if.then20], !srcloc !341

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %7 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_lanes, align 4
  %add = add i32 %6, -1
  %sub = add i32 %add, %8
  %9 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_type, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wiz_get_lane_phy_types.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.49, i32 noundef %6, i32 noundef %sub, i32 noundef %10) #8
  br label %do.end23

do.end23:                                         ; preds = %if.then20, %if.end12
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %13 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lanes, align 4
  %add25 = add i32 %14, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %add25)
  %cmp2661 = icmp ult i32 %12, %add25
  br i1 %cmp2661, label %for.body27.lr.ph, label %do.end23.for.inc32_crit_edge

do.end23.for.inc32_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

for.body27.lr.ph:                                 ; preds = %do.end23
  %15 = ptrtoint ptr %phy_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_type, align 4
  br label %for.body27

for.body27:                                       ; preds = %for.body27.for.body27_crit_edge, %for.body27.lr.ph
  %i.062 = phi i32 [ %12, %for.body27.lr.ph ], [ %inc, %for.body27.for.body27_crit_edge ]
  %arrayidx = getelementptr %struct.wiz, ptr %wiz, i32 0, i32 28, i32 %i.062
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %add25
  br i1 %exitcond.not, label %for.body27.for.inc32_crit_edge, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body27

for.body27.for.inc32_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc32

cleanup:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %subnode.064) #8
  %18 = ptrtoint ptr %subnode.064 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %subnode.064, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.49, ptr noundef %19, i32 noundef %call.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  br label %cleanup35

for.inc32:                                        ; preds = %for.body27.for.inc32_crit_edge, %do.end23.for.inc32_crit_edge, %lor.lhs.false.for.inc32_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_type) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_lanes) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  %call33 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %subnode.064) #8
  %cmp.not = icmp eq ptr %call33, null
  br i1 %cmp.not, label %for.inc32.cleanup35_crit_edge, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc32.cleanup35_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup35

cleanup35:                                        ; preds = %for.inc32.cleanup35_crit_edge, %cleanup, %if.end.cleanup35_crit_edge, %do.end
  %retval.2 = phi i32 [ %call.i.i, %cleanup ], [ -22, %do.end ], [ 0, %if.end.cleanup35_crit_edge ], [ 0, %for.inc32.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wiz_clock_cleanup(ptr nocapture noundef readonly %wiz, ptr noundef %node) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.wiz, ptr %wiz, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %clk_mux_sel1 = getelementptr inbounds %struct.wiz, ptr %wiz, i32 0, i32 2
  %2 = ptrtoint ptr %clk_mux_sel1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_mux_sel1, align 4
  %node_name = getelementptr %struct.wiz_clk_mux_sel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %node_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node_name, align 4
  %call = tail call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef %5) #8
  tail call void @of_clk_del_provider(ptr noundef %call) #8
  tail call void @of_node_put(ptr noundef %call) #8
  %node_name.1 = getelementptr %struct.wiz_clk_mux_sel, ptr %3, i32 1, i32 1
  %6 = ptrtoint ptr %node_name.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node_name.1, align 4
  %call.1 = tail call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef %7) #8
  tail call void @of_clk_del_provider(ptr noundef %call.1) #8
  tail call void @of_node_put(ptr noundef %call.1) #8
  %node_name.2 = getelementptr %struct.wiz_clk_mux_sel, ptr %3, i32 2, i32 1
  %8 = ptrtoint ptr %node_name.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %node_name.2, align 4
  %call.2 = tail call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef %9) #8
  tail call void @of_clk_del_provider(ptr noundef %call.2) #8
  tail call void @of_node_put(ptr noundef %call.2) #8
  %clk_div_sel_num = getelementptr inbounds %struct.wiz, ptr %wiz, i32 0, i32 4
  %10 = ptrtoint ptr %clk_div_sel_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_div_sel_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp532.not = icmp eq i32 %11, 0
  br i1 %cmp532.not, label %for.body.preheader.cleanup_crit_edge, label %for.body.preheader.for.body6_crit_edge

for.body.preheader.for.body6_crit_edge:           ; preds = %for.body.preheader
  br label %for.body6

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body.preheader.for.body6_crit_edge
  %i.133 = phi i32 [ %inc11, %for.body6.for.body6_crit_edge ], [ 0, %for.body.preheader.for.body6_crit_edge ]
  %node_name8 = getelementptr [2 x %struct.wiz_clk_div_sel], ptr @clk_div_sel, i32 0, i32 %i.133, i32 1
  %12 = ptrtoint ptr %node_name8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node_name8, align 4
  %call9 = tail call ptr @of_get_child_by_name(ptr noundef %node, ptr noundef %13) #8
  tail call void @of_clk_del_provider(ptr noundef %call9) #8
  tail call void @of_node_put(ptr noundef %call9) #8
  %inc11 = add nuw i32 %i.133, 1
  %14 = ptrtoint ptr %clk_div_sel_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_div_sel_num, align 4
  %cmp5 = icmp ult i32 %inc11, %15
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.cleanup_crit_edge

for.body6.cleanup_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

cleanup:                                          ; preds = %for.body6.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %dev2 = getelementptr inbounds %struct.wiz, ptr %wiz, i32 0, i32 22
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %of_node14 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node14, align 8
  tail call void @of_clk_del_provider(ptr noundef %19) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_phy_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  %sub = add i32 %id, -1
  %arrayidx = getelementptr %struct.wiz, ptr %3, i32 0, i32 8, i32 %sub
  %phy_reset_n = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 6
  %arrayidx.sink = select i1 %cmp, ptr %phy_reset_n, ptr %arrayidx
  %4 = ptrtoint ptr %arrayidx.sink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.sink, align 4
  %call.i9 = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_phy_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.reset_controller_dev, ptr %rcdev, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  br i1 %cmp, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %entry
  %gpio_typec_dir = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %gpio_typec_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_typec_dir, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.then16_crit_edge, label %if.then

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then16

if.then:                                          ; preds = %land.lhs.true
  %typec_dir_delay = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %typec_dir_delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %typec_dir_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @msleep_interruptible(i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %gpio_typec_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_typec_dir, align 4
  %call7 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp ne i32 %call7, 0
  %typec_ln10_swap11 = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %typec_ln10_swap11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %typec_ln10_swap11, align 4
  %. = zext i1 %tobool8.not to i32
  %call.i57 = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.then16

if.then16:                                        ; preds = %if.end, %land.lhs.true.if.then16_crit_edge
  %phy_reset_n = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %phy_reset_n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_reset_n, align 4
  %call.i58 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end18:                                         ; preds = %entry
  %sub = add i32 %id, -1
  %type.i = getelementptr inbounds %struct.wiz, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end18.if.end22_crit_edge

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end.i:                                         ; preds = %if.end18
  %arrayidx.i = getelementptr %struct.wiz, ptr %3, i32 0, i32 28, i32 %sub
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1.i = icmp eq i32 %17, 2
  br i1 %cmp1.i, label %wiz_phy_fullrt_div.exit, label %if.end.i.if.end22_crit_edge

if.end.i.if.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

wiz_phy_fullrt_div.exit:                          ; preds = %if.end.i
  %arrayidx3.i = getelementptr %struct.wiz, ptr %3, i32 0, i32 14, i32 %sub
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool20.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool20.not, label %wiz_phy_fullrt_div.exit.if.end22_crit_edge, label %wiz_phy_fullrt_div.exit.cleanup_crit_edge

wiz_phy_fullrt_div.exit.cleanup_crit_edge:        ; preds = %wiz_phy_fullrt_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

wiz_phy_fullrt_div.exit.if.end22_crit_edge:       ; preds = %wiz_phy_fullrt_div.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %wiz_phy_fullrt_div.exit.if.end22_crit_edge, %if.end.i.if.end22_crit_edge, %if.end18.if.end22_crit_edge
  %arrayidx = getelementptr %struct.wiz, ptr %3, i32 0, i32 28, i32 %sub
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp24 = icmp eq i32 %21, 6
  %arrayidx27 = getelementptr %struct.wiz, ptr %3, i32 0, i32 8, i32 %sub
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  br i1 %cmp24, label %if.then25, label %if.else29

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i59 = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.else29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i60 = tail call i32 @regmap_field_update_bits_base(ptr noundef %23, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else29, %if.then25, %wiz_phy_fullrt_div.exit.cleanup_crit_edge, %if.then16
  %retval.0 = phi i32 [ %call.i58, %if.then16 ], [ %call.i.i, %wiz_phy_fullrt_div.exit.cleanup_crit_edge ], [ %call.i59, %if.then25 ], [ %call.i60, %if.else29 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_clk_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %field1 = getelementptr inbounds %struct.wiz_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  %table = getelementptr inbounds %struct.wiz_clk_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i32, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef %5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @wiz_clk_mux_get_parent(ptr noundef %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %field1 = getelementptr inbounds %struct.wiz_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !340
  %call = call i32 @regmap_field_read(ptr noundef %1, ptr noundef nonnull %val) #8
  %table = getelementptr inbounds %struct.wiz_clk_mux, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %table, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call2 = call i32 @clk_mux_val_to_index(ptr noundef %hw, ptr noundef %4, i32 noundef 0, i32 noundef %6) #8
  %conv = trunc i32 %call2 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_mux_val_to_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_phy_en_refclk_enable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_en_refclk1 = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_en_refclk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_en_refclk1, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wiz_phy_en_refclk_disable(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_en_refclk1 = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_en_refclk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_en_refclk1, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_phy_en_refclk_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_en_refclk1 = getelementptr inbounds %struct.wiz_phy_en_refclk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy_en_refclk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_en_refclk1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !340
  %call = call i32 @regmap_field_read(ptr noundef %1, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_clk_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %field1 = getelementptr inbounds %struct.wiz_clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !340
  %call = call i32 @regmap_field_read(ptr noundef %1, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %table = getelementptr inbounds %struct.wiz_clk_divider, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %table, align 4
  %call2 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %4, ptr noundef %6, i32 noundef 0, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_clk_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.wiz_clk_divider, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef %1, i8 noundef zeroext 2, i32 noundef 0) #8
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wiz_clk_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %field1 = getelementptr inbounds %struct.wiz_clk_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %field1, align 4
  %table = getelementptr inbounds %struct.wiz_clk_divider, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %table, align 4
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %3, i8 noundef zeroext 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %1, i32 noundef -1, i32 noundef %call, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_device_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 153)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56, !57, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85, !87, !88, !89, !90, !92, !94, !96, !98, !99, !100, !102, !104, !106, !107, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !244, !245, !246, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !288, !290, !292, !294, !296, !298, !300, !301, !302, !303, !305, !306, !308, !309, !310, !312, !314, !315, !316, !317, !319, !320, !321, !323, !324, !325, !327, !328, !329}
!llvm.module.flags = !{!331, !332, !333, !334, !335, !336, !337, !338}
!llvm.ident = !{!339}

!0 = !{ptr @__initcall__kmod_phy_j721e_wiz__225_1342_wiz_driver_init6, !1, !"__initcall__kmod_phy_j721e_wiz__225_1342_wiz_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1342, i32 1}
!2 = !{ptr @__exitcall_wiz_driver_exit, !1, !"__exitcall_wiz_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author226, !4, !"__UNIQUE_ID_author226", i1 false, i1 false}
!4 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1344, i32 1}
!5 = !{ptr @__UNIQUE_ID_description227, !6, !"__UNIQUE_ID_description227", i1 false, i1 false}
!6 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1345, i32 1}
!7 = !{ptr @__UNIQUE_ID_file228, !8, !"__UNIQUE_ID_file228", i1 false, i1 false}
!8 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1346, i32 1}
!9 = !{ptr @__UNIQUE_ID_license229, !8, !"__UNIQUE_ID_license229", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1338, i32 11}
!12 = !{ptr @wiz_driver, !13, !"wiz_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1334, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1155, i32 42}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1157, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wiz_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @wiz_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1163, i32 3}
!26 = !{ptr @wiz_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wiz_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @wiz_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1173, i32 11}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1175, i32 3}
!33 = !{ptr @wiz_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wiz_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1180, i32 35}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1182, i32 3}
!39 = !{ptr @wiz_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wiz_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1187, i32 3}
!43 = !{ptr @wiz_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wiz_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1192, i32 53}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1197, i32 4}
!49 = !{ptr @wiz_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wiz_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1203, i32 36}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1206, i32 4}
!55 = !{ptr @wiz_probe._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @wiz_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @wiz_probe._entry.29, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1217, i32 4}
!59 = !{ptr @wiz_probe._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1245, i32 3}
!62 = !{ptr @wiz_probe._entry.31, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @wiz_probe._entry_ptr.33, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1259, i32 3}
!66 = !{ptr @.str.36, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @wiz_probe._entry.34, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @wiz_probe._entry_ptr.37, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1266, i32 3}
!71 = !{ptr @wiz_probe._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @wiz_probe._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1272, i32 3}
!75 = !{ptr @wiz_probe._entry.41, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @wiz_probe._entry_ptr.43, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1287, i32 4}
!79 = !{ptr @wiz_probe._entry.44, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @wiz_probe._entry_ptr.46, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1294, i32 3}
!83 = !{ptr @wiz_regmap_config, !84, !"wiz_regmap_config", i1 false, i1 false}
!84 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1074, i32 35}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1101, i32 3}
!87 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @wiz_get_lane_phy_types._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @wiz_get_lane_phy_types._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1109, i32 34}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1110, i32 34}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1113, i32 39}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1116, i32 4}
!98 = !{ptr @wiz_get_lane_phy_types._entry.53, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wiz_get_lane_phy_types._entry_ptr.55, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1121, i32 33}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1122, i32 33}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1124, i32 3}
!106 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wiz_get_lane_phy_types.__UNIQUE_ID_ddebug224, !105, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 215, i32 16}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 221, i32 16}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 227, i32 16}
!114 = !{ptr @clk_mux_sel_10g, !115, !"clk_mux_sel_10g", i1 false, i1 false}
!115 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 206, i32 37}
!116 = !{ptr @clk_mux_sel_16g, !117, !"clk_mux_sel_16g", i1 false, i1 false}
!117 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 187, i32 37}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 242, i32 16}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 246, i32 16}
!122 = !{ptr @clk_div_sel, !123, !"clk_div_sel", i1 false, i1 false}
!123 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 239, i32 37}
!124 = !{ptr @clk_div_table, !125, !"clk_div_table", i1 false, i1 false}
!125 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 231, i32 35}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 416, i32 3}
!128 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @wiz_regfield_init._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @wiz_regfield_init._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 423, i32 3}
!133 = !{ptr @wiz_regfield_init._entry.67, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @wiz_regfield_init._entry_ptr.69, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 430, i32 3}
!137 = !{ptr @wiz_regfield_init._entry.70, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @wiz_regfield_init._entry_ptr.72, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 437, i32 3}
!141 = !{ptr @wiz_regfield_init._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @wiz_regfield_init._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 444, i32 3}
!145 = !{ptr @wiz_regfield_init._entry.76, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @wiz_regfield_init._entry_ptr.78, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.80, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 453, i32 4}
!149 = !{ptr @wiz_regfield_init._entry.79, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @wiz_regfield_init._entry_ptr.81, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 461, i32 3}
!153 = !{ptr @wiz_regfield_init._entry.82, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @wiz_regfield_init._entry_ptr.84, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.86, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 468, i32 3}
!157 = !{ptr @wiz_regfield_init._entry.85, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @wiz_regfield_init._entry_ptr.87, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.89, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 482, i32 3}
!161 = !{ptr @wiz_regfield_init._entry.88, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @wiz_regfield_init._entry_ptr.90, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.92, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 490, i32 4}
!165 = !{ptr @wiz_regfield_init._entry.91, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @wiz_regfield_init._entry_ptr.93, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.95, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 497, i32 4}
!169 = !{ptr @wiz_regfield_init._entry.94, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @wiz_regfield_init._entry_ptr.96, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 504, i32 4}
!173 = !{ptr @wiz_regfield_init._entry.97, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @wiz_regfield_init._entry_ptr.99, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.101, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 512, i32 4}
!177 = !{ptr @wiz_regfield_init._entry.100, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @wiz_regfield_init._entry_ptr.102, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.104, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 519, i32 4}
!181 = !{ptr @wiz_regfield_init._entry.103, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @wiz_regfield_init._entry_ptr.105, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 526, i32 4}
!185 = !{ptr @wiz_regfield_init._entry.106, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @wiz_regfield_init._entry_ptr.108, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.110, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 534, i32 4}
!189 = !{ptr @wiz_regfield_init._entry.109, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @wiz_regfield_init._entry_ptr.111, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.113, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 543, i32 3}
!193 = !{ptr @wiz_regfield_init._entry.112, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @wiz_regfield_init._entry_ptr.114, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.116, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 549, i32 3}
!197 = !{ptr @wiz_regfield_init._entry.115, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @wiz_regfield_init._entry_ptr.117, !196, !"_entry_ptr", i1 false, i1 false}
!199 = distinct !{null, !200, !"por_en", i1 false, i1 false}
!200 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 69, i32 31}
!201 = distinct !{null, !202, !"phy_reset_n", i1 false, i1 false}
!202 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 70, i32 31}
!203 = distinct !{null, !204, !"pma_cmn_refclk_int_mode", i1 false, i1 false}
!204 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 80, i32 31}
!205 = distinct !{null, !206, !"pma_cmn_refclk_mode", i1 false, i1 false}
!206 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 82, i32 31}
!207 = distinct !{null, !208, !"pma_cmn_refclk_dig_div", i1 false, i1 false}
!208 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 84, i32 31}
!209 = distinct !{null, !210, !"pma_cmn_refclk1_dig_div", i1 false, i1 false}
!210 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 86, i32 31}
!211 = distinct !{null, !212, !"pll0_refclk_mux_sel", i1 false, i1 false}
!212 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 74, i32 31}
!213 = distinct !{null, !214, !"pll1_refclk_mux_sel", i1 false, i1 false}
!214 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 72, i32 31}
!215 = distinct !{null, !216, !"refclk_dig_sel_10g", i1 false, i1 false}
!216 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 78, i32 31}
!217 = distinct !{null, !218, !"refclk_dig_sel_16g", i1 false, i1 false}
!218 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 76, i32 31}
!219 = !{ptr @p_enable, !220, !"p_enable", i1 false, i1 false}
!220 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 95, i32 31}
!221 = !{ptr @p_align, !222, !"p_align", i1 false, i1 false}
!222 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 104, i32 31}
!223 = !{ptr @p_raw_auto_start, !224, !"p_raw_auto_start", i1 false, i1 false}
!224 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 111, i32 31}
!225 = !{ptr @p_standard_mode, !226, !"p_standard_mode", i1 false, i1 false}
!226 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 118, i32 31}
!227 = !{ptr @p0_fullrt_div, !228, !"p0_fullrt_div", i1 false, i1 false}
!228 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 125, i32 31}
!229 = !{ptr @p_mac_div_sel0, !230, !"p_mac_div_sel0", i1 false, i1 false}
!230 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 132, i32 31}
!231 = !{ptr @p_mac_div_sel1, !232, !"p_mac_div_sel1", i1 false, i1 false}
!232 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 139, i32 31}
!233 = distinct !{null, !234, !"typec_ln10_swap", i1 false, i1 false}
!234 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 146, i32 31}
!235 = distinct !{null, !236, !"phy_en_refclk", i1 false, i1 false}
!236 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 71, i32 31}
!237 = !{ptr @wiz_phy_reset_ops, !238, !"wiz_phy_reset_ops", i1 false, i1 false}
!238 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1069, i32 39}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 923, i32 26}
!241 = !{ptr @.str.119, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 925, i32 3}
!243 = !{ptr @.str.120, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @wiz_clock_init._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @wiz_clock_init._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.121, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 937, i32 26}
!248 = !{ptr @.str.123, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 939, i32 3}
!250 = !{ptr @wiz_clock_init._entry.122, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @wiz_clock_init._entry_ptr.124, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.126, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 954, i32 4}
!254 = !{ptr @wiz_clock_init._entry.125, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @wiz_clock_init._entry_ptr.127, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.129, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 962, i32 4}
!258 = !{ptr @wiz_clock_init._entry.128, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @wiz_clock_init._entry_ptr.130, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 970, i32 4}
!262 = !{ptr @wiz_clock_init._entry.131, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @wiz_clock_init._entry_ptr.133, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @wiz_clock_init._entry.134, !265, !"_entry", i1 false, i1 false}
!265 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 983, i32 4}
!266 = !{ptr @wiz_clock_init._entry_ptr.135, !265, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @wiz_clock_init._entry.136, !268, !"_entry", i1 false, i1 false}
!268 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 991, i32 4}
!269 = !{ptr @wiz_clock_init._entry_ptr.137, !268, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 892, i32 4}
!272 = !{ptr @.str.139, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @wiz_clock_register._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @wiz_clock_register._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.141, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 899, i32 3}
!277 = !{ptr @wiz_clock_register._entry.140, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @wiz_clock_register._entry_ptr.142, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.144, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 907, i32 3}
!281 = !{ptr @wiz_clock_register._entry.143, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @wiz_clock_register._entry_ptr.145, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.146, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 670, i32 4}
!285 = !{ptr @.str.147, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @wiz_mux_clk_register._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @wiz_mux_clk_register._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.148, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 678, i32 39}
!290 = !{ptr @wiz_clk_mux_ops, !291, !"wiz_clk_mux_ops", i1 false, i1 false}
!291 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 640, i32 29}
!292 = !{ptr @.str.149, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 92, i32 27}
!294 = !{ptr @output_clk_names, !295, !"output_clk_names", i1 false, i1 false}
!295 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 88, i32 27}
!296 = !{ptr @wiz_phy_en_refclk_ops, !297, !"wiz_phy_en_refclk_ops", i1 false, i1 false}
!297 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 585, i32 29}
!298 = !{ptr @.str.150, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 724, i32 3}
!300 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @wiz_mux_of_clk_register._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @wiz_mux_of_clk_register._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @wiz_mux_of_clk_register._entry.152, !304, !"_entry", i1 false, i1 false}
!304 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 756, i32 3}
!305 = !{ptr @wiz_mux_of_clk_register._entry_ptr.153, !304, !"_entry_ptr", i1 false, i1 false}
!306 = !{ptr @.str.154, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 844, i32 3}
!308 = !{ptr @wiz_div_clk_register._entry, !307, !"_entry", i1 false, i1 false}
!309 = !{ptr @wiz_div_clk_register._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @wiz_clk_div_ops, !311, !"wiz_clk_div_ops", i1 false, i1 false}
!311 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 795, i32 29}
!312 = !{ptr @.str.155, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 382, i32 3}
!314 = !{ptr @.str.156, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @wiz_init._entry, !313, !"_entry", i1 false, i1 false}
!316 = !{ptr @wiz_init._entry_ptr, !313, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 388, i32 3}
!319 = !{ptr @wiz_init._entry.157, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @wiz_init._entry_ptr.159, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 394, i32 3}
!323 = !{ptr @wiz_init._entry.160, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @wiz_init._entry_ptr.162, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.164, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 400, i32 3}
!327 = !{ptr @wiz_init._entry.163, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @wiz_init._entry_ptr.165, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @wiz_id_table, !330, !"wiz_id_table", i1 false, i1 false}
!330 = !{!"../drivers/phy/ti/phy-j721e-wiz.c", i32 1081, i32 34}
!331 = !{i32 1, !"wchar_size", i32 2}
!332 = !{i32 1, !"min_enum_size", i32 4}
!333 = !{i32 8, !"branch-target-enforcement", i32 0}
!334 = !{i32 8, !"sign-return-address", i32 0}
!335 = !{i32 8, !"sign-return-address-all", i32 0}
!336 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!337 = !{i32 7, !"uwtable", i32 1}
!338 = !{i32 7, !"frame-pointer", i32 2}
!339 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!340 = !{!"auto-init"}
!341 = !{i64 2148234238, i64 2148234243, i64 2148234256, i64 2148234300, i64 2148234334, i64 2148234355}
