; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/mvebu/pinctrl-mvebu.c_pt.bc'
source_filename = "../drivers/pinctrl/mvebu/pinctrl-mvebu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mvebu_pinctrl_soc_info = type { i8, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.mvebu_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, i32, ptr, i32, i8 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.mvebu_mpp_ctrl = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.mvebu_mpp_ctrl_data = type { %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.mvebu_pinctrl_group = type { ptr, ptr, ptr, ptr, i32, i32, ptr, i32 }
%struct.mvebu_mpp_mode = type { i8, ptr }
%struct.mvebu_mpp_ctrl_setting = type { i8, ptr, ptr, i8, i8 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.mvebu_pinctrl_function = type { ptr, ptr, i32 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@mvebu_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 580, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wrong pinctrl soc info\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mvebu_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/mvebu/pinctrl-mvebu.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry_ptr = internal global ptr @mvebu_pinctrl_probe._entry, section ".printk_index", align 4
@mvebu_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @mvebu_pinctrl_get_groups_count, ptr @mvebu_pinctrl_get_group_name, ptr @mvebu_pinctrl_get_group_pins, ptr null, ptr @mvebu_pinctrl_dt_node_to_map, ptr @mvebu_pinctrl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@mvebu_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @mvebu_pinmux_get_funcs_count, ptr @mvebu_pinmux_get_func_name, ptr @mvebu_pinmux_get_groups, ptr @mvebu_pinmux_set, ptr @mvebu_pinmux_gpio_request_enable, ptr null, ptr @mvebu_pinmux_gpio_set_direction, i8 0 }, [56 x i8] zeroinitializer }, align 32
@mvebu_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr null, ptr @mvebu_pinconf_group_get, ptr @mvebu_pinconf_group_set, ptr null, ptr @mvebu_pinconf_group_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpp%d\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpo\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpi\00", [28 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 722, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unknown pinctrl group %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry_ptr.12 = internal global ptr @mvebu_pinctrl_probe._entry.9, section ".printk_index", align 4
@mvebu_pinctrl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 732, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to build functions\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry_ptr.15 = internal global ptr @mvebu_pinctrl_probe._entry.13, section ".printk_index", align 4
@mvebu_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 738, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry_ptr.18 = internal global ptr @mvebu_pinctrl_probe._entry.16, section ".printk_index", align 4
@mvebu_pinctrl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 742, ptr @.str.21, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"registered pinctrl driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_probe._entry_ptr.22 = internal global ptr @mvebu_pinctrl_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"marvell,function\00", [47 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 412, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing marvell,function in node %pOFn\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mvebu_pinctrl_dt_node_to_map\00", [35 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry_ptr = internal global ptr @mvebu_pinctrl_dt_node_to_map._entry, section ".printk_index", align 4
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"marvell,pins\00", [19 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 419, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"missing marvell,pins in node %pOFn\0A\00", [60 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry_ptr.29 = internal global ptr @mvebu_pinctrl_dt_node_to_map._entry.27, section ".printk_index", align 4
@mvebu_pinctrl_dt_node_to_map._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.2, i32 433, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown pin %s\00", [17 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry_ptr.32 = internal global ptr @mvebu_pinctrl_dt_node_to_map._entry.30, section ".printk_index", align 4
@mvebu_pinctrl_dt_node_to_map._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.2, i32 439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported function %s on pin %s\00", [62 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_dt_node_to_map._entry_ptr.35 = internal global ptr @mvebu_pinctrl_dt_node_to_map._entry.33, section ".printk_index", align 4
@mvebu_pinmux_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to find setting %s in group %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mvebu_pinmux_set\00", [47 x i8] zeroinitializer }, align 32
@mvebu_pinmux_set._entry_ptr = internal global ptr @mvebu_pinmux_set._entry, section ".printk_index", align 4
@mvebu_pinmux_set._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot set group %s to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@mvebu_pinmux_set._entry_ptr.40 = internal global ptr @mvebu_pinmux_set._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"current: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"(%s)\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"current: UNKNOWN\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c", available = [\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" ]\00", [29 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_build_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 522, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"More functions than pins(%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mvebu_pinctrl_build_functions\00", [34 x i8] zeroinitializer }, align 32
@mvebu_pinctrl_build_functions._entry_ptr = internal global ptr @mvebu_pinctrl_build_functions._entry, section ".printk_index", align 4
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 580, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"mvebu_pinctrl_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 460, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"mvebu_pinmux_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 363, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"mvebu_pinconf_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 252, i32 33 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 667, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 706, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 709, i32 31 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 711, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 721, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 732, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 738, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 742, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 409, i32 36 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 411, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 416, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 418, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 433, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 438, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 297, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 306, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 209, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 211, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 221, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 225, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 235, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 248, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [41 x i8] c"../drivers/pinctrl/mvebu/pinctrl-mvebu.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 520, i32 5 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @mvebu_pinctrl_build_functions._entry, ptr @mvebu_pinctrl_build_functions._entry_ptr, ptr @mvebu_pinctrl_dt_node_to_map._entry, ptr @mvebu_pinctrl_dt_node_to_map._entry.27, ptr @mvebu_pinctrl_dt_node_to_map._entry.30, ptr @mvebu_pinctrl_dt_node_to_map._entry.33, ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr, ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.29, ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.32, ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.35, ptr @mvebu_pinctrl_probe._entry, ptr @mvebu_pinctrl_probe._entry.13, ptr @mvebu_pinctrl_probe._entry.16, ptr @mvebu_pinctrl_probe._entry.19, ptr @mvebu_pinctrl_probe._entry.9, ptr @mvebu_pinctrl_probe._entry_ptr, ptr @mvebu_pinctrl_probe._entry_ptr.12, ptr @mvebu_pinctrl_probe._entry_ptr.15, ptr @mvebu_pinctrl_probe._entry_ptr.18, ptr @mvebu_pinctrl_probe._entry_ptr.22, ptr @mvebu_pinmux_set._entry, ptr @mvebu_pinmux_set._entry.38, ptr @mvebu_pinmux_set._entry_ptr, ptr @mvebu_pinmux_set._entry_ptr.40, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mvebu_pinctrl_ops, ptr @mvebu_pinmux_ops, ptr @mvebu_pinconf_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_dt_node_to_map._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_dt_node_to_map._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_dt_node_to_map._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinmux_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinmux_set._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_pinctrl_build_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_mmio_mpp_ctrl_get(ptr nocapture noundef readonly %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %pid, 1
  %mul = and i32 %0, 2147483644
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %shr = lshr i32 %4, %mul1
  %and = and i32 %shr, 15
  %5 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and, ptr %config, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_mmio_mpp_ctrl_set(ptr nocapture noundef readonly %data, i32 noundef %pid, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %pid, 1
  %mul = and i32 %0, 2147483644
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !96
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %shl = shl nuw i32 15, %mul1
  %neg = xor i32 %shl, -1
  %and = and i32 %4, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  tail call void @arm_heavy_mb() #8
  %shl3 = shl i32 %config, %mul1
  %or = or i32 %and, %shl3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #8, !srcloc !100
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %controls = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %controls, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %modes = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %modes, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %cleanup272

if.end:                                           ; preds = %lor.lhs.false2
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end.cleanup272_crit_edge, label %if.end9

if.end.cleanup272_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.end9:                                          ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.dev_name.exit_crit_edge

if.end9.dev_name.exit_crit_edge:                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end9.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end9.dev_name.exit_crit_edge ]
  %desc = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %desc, align 4
  %owner = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 6
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mvebu_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mvebu_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mvebu_pinconf_ops, ptr %confops, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 4
  %variant16 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %variant16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %variant16, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %num_groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 4
  %20 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %num_groups, align 4
  %npins = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %npins, align 4
  %ncontrols = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp445.not = icmp eq i32 %23, 0
  br i1 %cmp445.not, label %dev_name.exit.for.end48_crit_edge, label %dev_name.exit.for.body_crit_edge

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  br label %for.body

dev_name.exit.for.end48_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

for.body:                                         ; preds = %if.end45.for.body_crit_edge, %dev_name.exit.for.body_crit_edge
  %noname.0448 = phi i32 [ %noname.1, %if.end45.for.body_crit_edge ], [ 0, %dev_name.exit.for.body_crit_edge ]
  %n.0446 = phi i32 [ %inc47, %if.end45.for.body_crit_edge ], [ 0, %dev_name.exit.for.body_crit_edge ]
  %24 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %controls, align 4
  %arrayidx = getelementptr %struct.mvebu_mpp_ctrl, ptr %25, i32 %n.0446
  %npins21 = getelementptr %struct.mvebu_mpp_ctrl, ptr %25, i32 %n.0446, i32 2
  %26 = ptrtoint ptr %npins21 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %npins21, align 1
  %conv = zext i8 %27 to i32
  %28 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %npins, align 4
  %add = add i32 %29, %conv
  store i32 %add, ptr %npins, align 4
  %30 = load i8, ptr %npins21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp27443.not = icmp eq i8 %30, 0
  br i1 %cmp27443.not, label %for.body.for.end_crit_edge, label %for.body29.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body29.lr.ph:                                 ; preds = %for.body
  %pid = getelementptr %struct.mvebu_mpp_ctrl, ptr %25, i32 %n.0446, i32 1
  %pins = getelementptr %struct.mvebu_mpp_ctrl, ptr %25, i32 %n.0446, i32 3
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.body29.lr.ph
  %k.0444 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc, %for.body29.for.body29_crit_edge ]
  %31 = ptrtoint ptr %pid to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pid, align 4
  %conv30 = zext i8 %32 to i32
  %add31 = add nuw i32 %k.0444, %conv30
  %33 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins, align 4
  %arrayidx32 = getelementptr i32, ptr %34, i32 %k.0444
  %35 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add31, ptr %arrayidx32, align 4
  %inc = add nuw nsw i32 %k.0444, 1
  %36 = ptrtoint ptr %npins21 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %npins21, align 1
  %conv26 = zext i8 %37 to i32
  %cmp27 = icmp ult i32 %inc, %conv26
  br i1 %cmp27, label %for.body29.for.body29_crit_edge, label %for.body29.for.end_crit_edge

for.body29.for.end_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29

for.end:                                          ; preds = %for.body29.for.end_crit_edge, %for.body.for.end_crit_edge
  %.lcssa = phi i8 [ 0, %for.body.for.end_crit_edge ], [ %37, %for.body29.for.end_crit_edge ]
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool34.not = icmp eq ptr %39, null
  br i1 %tobool34.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv26.le = zext i8 %.lcssa to i32
  %40 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_groups, align 4
  %add39 = add i32 %41, %conv26.le
  store i32 %add39, ptr %num_groups, align 4
  %42 = ptrtoint ptr %npins21 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %npins21, align 1
  %conv41 = zext i8 %43 to i32
  %add42 = add i32 %noname.0448, %conv41
  br label %if.end45

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_groups, align 4
  %add44 = add i32 %45, 1
  store i32 %add44, ptr %num_groups, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then35
  %noname.1 = phi i32 [ %noname.0448, %if.else ], [ %add42, %if.then35 ]
  %inc47 = add nuw i32 %n.0446, 1
  %46 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ncontrols, align 4
  %cmp = icmp ult i32 %inc47, %47
  br i1 %cmp, label %if.end45.for.body_crit_edge, label %if.end45.for.end48_crit_edge

if.end45.for.end48_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end48

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end48:                                        ; preds = %if.end45.for.end48_crit_edge, %dev_name.exit.for.end48_crit_edge
  %noname.0.lcssa = phi i32 [ 0, %dev_name.exit.for.end48_crit_edge ], [ %noname.1, %if.end45.for.end48_crit_edge ]
  %48 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %npins, align 4
  %50 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %49, i32 12) #8
  %51 = extractvalue { i32, i1 } %50, 1
  br i1 %51, label %for.end48.cleanup272_crit_edge, label %devm_kcalloc.exit, !prof !101

for.end48.cleanup272_crit_edge:                   ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

devm_kcalloc.exit:                                ; preds = %for.end48
  %52 = extractvalue { i32, i1 } %50, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %52, i32 noundef 3520) #8
  %tobool53.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool53.not, label %devm_kcalloc.exit.cleanup272_crit_edge, label %for.cond56.preheader

devm_kcalloc.exit.cleanup272_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

for.cond56.preheader:                             ; preds = %devm_kcalloc.exit
  %53 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp59450.not = icmp eq i32 %54, 0
  br i1 %cmp59450.not, label %for.cond56.preheader.for.end65_crit_edge, label %for.cond56.preheader.for.body61_crit_edge

for.cond56.preheader.for.body61_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body61

for.cond56.preheader.for.end65_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.body61:                                       ; preds = %for.body61.for.body61_crit_edge, %for.cond56.preheader.for.body61_crit_edge
  %n.1451 = phi i32 [ %inc64, %for.body61.for.body61_crit_edge ], [ 0, %for.cond56.preheader.for.body61_crit_edge ]
  %arrayidx62 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %n.1451
  %55 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %n.1451, ptr %arrayidx62, align 4
  %inc64 = add nuw i32 %n.1451, 1
  %exitcond.not = icmp eq i32 %inc64, %54
  br i1 %exitcond.not, label %for.body61.for.end65_crit_edge, label %for.body61.for.body61_crit_edge

for.body61.for.body61_crit_edge:                  ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body61

for.body61.for.end65_crit_edge:                   ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end65

for.end65:                                        ; preds = %for.body61.for.end65_crit_edge, %for.cond56.preheader.for.end65_crit_edge
  %pins67 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 2, i32 1
  %56 = ptrtoint ptr %pins67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call5.i.i, ptr %pins67, align 4
  %57 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_groups, align 4
  %mul = shl i32 %58, 5
  %mul69 = shl i32 %noname.0.lcssa, 3
  %add70 = add i32 %mul, %mul69
  %call.i435 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add70, i32 noundef 3520) #8
  %tobool73.not = icmp eq ptr %call.i435, null
  br i1 %tobool73.not, label %for.end65.cleanup272_crit_edge, label %if.end75

for.end65.cleanup272_crit_edge:                   ; preds = %for.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

if.end75:                                         ; preds = %for.end65
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 3
  %59 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i435, ptr %groups, align 4
  %60 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp80460.not = icmp eq i32 %61, 0
  br i1 %cmp80460.not, label %if.end75.for.cond165.preheader_crit_edge, label %for.body82.lr.ph

if.end75.for.cond165.preheader_crit_edge:         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond165.preheader

for.body82.lr.ph:                                 ; preds = %if.end75
  %62 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_groups, align 4
  %mul77 = shl i32 %63, 5
  %add.ptr = getelementptr i8, ptr %call.i435, i32 %mul77
  %control_data = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 2
  br label %for.body82

for.cond165.preheader:                            ; preds = %if.end160.for.cond165.preheader_crit_edge, %if.end75.for.cond165.preheader_crit_edge
  %nmodes = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %nmodes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nmodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp166474.not = icmp eq i32 %65, 0
  br i1 %cmp166474.not, label %for.cond165.preheader.for.end237_crit_edge, label %for.cond165.preheader.for.body168_crit_edge

for.cond165.preheader.for.body168_crit_edge:      ; preds = %for.cond165.preheader
  br label %for.body168

for.cond165.preheader.for.end237_crit_edge:       ; preds = %for.cond165.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end237

for.body82:                                       ; preds = %if.end160.for.body82_crit_edge, %for.body82.lr.ph
  %noname_buf.0464 = phi ptr [ %add.ptr, %for.body82.lr.ph ], [ %noname_buf.2, %if.end160.for.body82_crit_edge ]
  %n.2462 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc163, %if.end160.for.body82_crit_edge ]
  %gid.0461 = phi i32 [ 0, %for.body82.lr.ph ], [ %inc161, %if.end160.for.body82_crit_edge ]
  %66 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %controls, align 4
  %arrayidx85 = getelementptr %struct.mvebu_mpp_ctrl, ptr %67, i32 %n.2462
  %68 = ptrtoint ptr %control_data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %control_data, align 4
  %tobool86.not = icmp eq ptr %69, null
  %arrayidx88 = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %69, i32 %n.2462
  %spec.select = select i1 %tobool86.not, ptr null, ptr %arrayidx88
  %70 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %groups, align 4
  %gid91 = getelementptr %struct.mvebu_pinctrl_group, ptr %71, i32 %gid.0461, i32 5
  %72 = ptrtoint ptr %gid91 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %gid.0461, ptr %gid91, align 4
  %73 = load ptr, ptr %groups, align 4
  %ctrl94 = getelementptr %struct.mvebu_pinctrl_group, ptr %73, i32 %gid.0461, i32 1
  %74 = ptrtoint ptr %ctrl94 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx85, ptr %ctrl94, align 4
  %75 = load ptr, ptr %groups, align 4
  %data97 = getelementptr %struct.mvebu_pinctrl_group, ptr %75, i32 %gid.0461, i32 2
  %76 = ptrtoint ptr %data97 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %spec.select, ptr %data97, align 4
  %77 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx85, align 4
  %79 = load ptr, ptr %groups, align 4
  %arrayidx100 = getelementptr %struct.mvebu_pinctrl_group, ptr %79, i32 %gid.0461
  %80 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %78, ptr %arrayidx100, align 4
  %pins102 = getelementptr %struct.mvebu_mpp_ctrl, ptr %67, i32 %n.2462, i32 3
  %81 = ptrtoint ptr %pins102 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pins102, align 4
  %83 = load ptr, ptr %groups, align 4
  %pins105 = getelementptr %struct.mvebu_pinctrl_group, ptr %83, i32 %gid.0461, i32 6
  %84 = ptrtoint ptr %pins105 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %pins105, align 4
  %npins106 = getelementptr %struct.mvebu_mpp_ctrl, ptr %67, i32 %n.2462, i32 2
  %85 = ptrtoint ptr %npins106 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %npins106, align 1
  %conv107 = zext i8 %86 to i32
  %87 = load ptr, ptr %groups, align 4
  %npins110 = getelementptr %struct.mvebu_pinctrl_group, ptr %87, i32 %gid.0461, i32 7
  %88 = ptrtoint ptr %npins110 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv107, ptr %npins110, align 4
  %89 = load ptr, ptr %arrayidx85, align 4
  %tobool112.not = icmp eq ptr %89, null
  br i1 %tobool112.not, label %if.then113, label %for.body82.if.end160_crit_edge

for.body82.if.end160_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then113:                                       ; preds = %for.body82
  %90 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %groups, align 4
  %arrayidx115 = getelementptr %struct.mvebu_pinctrl_group, ptr %91, i32 %gid.0461
  %92 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %noname_buf.0464, ptr %arrayidx115, align 4
  %93 = load ptr, ptr %groups, align 4
  %npins119 = getelementptr %struct.mvebu_pinctrl_group, ptr %93, i32 %gid.0461, i32 7
  %94 = ptrtoint ptr %npins119 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %npins119, align 4
  %pid120 = getelementptr %struct.mvebu_mpp_ctrl, ptr %67, i32 %n.2462, i32 1
  %95 = ptrtoint ptr %pid120 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %pid120, align 4
  %conv121 = zext i8 %96 to i32
  %call123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %noname_buf.0464, ptr noundef nonnull @.str.5, i32 noundef %conv121)
  %noname_buf.1452 = getelementptr i8, ptr %noname_buf.0464, i32 8
  %97 = ptrtoint ptr %npins106 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %npins106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %98)
  %cmp128454 = icmp ugt i8 %98, 1
  br i1 %cmp128454, label %if.then113.for.body130_crit_edge, label %if.then113.if.end160_crit_edge

if.then113.if.end160_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then113.for.body130_crit_edge:                 ; preds = %if.then113
  br label %for.body130

for.body130:                                      ; preds = %for.body130.for.body130_crit_edge, %if.then113.for.body130_crit_edge
  %noname_buf.1457 = phi ptr [ %noname_buf.1, %for.body130.for.body130_crit_edge ], [ %noname_buf.1452, %if.then113.for.body130_crit_edge ]
  %k.1456 = phi i32 [ %inc158, %for.body130.for.body130_crit_edge ], [ 1, %if.then113.for.body130_crit_edge ]
  %gid.1455 = phi i32 [ %inc131, %for.body130.for.body130_crit_edge ], [ %gid.0461, %if.then113.for.body130_crit_edge ]
  %inc131 = add i32 %gid.1455, 1
  %99 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %groups, align 4
  %gid134 = getelementptr %struct.mvebu_pinctrl_group, ptr %100, i32 %inc131, i32 5
  %101 = ptrtoint ptr %gid134 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %inc131, ptr %gid134, align 4
  %102 = load ptr, ptr %groups, align 4
  %ctrl137 = getelementptr %struct.mvebu_pinctrl_group, ptr %102, i32 %inc131, i32 1
  %103 = ptrtoint ptr %ctrl137 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %arrayidx85, ptr %ctrl137, align 4
  %104 = load ptr, ptr %groups, align 4
  %data140 = getelementptr %struct.mvebu_pinctrl_group, ptr %104, i32 %inc131, i32 2
  %105 = ptrtoint ptr %data140 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %spec.select, ptr %data140, align 4
  %106 = load ptr, ptr %groups, align 4
  %arrayidx142 = getelementptr %struct.mvebu_pinctrl_group, ptr %106, i32 %inc131
  %107 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %noname_buf.1457, ptr %arrayidx142, align 4
  %108 = ptrtoint ptr %pins102 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pins102, align 4
  %arrayidx145 = getelementptr i32, ptr %109, i32 %k.1456
  %110 = load ptr, ptr %groups, align 4
  %pins148 = getelementptr %struct.mvebu_pinctrl_group, ptr %110, i32 %inc131, i32 6
  %111 = ptrtoint ptr %pins148 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %arrayidx145, ptr %pins148, align 4
  %112 = load ptr, ptr %groups, align 4
  %npins151 = getelementptr %struct.mvebu_pinctrl_group, ptr %112, i32 %inc131, i32 7
  %113 = ptrtoint ptr %npins151 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %npins151, align 4
  %114 = ptrtoint ptr %pid120 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %pid120, align 4
  %conv153 = zext i8 %115 to i32
  %add154 = add nuw i32 %k.1456, %conv153
  %call155 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %noname_buf.1457, ptr noundef nonnull @.str.5, i32 noundef %add154)
  %inc158 = add nuw nsw i32 %k.1456, 1
  %noname_buf.1 = getelementptr i8, ptr %noname_buf.1457, i32 8
  %116 = ptrtoint ptr %npins106 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %npins106, align 1
  %conv127 = zext i8 %117 to i32
  %cmp128 = icmp ult i32 %inc158, %conv127
  br i1 %cmp128, label %for.body130.for.body130_crit_edge, label %for.body130.if.end160_crit_edge

for.body130.if.end160_crit_edge:                  ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

for.body130.for.body130_crit_edge:                ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body130

if.end160:                                        ; preds = %for.body130.if.end160_crit_edge, %if.then113.if.end160_crit_edge, %for.body82.if.end160_crit_edge
  %gid.2 = phi i32 [ %gid.0461, %for.body82.if.end160_crit_edge ], [ %gid.0461, %if.then113.if.end160_crit_edge ], [ %inc131, %for.body130.if.end160_crit_edge ]
  %noname_buf.2 = phi ptr [ %noname_buf.0464, %for.body82.if.end160_crit_edge ], [ %noname_buf.1452, %if.then113.if.end160_crit_edge ], [ %noname_buf.1, %for.body130.if.end160_crit_edge ]
  %inc161 = add i32 %gid.2, 1
  %inc163 = add nuw i32 %n.2462, 1
  %118 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ncontrols, align 4
  %cmp80 = icmp ult i32 %inc163, %119
  br i1 %cmp80, label %if.end160.for.body82_crit_edge, label %if.end160.for.cond165.preheader_crit_edge

if.end160.for.cond165.preheader_crit_edge:        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond165.preheader

if.end160.for.body82_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.body168:                                      ; preds = %cleanup.for.body168_crit_edge, %for.cond165.preheader.for.body168_crit_edge
  %n.3475 = phi i32 [ %inc236, %cleanup.for.body168_crit_edge ], [ 0, %for.cond165.preheader.for.body168_crit_edge ]
  %120 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %modes, align 4
  %arrayidx170 = getelementptr %struct.mvebu_mpp_mode, ptr %121, i32 %n.3475
  %settings = getelementptr %struct.mvebu_mpp_mode, ptr %121, i32 %n.3475, i32 1
  %122 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %settings, align 4
  %name173465 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %123, i32 0, i32 1
  %124 = ptrtoint ptr %name173465 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name173465, align 4
  %tobool174.not466 = icmp eq ptr %125, null
  br i1 %tobool174.not466, label %for.body168.cleanup_crit_edge, label %for.body168.if.end176_crit_edge

for.body168.if.end176_crit_edge:                  ; preds = %for.body168
  br label %if.end176

for.body168.cleanup_crit_edge:                    ; preds = %for.body168
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end176:                                        ; preds = %for.inc211.if.end176_crit_edge, %for.body168.if.end176_crit_edge
  %126 = phi ptr [ %133, %for.inc211.if.end176_crit_edge ], [ %125, %for.body168.if.end176_crit_edge ]
  %supp_settings.0470 = phi i32 [ %supp_settings.1, %for.inc211.if.end176_crit_edge ], [ 0, %for.body168.if.end176_crit_edge ]
  %num_settings.0469 = phi i32 [ %inc177, %for.inc211.if.end176_crit_edge ], [ 0, %for.body168.if.end176_crit_edge ]
  %set.0467 = phi ptr [ %incdec.ptr, %for.inc211.if.end176_crit_edge ], [ %123, %for.body168.if.end176_crit_edge ]
  %inc177 = add i32 %num_settings.0469, 1
  %127 = ptrtoint ptr %variant16 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %variant16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool180.not = icmp eq i8 %128, 0
  br i1 %tobool180.not, label %if.end176.if.end187_crit_edge, label %land.lhs.true

if.end176.if.end187_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

land.lhs.true:                                    ; preds = %if.end176
  %variant183 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %set.0467, i32 0, i32 3
  %129 = ptrtoint ptr %variant183 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %variant183, align 4
  %and434 = and i8 %130, %128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and434)
  %tobool185.not = icmp eq i8 %and434, 0
  br i1 %tobool185.not, label %land.lhs.true.for.inc211_crit_edge, label %land.lhs.true.if.end187_crit_edge

land.lhs.true.if.end187_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

land.lhs.true.for.inc211_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc211

if.end187:                                        ; preds = %land.lhs.true.if.end187_crit_edge, %if.end176.if.end187_crit_edge
  %inc188 = add i32 %supp_settings.0470, 1
  %call190 = tail call i32 @strcmp(ptr noundef nonnull %126, ptr noundef nonnull dereferenceable(5) @.str.6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp eq i32 %call190, 0
  br i1 %cmp191, label %if.end187.for.inc211.sink.split_crit_edge, label %if.else194

if.end187.for.inc211.sink.split_crit_edge:        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc211.sink.split

if.else194:                                       ; preds = %if.end187
  %call196 = tail call i32 @strcmp(ptr noundef nonnull %126, ptr noundef nonnull dereferenceable(4) @.str.7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %cmp197 = icmp eq i32 %call196, 0
  br i1 %cmp197, label %if.else194.for.inc211.sink.split_crit_edge, label %if.else201

if.else194.for.inc211.sink.split_crit_edge:       ; preds = %if.else194
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc211.sink.split

if.else201:                                       ; preds = %if.else194
  %call203 = tail call i32 @strcmp(ptr noundef nonnull %126, ptr noundef nonnull dereferenceable(4) @.str.8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %cmp204 = icmp eq i32 %call203, 0
  br i1 %cmp204, label %if.else201.for.inc211.sink.split_crit_edge, label %if.else201.for.inc211_crit_edge

if.else201.for.inc211_crit_edge:                  ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc211

if.else201.for.inc211.sink.split_crit_edge:       ; preds = %if.else201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc211.sink.split

for.inc211.sink.split:                            ; preds = %if.else201.for.inc211.sink.split_crit_edge, %if.else194.for.inc211.sink.split_crit_edge, %if.end187.for.inc211.sink.split_crit_edge
  %.sink = phi i8 [ 3, %if.end187.for.inc211.sink.split_crit_edge ], [ 1, %if.else194.for.inc211.sink.split_crit_edge ], [ 2, %if.else201.for.inc211.sink.split_crit_edge ]
  %flags = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, ptr %set.0467, i32 0, i32 4
  %131 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %.sink, ptr %flags, align 1
  br label %for.inc211

for.inc211:                                       ; preds = %for.inc211.sink.split, %if.else201.for.inc211_crit_edge, %land.lhs.true.for.inc211_crit_edge
  %supp_settings.1 = phi i32 [ %inc188, %if.else201.for.inc211_crit_edge ], [ %supp_settings.0470, %land.lhs.true.for.inc211_crit_edge ], [ %inc188, %for.inc211.sink.split ]
  %incdec.ptr = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %set.0467, i32 1
  %name173 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %set.0467, i32 1, i32 1
  %132 = ptrtoint ptr %name173 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name173, align 4
  %tobool174.not = icmp eq ptr %133, null
  br i1 %tobool174.not, label %for.end212, label %for.inc211.if.end176_crit_edge

for.inc211.if.end176_crit_edge:                   ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

for.end212:                                       ; preds = %for.inc211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %supp_settings.1)
  %tobool213.not = icmp eq i32 %supp_settings.1, 0
  br i1 %tobool213.not, label %for.end212.cleanup_crit_edge, label %if.end215

for.end212.cleanup_crit_edge:                     ; preds = %for.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end215:                                        ; preds = %for.end212
  %134 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx170, align 4
  %conv217 = zext i8 %135 to i32
  %136 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp24.not.i = icmp eq i32 %137, 0
  br i1 %cmp24.not.i, label %if.end215.do.end223_crit_edge, label %for.body.lr.ph.i

if.end215.do.end223_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end223

for.body.lr.ph.i:                                 ; preds = %if.end215
  %138 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %groups, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %139, i32 %n.025.i, i32 6
  %140 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pins.i, align 4
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %141, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %conv217)
  %cmp2.not.i = icmp ugt i32 %143, %conv217
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %npins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %139, i32 %n.025.i, i32 7
  %144 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %npins.i, align 4
  %add.i = add i32 %145, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv217)
  %cmp9.i = icmp ugt i32 %add.i, %conv217
  br i1 %cmp9.i, label %mvebu_pinctrl_find_group_by_pid.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %137
  br i1 %exitcond.not.i, label %for.inc.i.do.end223_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end223_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end223

mvebu_pinctrl_find_group_by_pid.exit:             ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mvebu_pinctrl_group, ptr %139, i32 %n.025.i
  %tobool219.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool219.not, label %mvebu_pinctrl_find_group_by_pid.exit.do.end223_crit_edge, label %if.end227

mvebu_pinctrl_find_group_by_pid.exit.do.end223_crit_edge: ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end223

do.end223:                                        ; preds = %mvebu_pinctrl_find_group_by_pid.exit.do.end223_crit_edge, %for.inc.i.do.end223_crit_edge, %if.end215.do.end223_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %conv217) #11
  br label %cleanup

if.end227:                                        ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %settings, align 4
  %settings229 = getelementptr %struct.mvebu_pinctrl_group, ptr %139, i32 %n.025.i, i32 3
  %148 = ptrtoint ptr %settings229 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %settings229, align 4
  %num_settings230 = getelementptr %struct.mvebu_pinctrl_group, ptr %139, i32 %n.025.i, i32 4
  %149 = ptrtoint ptr %num_settings230 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %inc177, ptr %num_settings230, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end227, %do.end223, %for.end212.cleanup_crit_edge, %for.body168.cleanup_crit_edge
  %inc236 = add nuw i32 %n.3475, 1
  %150 = ptrtoint ptr %nmodes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %nmodes, align 4
  %cmp166 = icmp ult i32 %inc236, %151
  br i1 %cmp166, label %cleanup.for.body168_crit_edge, label %cleanup.for.end237_crit_edge

cleanup.for.end237_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end237

cleanup.for.body168_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body168

for.end237:                                       ; preds = %cleanup.for.end237_crit_edge, %for.cond165.preheader.for.end237_crit_edge
  %call238 = tail call fastcc i32 @mvebu_pinctrl_build_functions(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.end245, label %do.end243

do.end243:                                        ; preds = %for.end237
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #11
  br label %cleanup272

if.end245:                                        ; preds = %for.end237
  %call248 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #8
  %pctldev = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 1
  %152 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call248, ptr %pctldev, align 4
  %cmp.i = icmp ugt ptr %call248, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end254, label %do.end261

do.end254:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #11
  %153 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %pctldev, align 4
  %155 = ptrtoint ptr %154 to i32
  br label %cleanup272

do.end261:                                        ; preds = %if.end245
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20) #11
  %ngpioranges = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 7
  %156 = ptrtoint ptr %ngpioranges to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ngpioranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp264476.not = icmp eq i32 %157, 0
  br i1 %cmp264476.not, label %do.end261.cleanup272_crit_edge, label %for.body266.lr.ph

do.end261.cleanup272_crit_edge:                   ; preds = %do.end261
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

for.body266.lr.ph:                                ; preds = %do.end261
  %gpioranges = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 6
  br label %for.body266

for.body266:                                      ; preds = %for.body266.for.body266_crit_edge, %for.body266.lr.ph
  %n.4477 = phi i32 [ 0, %for.body266.lr.ph ], [ %inc270, %for.body266.for.body266_crit_edge ]
  %158 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pctldev, align 4
  %160 = ptrtoint ptr %gpioranges to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %gpioranges, align 4
  %arrayidx268 = getelementptr %struct.pinctrl_gpio_range, ptr %161, i32 %n.4477
  tail call void @pinctrl_add_gpio_range(ptr noundef %159, ptr noundef %arrayidx268) #8
  %inc270 = add nuw i32 %n.4477, 1
  %162 = ptrtoint ptr %ngpioranges to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ngpioranges, align 4
  %cmp264 = icmp ult i32 %inc270, %163
  br i1 %cmp264, label %for.body266.for.body266_crit_edge, label %for.body266.cleanup272_crit_edge

for.body266.cleanup272_crit_edge:                 ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup272

for.body266.for.body266_crit_edge:                ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body266

cleanup272:                                       ; preds = %for.body266.cleanup272_crit_edge, %do.end261.cleanup272_crit_edge, %do.end254, %do.end243, %for.end65.cleanup272_crit_edge, %devm_kcalloc.exit.cleanup272_crit_edge, %for.end48.cleanup272_crit_edge, %if.end.cleanup272_crit_edge, %do.end
  %retval.0 = phi i32 [ %call238, %do.end243 ], [ %155, %do.end254 ], [ -22, %do.end ], [ -12, %if.end.cleanup272_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup272_crit_edge ], [ -12, %for.end65.cleanup272_crit_edge ], [ -12, %for.end48.cleanup272_crit_edge ], [ 0, %do.end261.cleanup272_crit_edge ], [ 0, %for.body266.cleanup272_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mvebu_pinctrl_build_functions(ptr noundef %pdev, ptr nocapture noundef %pctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %npins = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 12) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup91_crit_edge, label %devm_kcalloc.exit, !prof !101

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

devm_kcalloc.exit:                                ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup91_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup91_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %num_groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp185.not = icmp eq i32 %6, 0
  br i1 %cmp185.not, label %for.end30.thread, label %for.body.lr.ph

for.end30.thread:                                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %num_functions204 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 6
  %7 = ptrtoint ptr %num_functions204 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_functions204, align 4
  %functions205 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 5
  %8 = ptrtoint ptr %functions205 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %functions205, align 4
  br label %cleanup91

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 3
  %variant = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 7
  %num_groups21.i = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %call5.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %n.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %for.end.for.body_crit_edge ]
  %num.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %num.1.lcssa, %for.end.for.body_crit_edge ]
  %funcsize.0186 = phi i32 [ %1, %for.body.lr.ph ], [ %funcsize.1.lcssa, %for.end.for.body_crit_edge ]
  %9 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %groups, align 4
  %num_settings = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %n.0188, i32 4
  %11 = ptrtoint ptr %num_settings to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2175.not = icmp eq i32 %12, 0
  br i1 %cmp2175.not, label %for.body.for.end_crit_edge, label %for.body3.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body3.lr.ph:                                  ; preds = %for.body
  %settings = getelementptr %struct.mvebu_pinctrl_group, ptr %10, i32 %n.0188, i32 3
  br label %for.body3

for.body3:                                        ; preds = %cleanup.for.body3_crit_edge, %for.body3.lr.ph
  %s.0180 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc27, %cleanup.for.body3_crit_edge ]
  %num.1178 = phi i32 [ %num.0187, %for.body3.lr.ph ], [ %num.2, %cleanup.for.body3_crit_edge ]
  %funcsize.1176 = phi i32 [ %funcsize.0186, %for.body3.lr.ph ], [ %funcsize.3, %cleanup.for.body3_crit_edge ]
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %for.body3.if.end12_crit_edge, label %land.lhs.true

for.body3.if.end12_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %for.body3
  %15 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %settings, align 4
  %variant8 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %16, i32 %s.0180, i32 3
  %17 = ptrtoint ptr %variant8 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %variant8, align 4
  %and139 = and i8 %18, %14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and139)
  %tobool10.not = icmp eq i8 %and139, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %for.body3.if.end12_crit_edge
  %19 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %settings, align 4
  %name = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %s.0180, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %funcsize.1176)
  %cmp.i = icmp slt i32 %funcsize.1176, 1
  br i1 %cmp.i, label %do.end, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end12
  %23 = ptrtoint ptr %num_groups21.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_groups21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not22.i = icmp eq i32 %24, 0
  br i1 %tobool.not22.i, label %while.cond.preheader.i.if.end22_crit_edge, label %while.body.i.preheader

while.cond.preheader.i.if.end22_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %25 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call5.i.i, align 4
  %call.i171 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %cmp2.i172 = icmp eq i32 %call.i171, 0
  br i1 %cmp2.i172, label %while.body.i.preheader.if.then3.i_crit_edge, label %while.body.i.preheader.if.end5.i_crit_edge

while.body.i.preheader.if.end5.i_crit_edge:       ; preds = %while.body.i.preheader
  br label %if.end5.i

while.body.i.preheader.if.then3.i_crit_edge:      ; preds = %while.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

while.body.i:                                     ; preds = %if.end5.i
  %27 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %28, ptr noundef %22) #13
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %while.body.i.if.then3.i_crit_edge, label %while.body.i.if.end5.i_crit_edge

while.body.i.if.end5.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

while.body.i.if.then3.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3.i

if.then3.i:                                       ; preds = %while.body.i.if.then3.i_crit_edge, %while.body.i.preheader.if.then3.i_crit_edge
  %.lcssa = phi i32 [ %24, %while.body.i.preheader.if.then3.i_crit_edge ], [ %31, %while.body.i.if.then3.i_crit_edge ]
  %funcs.addr.023.i.lcssa = phi ptr [ %call5.i.i, %while.body.i.preheader.if.then3.i_crit_edge ], [ %incdec.ptr.i, %while.body.i.if.then3.i_crit_edge ]
  %num_groups.le.i = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %funcs.addr.023.i.lcssa, i32 0, i32 2
  %inc.i = add i32 %.lcssa, 1
  %29 = ptrtoint ptr %num_groups.le.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %num_groups.le.i, align 4
  br label %cleanup

if.end5.i:                                        ; preds = %while.body.i.if.end5.i_crit_edge, %while.body.i.preheader.if.end5.i_crit_edge
  %funcs.addr.023.i173 = phi ptr [ %incdec.ptr.i, %while.body.i.if.end5.i_crit_edge ], [ %call5.i.i, %while.body.i.preheader.if.end5.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.mvebu_pinctrl_function, ptr %funcs.addr.023.i173, i32 1
  %num_groups.i = getelementptr %struct.mvebu_pinctrl_function, ptr %funcs.addr.023.i173, i32 1, i32 2
  %30 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end5.i.if.end22_crit_edge, label %while.body.i

if.end5.i.if.end22_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %33) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end5.i.if.end22_crit_edge, %while.cond.preheader.i.if.end22_crit_edge
  %funcs.addr.0.lcssa20.i = phi ptr [ %call5.i.i, %while.cond.preheader.i.if.end22_crit_edge ], [ %incdec.ptr.i, %if.end5.i.if.end22_crit_edge ]
  %num_groups.le19.i = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %funcs.addr.0.lcssa20.i, i32 0, i32 2
  %34 = ptrtoint ptr %funcs.addr.0.lcssa20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %22, ptr %funcs.addr.0.lcssa20.i, align 4
  %35 = ptrtoint ptr %num_groups.le19.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_groups.le19.i, align 4
  %dec.i = add i32 %funcsize.1176, -1
  %inc = add i32 %num.1178, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end, %if.then3.i, %land.lhs.true.cleanup_crit_edge
  %funcsize.3 = phi i32 [ %funcsize.1176, %land.lhs.true.cleanup_crit_edge ], [ %dec.i, %if.end22 ], [ %funcsize.1176, %if.then3.i ], [ %funcsize.1176, %do.end ]
  %num.2 = phi i32 [ %num.1178, %land.lhs.true.cleanup_crit_edge ], [ %inc, %if.end22 ], [ %num.1178, %if.then3.i ], [ %num.1178, %do.end ]
  %inc27 = add nuw i32 %s.0180, 1
  %36 = ptrtoint ptr %num_settings to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_settings, align 4
  %cmp2 = icmp ult i32 %inc27, %37
  br i1 %cmp2, label %cleanup.for.body3_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body3_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.body.for.end_crit_edge
  %funcsize.1.lcssa = phi i32 [ %funcsize.0186, %for.body.for.end_crit_edge ], [ %funcsize.3, %cleanup.for.end_crit_edge ]
  %num.1.lcssa = phi i32 [ %num.0187, %for.body.for.end_crit_edge ], [ %num.2, %cleanup.for.end_crit_edge ]
  %inc29 = add nuw i32 %n.0188, 1
  %38 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_groups, align 4
  %cmp = icmp ult i32 %inc29, %39
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end30

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end30:                                        ; preds = %for.end
  %num_functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 6
  %40 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %num.1.lcssa, ptr %num_functions, align 4
  %functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 5
  %41 = ptrtoint ptr %functions to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call5.i.i, ptr %functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp33195.not = icmp eq i32 %39, 0
  br i1 %cmp33195.not, label %for.end30.cleanup91_crit_edge, label %for.body35.lr.ph

for.end30.cleanup91_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

for.body35.lr.ph:                                 ; preds = %for.end30
  %groups37 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 3
  %variant45 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %pctl, i32 0, i32 7
  br label %for.body35

for.body35:                                       ; preds = %for.inc88.for.body35_crit_edge, %for.body35.lr.ph
  %n.1196 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc89, %for.inc88.for.body35_crit_edge ]
  %42 = ptrtoint ptr %groups37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %groups37, align 4
  %arrayidx38 = getelementptr %struct.mvebu_pinctrl_group, ptr %43, i32 %n.1196
  %num_settings40 = getelementptr %struct.mvebu_pinctrl_group, ptr %43, i32 %n.1196, i32 4
  %44 = ptrtoint ptr %num_settings40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_settings40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp41191.not = icmp eq i32 %45, 0
  br i1 %cmp41191.not, label %for.body35.for.inc88_crit_edge, label %for.body43.lr.ph

for.body35.for.inc88_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

for.body43.lr.ph:                                 ; preds = %for.body35
  %settings51 = getelementptr %struct.mvebu_pinctrl_group, ptr %43, i32 %n.1196, i32 3
  br label %for.body43

for.body43:                                       ; preds = %for.inc82.for.body43_crit_edge, %for.body43.lr.ph
  %s.1192 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc83, %for.inc82.for.body43_crit_edge ]
  %46 = ptrtoint ptr %variant45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %variant45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool47.not = icmp eq i8 %47, 0
  br i1 %tobool47.not, label %for.body43.if.end58_crit_edge, label %land.lhs.true48

for.body43.if.end58_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true48:                                  ; preds = %for.body43
  %48 = ptrtoint ptr %settings51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %settings51, align 4
  %variant53 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %49, i32 %s.1192, i32 3
  %50 = ptrtoint ptr %variant53 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %variant53, align 4
  %and55138 = and i8 %51, %47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and55138)
  %tobool56.not = icmp eq i8 %and55138, 0
  br i1 %tobool56.not, label %land.lhs.true48.for.inc82_crit_edge, label %land.lhs.true48.if.end58_crit_edge

land.lhs.true48.if.end58_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

land.lhs.true48.for.inc82_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc82

if.end58:                                         ; preds = %land.lhs.true48.if.end58_crit_edge, %for.body43.if.end58_crit_edge
  %52 = ptrtoint ptr %settings51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %settings51, align 4
  %name61 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %53, i32 %s.1192, i32 1
  %54 = ptrtoint ptr %name61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %name61, align 4
  %56 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp10.not.i = icmp eq i32 %57, 0
  br i1 %cmp10.not.i, label %if.end58.mvebu_pinctrl_find_function_by_name.exit_crit_edge, label %for.body.lr.ph.i

if.end58.mvebu_pinctrl_find_function_by_name.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_function_by_name.exit

for.body.lr.ph.i:                                 ; preds = %if.end58
  %58 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %functions, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i140 = add nuw i32 %n.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i140, %57
  br i1 %exitcond.not.i, label %for.cond.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_function_by_name.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i140, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvebu_pinctrl_function, ptr %59, i32 %n.011.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %call.i141 = tail call i32 @strcmp(ptr noundef %55, ptr noundef %61) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i141)
  %cmp2.i142 = icmp eq i32 %call.i141, 0
  br i1 %cmp2.i142, label %for.body.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge, label %for.cond.i

for.body.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_function_by_name.exit

mvebu_pinctrl_find_function_by_name.exit:         ; preds = %for.body.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge, %for.cond.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge, %if.end58.mvebu_pinctrl_find_function_by_name.exit_crit_edge
  %retval.0.i143 = phi ptr [ null, %if.end58.mvebu_pinctrl_find_function_by_name.exit_crit_edge ], [ %arrayidx.i, %for.body.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge ], [ null, %for.cond.i.mvebu_pinctrl_find_function_by_name.exit_crit_edge ]
  %groups63 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %retval.0.i143, i32 0, i32 1
  %62 = ptrtoint ptr %groups63 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %groups63, align 4
  %tobool64.not = icmp eq ptr %63, null
  br i1 %tobool64.not, label %if.then65, label %mvebu_pinctrl_find_function_by_name.exit.if.end74_crit_edge

mvebu_pinctrl_find_function_by_name.exit.if.end74_crit_edge: ; preds = %mvebu_pinctrl_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then65:                                        ; preds = %mvebu_pinctrl_find_function_by_name.exit
  %num_groups67 = getelementptr inbounds %struct.mvebu_pinctrl_function, ptr %retval.0.i143, i32 0, i32 2
  %64 = ptrtoint ptr %num_groups67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_groups67, align 4
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %65, i32 4) #8
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %devm_kcalloc.exit147.thread, label %devm_kcalloc.exit147, !prof !101

devm_kcalloc.exit147.thread:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %groups63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %groups63, align 4
  br label %cleanup91

devm_kcalloc.exit147:                             ; preds = %if.then65
  %69 = extractvalue { i32, i1 } %66, 0
  %call5.i.i144 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %69, i32 noundef 3520) #8
  %70 = ptrtoint ptr %groups63 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call5.i.i144, ptr %groups63, align 4
  %tobool71.not = icmp eq ptr %call5.i.i144, null
  br i1 %tobool71.not, label %devm_kcalloc.exit147.cleanup91_crit_edge, label %devm_kcalloc.exit147.if.end74_crit_edge

devm_kcalloc.exit147.if.end74_crit_edge:          ; preds = %devm_kcalloc.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

devm_kcalloc.exit147.cleanup91_crit_edge:         ; preds = %devm_kcalloc.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end74:                                         ; preds = %devm_kcalloc.exit147.if.end74_crit_edge, %mvebu_pinctrl_find_function_by_name.exit.if.end74_crit_edge
  %71 = ptrtoint ptr %groups63 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %groups63, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end74
  %groups44.0 = phi ptr [ %72, %if.end74 ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %73 = ptrtoint ptr %groups44.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %groups44.0, align 4
  %tobool76.not = icmp eq ptr %74, null
  %incdec.ptr = getelementptr ptr, ptr %groups44.0, i32 1
  br i1 %tobool76.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx38, align 4
  %77 = ptrtoint ptr %groups44.0 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %groups44.0, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %while.end, %land.lhs.true48.for.inc82_crit_edge
  %inc83 = add nuw i32 %s.1192, 1
  %78 = ptrtoint ptr %num_settings40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_settings40, align 4
  %cmp41 = icmp ult i32 %inc83, %79
  br i1 %cmp41, label %for.inc82.for.body43_crit_edge, label %for.inc82.for.inc88_crit_edge

for.inc82.for.inc88_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc88

for.inc82.for.body43_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body43

for.inc88:                                        ; preds = %for.inc82.for.inc88_crit_edge, %for.body35.for.inc88_crit_edge
  %inc89 = add nuw i32 %n.1196, 1
  %80 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_groups, align 4
  %cmp33 = icmp ult i32 %inc89, %81
  br i1 %cmp33, label %for.inc88.for.body35_crit_edge, label %for.inc88.cleanup91_crit_edge

for.inc88.cleanup91_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

for.inc88.for.body35_crit_edge:                   ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

cleanup91:                                        ; preds = %for.inc88.cleanup91_crit_edge, %devm_kcalloc.exit147.cleanup91_crit_edge, %devm_kcalloc.exit147.thread, %for.end30.cleanup91_crit_edge, %for.end30.thread, %devm_kcalloc.exit.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.4 = phi i32 [ -12, %devm_kcalloc.exit.cleanup91_crit_edge ], [ -12, %devm_kcalloc.exit147.thread ], [ -12, %entry.cleanup91_crit_edge ], [ 0, %for.end30.cleanup91_crit_edge ], [ 0, %for.end30.thread ], [ -12, %devm_kcalloc.exit147.cleanup91_crit_edge ], [ 0, %for.inc88.cleanup91_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_simple_mmio_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ncontrols = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ncontrols, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 8) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !101

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %8 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26 = icmp sgt i32 %9, 0
  br i1 %cmp26, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 %i.027
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %11 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ncontrols, align 4
  %cmp = icmp slt i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %control_data = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %control_data, align 4
  %call9 = tail call i32 @mvebu_pinctrl_probe(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call9, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_regmap_mpp_ctrl_get(ptr nocapture noundef readonly %data, i32 noundef %pid, ptr nocapture noundef writeonly %config) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %pid, 1
  %mul = and i32 %0, 2147483644
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !102
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.anon, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add = add i32 %5, %mul
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %add, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %shr = lshr i32 %7, %mul1
  %and = and i32 %shr, 15
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_regmap_mpp_ctrl_set(ptr nocapture noundef readonly %data, i32 noundef %pid, i32 noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i32 %pid, 1
  %mul = and i32 %0, 2147483644
  %rem = shl i32 %pid, 2
  %mul1 = and i32 %rem, 28
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %offset = getelementptr inbounds %struct.anon, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset, align 4
  %add = add i32 %4, %mul
  %shl = shl nuw i32 15, %mul1
  %shl2 = shl i32 %config, %mul1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %add, i32 noundef %shl, i32 noundef %shl2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvebu_pinctrl_simple_regmap_probe(ptr noundef %pdev, ptr nocapture noundef readonly %syscon_dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %syscon_dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %ncontrols = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ncontrols, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !101

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %9 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %9, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %10 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ncontrols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp29 = icmp sgt i32 %11, 0
  br i1 %cmp29, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mvebu_mpp_ctrl_data, ptr %call5.i.i, i32 %i.030
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %arrayidx, align 4
  %offset10 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1
  %13 = ptrtoint ptr %offset10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset, ptr %offset10, align 4
  %inc = add nuw nsw i32 %i.030, 1
  %14 = ptrtoint ptr %ncontrols to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ncontrols, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %control_data = getelementptr inbounds %struct.mvebu_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %control_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i, ptr %control_data, align 4
  %call11 = tail call i32 @mvebu_pinctrl_probe(ptr noundef %pdev)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call11, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %num_groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mvebu_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %gid, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 6
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pins, align 4
  %5 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.mvebu_pinctrl_group, ptr %5, i32 %gid, i32 7
  %6 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %npins, align 4
  %8 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #0 align 64 {
entry:
  %function = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function) #8
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %function, align 4, !annotation !102
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call1 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.23, ptr noundef nonnull %function) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef %np) #11
  br label %cleanup38

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28, ptr noundef %np) #11
  br label %cleanup38

if.end8:                                          ; preds = %if.end
  %7 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 28) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !101

kmalloc_array.exit.thread:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %map, align 4
  br label %cleanup38

if.end7.i:                                        ; preds = %if.end8
  %10 = extractvalue { i32, i1 } %7, 0
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #14
  %11 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i, ptr %map, align 4
  %tobool10.not = icmp eq ptr %call8.i, null
  br i1 %tobool10.not, label %if.end7.i.cleanup38_crit_edge, label %if.end12

if.end7.i.cleanup38_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup38

if.end12:                                         ; preds = %if.end7.i
  %call13 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %call14 = call ptr @of_prop_next_string(ptr noundef %call13, ptr noundef null) #8
  %tobool15.not93 = icmp eq ptr %call14, null
  br i1 %tobool15.not93, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %num_groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 4
  %groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %variant.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %n.098 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %cleanup.for.body_crit_edge ]
  %group.094 = phi ptr [ %call14, %for.body.lr.ph ], [ %call37, %cleanup.for.body_crit_edge ]
  %12 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10.not.i = icmp eq i32 %13, 0
  br i1 %cmp10.not.i, label %for.body.do.end21_crit_edge, label %for.body.lr.ph.i

for.body.do.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

for.body.lr.ph.i:                                 ; preds = %for.body
  %14 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %n.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.cond.i.do.end21_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.end21_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvebu_pinctrl_group, ptr %15, i32 %n.011.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %call.i72 = call i32 @strcmp(ptr noundef nonnull %group.094, ptr noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp2.i = icmp eq i32 %call.i72, 0
  br i1 %cmp2.i, label %mvebu_pinctrl_find_group_by_name.exit, label %for.cond.i

mvebu_pinctrl_find_group_by_name.exit:            ; preds = %for.body.i
  %tobool17.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool17.not, label %mvebu_pinctrl_find_group_by_name.exit.do.end21_crit_edge, label %if.end23

mvebu_pinctrl_find_group_by_name.exit.do.end21_crit_edge: ; preds = %mvebu_pinctrl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end21

do.end21:                                         ; preds = %mvebu_pinctrl_find_group_by_name.exit.do.end21_crit_edge, %for.cond.i.do.end21_crit_edge, %for.body.do.end21_crit_edge
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31, ptr noundef nonnull %group.094) #11
  br label %cleanup

if.end23:                                         ; preds = %mvebu_pinctrl_find_group_by_name.exit
  %20 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %function, align 4
  %num_settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %15, i32 %n.011.i, i32 4
  %22 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23.not.i = icmp eq i32 %23, 0
  br i1 %cmp23.not.i, label %if.end23.do.end29_crit_edge, label %for.body.lr.ph.i74

if.end23.do.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

for.body.lr.ph.i74:                               ; preds = %if.end23
  %settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %15, i32 %n.011.i, i32 3
  %24 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %settings.i, align 4
  br label %for.body.i77

for.body.i77:                                     ; preds = %for.inc.i.for.body.i77_crit_edge, %for.body.lr.ph.i74
  %n.024.i = phi i32 [ 0, %for.body.lr.ph.i74 ], [ %inc.i78, %for.inc.i.for.body.i77_crit_edge ]
  %name1.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %25, i32 %n.024.i, i32 1
  %26 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name1.i, align 4
  %call.i75 = call i32 @strcmp(ptr noundef %21, ptr noundef %27) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp2.i76 = icmp eq i32 %call.i75, 0
  br i1 %cmp2.i76, label %if.then.i, label %for.body.i77.for.inc.i_crit_edge

for.body.i77.for.inc.i_crit_edge:                 ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i77
  %28 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge, label %lor.lhs.false.i

if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_name.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %variant6.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %25, i32 %n.024.i, i32 3
  %30 = ptrtoint ptr %variant6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %variant6.i, align 4
  %and21.i = and i8 %31, %29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and21.i)
  %tobool8.not.i = icmp eq i8 %and21.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge

lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_name.exit

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i77.for.inc.i_crit_edge
  %inc.i78 = add nuw i32 %n.024.i, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, %23
  br i1 %exitcond.not.i79, label %for.inc.i.do.end29_crit_edge, label %for.inc.i.for.body.i77_crit_edge

for.inc.i.for.body.i77_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i77

for.inc.i.do.end29_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

mvebu_pinctrl_find_setting_by_name.exit:          ; preds = %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge, %if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge
  %arrayidx11.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %25, i32 %n.024.i
  %tobool25.not = icmp eq ptr %arrayidx11.i, null
  br i1 %tobool25.not, label %mvebu_pinctrl_find_setting_by_name.exit.do.end29_crit_edge, label %if.end31

mvebu_pinctrl_find_setting_by_name.exit.do.end29_crit_edge: ; preds = %mvebu_pinctrl_find_setting_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

do.end29:                                         ; preds = %mvebu_pinctrl_find_setting_by_name.exit.do.end29_crit_edge, %for.inc.i.do.end29_crit_edge, %if.end23.do.end29_crit_edge
  %32 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.34, ptr noundef %21, ptr noundef nonnull %group.094) #11
  br label %cleanup

if.end31:                                         ; preds = %mvebu_pinctrl_find_setting_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %type = getelementptr %struct.pinctrl_map, ptr %35, i32 %n.098, i32 2
  %36 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %type, align 4
  %37 = load ptr, ptr %map, align 4
  %data = getelementptr %struct.pinctrl_map, ptr %37, i32 %n.098, i32 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %group.094, ptr %data, align 4
  %39 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %function, align 4
  %41 = load ptr, ptr %map, align 4
  %function36 = getelementptr %struct.pinctrl_map, ptr %41, i32 %n.098, i32 4, i32 0, i32 1
  %42 = ptrtoint ptr %function36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %40, ptr %function36, align 4
  %inc = add i32 %n.098, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end29, %do.end21
  %n.1 = phi i32 [ %inc, %if.end31 ], [ %n.098, %do.end29 ], [ %n.098, %do.end21 ]
  %call37 = call ptr @of_prop_next_string(ptr noundef %call13, ptr noundef nonnull %group.094) #8
  %tobool15.not = icmp eq ptr %call37, null
  br i1 %tobool15.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end12.for.end_crit_edge
  %43 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call.i, ptr %num_maps, align 4
  br label %cleanup38

cleanup38:                                        ; preds = %for.end, %if.end7.i.cleanup38_crit_edge, %kmalloc_array.exit.thread, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end6 ], [ 0, %for.end ], [ -12, %if.end7.i.cleanup38_crit_edge ], [ -12, %kmalloc_array.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pinctrl_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_get_funcs_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %num_functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_functions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mvebu_pinmux_get_func_name(ptr noundef %pctldev, i32 noundef %fid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.mvebu_pinctrl_function, ptr %1, i32 %fid
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_get_groups(ptr noundef %pctldev, i32 noundef %fid, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.mvebu_pinctrl_function, ptr %1, i32 %fid, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %num_groups4 = getelementptr %struct.mvebu_pinctrl_function, ptr %5, i32 %fid, i32 2
  %6 = ptrtoint ptr %num_groups4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_groups4, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_set(ptr noundef %pctldev, i32 noundef %fid, i32 noundef %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %functions = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.mvebu_pinctrl_function, ptr %1, i32 %fid
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %num_settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %gid, i32 4
  %6 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.not.i = icmp eq i32 %7, 0
  br i1 %cmp23.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %gid, i32 3
  %8 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %settings.i, align 4
  %variant.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %name1.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %9, i32 %n.024.i, i32 1
  %10 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %5, ptr noundef %11) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %12 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge, label %lor.lhs.false.i

if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_name.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %variant6.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %9, i32 %n.024.i, i32 3
  %14 = ptrtoint ptr %variant6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %variant6.i, align 4
  %and21.i = and i8 %15, %13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and21.i)
  %tobool8.not.i = icmp eq i8 %and21.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge

lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_name.exit

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

mvebu_pinctrl_find_setting_by_name.exit:          ; preds = %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge, %if.then.i.mvebu_pinctrl_find_setting_by_name.exit_crit_edge
  %arrayidx11.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %9, i32 %n.024.i
  %tobool.not = icmp eq ptr %arrayidx11.i, null
  br i1 %tobool.not, label %mvebu_pinctrl_find_setting_by_name.exit.do.end_crit_edge, label %if.end

mvebu_pinctrl_find_setting_by_name.exit.do.end_crit_edge: ; preds = %mvebu_pinctrl_find_setting_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %mvebu_pinctrl_find_setting_by_name.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %groups4 = getelementptr %struct.mvebu_pinctrl_function, ptr %1, i32 %fid, i32 1
  %18 = ptrtoint ptr %groups4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %groups4, align 4
  %arrayidx5 = getelementptr ptr, ptr %19, i32 %gid
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.36, ptr noundef %5, ptr noundef %21) #11
  br label %cleanup

if.end:                                           ; preds = %mvebu_pinctrl_find_setting_by_name.exit
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx11.i, align 4
  %gid6 = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %gid, i32 5
  %24 = ptrtoint ptr %gid6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gid6, align 4
  %call.i37 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i37, i32 0, i32 3
  %26 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups.i, align 4
  %ctrl.i = getelementptr %struct.mvebu_pinctrl_group, ptr %27, i32 %25, i32 1
  %28 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl.i, align 4
  %tobool.not.i38 = icmp eq ptr %29, null
  br i1 %tobool.not.i38, label %if.end.do.end12_crit_edge, label %for.cond.preheader.i

if.end.do.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

for.cond.preheader.i:                             ; preds = %if.end
  %conv = zext i8 %23 to i32
  %data.i = getelementptr %struct.mvebu_pinctrl_group, ptr %27, i32 %25, i32 2
  %pins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %27, i32 %25, i32 6
  %30 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl.i, align 4
  %mpp_set.i = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %mpp_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mpp_set.i, align 4
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pins.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %call4.i = tail call i32 %33(ptr noundef %35, i32 noundef %39, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.do.end12_crit_edge

for.cond.preheader.i.do.end12_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end12:                                         ; preds = %for.cond.preheader.i.do.end12_crit_edge, %if.end.do.end12_crit_edge
  %retval.0.i43.ph = phi i32 [ -22, %if.end.do.end12_crit_edge ], [ %call4.i, %for.cond.preheader.i.do.end12_crit_edge ]
  %40 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call, align 4
  %groups14 = getelementptr %struct.mvebu_pinctrl_function, ptr %1, i32 %fid, i32 1
  %42 = ptrtoint ptr %groups14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %groups14, align 4
  %arrayidx15 = getelementptr ptr, ptr %43, i32 %gid
  %44 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx15, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.39, ptr noundef %45, ptr noundef %47) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %for.cond.preheader.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i43.ph, %do.end12 ], [ -22, %do.end ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %num_groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 6
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %7, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %npins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 7
  %8 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp9.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp9.i, label %mvebu_pinctrl_find_group_by_pid.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mvebu_pinctrl_find_group_by_pid.exit:             ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge, label %if.end

mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge: ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  %ctrl = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 1
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %mpp_gpio_req = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %mpp_gpio_req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mpp_gpio_req, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call6 = tail call i32 %13(ptr noundef %15, i32 noundef %offset) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %num_settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 4
  %16 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.not.i25 = icmp eq i32 %17, 0
  br i1 %cmp24.not.i25, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph.i26

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i26:                               ; preds = %if.end7
  %settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 3
  %18 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %settings.i, align 4
  %variant.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 7
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.inc.i31.for.body.i28_crit_edge, %for.body.lr.ph.i26
  %n.025.i27 = phi i32 [ 0, %for.body.lr.ph.i26 ], [ %inc.i29, %for.inc.i31.for.body.i28_crit_edge ]
  %flags.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i27, i32 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.body.i28.for.inc.i31_crit_edge, label %if.then.i

for.body.i28.for.inc.i31_crit_edge:               ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i31

if.then.i:                                        ; preds = %for.body.i28
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i, label %if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge, label %lor.lhs.false.i

if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_gpio_setting.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %variant6.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i27, i32 3
  %25 = ptrtoint ptr %variant6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %variant6.i, align 4
  %and822.i = and i8 %26, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and822.i)
  %tobool9.not.i = icmp eq i8 %and822.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i31_crit_edge, label %lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge

lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_gpio_setting.exit

lor.lhs.false.i.for.inc.i31_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i31

for.inc.i31:                                      ; preds = %lor.lhs.false.i.for.inc.i31_crit_edge, %for.body.i28.for.inc.i31_crit_edge
  %inc.i29 = add nuw i32 %n.025.i27, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, %17
  br i1 %exitcond.not.i30, label %for.inc.i31.cleanup_crit_edge, label %for.inc.i31.for.body.i28_crit_edge

for.inc.i31.for.body.i28_crit_edge:               ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28

for.inc.i31.cleanup_crit_edge:                    ; preds = %for.inc.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mvebu_pinctrl_find_gpio_setting.exit:             ; preds = %lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge, %if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge
  %arrayidx12.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i27
  %tobool9.not = icmp eq ptr %arrayidx12.i, null
  br i1 %tobool9.not, label %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge, label %if.end11

mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge: ; preds = %mvebu_pinctrl_find_gpio_setting.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %mvebu_pinctrl_find_gpio_setting.exit
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx12.i, align 4
  %gid = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 5
  %29 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gid, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups.i33 = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %groups.i33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %groups.i33, align 4
  %ctrl.i = getelementptr %struct.mvebu_pinctrl_group, ptr %32, i32 %30, i32 1
  %33 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl.i, align 4
  %tobool.not.i34 = icmp eq ptr %34, null
  br i1 %tobool.not.i34, label %if.end11.cleanup_crit_edge, label %for.cond.preheader.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %28 to i32
  %data.i = getelementptr %struct.mvebu_pinctrl_group, ptr %32, i32 %30, i32 2
  %pins.i35 = getelementptr %struct.mvebu_pinctrl_group, ptr %32, i32 %30, i32 6
  %35 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl.i, align 4
  %mpp_set.i = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %mpp_set.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mpp_set.i, align 4
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %41 = ptrtoint ptr %pins.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pins.i35, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %call4.i = tail call i32 %38(ptr noundef %40, i32 noundef %44, i32 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader.i, %if.end11.cleanup_crit_edge, %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge, %for.inc.i31.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then3, %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then3 ], [ -22, %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge ], [ -524, %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end7.cleanup_crit_edge ], [ %call4.i, %for.cond.preheader.i ], [ -524, %for.inc.i31.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinmux_gpio_set_direction(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %num_groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 6
  %4 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %7, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %npins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 7
  %8 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins.i, align 4
  %add.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp9.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp9.i, label %mvebu_pinctrl_find_group_by_pid.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mvebu_pinctrl_find_group_by_pid.exit:             ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge, label %if.end

mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge: ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mvebu_pinctrl_find_group_by_pid.exit
  %ctrl = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 1
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %mpp_gpio_dir = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %mpp_gpio_dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mpp_gpio_dir, align 4
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %if.end8, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 2
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %call7 = tail call i32 %13(ptr noundef %15, i32 noundef %offset, i1 noundef zeroext %input) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 4
  %16 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp24.not.i35 = icmp eq i32 %17, 0
  br i1 %cmp24.not.i35, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph.i36

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i36:                               ; preds = %if.end8
  %settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %3, i32 %n.025.i, i32 3
  %18 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %settings.i, align 4
  %variant.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 7
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.inc.i41.for.body.i38_crit_edge, %for.body.lr.ph.i36
  %n.025.i37 = phi i32 [ 0, %for.body.lr.ph.i36 ], [ %inc.i39, %for.inc.i41.for.body.i38_crit_edge ]
  %flags.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i37, i32 4
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags.i, align 1
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %for.body.i38.for.inc.i41_crit_edge, label %if.then.i

for.body.i38.for.inc.i41_crit_edge:               ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41

if.then.i:                                        ; preds = %for.body.i38
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool1.not.i = icmp eq i8 %24, 0
  br i1 %tobool1.not.i, label %if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge, label %lor.lhs.false.i

if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_gpio_setting.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %variant6.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i37, i32 3
  %25 = ptrtoint ptr %variant6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %variant6.i, align 4
  %and822.i = and i8 %26, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and822.i)
  %tobool9.not.i = icmp eq i8 %and822.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i41_crit_edge, label %lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge

lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_gpio_setting.exit

lor.lhs.false.i.for.inc.i41_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i41

for.inc.i41:                                      ; preds = %lor.lhs.false.i.for.inc.i41_crit_edge, %for.body.i38.for.inc.i41_crit_edge
  %inc.i39 = add nuw i32 %n.025.i37, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, %17
  br i1 %exitcond.not.i40, label %for.inc.i41.cleanup_crit_edge, label %for.inc.i41.for.body.i38_crit_edge

for.inc.i41.for.body.i38_crit_edge:               ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i38

for.inc.i41.cleanup_crit_edge:                    ; preds = %for.inc.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mvebu_pinctrl_find_gpio_setting.exit:             ; preds = %lor.lhs.false.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge, %if.then.i.mvebu_pinctrl_find_gpio_setting.exit_crit_edge
  %arrayidx12.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %19, i32 %n.025.i37
  %tobool10.not = icmp eq ptr %arrayidx12.i, null
  br i1 %tobool10.not, label %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge, label %if.end12

mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge: ; preds = %mvebu_pinctrl_find_gpio_setting.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %mvebu_pinctrl_find_gpio_setting.exit
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %flags.i, align 1
  br i1 %input, label %land.lhs.true, label %land.lhs.true16.critedge

land.lhs.true:                                    ; preds = %if.end12
  %29 = and i8 %28, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool14.not = icmp eq i8 %29, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end22_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

land.lhs.true16.critedge:                         ; preds = %if.end12
  %30 = and i8 %28, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool20.not = icmp eq i8 %30, 0
  br i1 %tobool20.not, label %land.lhs.true16.critedge.if.end22_crit_edge, label %land.lhs.true16.critedge.cleanup_crit_edge

land.lhs.true16.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true16.critedge.if.end22_crit_edge:      ; preds = %land.lhs.true16.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true16.critedge.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %land.lhs.true16.critedge.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge, %for.inc.i41.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then3, %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then3 ], [ -524, %if.end22 ], [ -22, %mvebu_pinctrl_find_group_by_pid.exit.cleanup_crit_edge ], [ -524, %mvebu_pinctrl_find_gpio_setting.exit.cleanup_crit_edge ], [ 0, %land.lhs.true16.critedge.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -524, %if.end8.cleanup_crit_edge ], [ -524, %for.inc.i41.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinconf_group_set(ptr noundef %pctldev, i32 noundef %gid, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %ctrl = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp17.not = icmp eq i32 %num_configs, 0
  br i1 %cmp17.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 2
  %pins = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 6
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %mpp_set = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mpp_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mpp_set, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pins, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %arrayidx3 = getelementptr i32, ptr %configs, i32 %i.018
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx3, align 4
  %call4 = tail call i32 %7(ptr noundef %9, i32 noundef %13, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call4, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_pinconf_group_get(ptr noundef %pctldev, i32 noundef %gid, ptr noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %ctrl = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 1
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mpp_get = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %mpp_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mpp_get, align 4
  %data = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %pins = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 6
  %8 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call3 = tail call i32 %5(ptr noundef %7, i32 noundef %11, ptr noundef %config) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_pinconf_group_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %gid) #0 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config, align 4, !annotation !102
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %groups.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %groups.i, align 4
  %ctrl.i = getelementptr %struct.mvebu_pinctrl_group, ptr %4, i32 %gid, i32 1
  %5 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mvebu_pinconf_group_get.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mvebu_pinconf_group_get.exit:                     ; preds = %entry
  %mpp_get.i = getelementptr inbounds %struct.mvebu_mpp_ctrl, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %mpp_get.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mpp_get.i, align 4
  %data.i = getelementptr %struct.mvebu_pinctrl_group, ptr %4, i32 %gid, i32 2
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %pins.i = getelementptr %struct.mvebu_pinctrl_group, ptr %4, i32 %gid, i32 6
  %11 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pins.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %call3.i = call i32 %8(ptr noundef %10, i32 noundef %14, ptr noundef nonnull %config) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %if.end, label %mvebu_pinconf_group_get.exit.cleanup_crit_edge

mvebu_pinconf_group_get.exit.cleanup_crit_edge:   ; preds = %mvebu_pinconf_group_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mvebu_pinconf_group_get.exit
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config, align 4
  %variant.i = getelementptr inbounds %struct.mvebu_pinctrl, ptr %call, i32 0, i32 7
  %num_settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 4
  %17 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp23.not.i = icmp eq i32 %18, 0
  br i1 %cmp23.not.i, label %if.end.if.else_crit_edge, label %for.body.lr.ph.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body.lr.ph.i:                                 ; preds = %if.end
  %settings.i = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 3
  %19 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %settings.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %n.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %n.024.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 4
  %conv.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.i)
  %cmp1.i = icmp eq i32 %16, %conv.i
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %23 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i135 = icmp eq i8 %24, 0
  br i1 %tobool.not.i135, label %if.then.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge, label %lor.lhs.false.i

if.then.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_val.exit

lor.lhs.false.i:                                  ; preds = %if.then.i
  %variant7.i = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %n.024.i, i32 3
  %25 = ptrtoint ptr %variant7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %variant7.i, align 4
  %and22.i = and i8 %26, %24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and22.i)
  %tobool9.not.i = icmp eq i8 %and22.i, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge

lor.lhs.false.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mvebu_pinctrl_find_setting_by_val.exit

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %n.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.i.if.else_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.else_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

mvebu_pinctrl_find_setting_by_val.exit:           ; preds = %lor.lhs.false.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge, %if.then.i.mvebu_pinctrl_find_setting_by_val.exit_crit_edge
  %tobool3.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool3.not, label %mvebu_pinctrl_find_setting_by_val.exit.if.else_crit_edge, label %if.then4

mvebu_pinctrl_find_setting_by_val.exit.if.else_crit_edge: ; preds = %mvebu_pinctrl_find_setting_by_val.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then4:                                         ; preds = %mvebu_pinctrl_find_setting_by_val.exit
  %name = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %n.024.i, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, ptr noundef %28) #8
  %subname = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %n.024.i, i32 2
  %29 = ptrtoint ptr %subname to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subname, align 4
  %tobool5.not = icmp eq ptr %30, null
  br i1 %tobool5.not, label %if.then4.if.end8_crit_edge, label %if.then6

if.then4.if.end8_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, ptr noundef nonnull %30) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then4.if.end8_crit_edge
  %flags = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %20, i32 %n.024.i, i32 4
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flags, align 1
  %33 = and i8 %32, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  br i1 %tobool9.not, label %if.end8.if.end24_crit_edge, label %if.then10

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then10:                                        ; preds = %if.end8
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 40) #8
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %flags, align 1
  %36 = and i8 %35, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool14.not = icmp eq i8 %36, 0
  br i1 %tobool14.not, label %if.then10.if.end16_crit_edge, label %if.then15

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 105) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then10.if.end16_crit_edge
  %37 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flags, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool20.not = icmp eq i8 %39, 0
  br i1 %tobool20.not, label %if.end16.if.end22_crit_edge, label %if.then21

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 111) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end16.if.end22_crit_edge
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 41) #8
  br label %if.end24

if.else:                                          ; preds = %mvebu_pinctrl_find_setting_by_val.exit.if.else_crit_edge, %for.inc.i.if.else_crit_edge, %if.end.if.else_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.43) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end22, %if.end8.if.end24_crit_edge
  %retval.0.i136141 = phi ptr [ %arrayidx.i, %if.end8.if.end24_crit_edge ], [ %arrayidx.i, %if.end22 ], [ null, %if.else ]
  %40 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp ugt i32 %41, 1
  br i1 %cmp, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.44) #8
  %42 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_settings.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp28145.not = icmp eq i32 %43, 0
  br i1 %cmp28145.not, label %if.then26.for.end_crit_edge, label %for.body.lr.ph

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then26
  %settings = getelementptr %struct.mvebu_pinctrl_group, ptr %1, i32 %gid, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %44 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %settings, align 4
  %arrayidx30 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %n.0146
  %cmp31 = icmp eq ptr %retval.0.i136141, %arrayidx30
  br i1 %cmp31, label %for.body.for.inc_crit_edge, label %if.end34

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end34:                                         ; preds = %for.body
  %46 = ptrtoint ptr %variant.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool36.not = icmp eq i8 %47, 0
  br i1 %tobool36.not, label %if.end34.if.end46_crit_edge, label %land.lhs.true

if.end34.if.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end34
  %variant41 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %n.0146, i32 3
  %48 = ptrtoint ptr %variant41 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %variant41, align 4
  %and43134 = and i8 %49, %47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and43134)
  %tobool44.not = icmp eq i8 %and43134, 0
  br i1 %tobool44.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end34.if.end46_crit_edge
  %name49 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %45, i32 %n.0146, i32 1
  %50 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name49, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, ptr noundef %51) #8
  %52 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %settings, align 4
  %subname52 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %53, i32 %n.0146, i32 2
  %54 = ptrtoint ptr %subname52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %subname52, align 4
  %tobool53.not = icmp eq ptr %55, null
  br i1 %tobool53.not, label %if.end46.if.end58_crit_edge, label %if.then54

if.end46.if.end58_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, ptr noundef nonnull %55) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end46.if.end58_crit_edge
  %56 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %settings, align 4
  %flags61 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %57, i32 %n.0146, i32 4
  %58 = ptrtoint ptr %flags61 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %flags61, align 1
  %60 = and i8 %59, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool64.not = icmp eq i8 %60, 0
  br i1 %tobool64.not, label %if.end58.for.inc_crit_edge, label %if.then65

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then65:                                        ; preds = %if.end58
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 40) #8
  %61 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %settings, align 4
  %flags68 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %62, i32 %n.0146, i32 4
  %63 = ptrtoint ptr %flags68 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %flags68, align 1
  %65 = and i8 %64, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool71.not = icmp eq i8 %65, 0
  br i1 %tobool71.not, label %if.then65.if.end73_crit_edge, label %if.then72

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then72:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 105) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.then65.if.end73_crit_edge
  %66 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %settings, align 4
  %flags76 = getelementptr %struct.mvebu_mpp_ctrl_setting, ptr %67, i32 %n.0146, i32 4
  %68 = ptrtoint ptr %flags76 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %flags76, align 1
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool79.not = icmp eq i8 %70, 0
  br i1 %tobool79.not, label %if.end73.if.end81_crit_edge, label %if.then80

if.end73.if.end81_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then80:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 111) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end73.if.end81_crit_edge
  call void @seq_putc(ptr noundef %s, i8 noundef zeroext 41) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %if.end58.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %n.0146, 1
  %71 = ptrtoint ptr %num_settings.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_settings.i, align 4
  %cmp28 = icmp ult i32 %inc, %72
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then26.for.end_crit_edge
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.46) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end24.cleanup_crit_edge, %mvebu_pinconf_group_get.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 580, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mvebu_pinctrl_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mvebu_pinctrl_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 667, i32 24}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 706, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 709, i32 31}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 711, i32 31}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 721, i32 4}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mvebu_pinctrl_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @mvebu_pinctrl_probe._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 732, i32 3}
!23 = !{ptr @mvebu_pinctrl_probe._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @mvebu_pinctrl_probe._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 738, i32 3}
!27 = !{ptr @mvebu_pinctrl_probe._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mvebu_pinctrl_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 742, i32 2}
!31 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @mvebu_pinctrl_probe._entry.19, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @mvebu_pinctrl_probe._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @mvebu_pinctrl_ops, !35, !"mvebu_pinctrl_ops", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 460, i32 33}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 409, i32 36}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 411, i32 3}
!40 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 416, i32 40}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 418, i32 3}
!47 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 433, i32 4}
!51 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry.30, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.32, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 438, i32 4}
!55 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry.33, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mvebu_pinctrl_dt_node_to_map._entry_ptr.35, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @mvebu_pinmux_ops, !58, !"mvebu_pinmux_ops", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 363, i32 32}
!59 = !{ptr @.str.36, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 297, i32 3}
!61 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @mvebu_pinmux_set._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @mvebu_pinmux_set._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 306, i32 3}
!66 = !{ptr @mvebu_pinmux_set._entry.38, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mvebu_pinmux_set._entry_ptr.40, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @mvebu_pinconf_ops, !69, !"mvebu_pinconf_ops", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 252, i32 33}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 209, i32 17}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 211, i32 18}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 221, i32 15}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 225, i32 15}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 235, i32 18}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 248, i32 15}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/mvebu/pinctrl-mvebu.c", i32 520, i32 5}
!84 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @mvebu_pinctrl_build_functions._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @mvebu_pinctrl_build_functions._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 5196727}
!97 = !{i64 2153950821}
!98 = !{i64 2153951315}
!99 = !{i64 2153951552}
!100 = !{i64 5196309}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{!"auto-init"}
