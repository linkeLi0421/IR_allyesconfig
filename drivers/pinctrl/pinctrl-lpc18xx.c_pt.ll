; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-lpc18xx.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-lpc18xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.lpc18xx_pin_caps = type { i32, [8 x i8], i8, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.lpc18xx_scu_data = type { ptr, ptr, ptr, [50 x %struct.lpc18xx_pmx_func] }
%struct.lpc18xx_pmx_func = type { ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@__initcall__kmod_pinctrl_lpc18xx__210_1380_lpc18xx_scu_driver_init6 = internal global ptr @lpc18xx_scu_driver_init, section ".initcall6.init", align 4
@lpc18xx_scu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_scu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @lpc18xx_scu_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lpc18xx-scu\00", [20 x i8] zeroinitializer }, align 32
@lpc18xx_scu_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-scu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Input clock not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc18xx_scu_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/pinctrl/pinctrl-lpc18xx.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry_ptr = internal global ptr @lpc18xx_scu_probe._entry, section ".printk_index", align 4
@lpc18xx_scu_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to create group func map.\0A\00", [62 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry_ptr.8 = internal global ptr @lpc18xx_scu_probe._entry.6, section ".printk_index", align 4
@lpc18xx_scu_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry_ptr.11 = internal global ptr @lpc18xx_scu_probe._entry.9, section ".printk_index", align 4
@lpc18xx_scu_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.197, ptr @lpc18xx_pins, i32 182, ptr @lpc18xx_pctl_ops, ptr @lpc18xx_pmx_ops, ptr @lpc18xx_pconf_ops, ptr null, i32 1, ptr @lpc18xx_params, ptr @lpc18xx_conf_items, i8 0 }, [52 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1359, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@lpc18xx_scu_probe._entry_ptr.14 = internal global ptr @lpc18xx_scu_probe._entry.12, section ".printk_index", align 4
@lpc18xx_pins = internal constant { [182 x %struct.pinctrl_pin_desc], [568 x i8] } { [182 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.15, ptr @lpc18xx_pin_p0_0 }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.16, ptr @lpc18xx_pin_p0_1 }, %struct.pinctrl_pin_desc { i32 32, ptr @.str.17, ptr @lpc18xx_pin_p1_0 }, %struct.pinctrl_pin_desc { i32 33, ptr @.str.18, ptr @lpc18xx_pin_p1_1 }, %struct.pinctrl_pin_desc { i32 34, ptr @.str.19, ptr @lpc18xx_pin_p1_2 }, %struct.pinctrl_pin_desc { i32 35, ptr @.str.20, ptr @lpc18xx_pin_p1_3 }, %struct.pinctrl_pin_desc { i32 36, ptr @.str.21, ptr @lpc18xx_pin_p1_4 }, %struct.pinctrl_pin_desc { i32 37, ptr @.str.22, ptr @lpc18xx_pin_p1_5 }, %struct.pinctrl_pin_desc { i32 38, ptr @.str.23, ptr @lpc18xx_pin_p1_6 }, %struct.pinctrl_pin_desc { i32 39, ptr @.str.24, ptr @lpc18xx_pin_p1_7 }, %struct.pinctrl_pin_desc { i32 40, ptr @.str.25, ptr @lpc18xx_pin_p1_8 }, %struct.pinctrl_pin_desc { i32 41, ptr @.str.26, ptr @lpc18xx_pin_p1_9 }, %struct.pinctrl_pin_desc { i32 42, ptr @.str.27, ptr @lpc18xx_pin_p1_10 }, %struct.pinctrl_pin_desc { i32 43, ptr @.str.28, ptr @lpc18xx_pin_p1_11 }, %struct.pinctrl_pin_desc { i32 44, ptr @.str.29, ptr @lpc18xx_pin_p1_12 }, %struct.pinctrl_pin_desc { i32 45, ptr @.str.30, ptr @lpc18xx_pin_p1_13 }, %struct.pinctrl_pin_desc { i32 46, ptr @.str.31, ptr @lpc18xx_pin_p1_14 }, %struct.pinctrl_pin_desc { i32 47, ptr @.str.32, ptr @lpc18xx_pin_p1_15 }, %struct.pinctrl_pin_desc { i32 48, ptr @.str.33, ptr @lpc18xx_pin_p1_16 }, %struct.pinctrl_pin_desc { i32 49, ptr @.str.34, ptr @lpc18xx_pin_p1_17 }, %struct.pinctrl_pin_desc { i32 50, ptr @.str.35, ptr @lpc18xx_pin_p1_18 }, %struct.pinctrl_pin_desc { i32 51, ptr @.str.36, ptr @lpc18xx_pin_p1_19 }, %struct.pinctrl_pin_desc { i32 52, ptr @.str.37, ptr @lpc18xx_pin_p1_20 }, %struct.pinctrl_pin_desc { i32 64, ptr @.str.38, ptr @lpc18xx_pin_p2_0 }, %struct.pinctrl_pin_desc { i32 65, ptr @.str.39, ptr @lpc18xx_pin_p2_1 }, %struct.pinctrl_pin_desc { i32 66, ptr @.str.40, ptr @lpc18xx_pin_p2_2 }, %struct.pinctrl_pin_desc { i32 67, ptr @.str.41, ptr @lpc18xx_pin_p2_3 }, %struct.pinctrl_pin_desc { i32 68, ptr @.str.42, ptr @lpc18xx_pin_p2_4 }, %struct.pinctrl_pin_desc { i32 69, ptr @.str.43, ptr @lpc18xx_pin_p2_5 }, %struct.pinctrl_pin_desc { i32 70, ptr @.str.44, ptr @lpc18xx_pin_p2_6 }, %struct.pinctrl_pin_desc { i32 71, ptr @.str.45, ptr @lpc18xx_pin_p2_7 }, %struct.pinctrl_pin_desc { i32 72, ptr @.str.46, ptr @lpc18xx_pin_p2_8 }, %struct.pinctrl_pin_desc { i32 73, ptr @.str.47, ptr @lpc18xx_pin_p2_9 }, %struct.pinctrl_pin_desc { i32 74, ptr @.str.48, ptr @lpc18xx_pin_p2_10 }, %struct.pinctrl_pin_desc { i32 75, ptr @.str.49, ptr @lpc18xx_pin_p2_11 }, %struct.pinctrl_pin_desc { i32 76, ptr @.str.50, ptr @lpc18xx_pin_p2_12 }, %struct.pinctrl_pin_desc { i32 77, ptr @.str.51, ptr @lpc18xx_pin_p2_13 }, %struct.pinctrl_pin_desc { i32 96, ptr @.str.52, ptr @lpc18xx_pin_p3_0 }, %struct.pinctrl_pin_desc { i32 97, ptr @.str.53, ptr @lpc18xx_pin_p3_1 }, %struct.pinctrl_pin_desc { i32 98, ptr @.str.54, ptr @lpc18xx_pin_p3_2 }, %struct.pinctrl_pin_desc { i32 99, ptr @.str.55, ptr @lpc18xx_pin_p3_3 }, %struct.pinctrl_pin_desc { i32 100, ptr @.str.56, ptr @lpc18xx_pin_p3_4 }, %struct.pinctrl_pin_desc { i32 101, ptr @.str.57, ptr @lpc18xx_pin_p3_5 }, %struct.pinctrl_pin_desc { i32 102, ptr @.str.58, ptr @lpc18xx_pin_p3_6 }, %struct.pinctrl_pin_desc { i32 103, ptr @.str.59, ptr @lpc18xx_pin_p3_7 }, %struct.pinctrl_pin_desc { i32 104, ptr @.str.60, ptr @lpc18xx_pin_p3_8 }, %struct.pinctrl_pin_desc { i32 128, ptr @.str.61, ptr @lpc18xx_pin_p4_0 }, %struct.pinctrl_pin_desc { i32 129, ptr @.str.62, ptr @lpc18xx_pin_p4_1 }, %struct.pinctrl_pin_desc { i32 130, ptr @.str.63, ptr @lpc18xx_pin_p4_2 }, %struct.pinctrl_pin_desc { i32 131, ptr @.str.64, ptr @lpc18xx_pin_p4_3 }, %struct.pinctrl_pin_desc { i32 132, ptr @.str.65, ptr @lpc18xx_pin_p4_4 }, %struct.pinctrl_pin_desc { i32 133, ptr @.str.66, ptr @lpc18xx_pin_p4_5 }, %struct.pinctrl_pin_desc { i32 134, ptr @.str.67, ptr @lpc18xx_pin_p4_6 }, %struct.pinctrl_pin_desc { i32 135, ptr @.str.68, ptr @lpc18xx_pin_p4_7 }, %struct.pinctrl_pin_desc { i32 136, ptr @.str.69, ptr @lpc18xx_pin_p4_8 }, %struct.pinctrl_pin_desc { i32 137, ptr @.str.70, ptr @lpc18xx_pin_p4_9 }, %struct.pinctrl_pin_desc { i32 138, ptr @.str.71, ptr @lpc18xx_pin_p4_10 }, %struct.pinctrl_pin_desc { i32 160, ptr @.str.72, ptr @lpc18xx_pin_p5_0 }, %struct.pinctrl_pin_desc { i32 161, ptr @.str.73, ptr @lpc18xx_pin_p5_1 }, %struct.pinctrl_pin_desc { i32 162, ptr @.str.74, ptr @lpc18xx_pin_p5_2 }, %struct.pinctrl_pin_desc { i32 163, ptr @.str.75, ptr @lpc18xx_pin_p5_3 }, %struct.pinctrl_pin_desc { i32 164, ptr @.str.76, ptr @lpc18xx_pin_p5_4 }, %struct.pinctrl_pin_desc { i32 165, ptr @.str.77, ptr @lpc18xx_pin_p5_5 }, %struct.pinctrl_pin_desc { i32 166, ptr @.str.78, ptr @lpc18xx_pin_p5_6 }, %struct.pinctrl_pin_desc { i32 167, ptr @.str.79, ptr @lpc18xx_pin_p5_7 }, %struct.pinctrl_pin_desc { i32 192, ptr @.str.80, ptr @lpc18xx_pin_p6_0 }, %struct.pinctrl_pin_desc { i32 193, ptr @.str.81, ptr @lpc18xx_pin_p6_1 }, %struct.pinctrl_pin_desc { i32 194, ptr @.str.82, ptr @lpc18xx_pin_p6_2 }, %struct.pinctrl_pin_desc { i32 195, ptr @.str.83, ptr @lpc18xx_pin_p6_3 }, %struct.pinctrl_pin_desc { i32 196, ptr @.str.84, ptr @lpc18xx_pin_p6_4 }, %struct.pinctrl_pin_desc { i32 197, ptr @.str.85, ptr @lpc18xx_pin_p6_5 }, %struct.pinctrl_pin_desc { i32 198, ptr @.str.86, ptr @lpc18xx_pin_p6_6 }, %struct.pinctrl_pin_desc { i32 199, ptr @.str.87, ptr @lpc18xx_pin_p6_7 }, %struct.pinctrl_pin_desc { i32 200, ptr @.str.88, ptr @lpc18xx_pin_p6_8 }, %struct.pinctrl_pin_desc { i32 201, ptr @.str.89, ptr @lpc18xx_pin_p6_9 }, %struct.pinctrl_pin_desc { i32 202, ptr @.str.90, ptr @lpc18xx_pin_p6_10 }, %struct.pinctrl_pin_desc { i32 203, ptr @.str.91, ptr @lpc18xx_pin_p6_11 }, %struct.pinctrl_pin_desc { i32 204, ptr @.str.92, ptr @lpc18xx_pin_p6_12 }, %struct.pinctrl_pin_desc { i32 224, ptr @.str.93, ptr @lpc18xx_pin_p7_0 }, %struct.pinctrl_pin_desc { i32 225, ptr @.str.94, ptr @lpc18xx_pin_p7_1 }, %struct.pinctrl_pin_desc { i32 226, ptr @.str.95, ptr @lpc18xx_pin_p7_2 }, %struct.pinctrl_pin_desc { i32 227, ptr @.str.96, ptr @lpc18xx_pin_p7_3 }, %struct.pinctrl_pin_desc { i32 228, ptr @.str.97, ptr @lpc18xx_pin_p7_4 }, %struct.pinctrl_pin_desc { i32 229, ptr @.str.98, ptr @lpc18xx_pin_p7_5 }, %struct.pinctrl_pin_desc { i32 230, ptr @.str.99, ptr @lpc18xx_pin_p7_6 }, %struct.pinctrl_pin_desc { i32 231, ptr @.str.100, ptr @lpc18xx_pin_p7_7 }, %struct.pinctrl_pin_desc { i32 256, ptr @.str.101, ptr @lpc18xx_pin_p8_0 }, %struct.pinctrl_pin_desc { i32 257, ptr @.str.102, ptr @lpc18xx_pin_p8_1 }, %struct.pinctrl_pin_desc { i32 258, ptr @.str.103, ptr @lpc18xx_pin_p8_2 }, %struct.pinctrl_pin_desc { i32 259, ptr @.str.104, ptr @lpc18xx_pin_p8_3 }, %struct.pinctrl_pin_desc { i32 260, ptr @.str.105, ptr @lpc18xx_pin_p8_4 }, %struct.pinctrl_pin_desc { i32 261, ptr @.str.106, ptr @lpc18xx_pin_p8_5 }, %struct.pinctrl_pin_desc { i32 262, ptr @.str.107, ptr @lpc18xx_pin_p8_6 }, %struct.pinctrl_pin_desc { i32 263, ptr @.str.108, ptr @lpc18xx_pin_p8_7 }, %struct.pinctrl_pin_desc { i32 264, ptr @.str.109, ptr @lpc18xx_pin_p8_8 }, %struct.pinctrl_pin_desc { i32 288, ptr @.str.110, ptr @lpc18xx_pin_p9_0 }, %struct.pinctrl_pin_desc { i32 289, ptr @.str.111, ptr @lpc18xx_pin_p9_1 }, %struct.pinctrl_pin_desc { i32 290, ptr @.str.112, ptr @lpc18xx_pin_p9_2 }, %struct.pinctrl_pin_desc { i32 291, ptr @.str.113, ptr @lpc18xx_pin_p9_3 }, %struct.pinctrl_pin_desc { i32 292, ptr @.str.114, ptr @lpc18xx_pin_p9_4 }, %struct.pinctrl_pin_desc { i32 293, ptr @.str.115, ptr @lpc18xx_pin_p9_5 }, %struct.pinctrl_pin_desc { i32 294, ptr @.str.116, ptr @lpc18xx_pin_p9_6 }, %struct.pinctrl_pin_desc { i32 320, ptr @.str.117, ptr @lpc18xx_pin_pa_0 }, %struct.pinctrl_pin_desc { i32 321, ptr @.str.118, ptr @lpc18xx_pin_pa_1 }, %struct.pinctrl_pin_desc { i32 322, ptr @.str.119, ptr @lpc18xx_pin_pa_2 }, %struct.pinctrl_pin_desc { i32 323, ptr @.str.120, ptr @lpc18xx_pin_pa_3 }, %struct.pinctrl_pin_desc { i32 324, ptr @.str.121, ptr @lpc18xx_pin_pa_4 }, %struct.pinctrl_pin_desc { i32 352, ptr @.str.122, ptr @lpc18xx_pin_pb_0 }, %struct.pinctrl_pin_desc { i32 353, ptr @.str.123, ptr @lpc18xx_pin_pb_1 }, %struct.pinctrl_pin_desc { i32 354, ptr @.str.124, ptr @lpc18xx_pin_pb_2 }, %struct.pinctrl_pin_desc { i32 355, ptr @.str.125, ptr @lpc18xx_pin_pb_3 }, %struct.pinctrl_pin_desc { i32 356, ptr @.str.126, ptr @lpc18xx_pin_pb_4 }, %struct.pinctrl_pin_desc { i32 357, ptr @.str.127, ptr @lpc18xx_pin_pb_5 }, %struct.pinctrl_pin_desc { i32 358, ptr @.str.128, ptr @lpc18xx_pin_pb_6 }, %struct.pinctrl_pin_desc { i32 384, ptr @.str.129, ptr @lpc18xx_pin_pc_0 }, %struct.pinctrl_pin_desc { i32 385, ptr @.str.130, ptr @lpc18xx_pin_pc_1 }, %struct.pinctrl_pin_desc { i32 386, ptr @.str.131, ptr @lpc18xx_pin_pc_2 }, %struct.pinctrl_pin_desc { i32 387, ptr @.str.132, ptr @lpc18xx_pin_pc_3 }, %struct.pinctrl_pin_desc { i32 388, ptr @.str.133, ptr @lpc18xx_pin_pc_4 }, %struct.pinctrl_pin_desc { i32 389, ptr @.str.134, ptr @lpc18xx_pin_pc_5 }, %struct.pinctrl_pin_desc { i32 390, ptr @.str.135, ptr @lpc18xx_pin_pc_6 }, %struct.pinctrl_pin_desc { i32 391, ptr @.str.136, ptr @lpc18xx_pin_pc_7 }, %struct.pinctrl_pin_desc { i32 392, ptr @.str.137, ptr @lpc18xx_pin_pc_8 }, %struct.pinctrl_pin_desc { i32 393, ptr @.str.138, ptr @lpc18xx_pin_pc_9 }, %struct.pinctrl_pin_desc { i32 394, ptr @.str.139, ptr @lpc18xx_pin_pc_10 }, %struct.pinctrl_pin_desc { i32 395, ptr @.str.140, ptr @lpc18xx_pin_pc_11 }, %struct.pinctrl_pin_desc { i32 396, ptr @.str.141, ptr @lpc18xx_pin_pc_12 }, %struct.pinctrl_pin_desc { i32 397, ptr @.str.142, ptr @lpc18xx_pin_pc_13 }, %struct.pinctrl_pin_desc { i32 398, ptr @.str.143, ptr @lpc18xx_pin_pc_14 }, %struct.pinctrl_pin_desc { i32 416, ptr @.str.144, ptr @lpc18xx_pin_pd_0 }, %struct.pinctrl_pin_desc { i32 417, ptr @.str.145, ptr @lpc18xx_pin_pd_1 }, %struct.pinctrl_pin_desc { i32 418, ptr @.str.146, ptr @lpc18xx_pin_pd_2 }, %struct.pinctrl_pin_desc { i32 419, ptr @.str.147, ptr @lpc18xx_pin_pd_3 }, %struct.pinctrl_pin_desc { i32 420, ptr @.str.148, ptr @lpc18xx_pin_pd_4 }, %struct.pinctrl_pin_desc { i32 421, ptr @.str.149, ptr @lpc18xx_pin_pd_5 }, %struct.pinctrl_pin_desc { i32 422, ptr @.str.150, ptr @lpc18xx_pin_pd_6 }, %struct.pinctrl_pin_desc { i32 423, ptr @.str.151, ptr @lpc18xx_pin_pd_7 }, %struct.pinctrl_pin_desc { i32 424, ptr @.str.152, ptr @lpc18xx_pin_pd_8 }, %struct.pinctrl_pin_desc { i32 425, ptr @.str.153, ptr @lpc18xx_pin_pd_9 }, %struct.pinctrl_pin_desc { i32 426, ptr @.str.154, ptr @lpc18xx_pin_pd_10 }, %struct.pinctrl_pin_desc { i32 427, ptr @.str.155, ptr @lpc18xx_pin_pd_11 }, %struct.pinctrl_pin_desc { i32 428, ptr @.str.156, ptr @lpc18xx_pin_pd_12 }, %struct.pinctrl_pin_desc { i32 429, ptr @.str.157, ptr @lpc18xx_pin_pd_13 }, %struct.pinctrl_pin_desc { i32 430, ptr @.str.158, ptr @lpc18xx_pin_pd_14 }, %struct.pinctrl_pin_desc { i32 431, ptr @.str.159, ptr @lpc18xx_pin_pd_15 }, %struct.pinctrl_pin_desc { i32 432, ptr @.str.160, ptr @lpc18xx_pin_pd_16 }, %struct.pinctrl_pin_desc { i32 448, ptr @.str.161, ptr @lpc18xx_pin_pe_0 }, %struct.pinctrl_pin_desc { i32 449, ptr @.str.162, ptr @lpc18xx_pin_pe_1 }, %struct.pinctrl_pin_desc { i32 450, ptr @.str.163, ptr @lpc18xx_pin_pe_2 }, %struct.pinctrl_pin_desc { i32 451, ptr @.str.164, ptr @lpc18xx_pin_pe_3 }, %struct.pinctrl_pin_desc { i32 452, ptr @.str.165, ptr @lpc18xx_pin_pe_4 }, %struct.pinctrl_pin_desc { i32 453, ptr @.str.166, ptr @lpc18xx_pin_pe_5 }, %struct.pinctrl_pin_desc { i32 454, ptr @.str.167, ptr @lpc18xx_pin_pe_6 }, %struct.pinctrl_pin_desc { i32 455, ptr @.str.168, ptr @lpc18xx_pin_pe_7 }, %struct.pinctrl_pin_desc { i32 456, ptr @.str.169, ptr @lpc18xx_pin_pe_8 }, %struct.pinctrl_pin_desc { i32 457, ptr @.str.170, ptr @lpc18xx_pin_pe_9 }, %struct.pinctrl_pin_desc { i32 458, ptr @.str.171, ptr @lpc18xx_pin_pe_10 }, %struct.pinctrl_pin_desc { i32 459, ptr @.str.172, ptr @lpc18xx_pin_pe_11 }, %struct.pinctrl_pin_desc { i32 460, ptr @.str.173, ptr @lpc18xx_pin_pe_12 }, %struct.pinctrl_pin_desc { i32 461, ptr @.str.174, ptr @lpc18xx_pin_pe_13 }, %struct.pinctrl_pin_desc { i32 462, ptr @.str.175, ptr @lpc18xx_pin_pe_14 }, %struct.pinctrl_pin_desc { i32 463, ptr @.str.176, ptr @lpc18xx_pin_pe_15 }, %struct.pinctrl_pin_desc { i32 480, ptr @.str.177, ptr @lpc18xx_pin_pf_0 }, %struct.pinctrl_pin_desc { i32 481, ptr @.str.178, ptr @lpc18xx_pin_pf_1 }, %struct.pinctrl_pin_desc { i32 482, ptr @.str.179, ptr @lpc18xx_pin_pf_2 }, %struct.pinctrl_pin_desc { i32 483, ptr @.str.180, ptr @lpc18xx_pin_pf_3 }, %struct.pinctrl_pin_desc { i32 484, ptr @.str.181, ptr @lpc18xx_pin_pf_4 }, %struct.pinctrl_pin_desc { i32 485, ptr @.str.182, ptr @lpc18xx_pin_pf_5 }, %struct.pinctrl_pin_desc { i32 486, ptr @.str.183, ptr @lpc18xx_pin_pf_6 }, %struct.pinctrl_pin_desc { i32 487, ptr @.str.184, ptr @lpc18xx_pin_pf_7 }, %struct.pinctrl_pin_desc { i32 488, ptr @.str.185, ptr @lpc18xx_pin_pf_8 }, %struct.pinctrl_pin_desc { i32 489, ptr @.str.186, ptr @lpc18xx_pin_pf_9 }, %struct.pinctrl_pin_desc { i32 490, ptr @.str.187, ptr @lpc18xx_pin_pf_10 }, %struct.pinctrl_pin_desc { i32 491, ptr @.str.188, ptr @lpc18xx_pin_pf_11 }, %struct.pinctrl_pin_desc { i32 600, ptr @.str.189, ptr @lpc18xx_pin_clk0 }, %struct.pinctrl_pin_desc { i32 601, ptr @.str.190, ptr @lpc18xx_pin_clk1 }, %struct.pinctrl_pin_desc { i32 602, ptr @.str.191, ptr @lpc18xx_pin_clk2 }, %struct.pinctrl_pin_desc { i32 603, ptr @.str.192, ptr @lpc18xx_pin_clk3 }, %struct.pinctrl_pin_desc { i32 604, ptr @.str.193, ptr @lpc18xx_pin_usb1_dm }, %struct.pinctrl_pin_desc { i32 605, ptr @.str.194, ptr @lpc18xx_pin_usb1_dp }, %struct.pinctrl_pin_desc { i32 606, ptr @.str.195, ptr @lpc18xx_pin_i2c0_scl }, %struct.pinctrl_pin_desc { i32 607, ptr @.str.196, ptr @lpc18xx_pin_i2c0_sda }], [568 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p0_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 0, [8 x i8] c"\0F&\0D!\00\00\19\1A", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p0_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 4, [8 x i8] c"\0F&\0E!\00\00\0D\1A", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 128, [8 x i8] c"\0F\08\0B\00\00$!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 132, [8 x i8] c"\0F\09\0B!\00$\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 136, [8 x i8] c"\0F\09\0B!\00$\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 140, [8 x i8] c"\0F\09!\0B0&\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 144, [8 x i8] c"\0F\09!\0B0&\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 148, [8 x i8] c"\0F\09\00\0B0&! ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 152, [8 x i8] c"\0F\08\00\0B\00\00! ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 156, [8 x i8] c"\0F-\09\0B0\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 160, [8 x i8] c"\0F-\09\0B\00\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 164, [8 x i8] c"\0F-\09\0B\00\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 168, [8 x i8] c"\0F-\09\0B\00\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 172, [8 x i8] c"\0F-\09\0B\00\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 176, [8 x i8] c"\0F-\00\0B'\00! ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_13\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_13 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 180, [8 x i8] c"\0F-\00\0B'\00! ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_14\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_14 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 184, [8 x i8] c"\0F-\00\0B'\00!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_15\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_15 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 188, [8 x i8] c"\0F.!\0D'\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_16\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_16 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 192, [8 x i8] c"\0F.!\0E'\00\00\0D", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_17\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_17 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 196, [8 x i8] c"\0F.\00\0D'\04!\00", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_18\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_18 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 200, [8 x i8] c"\0F.\00\0D'\04!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_19\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_19 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 204, [8 x i8] c"\0D&\00\00\07\00\12\1A", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1_20\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p1_20 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 208, [8 x i8] c"\0F&\00\0D'\00!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 256, [8 x i8] c"!,\0B0\0F\00*\0D", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 260, [8 x i8] c"!,\0B0\0F\00*\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 264, [8 x i8] c"!,\0B0\0F\08*\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 268, [8 x i8] c"!\11/\08\0F\00*0", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 272, [8 x i8] c"!\11/\08\0F\00*0", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 276, [8 x i8] c"!\081\02\0F\00*0", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 280, [8 x i8] c"!,\0B0\0F\08*\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 284, [8 x i8] c"\0F\09/\0B\00\00*\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 288, [8 x i8] c"!\09/\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 292, [8 x i8] c"\0F\09/\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 296, [8 x i8] c"\0F\09.\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 300, [8 x i8] c"\0F\09.\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 304, [8 x i8] c"\0F\09\00\0B\00\00\00.", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2_13\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p2_13 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 308, [8 x i8] c"\0F\08\00\0B\00\00\00.", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 384, [8 x i8] c"\13\12\17\16$\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 388, [8 x i8] c"\19\15\031\0F\00\1B\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 392, [8 x i8] c"\18\14\031\0F\00\1B\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 396, [8 x i8] c"\00\22$#\05\00\16\1A", i8 0, i8 2 }, [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 400, [8 x i8] c"\0F\00\00#-\19\1A\1B", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 404, [8 x i8] c"\0F\00\00#-\18\1A\1B", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 408, [8 x i8] c"\0F\22$#\00%\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 412, [8 x i8] c"\00\22$#\0F%\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p3_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p3_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 416, [8 x i8] c"\00\22$#\0F%\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 512, [8 x i8] c"\0F\1D\1E\00\00\1B/\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 516, [8 x i8] c"\0F\09\1B\00\00\1C/\0D", i8 -127, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 520, [8 x i8] c"\0F\09\1B\00\00\1C/!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 524, [8 x i8] c"\0F\09\1B\00\00\1C/!", i8 -128, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 528, [8 x i8] c"\0F\09\1B\00\00\1C/!", i8 -128, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 532, [8 x i8] c"\0F\09\1B\00\00\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 536, [8 x i8] c"\0F\09\1B\00\00\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 540, [8 x i8] c"\1B\06\00\00\00\00\1A\17", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 544, [8 x i8] c"\00\08\1B\00\0F\1C\04!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p4_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 548, [8 x i8] c"\00\08\1B\00\0F\1C\04!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p4_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p4_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 552, [8 x i8] c"\00\08\1B\00\0F\1C\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 640, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 644, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 648, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 652, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 656, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 660, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 664, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p5_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p5_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 668, [8 x i8] c"\0F\1D\0B\00-(\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 768, [8 x i8] c"\00\12\00\00\13\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 772, [8 x i8] c"\0F\0B,\15\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 776, [8 x i8] c"\0F\0B,\14\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 780, [8 x i8] c"\0F0!\0B\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 784, [8 x i8] c"\0F\08,\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 788, [8 x i8] c"\0F\09,\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 792, [8 x i8] c"\0F\0B!0\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 796, [8 x i8] c"\00\0B!0\0F)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 800, [8 x i8] c"\00\0B!0\0F)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p6_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 804, [8 x i8] c"\0F\00\00\0B\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p6_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 808, [8 x i8] c"\0F\1D\00\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p6_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 812, [8 x i8] c"\0F\00\00\0B\00)\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p6_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p6_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 816, [8 x i8] c"\0F\09\00\0B\00\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 896, [8 x i8] c"\0F\09\00\1B\00\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 900, [8 x i8] c"\0F\09\19\1B\1C\00.!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 904, [8 x i8] c"\0F\08\18\1B\1C\00.!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 908, [8 x i8] c"\0F\08\00\1B\1C\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 912, [8 x i8] c"\0F\09\00\1B\1C+\00\00", i8 -124, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 916, [8 x i8] c"\0F\09\00\1B\1C+\00\00", i8 -125, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 920, [8 x i8] c"\0F\09\00\1B\00+\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p7_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p7_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 924, [8 x i8] c"\0F\09\00\1B\00+\0D!", i8 -90, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1024, [8 x i8] c"\0F0\00\1D!\00\00'", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1028, [8 x i8] c"\0F0\00\1D!\00\00'", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1032, [8 x i8] c"\0F0\00\1D!\00\00'", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1036, [8 x i8] c"\0F1\00\1B\1C\00\00'", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1040, [8 x i8] c"\0F1\00\1B\1C\00\00'", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1044, [8 x i8] c"\0F1\00\1B\1C\00\00'", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1048, [8 x i8] c"\0F1\00\1B\1C\00\00'", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1052, [8 x i8] c"\0F1\00\1B\1C\00\00'", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p8_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p8_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1056, [8 x i8] c"\001\00\00\00\00\05\1A", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1152, [8 x i8] c"\0F\1D\00\00\00\0D!$", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1156, [8 x i8] c"\0F\1D\00\00\19\0D!$", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1160, [8 x i8] c"\0F\1D\00\00\18\0D!$", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1164, [8 x i8] c"\0F\1D1\00\00\0D!/", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1168, [8 x i8] c"\00\1D1\00\0F\0D!/", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1172, [8 x i8] c"\00\1D1\00\0F\0D!,", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p9_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_p9_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1176, [8 x i8] c"\0F\1D1\00\00\0D!,", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pa_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pa_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1280, [8 x i8] c"\00\00\00\00\00\1A\05\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pa_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pa_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1284, [8 x i8] c"\0F\1F\00.\00\00\00\00", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pa_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pa_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1288, [8 x i8] c"\0F\1F\00.\00\00\00\00", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pa_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pa_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1292, [8 x i8] c"\0F\1F\00\00\00\00\00\00", i8 0, i8 1 }, [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pa_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pa_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1296, [8 x i8] c"\00\09\00\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1408, [8 x i8] c"\00\09\1B\00\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1412, [8 x i8] c"\001\1B\00\0F\09\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1416, [8 x i8] c"\001\1B\00\0F\09\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1420, [8 x i8] c"\001\1B\00\0F\09\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1424, [8 x i8] c"\001\1B\00\0F\08\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1428, [8 x i8] c"\001\1B\00\0F\08\1C\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pb_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pb_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1432, [8 x i8] c"\001\1B\00\0F\08\1C\00", i8 -122, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1536, [8 x i8] c"\001\00\0D\1B\00\00 ", i8 -95, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1540, [8 x i8] c"1\00-\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1544, [8 x i8] c"1\00-\0D\0F\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1548, [8 x i8] c"1\00-\0D\0F\00\00 ", i8 -96, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1552, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1556, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1560, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1564, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1568, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1572, [8 x i8] c"\001\00\0D\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1576, [8 x i8] c"\001-\00\0F\00* ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1580, [8 x i8] c"\001-\00\0F\00\00 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1584, [8 x i8] c"\00\00-\00\0F!\18 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc_13\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_13 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1588, [8 x i8] c"\00\00-\00\0F!\19 ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pc_14\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pc_14 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1592, [8 x i8] c"\00\00-\00\0F!\0D ", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1664, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1668, [8 x i8] c"\00\00\0B\00\0F \00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1672, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1676, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1680, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1684, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1688, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1692, [8 x i8] c"\00\08\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1696, [8 x i8] c"\00\08\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pd_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1700, [8 x i8] c"\00\09\0B\00\0F\00\00!", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1704, [8 x i8] c"\00\08\0B\00\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1708, [8 x i8] c"\00\00\0B\00\0F1\09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1712, [8 x i8] c"\00\00\0B\00\0F\00\09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_13\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_13 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1716, [8 x i8] c"\00\08\0B\00\0F\00\09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_14\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_14 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1720, [8 x i8] c"\00\00\0B\00\0F\00\09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_15\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_15 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1724, [8 x i8] c"\00\00\0B\00\0F \09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pd_16\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pd_16 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1728, [8 x i8] c"\00\00\0B\00\0F \09\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1792, [8 x i8] c"\00\00\00\0B\0F\04\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1796, [8 x i8] c"\00\00\00\0B\0F\04\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1800, [8 x i8] c"\02\03\00\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1804, [8 x i8] c"\00\03\02\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1808, [8 x i8] c"\00\1E\00\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1812, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1816, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1820, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1824, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pe_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1828, [8 x i8] c"\00\08-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1832, [8 x i8] c"\00\08-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1836, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_12\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_12 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1840, [8 x i8] c"\00\09-\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_13\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_13 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1844, [8 x i8] c"\00\09\11\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_14\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_14 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1848, [8 x i8] c"\00\00\00\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pe_15\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pe_15 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1852, [8 x i8] c"\00\09\11\0B\0F\00\00\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1920, [8 x i8] c"$\06\00\00\00\00\00\1A", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1924, [8 x i8] c"\00\00$\00\0F\00!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1928, [8 x i8] c"\00/$\00\0F\00!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1932, [8 x i8] c"\00/$\00\0F\00!\00", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_4\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_4 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1936, [8 x i8] c"&\06+\00\00\00\16\13", i8 0, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_5\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_5 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1940, [8 x i8] c"\00/&+\0F\00!\00", i8 -92, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_6\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_6 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1944, [8 x i8] c"\00/&+\0F\00!\1A", i8 -93, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_7\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_7 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1948, [8 x i8] c"\00/&+\0F\00!\1A", i8 -89, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_8\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_8 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1952, [8 x i8] c"\00,\08+\0F\00!\00", i8 -126, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pf_9\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_9 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1956, [8 x i8] c"\00,\09\00\0F\00!\00", i8 -94, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pf_10\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_10 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1960, [8 x i8] c"\00,\00\00\0F\00 \00", i8 -123, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pf_11\00", [26 x i8] zeroinitializer }, align 32
@lpc18xx_pin_pf_11 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 1964, [8 x i8] c"\00,\00\00\0F\00 \00", i8 -91, i8 0 }, [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk0\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_clk0 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3072, [8 x i8] c"\0B\07\00\00 \0C&\0D", i8 0, i8 2 }, [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_clk1 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3076, [8 x i8] c"\0B\07\00\00\00\05\00\1A", i8 0, i8 2 }, [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk2\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_clk2 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3080, [8 x i8] c"\0B\07\00\00 \0C\16\1A", i8 0, i8 2 }, [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"clk3\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pin_clk3 = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3084, [8 x i8] c"\0B\07\00\00\00\05\00\1A", i8 0, i8 2 }, [16 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb1_dm\00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_pin_usb1_dm = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3200, [8 x i8] zeroinitializer, i8 0, i8 4 }, [16 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb1_dp\00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_pin_usb1_dp = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3200, [8 x i8] zeroinitializer, i8 0, i8 4 }, [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_scl\00", [23 x i8] zeroinitializer }, align 32
@lpc18xx_pin_i2c0_scl = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3204, [8 x i8] zeroinitializer, i8 0, i8 3 }, [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c0_sda\00", [23 x i8] zeroinitializer }, align 32
@lpc18xx_pin_i2c0_sda = internal global { %struct.lpc18xx_pin_caps, [16 x i8] } { %struct.lpc18xx_pin_caps { i32 3204, [8 x i8] zeroinitializer, i8 0, i8 3 }, [16 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpc18xx/43xx-scu\00", [47 x i8] zeroinitializer }, align 32
@lpc18xx_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @lpc18xx_pctl_get_groups_count, ptr @lpc18xx_pctl_get_group_name, ptr @lpc18xx_pctl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@lpc18xx_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @lpc18xx_pmx_get_funcs_count, ptr @lpc18xx_pmx_get_func_name, ptr @lpc18xx_pmx_get_func_groups, ptr @lpc18xx_pmx_set, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @lpc18xx_pconf_get, ptr @lpc18xx_pconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lpc18xx_params = internal constant { [1 x %struct.pinconf_generic_params], [20 x i8] } { [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.263, i32 128, i32 0 }], [20 x i8] zeroinitializer }, align 32
@lpc18xx_conf_items = internal constant { [1 x %struct.pin_config_item], [16 x i8] } { [1 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.264, ptr null, i8 1 }], [16 x i8] zeroinitializer }, align 32
@lpc18xx_function_names = internal constant { [50 x ptr], [56 x i8] } { [50 x ptr] [ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247], [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adc\00", [28 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adctrig\00", [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can0\00", [27 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"can1\00", [27 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cgu_out\00", [24 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkout\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctin\00", [27 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ctout\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dac\00", [28 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emc_alt\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"enet\00", [27 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enet_alt\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s0_rx_mclk\00", [19 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_rx_sck\00", [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_rx_sda\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s0_rx_ws\00", [21 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s0_tx_mclk\00", [19 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_tx_sck\00", [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2s0_tx_sda\00", [20 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2s0_tx_ws\00", [21 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2s1\00", [27 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lcd_alt\00", [24 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mctrl\00", [26 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nmi\00", [28 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qei\00", [28 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdmmc\00", [26 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sgpio\00", [26 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spifi\00", [26 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssp0_alt\00", [23 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp1\00", [27 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer0\00", [25 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer1\00", [25 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer2\00", [25 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timer3\00", [25 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"trace\00", [26 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb1\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_pmx_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.249, ptr @.str.3, i32 1217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pin %s can't be %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpc18xx_pmx_set\00", [16 x i8] zeroinitializer }, align 32
@lpc18xx_pmx_set._entry_ptr = internal global ptr @lpc18xx_pmx_set._entry, section ".printk_index", align 4
@lpc18xx_pconf_set_i2c0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Property not supported\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpc18xx_pconf_set_i2c0\00", [41 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_i2c0._entry_ptr = internal global ptr @lpc18xx_pconf_set_i2c0._entry, section ".printk_index", align 4
@lpc18xx_pconf_set_usb1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.252, ptr @.str.3, i32 923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lpc18xx_pconf_set_usb1\00", [41 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_usb1._entry_ptr = internal global ptr @lpc18xx_pconf_set_usb1._entry, section ".printk_index", align 4
@lpc18xx_pconf_set_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.254, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Slew rate unsupported on high-drive pins\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lpc18xx_pconf_set_pin\00", [42 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_pin._entry_ptr = internal global ptr @lpc18xx_pconf_set_pin._entry, section ".printk_index", align 4
@lpc18xx_pconf_set_pin._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.256, ptr @.str.254, ptr @.str.3, i32 1053, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Drive strength available only on high-drive pins\0A\00", [46 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_pin._entry_ptr.257 = internal global ptr @lpc18xx_pconf_set_pin._entry.255, section ".printk_index", align 4
@lpc18xx_pconf_set_pin._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.259, ptr @.str.254, ptr @.str.3, i32 1068, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Drive strength %u unsupported\0A\00", [33 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_pin._entry_ptr.260 = internal global ptr @lpc18xx_pconf_set_pin._entry.258, section ".printk_index", align 4
@lpc18xx_pconf_set_pin._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.254, ptr @.str.3, i32 1078, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lpc18xx_pconf_set_pin._entry_ptr.262 = internal global ptr @lpc18xx_pconf_set_pin._entry.261, section ".printk_index", align 4
@.str.263 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nxp,gpio-pin-interrupt\00", [41 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio pin int\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 10, i64 16, i64 49]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.266 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.268 = internal global [6 x i64] [i64 4, i64 8, i64 12, i64 13, i64 14, i64 24]
@__sancov_gen_cov_switch_values.269 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 15]
@__sancov_gen_cov_switch_values.270 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 24, i64 128]
@__sancov_gen_cov_switch_values.271 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.272 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.273 = internal global [6 x i64] [i64 4, i64 8, i64 12, i64 13, i64 14, i64 24]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 50]
@__sancov_gen_cov_switch_values.275 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 15]
@__sancov_gen_cov_switch_values.276 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 5, i64 9, i64 12, i64 14, i64 24, i64 128]
@__sancov_gen_cov_switch_values.277 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 5, i64 8]
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"lpc18xx_scu_driver\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1372, i32 31 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1375, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant [18 x i8] c"lpc18xx_scu_match\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1367, i32 34 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1339, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1345, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1351, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [17 x i8] c"lpc18xx_scu_desc\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1258, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1359, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [13 x i8] c"lpc18xx_pins\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 447, i32 38 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 448, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p0_0\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 238, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 449, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p0_1\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 239, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 450, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_0\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 240, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 451, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_1\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 241, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 452, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_2\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 242, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 453, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_3\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 243, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 454, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_4\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 244, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 455, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_5\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 245, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 456, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_6\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 246, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 457, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_7\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 247, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 458, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_8\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 248, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 459, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p1_9\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 249, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 460, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_10\00", align 1
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 250, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 461, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_11\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 251, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 462, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_12\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 252, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 463, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_13\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 253, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 464, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_14\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 254, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 465, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_15\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 255, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 466, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_16\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 256, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 467, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_17\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 257, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 468, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_18\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 258, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 469, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_19\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 259, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 470, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p1_20\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 260, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 471, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_0\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 261, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 472, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_1\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 262, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 473, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_2\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 263, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 474, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_3\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 264, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 475, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_4\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 265, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 476, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_5\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 266, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 477, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_6\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 267, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 478, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_7\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 268, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 479, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_8\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 269, i32 1 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 480, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p2_9\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 270, i32 1 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 481, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p2_10\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 271, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 482, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p2_11\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 272, i32 1 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 483, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p2_12\00", align 1
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 273, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 484, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p2_13\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 274, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 485, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_0\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 275, i32 1 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 486, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_1\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 276, i32 1 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 487, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_2\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 277, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 488, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_3\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 278, i32 1 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 489, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_4\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 279, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 490, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_5\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 280, i32 1 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 491, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_6\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 281, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 492, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_7\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 282, i32 1 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 493, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p3_8\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 283, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 494, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_0\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 284, i32 1 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 495, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_1\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 285, i32 1 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 496, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_2\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 286, i32 1 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 497, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_3\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 287, i32 1 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 498, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_4\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 288, i32 1 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 499, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_5\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 289, i32 1 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 500, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_6\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 290, i32 1 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 501, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_7\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 291, i32 1 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 502, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_8\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 292, i32 1 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 503, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p4_9\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 293, i32 1 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 504, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p4_10\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 294, i32 1 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 505, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_0\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 295, i32 1 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 506, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_1\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 296, i32 1 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 507, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_2\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 297, i32 1 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 508, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_3\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 298, i32 1 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 509, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_4\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 299, i32 1 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 510, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_5\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 300, i32 1 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 511, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_6\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 301, i32 1 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 512, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p5_7\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 302, i32 1 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 513, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_0\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 303, i32 1 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 514, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_1\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 304, i32 1 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 515, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_2\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 305, i32 1 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 516, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_3\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 306, i32 1 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 517, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_4\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 307, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 518, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_5\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 308, i32 1 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 519, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_6\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 309, i32 1 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 520, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_7\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 310, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 521, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_8\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 311, i32 1 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 522, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p6_9\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 312, i32 1 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 523, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p6_10\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 313, i32 1 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 524, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p6_11\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 314, i32 1 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 525, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_p6_12\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 315, i32 1 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 526, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_0\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 316, i32 1 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 527, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_1\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 317, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 528, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_2\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 318, i32 1 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 529, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_3\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 319, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 530, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_4\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 320, i32 1 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 531, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_5\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 321, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 532, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_6\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 322, i32 1 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 533, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p7_7\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 323, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 534, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_0\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 324, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 535, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_1\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 325, i32 1 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 536, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_2\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 326, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 537, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_3\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 327, i32 1 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 538, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_4\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 328, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 539, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_5\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 329, i32 1 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 540, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_6\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 330, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 541, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_7\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 331, i32 1 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 542, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p8_8\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 332, i32 1 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 543, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_0\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 333, i32 1 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 544, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_1\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 334, i32 1 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 545, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_2\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 335, i32 1 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 546, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_3\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 336, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 547, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_4\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 337, i32 1 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 548, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_5\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 338, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 549, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_p9_6\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 339, i32 1 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 550, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pa_0\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 340, i32 1 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 551, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pa_1\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 341, i32 1 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 552, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pa_2\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 342, i32 1 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 553, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pa_3\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 343, i32 1 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 554, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pa_4\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 344, i32 1 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 555, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_0\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 345, i32 1 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 556, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_1\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 346, i32 1 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 557, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_2\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 347, i32 1 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 558, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_3\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 348, i32 1 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 559, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_4\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 349, i32 1 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 560, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_5\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 350, i32 1 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 561, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pb_6\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 351, i32 1 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 562, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_0\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 352, i32 1 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 563, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_1\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 353, i32 1 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 564, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_2\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 354, i32 1 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 565, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_3\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 355, i32 1 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 566, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_4\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 356, i32 1 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 567, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_5\00", align 1
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 357, i32 1 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 568, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_6\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 358, i32 1 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 569, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_7\00", align 1
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 359, i32 1 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 570, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_8\00", align 1
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 360, i32 1 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 571, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pc_9\00", align 1
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 361, i32 1 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 572, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pc_10\00", align 1
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 362, i32 1 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 573, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pc_11\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 363, i32 1 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 574, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pc_12\00", align 1
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 364, i32 1 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 575, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pc_13\00", align 1
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 365, i32 1 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 576, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pc_14\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 366, i32 1 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 577, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_0\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 367, i32 1 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 578, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_1\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 368, i32 1 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 579, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_2\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 369, i32 1 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 580, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_3\00", align 1
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 370, i32 1 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 581, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_4\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 371, i32 1 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 582, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_5\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 372, i32 1 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 583, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_6\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 373, i32 1 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 584, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_7\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 374, i32 1 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 585, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_8\00", align 1
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 375, i32 1 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 586, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pd_9\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 376, i32 1 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 587, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_10\00", align 1
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 377, i32 1 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 588, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_11\00", align 1
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 378, i32 1 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 589, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_12\00", align 1
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 379, i32 1 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 590, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_13\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 380, i32 1 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 591, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_14\00", align 1
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 381, i32 1 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 592, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_15\00", align 1
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 382, i32 1 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 593, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pd_16\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 383, i32 1 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 594, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_0\00", align 1
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 384, i32 1 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 595, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_1\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 385, i32 1 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 596, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_2\00", align 1
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 386, i32 1 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 597, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_3\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 387, i32 1 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 598, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_4\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 388, i32 1 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 599, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_5\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 389, i32 1 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 600, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_6\00", align 1
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 390, i32 1 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 601, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_7\00", align 1
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 391, i32 1 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 602, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_8\00", align 1
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 392, i32 1 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 603, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pe_9\00", align 1
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 393, i32 1 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 604, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_10\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 394, i32 1 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 605, i32 2 }
@___asan_gen_.1274 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_11\00", align 1
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 395, i32 1 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 606, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_12\00", align 1
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 396, i32 1 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 607, i32 2 }
@___asan_gen_.1286 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_13\00", align 1
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 397, i32 1 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 608, i32 2 }
@___asan_gen_.1292 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_14\00", align 1
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 398, i32 1 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 609, i32 2 }
@___asan_gen_.1298 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pe_15\00", align 1
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 399, i32 1 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 610, i32 2 }
@___asan_gen_.1304 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_0\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 400, i32 1 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 611, i32 2 }
@___asan_gen_.1310 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_1\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 401, i32 1 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 612, i32 2 }
@___asan_gen_.1316 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_2\00", align 1
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 402, i32 1 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 613, i32 2 }
@___asan_gen_.1322 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_3\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 403, i32 1 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 614, i32 2 }
@___asan_gen_.1328 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_4\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 404, i32 1 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 615, i32 2 }
@___asan_gen_.1334 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_5\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 405, i32 1 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 616, i32 2 }
@___asan_gen_.1340 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_6\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 406, i32 1 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 617, i32 2 }
@___asan_gen_.1346 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_7\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 407, i32 1 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 618, i32 2 }
@___asan_gen_.1352 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_8\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 408, i32 1 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 619, i32 2 }
@___asan_gen_.1358 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_pf_9\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 409, i32 1 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 620, i32 2 }
@___asan_gen_.1364 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pf_10\00", align 1
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 410, i32 1 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 621, i32 2 }
@___asan_gen_.1370 = private unnamed_addr constant [18 x i8] c"lpc18xx_pin_pf_11\00", align 1
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 411, i32 1 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 623, i32 2 }
@___asan_gen_.1376 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_clk0\00", align 1
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 414, i32 1 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 624, i32 2 }
@___asan_gen_.1382 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_clk1\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 415, i32 1 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 625, i32 2 }
@___asan_gen_.1388 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_clk2\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 416, i32 1 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 626, i32 2 }
@___asan_gen_.1394 = private unnamed_addr constant [17 x i8] c"lpc18xx_pin_clk3\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 417, i32 1 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 627, i32 2 }
@___asan_gen_.1400 = private unnamed_addr constant [20 x i8] c"lpc18xx_pin_usb1_dm\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 418, i32 1 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 628, i32 2 }
@___asan_gen_.1406 = private unnamed_addr constant [20 x i8] c"lpc18xx_pin_usb1_dp\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 419, i32 1 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 629, i32 2 }
@___asan_gen_.1412 = private unnamed_addr constant [21 x i8] c"lpc18xx_pin_i2c0_scl\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 420, i32 1 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 630, i32 2 }
@___asan_gen_.1418 = private unnamed_addr constant [21 x i8] c"lpc18xx_pin_i2c0_sda\00", align 1
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 421, i32 1 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1259, i32 10 }
@___asan_gen_.1424 = private unnamed_addr constant [17 x i8] c"lpc18xx_pctl_ops\00", align 1
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1250, i32 33 }
@___asan_gen_.1427 = private unnamed_addr constant [16 x i8] c"lpc18xx_pmx_ops\00", align 1
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1221, i32 32 }
@___asan_gen_.1430 = private unnamed_addr constant [18 x i8] c"lpc18xx_pconf_ops\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1122, i32 33 }
@___asan_gen_.1433 = private unnamed_addr constant [15 x i8] c"lpc18xx_params\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 636, i32 44 }
@___asan_gen_.1436 = private unnamed_addr constant [19 x i8] c"lpc18xx_conf_items\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 641, i32 37 }
@___asan_gen_.1439 = private unnamed_addr constant [23 x i8] c"lpc18xx_function_names\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 128, i32 26 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 129, i32 14 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 130, i32 16 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 131, i32 20 }
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 132, i32 17 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 133, i32 17 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 134, i32 20 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 135, i32 18 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 136, i32 19 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 137, i32 17 }
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 138, i32 18 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 139, i32 16 }
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 140, i32 16 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 141, i32 20 }
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 142, i32 17 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 143, i32 21 }
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 144, i32 17 }
@___asan_gen_.1492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 145, i32 17 }
@___asan_gen_.1495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 146, i32 17 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 147, i32 24 }
@___asan_gen_.1501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 148, i32 23 }
@___asan_gen_.1504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 149, i32 23 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 150, i32 22 }
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 151, i32 24 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 152, i32 23 }
@___asan_gen_.1516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 153, i32 23 }
@___asan_gen_.1519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 154, i32 22 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 155, i32 17 }
@___asan_gen_.1525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 156, i32 16 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 157, i32 20 }
@___asan_gen_.1531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 158, i32 18 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 159, i32 16 }
@___asan_gen_.1537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 160, i32 16 }
@___asan_gen_.1540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 161, i32 18 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 162, i32 18 }
@___asan_gen_.1546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 163, i32 16 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 164, i32 18 }
@___asan_gen_.1552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 165, i32 17 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 166, i32 21 }
@___asan_gen_.1558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 167, i32 17 }
@___asan_gen_.1561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 168, i32 19 }
@___asan_gen_.1564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 169, i32 19 }
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 170, i32 19 }
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 171, i32 19 }
@___asan_gen_.1573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 172, i32 18 }
@___asan_gen_.1576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 173, i32 18 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 174, i32 18 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 175, i32 18 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 176, i32 18 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 177, i32 17 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 178, i32 17 }
@___asan_gen_.1600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1216, i32 2 }
@___asan_gen_.1609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 974, i32 3 }
@___asan_gen_.1615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 923, i32 3 }
@___asan_gen_.1624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1034, i32 4 }
@___asan_gen_.1630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1053, i32 4 }
@___asan_gen_.1636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1068, i32 4 }
@___asan_gen_.1637 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 1078, i32 3 }
@___asan_gen_.1642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 637, i32 3 }
@___asan_gen_.1643 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1644 = private constant [37 x i8] c"../drivers/pinctrl/pinctrl-lpc18xx.c\00", align 1
@___asan_gen_.1645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1644, i32 642, i32 2 }
@llvm.compiler.used = appending global [468 x ptr] [ptr @__initcall__kmod_pinctrl_lpc18xx__210_1380_lpc18xx_scu_driver_init6, ptr @lpc18xx_pconf_set_i2c0._entry, ptr @lpc18xx_pconf_set_i2c0._entry_ptr, ptr @lpc18xx_pconf_set_pin._entry, ptr @lpc18xx_pconf_set_pin._entry.255, ptr @lpc18xx_pconf_set_pin._entry.258, ptr @lpc18xx_pconf_set_pin._entry.261, ptr @lpc18xx_pconf_set_pin._entry_ptr, ptr @lpc18xx_pconf_set_pin._entry_ptr.257, ptr @lpc18xx_pconf_set_pin._entry_ptr.260, ptr @lpc18xx_pconf_set_pin._entry_ptr.262, ptr @lpc18xx_pconf_set_usb1._entry, ptr @lpc18xx_pconf_set_usb1._entry_ptr, ptr @lpc18xx_pmx_set._entry, ptr @lpc18xx_pmx_set._entry_ptr, ptr @lpc18xx_scu_probe._entry, ptr @lpc18xx_scu_probe._entry.12, ptr @lpc18xx_scu_probe._entry.6, ptr @lpc18xx_scu_probe._entry.9, ptr @lpc18xx_scu_probe._entry_ptr, ptr @lpc18xx_scu_probe._entry_ptr.11, ptr @lpc18xx_scu_probe._entry_ptr.14, ptr @lpc18xx_scu_probe._entry_ptr.8, ptr @lpc18xx_scu_driver, ptr @.str, ptr @lpc18xx_scu_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @lpc18xx_scu_desc, ptr @.str.13, ptr @lpc18xx_pins, ptr @.str.15, ptr @lpc18xx_pin_p0_0, ptr @.str.16, ptr @lpc18xx_pin_p0_1, ptr @.str.17, ptr @lpc18xx_pin_p1_0, ptr @.str.18, ptr @lpc18xx_pin_p1_1, ptr @.str.19, ptr @lpc18xx_pin_p1_2, ptr @.str.20, ptr @lpc18xx_pin_p1_3, ptr @.str.21, ptr @lpc18xx_pin_p1_4, ptr @.str.22, ptr @lpc18xx_pin_p1_5, ptr @.str.23, ptr @lpc18xx_pin_p1_6, ptr @.str.24, ptr @lpc18xx_pin_p1_7, ptr @.str.25, ptr @lpc18xx_pin_p1_8, ptr @.str.26, ptr @lpc18xx_pin_p1_9, ptr @.str.27, ptr @lpc18xx_pin_p1_10, ptr @.str.28, ptr @lpc18xx_pin_p1_11, ptr @.str.29, ptr @lpc18xx_pin_p1_12, ptr @.str.30, ptr @lpc18xx_pin_p1_13, ptr @.str.31, ptr @lpc18xx_pin_p1_14, ptr @.str.32, ptr @lpc18xx_pin_p1_15, ptr @.str.33, ptr @lpc18xx_pin_p1_16, ptr @.str.34, ptr @lpc18xx_pin_p1_17, ptr @.str.35, ptr @lpc18xx_pin_p1_18, ptr @.str.36, ptr @lpc18xx_pin_p1_19, ptr @.str.37, ptr @lpc18xx_pin_p1_20, ptr @.str.38, ptr @lpc18xx_pin_p2_0, ptr @.str.39, ptr @lpc18xx_pin_p2_1, ptr @.str.40, ptr @lpc18xx_pin_p2_2, ptr @.str.41, ptr @lpc18xx_pin_p2_3, ptr @.str.42, ptr @lpc18xx_pin_p2_4, ptr @.str.43, ptr @lpc18xx_pin_p2_5, ptr @.str.44, ptr @lpc18xx_pin_p2_6, ptr @.str.45, ptr @lpc18xx_pin_p2_7, ptr @.str.46, ptr @lpc18xx_pin_p2_8, ptr @.str.47, ptr @lpc18xx_pin_p2_9, ptr @.str.48, ptr @lpc18xx_pin_p2_10, ptr @.str.49, ptr @lpc18xx_pin_p2_11, ptr @.str.50, ptr @lpc18xx_pin_p2_12, ptr @.str.51, ptr @lpc18xx_pin_p2_13, ptr @.str.52, ptr @lpc18xx_pin_p3_0, ptr @.str.53, ptr @lpc18xx_pin_p3_1, ptr @.str.54, ptr @lpc18xx_pin_p3_2, ptr @.str.55, ptr @lpc18xx_pin_p3_3, ptr @.str.56, ptr @lpc18xx_pin_p3_4, ptr @.str.57, ptr @lpc18xx_pin_p3_5, ptr @.str.58, ptr @lpc18xx_pin_p3_6, ptr @.str.59, ptr @lpc18xx_pin_p3_7, ptr @.str.60, ptr @lpc18xx_pin_p3_8, ptr @.str.61, ptr @lpc18xx_pin_p4_0, ptr @.str.62, ptr @lpc18xx_pin_p4_1, ptr @.str.63, ptr @lpc18xx_pin_p4_2, ptr @.str.64, ptr @lpc18xx_pin_p4_3, ptr @.str.65, ptr @lpc18xx_pin_p4_4, ptr @.str.66, ptr @lpc18xx_pin_p4_5, ptr @.str.67, ptr @lpc18xx_pin_p4_6, ptr @.str.68, ptr @lpc18xx_pin_p4_7, ptr @.str.69, ptr @lpc18xx_pin_p4_8, ptr @.str.70, ptr @lpc18xx_pin_p4_9, ptr @.str.71, ptr @lpc18xx_pin_p4_10, ptr @.str.72, ptr @lpc18xx_pin_p5_0, ptr @.str.73, ptr @lpc18xx_pin_p5_1, ptr @.str.74, ptr @lpc18xx_pin_p5_2, ptr @.str.75, ptr @lpc18xx_pin_p5_3, ptr @.str.76, ptr @lpc18xx_pin_p5_4, ptr @.str.77, ptr @lpc18xx_pin_p5_5, ptr @.str.78, ptr @lpc18xx_pin_p5_6, ptr @.str.79, ptr @lpc18xx_pin_p5_7, ptr @.str.80, ptr @lpc18xx_pin_p6_0, ptr @.str.81, ptr @lpc18xx_pin_p6_1, ptr @.str.82, ptr @lpc18xx_pin_p6_2, ptr @.str.83, ptr @lpc18xx_pin_p6_3, ptr @.str.84, ptr @lpc18xx_pin_p6_4, ptr @.str.85, ptr @lpc18xx_pin_p6_5, ptr @.str.86, ptr @lpc18xx_pin_p6_6, ptr @.str.87, ptr @lpc18xx_pin_p6_7, ptr @.str.88, ptr @lpc18xx_pin_p6_8, ptr @.str.89, ptr @lpc18xx_pin_p6_9, ptr @.str.90, ptr @lpc18xx_pin_p6_10, ptr @.str.91, ptr @lpc18xx_pin_p6_11, ptr @.str.92, ptr @lpc18xx_pin_p6_12, ptr @.str.93, ptr @lpc18xx_pin_p7_0, ptr @.str.94, ptr @lpc18xx_pin_p7_1, ptr @.str.95, ptr @lpc18xx_pin_p7_2, ptr @.str.96, ptr @lpc18xx_pin_p7_3, ptr @.str.97, ptr @lpc18xx_pin_p7_4, ptr @.str.98, ptr @lpc18xx_pin_p7_5, ptr @.str.99, ptr @lpc18xx_pin_p7_6, ptr @.str.100, ptr @lpc18xx_pin_p7_7, ptr @.str.101, ptr @lpc18xx_pin_p8_0, ptr @.str.102, ptr @lpc18xx_pin_p8_1, ptr @.str.103, ptr @lpc18xx_pin_p8_2, ptr @.str.104, ptr @lpc18xx_pin_p8_3, ptr @.str.105, ptr @lpc18xx_pin_p8_4, ptr @.str.106, ptr @lpc18xx_pin_p8_5, ptr @.str.107, ptr @lpc18xx_pin_p8_6, ptr @.str.108, ptr @lpc18xx_pin_p8_7, ptr @.str.109, ptr @lpc18xx_pin_p8_8, ptr @.str.110, ptr @lpc18xx_pin_p9_0, ptr @.str.111, ptr @lpc18xx_pin_p9_1, ptr @.str.112, ptr @lpc18xx_pin_p9_2, ptr @.str.113, ptr @lpc18xx_pin_p9_3, ptr @.str.114, ptr @lpc18xx_pin_p9_4, ptr @.str.115, ptr @lpc18xx_pin_p9_5, ptr @.str.116, ptr @lpc18xx_pin_p9_6, ptr @.str.117, ptr @lpc18xx_pin_pa_0, ptr @.str.118, ptr @lpc18xx_pin_pa_1, ptr @.str.119, ptr @lpc18xx_pin_pa_2, ptr @.str.120, ptr @lpc18xx_pin_pa_3, ptr @.str.121, ptr @lpc18xx_pin_pa_4, ptr @.str.122, ptr @lpc18xx_pin_pb_0, ptr @.str.123, ptr @lpc18xx_pin_pb_1, ptr @.str.124, ptr @lpc18xx_pin_pb_2, ptr @.str.125, ptr @lpc18xx_pin_pb_3, ptr @.str.126, ptr @lpc18xx_pin_pb_4, ptr @.str.127, ptr @lpc18xx_pin_pb_5, ptr @.str.128, ptr @lpc18xx_pin_pb_6, ptr @.str.129, ptr @lpc18xx_pin_pc_0, ptr @.str.130, ptr @lpc18xx_pin_pc_1, ptr @.str.131, ptr @lpc18xx_pin_pc_2, ptr @.str.132, ptr @lpc18xx_pin_pc_3, ptr @.str.133, ptr @lpc18xx_pin_pc_4, ptr @.str.134, ptr @lpc18xx_pin_pc_5, ptr @.str.135, ptr @lpc18xx_pin_pc_6, ptr @.str.136, ptr @lpc18xx_pin_pc_7, ptr @.str.137, ptr @lpc18xx_pin_pc_8, ptr @.str.138, ptr @lpc18xx_pin_pc_9, ptr @.str.139, ptr @lpc18xx_pin_pc_10, ptr @.str.140, ptr @lpc18xx_pin_pc_11, ptr @.str.141, ptr @lpc18xx_pin_pc_12, ptr @.str.142, ptr @lpc18xx_pin_pc_13, ptr @.str.143, ptr @lpc18xx_pin_pc_14, ptr @.str.144, ptr @lpc18xx_pin_pd_0, ptr @.str.145, ptr @lpc18xx_pin_pd_1, ptr @.str.146, ptr @lpc18xx_pin_pd_2, ptr @.str.147, ptr @lpc18xx_pin_pd_3, ptr @.str.148, ptr @lpc18xx_pin_pd_4, ptr @.str.149, ptr @lpc18xx_pin_pd_5, ptr @.str.150, ptr @lpc18xx_pin_pd_6, ptr @.str.151, ptr @lpc18xx_pin_pd_7, ptr @.str.152, ptr @lpc18xx_pin_pd_8, ptr @.str.153, ptr @lpc18xx_pin_pd_9, ptr @.str.154, ptr @lpc18xx_pin_pd_10, ptr @.str.155, ptr @lpc18xx_pin_pd_11, ptr @.str.156, ptr @lpc18xx_pin_pd_12, ptr @.str.157, ptr @lpc18xx_pin_pd_13, ptr @.str.158, ptr @lpc18xx_pin_pd_14, ptr @.str.159, ptr @lpc18xx_pin_pd_15, ptr @.str.160, ptr @lpc18xx_pin_pd_16, ptr @.str.161, ptr @lpc18xx_pin_pe_0, ptr @.str.162, ptr @lpc18xx_pin_pe_1, ptr @.str.163, ptr @lpc18xx_pin_pe_2, ptr @.str.164, ptr @lpc18xx_pin_pe_3, ptr @.str.165, ptr @lpc18xx_pin_pe_4, ptr @.str.166, ptr @lpc18xx_pin_pe_5, ptr @.str.167, ptr @lpc18xx_pin_pe_6, ptr @.str.168, ptr @lpc18xx_pin_pe_7, ptr @.str.169, ptr @lpc18xx_pin_pe_8, ptr @.str.170, ptr @lpc18xx_pin_pe_9, ptr @.str.171, ptr @lpc18xx_pin_pe_10, ptr @.str.172, ptr @lpc18xx_pin_pe_11, ptr @.str.173, ptr @lpc18xx_pin_pe_12, ptr @.str.174, ptr @lpc18xx_pin_pe_13, ptr @.str.175, ptr @lpc18xx_pin_pe_14, ptr @.str.176, ptr @lpc18xx_pin_pe_15, ptr @.str.177, ptr @lpc18xx_pin_pf_0, ptr @.str.178, ptr @lpc18xx_pin_pf_1, ptr @.str.179, ptr @lpc18xx_pin_pf_2, ptr @.str.180, ptr @lpc18xx_pin_pf_3, ptr @.str.181, ptr @lpc18xx_pin_pf_4, ptr @.str.182, ptr @lpc18xx_pin_pf_5, ptr @.str.183, ptr @lpc18xx_pin_pf_6, ptr @.str.184, ptr @lpc18xx_pin_pf_7, ptr @.str.185, ptr @lpc18xx_pin_pf_8, ptr @.str.186, ptr @lpc18xx_pin_pf_9, ptr @.str.187, ptr @lpc18xx_pin_pf_10, ptr @.str.188, ptr @lpc18xx_pin_pf_11, ptr @.str.189, ptr @lpc18xx_pin_clk0, ptr @.str.190, ptr @lpc18xx_pin_clk1, ptr @.str.191, ptr @lpc18xx_pin_clk2, ptr @.str.192, ptr @lpc18xx_pin_clk3, ptr @.str.193, ptr @lpc18xx_pin_usb1_dm, ptr @.str.194, ptr @lpc18xx_pin_usb1_dp, ptr @.str.195, ptr @lpc18xx_pin_i2c0_scl, ptr @.str.196, ptr @lpc18xx_pin_i2c0_sda, ptr @.str.197, ptr @lpc18xx_pctl_ops, ptr @lpc18xx_pmx_ops, ptr @lpc18xx_pconf_ops, ptr @lpc18xx_params, ptr @lpc18xx_conf_items, ptr @lpc18xx_function_names, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.256, ptr @.str.259, ptr @.str.263, ptr @.str.264], section "llvm.metadata"
@0 = internal global [456 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_scu_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pins to i32), i32 2184, i32 2752, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p0_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p0_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p1_20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p2_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p3_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p4_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p5_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p6_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p7_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p8_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_p9_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pa_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pa_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pa_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pa_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pa_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pb_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pc_14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pd_16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pe_15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1298 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1364 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_pf_11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1370 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_clk0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1376 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_clk1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_clk2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1388 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_clk3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_usb1_dm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_usb1_dp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_i2c0_scl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pin_i2c0_sda to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1424 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1433 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_conf_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_function_names to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pmx_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_i2c0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_usb1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_pin._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_pin._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_pconf_set_pin._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1637 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1643 to i32), i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_scu_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_scu_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_scu_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pins.i = alloca [182 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 412, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %base = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i75 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 364, ptr nonnull %pins.i) #9
  %6 = call ptr @memset(ptr %pins.i, i32 255, i32 364)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc29.i.for.cond1.preheader.i_crit_edge, %if.end16
  %func.063.i = phi i32 [ 0, %if.end16 ], [ %inc30.i, %for.inc29.i.for.cond1.preheader.i_crit_edge ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i
  %i.059.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc4.i, %for.inc.i.for.body3.i_crit_edge ]
  %ngroups.057.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %ngroups.1.i, %for.inc.i.for.body3.i_crit_edge ]
  %drv_data.i.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %i.059.i, i32 2
  %7 = ptrtoint ptr %drv_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drv_data.i.i, align 4
  %9 = zext i32 %func.063.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %func.063.i, label %for.body3.i.if.end26.i.i_crit_edge [
    i32 10, label %land.lhs.true.i.i
    i32 1, label %land.lhs.true5.i.i
    i32 16, label %land.lhs.true12.i.i
    i32 49, label %land.lhs.true20.i.i
  ]

for.body3.i.if.end26.i.i_crit_edge:               ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

land.lhs.true.i.i:                                ; preds = %for.body3.i
  %analog.i.i = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 2
  %10 = ptrtoint ptr %analog.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %analog.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %11)
  %cmp1.i.i = icmp eq i8 %11, -128
  br i1 %cmp1.i.i, label %land.lhs.true.i.i.if.then.i_crit_edge, label %land.lhs.true.i.i.if.end26.i.i_crit_edge

land.lhs.true.i.i.if.end26.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

land.lhs.true.i.i.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true5.i.i:                               ; preds = %for.body3.i
  %analog6.i.i = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %analog6.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %analog6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %land.lhs.true5.i.i.if.end26.i.i_crit_edge, label %land.lhs.true5.i.i.if.then.i_crit_edge

land.lhs.true5.i.i.if.then.i_crit_edge:           ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true5.i.i.if.end26.i.i_crit_edge:        ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

land.lhs.true12.i.i:                              ; preds = %for.body3.i
  %type.i.i = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 3
  %14 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp14.i.i = icmp eq i8 %15, 3
  br i1 %cmp14.i.i, label %land.lhs.true12.i.i.if.then.i_crit_edge, label %land.lhs.true12.i.i.if.end26.i.i_crit_edge

land.lhs.true12.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

land.lhs.true12.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

land.lhs.true20.i.i:                              ; preds = %for.body3.i
  %type21.i.i = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 3
  %16 = ptrtoint ptr %type21.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %type21.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp23.i.i = icmp eq i8 %17, 4
  br i1 %cmp23.i.i, label %land.lhs.true20.i.i.if.then.i_crit_edge, label %land.lhs.true20.i.i.if.end26.i.i_crit_edge

land.lhs.true20.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i.i

land.lhs.true20.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end26.i.i:                                     ; preds = %land.lhs.true20.i.i.if.end26.i.i_crit_edge, %land.lhs.true12.i.i.if.end26.i.i_crit_edge, %land.lhs.true5.i.i.if.end26.i.i_crit_edge, %land.lhs.true.i.i.if.end26.i.i_crit_edge, %for.body3.i.if.end26.i.i_crit_edge
  %arrayidx29.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx29.i.i, align 1
  %conv30.i.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.i.i)
  %cmp31.i.i = icmp eq i32 %func.063.i, %conv30.i.i
  br i1 %cmp31.i.i, label %if.end26.i.i.if.then.i_crit_edge, label %for.cond.i.i

if.end26.i.i.if.then.i_crit_edge:                 ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.i.i:                                     ; preds = %if.end26.i.i
  %arrayidx29.1.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %arrayidx29.1.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29.1.i.i, align 1
  %conv30.1.i.i = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.1.i.i)
  %cmp31.1.i.i = icmp eq i32 %func.063.i, %conv30.1.i.i
  br i1 %cmp31.1.i.i, label %for.cond.i.i.if.then.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %arrayidx29.2.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %arrayidx29.2.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx29.2.i.i, align 1
  %conv30.2.i.i = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.2.i.i)
  %cmp31.2.i.i = icmp eq i32 %func.063.i, %conv30.2.i.i
  br i1 %cmp31.2.i.i, label %for.cond.1.i.i.if.then.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.if.then.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %arrayidx29.3.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %arrayidx29.3.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx29.3.i.i, align 1
  %conv30.3.i.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.3.i.i)
  %cmp31.3.i.i = icmp eq i32 %func.063.i, %conv30.3.i.i
  br i1 %cmp31.3.i.i, label %for.cond.2.i.i.if.then.i_crit_edge, label %for.cond.3.i.i

for.cond.2.i.i.if.then.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  %arrayidx29.4.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %arrayidx29.4.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx29.4.i.i, align 1
  %conv30.4.i.i = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.4.i.i)
  %cmp31.4.i.i = icmp eq i32 %func.063.i, %conv30.4.i.i
  br i1 %cmp31.4.i.i, label %for.cond.3.i.i.if.then.i_crit_edge, label %for.cond.4.i.i

for.cond.3.i.i.if.then.i_crit_edge:               ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  %arrayidx29.5.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %arrayidx29.5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx29.5.i.i, align 1
  %conv30.5.i.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.5.i.i)
  %cmp31.5.i.i = icmp eq i32 %func.063.i, %conv30.5.i.i
  br i1 %cmp31.5.i.i, label %for.cond.4.i.i.if.then.i_crit_edge, label %for.cond.5.i.i

for.cond.4.i.i.if.then.i_crit_edge:               ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  %arrayidx29.6.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 6
  %30 = ptrtoint ptr %arrayidx29.6.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx29.6.i.i, align 1
  %conv30.6.i.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.6.i.i)
  %cmp31.6.i.i = icmp eq i32 %func.063.i, %conv30.6.i.i
  br i1 %cmp31.6.i.i, label %for.cond.5.i.i.if.then.i_crit_edge, label %lpc18xx_valid_pin_function.exit.i

for.cond.5.i.i.if.then.i_crit_edge:               ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lpc18xx_valid_pin_function.exit.i:                ; preds = %for.cond.5.i.i
  %arrayidx29.7.i.i = getelementptr %struct.lpc18xx_pin_caps, ptr %8, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %arrayidx29.7.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx29.7.i.i, align 1
  %conv30.7.i.i = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %func.063.i, i32 %conv30.7.i.i)
  %cmp31.7.i.i = icmp eq i32 %func.063.i, %conv30.7.i.i
  br i1 %cmp31.7.i.i, label %lpc18xx_valid_pin_function.exit.i.if.then.i_crit_edge, label %lpc18xx_valid_pin_function.exit.i.for.inc.i_crit_edge

lpc18xx_valid_pin_function.exit.i.for.inc.i_crit_edge: ; preds = %lpc18xx_valid_pin_function.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lpc18xx_valid_pin_function.exit.i.if.then.i_crit_edge: ; preds = %lpc18xx_valid_pin_function.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lpc18xx_valid_pin_function.exit.i.if.then.i_crit_edge, %for.cond.5.i.i.if.then.i_crit_edge, %for.cond.4.i.i.if.then.i_crit_edge, %for.cond.3.i.i.if.then.i_crit_edge, %for.cond.2.i.i.if.then.i_crit_edge, %for.cond.1.i.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge, %if.end26.i.i.if.then.i_crit_edge, %land.lhs.true20.i.i.if.then.i_crit_edge, %land.lhs.true12.i.i.if.then.i_crit_edge, %land.lhs.true5.i.i.if.then.i_crit_edge, %land.lhs.true.i.i.if.then.i_crit_edge
  %conv.i = trunc i32 %i.059.i to i16
  %inc.i = add i32 %ngroups.057.i, 1
  %arrayidx.i = getelementptr [182 x i16], ptr %pins.i, i32 0, i32 %ngroups.057.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i, ptr %arrayidx.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %lpc18xx_valid_pin_function.exit.i.for.inc.i_crit_edge
  %ngroups.1.i = phi i32 [ %inc.i, %if.then.i ], [ %ngroups.057.i, %lpc18xx_valid_pin_function.exit.i.for.inc.i_crit_edge ]
  %inc4.i = add nuw nsw i32 %i.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc4.i, 182
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

for.end.i:                                        ; preds = %for.inc.i
  %arrayidx6.i = getelementptr %struct.lpc18xx_scu_data, ptr %call.i, i32 0, i32 3, i32 %func.063.i
  %ngroups7.i = getelementptr %struct.lpc18xx_scu_data, ptr %call.i, i32 0, i32 3, i32 %func.063.i, i32 1
  %35 = ptrtoint ptr %ngroups7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %ngroups.1.i, ptr %ngroups7.i, align 4
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %ngroups.1.i, i32 4) #9
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !917

devm_kcalloc.exit.thread.i:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx6.i, align 4
  br label %do.end23

devm_kcalloc.exit.i:                              ; preds = %for.end.i
  %39 = extractvalue { i32, i1 } %36, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %39, i32 noundef 3520) #9
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i.i, ptr %arrayidx6.i, align 4
  %tobool.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i, label %devm_kcalloc.exit.i.do.end23_crit_edge, label %for.cond16.preheader.i

devm_kcalloc.exit.i.do.end23_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end23

for.cond16.preheader.i:                           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngroups.1.i)
  %cmp1761.not.i = icmp eq i32 %ngroups.1.i, 0
  br i1 %cmp1761.not.i, label %for.cond16.preheader.i.for.inc29.i_crit_edge, label %for.cond16.preheader.i.for.body19.i_crit_edge

for.cond16.preheader.i.for.body19.i_crit_edge:    ; preds = %for.cond16.preheader.i
  br label %for.body19.i

for.cond16.preheader.i.for.inc29.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.cond16.preheader.i.for.body19.i_crit_edge
  %i.162.i = phi i32 [ %inc27.i, %for.body19.i.for.body19.i_crit_edge ], [ 0, %for.cond16.preheader.i.for.body19.i_crit_edge ]
  %arrayidx20.i = getelementptr [182 x i16], ptr %pins.i, i32 0, i32 %i.162.i
  %41 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx20.i, align 2
  %idxprom.i = zext i16 %42 to i32
  %name.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %idxprom.i, i32 1
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name.i, align 4
  %45 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx6.i, align 4
  %arrayidx25.i = getelementptr ptr, ptr %46, i32 %i.162.i
  %47 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %arrayidx25.i, align 4
  %inc27.i = add nuw nsw i32 %i.162.i, 1
  %exitcond65.not.i = icmp eq i32 %inc27.i, %ngroups.1.i
  br i1 %exitcond65.not.i, label %for.body19.i.for.inc29.i_crit_edge, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19.i

for.body19.i.for.inc29.i_crit_edge:               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %for.body19.i.for.inc29.i_crit_edge, %for.cond16.preheader.i.for.inc29.i_crit_edge
  %inc30.i = add nuw nsw i32 %func.063.i, 1
  %exitcond66.not.i = icmp eq i32 %inc30.i, 50
  br i1 %exitcond66.not.i, label %if.end25, label %for.inc29.i.for.cond1.preheader.i_crit_edge

for.inc29.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader.i

do.end23:                                         ; preds = %devm_kcalloc.exit.i.do.end23_crit_edge, %devm_kcalloc.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %pins.i) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end25:                                         ; preds = %for.inc29.i
  call void @llvm.lifetime.end.p0(i64 364, ptr nonnull %pins.i) #9
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %call.i76 = tail call i32 @clk_prepare(ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call i32 @clk_enable(ptr noundef %49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %49) #9
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i78.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i76, %if.end25.do.end32_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end.i
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call36 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @lpc18xx_scu_desc, ptr noundef nonnull %call.i) #9
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call36, ptr %call.i, align 4
  %cmp.i79 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %do.end42, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  %52 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %53) #9
  tail call void @clk_unprepare(ptr noundef %53) #9
  %54 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end34.cleanup_crit_edge, %do.end32, %do.end23, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ -12, %do.end23 ], [ %retval.0.i78.ph, %do.end32 ], [ %56, %do.end42 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc18xx_pctl_get_groups_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 182
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lpc18xx_pctl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %group, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lpc18xx_pctl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %group
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %arrayidx, ptr %pins, align 4
  %1 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc18xx_pmx_get_funcs_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @lpc18xx_pmx_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [50 x ptr], ptr @lpc18xx_function_names, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %arrayidx = getelementptr %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 3, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 3, i32 %function, i32 1
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pmx_set(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %drv_data = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %group, i32 2
  %0 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_data, align 4
  %type = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.265)
  switch i8 %3, label %if.end15 [
    i8 4, label %if.then
    i8 3, label %if.then10
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %function)
  %cmp2 = icmp eq i32 %function, 49
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.do.end99_crit_edge

if.then.do.end99_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %function)
  %cmp11 = icmp eq i32 %function, 16
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.then10.do.end99_crit_edge

if.then10.do.end99_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %entry
  %5 = zext i32 %function to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %function, label %if.end15.if.end68_crit_edge [
    i32 1, label %land.lhs.true
    i32 10, label %land.lhs.true43
  ]

if.end15.if.end68_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true:                                    ; preds = %if.end15
  %analog = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %analog, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool.not = icmp sgt i8 %7, -1
  br i1 %tobool.not, label %land.lhs.true.if.end68_crit_edge, label %if.then19

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !918
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #9, !srcloc !919
  %12 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %analog, align 4
  %14 = and i8 %13, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp24 = icmp eq i8 %14, 0
  %. = select i1 %cmp24, i32 3208, i32 3212
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %16, i32 %.
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !920
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !921
  %19 = ptrtoint ptr %analog to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %analog, align 4
  %21 = and i8 %20, 31
  %and34 = zext i8 %21 to i32
  %or = or i32 %18, %and34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !922
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %or)
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %24, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %22) #9, !srcloc !919
  br label %cleanup

land.lhs.true43:                                  ; preds = %if.end15
  %analog44 = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %analog44 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %analog44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %26)
  %tobool47.not = icmp sgt i8 %26, -1
  br i1 %tobool47.not, label %land.lhs.true43.if.end68_crit_edge, label %do.body49

land.lhs.true43.if.end68_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body49:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !923
  tail call void @arm_heavy_mb() #9
  %base52 = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base52, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  %add.ptr54 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 268435456) #9, !srcloc !919
  %31 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base52, align 4
  %add.ptr58 = getelementptr i8, ptr %32, i32 3216
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #9, !srcloc !920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !924
  %34 = or i32 %33, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !925
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %base52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base52, align 4
  %add.ptr67 = getelementptr i8, ptr %36, i32 3216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %34) #9, !srcloc !919
  br label %cleanup

if.end68:                                         ; preds = %land.lhs.true43.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.end15.if.end68_crit_edge
  %arrayidx71 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 0
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72, i32 %function)
  %cmp73 = icmp eq i32 %conv72, %function
  br i1 %cmp73, label %if.end68.if.end80_crit_edge, label %for.inc

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc:                                          ; preds = %if.end68
  %arrayidx71.1 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx71.1, align 1
  %conv72.1 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.1, i32 %function)
  %cmp73.1 = icmp eq i32 %conv72.1, %function
  br i1 %cmp73.1, label %for.inc.if.end80_crit_edge, label %for.inc.1

for.inc.if.end80_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.1:                                        ; preds = %for.inc
  %arrayidx71.2 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %arrayidx71.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx71.2, align 1
  %conv72.2 = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.2, i32 %function)
  %cmp73.2 = icmp eq i32 %conv72.2, %function
  br i1 %cmp73.2, label %for.inc.1.if.end80_crit_edge, label %for.inc.2

for.inc.1.if.end80_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx71.3 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 3
  %43 = ptrtoint ptr %arrayidx71.3 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx71.3, align 1
  %conv72.3 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.3, i32 %function)
  %cmp73.3 = icmp eq i32 %conv72.3, %function
  br i1 %cmp73.3, label %for.inc.2.if.end80_crit_edge, label %for.inc.3

for.inc.2.if.end80_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx71.4 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %arrayidx71.4 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx71.4, align 1
  %conv72.4 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.4, i32 %function)
  %cmp73.4 = icmp eq i32 %conv72.4, %function
  br i1 %cmp73.4, label %for.inc.3.if.end80_crit_edge, label %for.inc.4

for.inc.3.if.end80_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx71.5 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx71.5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx71.5, align 1
  %conv72.5 = zext i8 %48 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.5, i32 %function)
  %cmp73.5 = icmp eq i32 %conv72.5, %function
  br i1 %cmp73.5, label %for.inc.4.if.end80_crit_edge, label %for.inc.5

for.inc.4.if.end80_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx71.6 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 6
  %49 = ptrtoint ptr %arrayidx71.6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx71.6, align 1
  %conv72.6 = zext i8 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.6, i32 %function)
  %cmp73.6 = icmp eq i32 %conv72.6, %function
  br i1 %cmp73.6, label %for.inc.5.if.end80_crit_edge, label %for.inc.6

for.inc.5.if.end80_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx71.7 = getelementptr %struct.lpc18xx_pin_caps, ptr %1, i32 0, i32 1, i32 7
  %51 = ptrtoint ptr %arrayidx71.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx71.7, align 1
  %conv72.7 = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv72.7, i32 %function)
  %cmp73.7 = icmp eq i32 %conv72.7, %function
  br i1 %cmp73.7, label %for.inc.6.if.end80_crit_edge, label %for.inc.6.do.end99_crit_edge

for.inc.6.do.end99_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end99

for.inc.6.if.end80_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.end80:                                         ; preds = %for.inc.6.if.end80_crit_edge, %for.inc.5.if.end80_crit_edge, %for.inc.4.if.end80_crit_edge, %for.inc.3.if.end80_crit_edge, %for.inc.2.if.end80_crit_edge, %for.inc.1.if.end80_crit_edge, %for.inc.if.end80_crit_edge, %if.end68.if.end80_crit_edge
  %func.0141.lcssa = phi i32 [ 0, %if.end68.if.end80_crit_edge ], [ 1, %for.inc.if.end80_crit_edge ], [ 2, %for.inc.1.if.end80_crit_edge ], [ 3, %for.inc.2.if.end80_crit_edge ], [ 4, %for.inc.3.if.end80_crit_edge ], [ 5, %for.inc.4.if.end80_crit_edge ], [ 6, %for.inc.5.if.end80_crit_edge ], [ 7, %for.inc.6.if.end80_crit_edge ]
  %base83 = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 1
  %53 = ptrtoint ptr %base83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base83, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  %add.ptr85 = getelementptr i8, ptr %54, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #9, !srcloc !920
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !926
  %58 = and i32 %57, -117440513
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !927
  tail call void @arm_heavy_mb() #9
  %or93 = or i32 %59, %func.0141.lcssa
  %60 = tail call i32 @llvm.bswap.i32(i32 %or93)
  %61 = ptrtoint ptr %base83 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base83, align 4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %1, align 4
  %add.ptr96 = getelementptr i8, ptr %62, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %60) #9, !srcloc !919
  br label %cleanup

do.end99:                                         ; preds = %for.inc.6.do.end99_crit_edge, %if.then10.do.end99_crit_edge, %if.then.do.end99_crit_edge
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 4
  %name = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %group, i32 1
  %67 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name, align 4
  %arrayidx101 = getelementptr [50 x ptr], ptr @lpc18xx_function_names, i32 0, i32 %function
  %69 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.248, ptr noundef %68, ptr noundef %70) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.end80, %do.body49, %if.then19, %if.then10.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end99 ], [ 0, %if.then19 ], [ 0, %do.body49 ], [ 0, %if.end80 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pin)
  %cmp1.i = icmp eq i32 %3, %pin
  br i1 %cmp1.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 182
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body.i
  %drv_data.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %i.07.i, i32 2
  %4 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data.i, align 4
  %base = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !920
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !928
  %type = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.267)
  switch i8 %13, label %if.else14 [
    i8 3, label %if.then6
    i8 4, label %if.then12
  ]

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 606, i32 %pin)
  %cmp.i = icmp eq i32 %pin, 606
  %..i = select i1 %cmp.i, i32 0, i32 8
  %trunc66 = trunc i32 %1 to i8
  %15 = zext i8 %trunc66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.268)
  switch i8 %trunc66, label %if.then6.cleanup_crit_edge [
    i8 12, label %sw.bb.i
    i8 24, label %sw.bb4.i
    i8 13, label %sw.bb12.i
    i8 14, label %sw.bb20.i
  ]

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then6
  %shl.i = shl nuw nsw i32 8, %..i
  %and.i44 = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i44)
  %tobool.not.i = icmp eq i32 %and.i44, 0
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i.if.end21_crit_edge

sw.bb.i.if.end21_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %shl6.i = shl nuw nsw i32 4, %..i
  %and7.i = and i32 %11, %shl6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp ne i32 %and7.i, 0
  %.39.i = zext i1 %tobool8.not.i to i32
  br label %if.end21

sw.bb12.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %shl14.i = shl nuw nsw i32 1, %..i
  %and15.i = and i32 %11, %shl14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %.40.i = select i1 %tobool16.not.i, i32 50, i32 3
  br label %if.end21

sw.bb20.i:                                        ; preds = %if.then6
  %shl22.i = shl nuw nsw i32 128, %..i
  %and23.i = and i32 %11, %shl22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %sw.bb20.i.if.end21_crit_edge, label %sw.bb20.i.cleanup_crit_edge

sw.bb20.i.cleanup_crit_edge:                      ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb20.i.if.end21_crit_edge:                     ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then12:                                        ; preds = %if.end
  %trunc = trunc i32 %1 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.269)
  switch i8 %trunc, label %if.then12.cleanup_crit_edge [
    i8 15, label %sw.bb.i47
    i8 1, label %sw.bb1.i
    i8 3, label %sw.bb6.i
  ]

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i47:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %and.i46 = lshr i32 %11, 4
  %and.lobit.i = and i32 %and.i46, 1
  %17 = xor i32 %and.lobit.i, 1
  br label %if.end21

sw.bb1.i:                                         ; preds = %if.then12
  %and2.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %sw.bb1.i.if.end21_crit_edge, label %sw.bb1.i.cleanup_crit_edge

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i.if.end21_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb6.i:                                         ; preds = %if.then12
  %and7.i48 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i48)
  %tobool8.not.i49 = icmp eq i32 %and7.i48, 0
  br i1 %tobool8.not.i49, label %sw.bb6.i.cleanup_crit_edge, label %sw.bb6.i.if.end21_crit_edge

sw.bb6.i.if.end21_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else14:                                        ; preds = %if.end
  %trunc67 = trunc i32 %1 to i8
  %18 = zext i8 %trunc67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.270)
  switch i8 %trunc67, label %if.else14.cleanup_crit_edge [
    i8 1, label %sw.bb.i52
    i8 5, label %sw.bb3.i
    i8 3, label %sw.bb9.i
    i8 12, label %sw.bb15.i
    i8 24, label %sw.bb21.i
    i8 14, label %sw.bb30.i
    i8 9, label %sw.bb36.i
    i8 -128, label %sw.bb51.i
  ]

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i52:                                        ; preds = %if.else14
  %19 = and i32 %11, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %19)
  %.not.i = icmp eq i32 %19, 16
  br i1 %.not.i, label %sw.bb.i52.if.end21_crit_edge, label %sw.bb.i52.cleanup_crit_edge

sw.bb.i52.cleanup_crit_edge:                      ; preds = %sw.bb.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i52.if.end21_crit_edge:                     ; preds = %sw.bb.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb3.i:                                         ; preds = %if.else14
  %and4.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %sw.bb3.i.if.end21_crit_edge, label %sw.bb3.i.cleanup_crit_edge

sw.bb3.i.cleanup_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3.i.if.end21_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb9.i:                                         ; preds = %if.else14
  %and10.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %sw.bb9.i.cleanup_crit_edge, label %sw.bb9.i.if.end21_crit_edge

sw.bb9.i.if.end21_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb9.i.cleanup_crit_edge:                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15.i:                                        ; preds = %if.else14
  %and16.i = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %sw.bb15.i.cleanup_crit_edge, label %sw.bb15.i.if.end21_crit_edge

sw.bb15.i.if.end21_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb15.i.cleanup_crit_edge:                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb21.i:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i53 = icmp eq i8 %13, 1
  br i1 %cmp.i53, label %sw.bb21.i.cleanup_crit_edge, label %if.end24.i

sw.bb21.i.cleanup_crit_edge:                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24.i:                                       ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  %and25.i = lshr i32 %11, 5
  %and25.lobit.i = and i32 %and25.i, 1
  br label %if.end21

sw.bb30.i:                                        ; preds = %if.else14
  %and31.i = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br i1 %tobool32.not.i, label %sw.bb30.i.if.end21_crit_edge, label %sw.bb30.i.cleanup_crit_edge

sw.bb30.i.cleanup_crit_edge:                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb30.i.if.end21_crit_edge:                     ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

sw.bb36.i:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp39.not.i = icmp eq i8 %13, 1
  br i1 %cmp39.not.i, label %if.end42.i, label %sw.bb36.i.cleanup_crit_edge

sw.bb36.i.cleanup_crit_edge:                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42.i:                                       ; preds = %sw.bb36.i
  %and43.i = lshr i32 %11, 8
  %shr.i = and i32 %and43.i, 3
  %20 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %shr.i, label %if.end42.unreachabledefault.i [
    i32 3, label %sw.bb44.i
    i32 2, label %if.end42.i.sw.bb45.i_crit_edge
    i32 1, label %if.end42.i.sw.bb47.i_crit_edge
    i32 0, label %if.end42.i.if.end21_crit_edge
  ]

if.end42.i.if.end21_crit_edge:                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end42.i.sw.bb47.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb47.i

if.end42.i.sw.bb45.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

sw.bb44.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb45.i

sw.bb45.i:                                        ; preds = %sw.bb44.i, %if.end42.i.sw.bb45.i_crit_edge
  %arg.3 = phi i32 [ 14, %if.end42.i.sw.bb45.i_crit_edge ], [ 20, %sw.bb44.i ]
  br label %sw.bb47.i

sw.bb47.i:                                        ; preds = %sw.bb45.i, %if.end42.i.sw.bb47.i_crit_edge
  %arg.4 = phi i32 [ 8, %if.end42.i.sw.bb47.i_crit_edge ], [ %arg.3, %sw.bb45.i ]
  br label %if.end21

sw.bb51.i:                                        ; preds = %if.else14
  %call.i.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call.i.i.i = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb51.i.cleanup_crit_edge, label %lpc18xx_pin_to_gpio.exit.i.i

sw.bb51.i.cleanup_crit_edge:                      ; preds = %sw.bb51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lpc18xx_pin_to_gpio.exit.i.i:                     ; preds = %sw.bb51.i
  %pin_base.i.i.i = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call.i.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %pin_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin_base.i.i.i, align 4
  %sub.i.i.i = sub i32 %pin, %22
  %base.i.i.i = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base.i.i.i, align 4
  %add.i.i.i = add i32 %sub.i.i.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %cmp.i.i = icmp slt i32 %add.i.i.i, 0
  br i1 %cmp.i.i, label %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge, label %if.end.i.i

lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge:   ; preds = %lpc18xx_pin_to_gpio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %lpc18xx_pin_to_gpio.exit.i.i
  %base.i.i = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 3584
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !920
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !929
  %and.i.i.i = and i32 %28, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %add.i.i.i)
  %cmp2.i.i.i = icmp eq i32 %and.i.i.i, %add.i.i.i
  br i1 %cmp2.i.i.i, label %if.end.i.i.if.end21_crit_edge, label %if.end.i21.i.i

if.end.i.i.if.end21_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.i21.i.i:                                   ; preds = %if.end.i.i
  %shr.i.i.i = lshr i32 %28, 8
  %and.1.i.i.i = and i32 %shr.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i.i.i, i32 %add.i.i.i)
  %cmp2.1.i.i.i = icmp eq i32 %and.1.i.i.i, %add.i.i.i
  br i1 %cmp2.1.i.i.i, label %if.end.i21.i.i.if.end21_crit_edge, label %if.end.1.i.i.i

if.end.i21.i.i.if.end21_crit_edge:                ; preds = %if.end.i21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.1.i.i.i:                                   ; preds = %if.end.i21.i.i
  %shr.1.i.i.i = lshr i32 %28, 16
  %and.2.i.i.i = and i32 %shr.1.i.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i.i.i, i32 %add.i.i.i)
  %cmp2.2.i.i.i = icmp eq i32 %and.2.i.i.i, %add.i.i.i
  br i1 %cmp2.2.i.i.i, label %if.end.1.i.i.i.if.end21_crit_edge, label %if.end.2.i.i.i

if.end.1.i.i.i.if.end21_crit_edge:                ; preds = %if.end.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.2.i.i.i:                                   ; preds = %if.end.1.i.i.i
  %shr.2.i.i.i = lshr i32 %28, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i.i.i, i32 %add.i.i.i)
  %cmp2.3.i.i.i = icmp eq i32 %shr.2.i.i.i, %add.i.i.i
  br i1 %cmp2.3.i.i.i, label %if.end.2.i.i.i.if.end21_crit_edge, label %if.end6.i.i

if.end.2.i.i.i.if.end21_crit_edge:                ; preds = %if.end.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end6.i.i:                                      ; preds = %if.end.2.i.i.i
  %29 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %30, i32 3588
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #9, !srcloc !920
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !929
  %and.i23.i.i = and i32 %32, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i23.i.i, i32 %add.i.i.i)
  %cmp2.i24.i.i = icmp eq i32 %and.i23.i.i, %add.i.i.i
  br i1 %cmp2.i24.i.i, label %if.end6.i.i.if.end21_crit_edge, label %if.end.i29.i.i

if.end6.i.i.if.end21_crit_edge:                   ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.i29.i.i:                                   ; preds = %if.end6.i.i
  %shr.i25.i.i = lshr i32 %32, 8
  %and.1.i27.i.i = and i32 %shr.i25.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i27.i.i, i32 %add.i.i.i)
  %cmp2.1.i28.i.i = icmp eq i32 %and.1.i27.i.i, %add.i.i.i
  br i1 %cmp2.1.i28.i.i, label %if.end.i29.i.i.if.end21_crit_edge, label %if.end.1.i34.i.i

if.end.i29.i.i.if.end21_crit_edge:                ; preds = %if.end.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.1.i34.i.i:                                 ; preds = %if.end.i29.i.i
  %shr.1.i30.i.i = lshr i32 %32, 16
  %and.2.i32.i.i = and i32 %shr.1.i30.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i32.i.i, i32 %add.i.i.i)
  %cmp2.2.i33.i.i = icmp eq i32 %and.2.i32.i.i, %add.i.i.i
  br i1 %cmp2.2.i33.i.i, label %if.end.1.i34.i.i.if.end21_crit_edge, label %if.end.2.i38.i.i

if.end.1.i34.i.i.if.end21_crit_edge:              ; preds = %if.end.1.i34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end.2.i38.i.i:                                 ; preds = %if.end.1.i34.i.i
  %shr.2.i35.i.i = lshr i32 %32, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i35.i.i, i32 %add.i.i.i)
  %cmp2.3.i37.i.i = icmp eq i32 %shr.2.i35.i.i, %add.i.i.i
  br i1 %cmp2.3.i37.i.i, label %if.end.2.i38.i.i.if.end21_crit_edge, label %if.end.2.i38.i.i.cleanup_crit_edge

if.end.2.i38.i.i.cleanup_crit_edge:               ; preds = %if.end.2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.2.i38.i.i.if.end21_crit_edge:              ; preds = %if.end.2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.end42.unreachabledefault.i:                    ; preds = %if.end42.i
  unreachable

if.end21:                                         ; preds = %if.end.2.i38.i.i.if.end21_crit_edge, %if.end.1.i34.i.i.if.end21_crit_edge, %if.end.i29.i.i.if.end21_crit_edge, %if.end6.i.i.if.end21_crit_edge, %if.end.2.i.i.i.if.end21_crit_edge, %if.end.1.i.i.i.if.end21_crit_edge, %if.end.i21.i.i.if.end21_crit_edge, %if.end.i.i.if.end21_crit_edge, %sw.bb47.i, %if.end42.i.if.end21_crit_edge, %sw.bb30.i.if.end21_crit_edge, %if.end24.i, %sw.bb15.i.if.end21_crit_edge, %sw.bb9.i.if.end21_crit_edge, %sw.bb3.i.if.end21_crit_edge, %sw.bb.i52.if.end21_crit_edge, %sw.bb6.i.if.end21_crit_edge, %sw.bb1.i.if.end21_crit_edge, %sw.bb.i47, %sw.bb20.i.if.end21_crit_edge, %sw.bb12.i, %sw.bb4.i, %sw.bb.i.if.end21_crit_edge
  %arg.8 = phi i32 [ 0, %if.end.i.i.if.end21_crit_edge ], [ 1, %if.end.i21.i.i.if.end21_crit_edge ], [ 2, %if.end.1.i.i.i.if.end21_crit_edge ], [ 3, %if.end.2.i.i.i.if.end21_crit_edge ], [ 4, %if.end6.i.i.if.end21_crit_edge ], [ 5, %if.end.i29.i.i.if.end21_crit_edge ], [ 6, %if.end.1.i34.i.i.if.end21_crit_edge ], [ 7, %if.end.2.i38.i.i.if.end21_crit_edge ], [ 1, %sw.bb.i.if.end21_crit_edge ], [ %.39.i, %sw.bb4.i ], [ %.40.i, %sw.bb12.i ], [ 1, %sw.bb20.i.if.end21_crit_edge ], [ 0, %sw.bb1.i.if.end21_crit_edge ], [ %17, %sw.bb.i47 ], [ 1, %sw.bb6.i.if.end21_crit_edge ], [ 0, %sw.bb.i52.if.end21_crit_edge ], [ 1, %sw.bb3.i.if.end21_crit_edge ], [ 1, %sw.bb9.i.if.end21_crit_edge ], [ 1, %sw.bb15.i.if.end21_crit_edge ], [ %and25.lobit.i, %if.end24.i ], [ 1, %sw.bb30.i.if.end21_crit_edge ], [ 4, %if.end42.i.if.end21_crit_edge ], [ %arg.4, %sw.bb47.i ]
  %conv23 = shl i32 %arg.8, 8
  %shl.i55 = and i32 %conv23, 16776960
  %or.i = or i32 %shl.i55, %and.i
  %33 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end.2.i38.i.i.cleanup_crit_edge, %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge, %sw.bb51.i.cleanup_crit_edge, %sw.bb36.i.cleanup_crit_edge, %sw.bb30.i.cleanup_crit_edge, %sw.bb21.i.cleanup_crit_edge, %sw.bb15.i.cleanup_crit_edge, %sw.bb9.i.cleanup_crit_edge, %sw.bb3.i.cleanup_crit_edge, %sw.bb.i52.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %sw.bb20.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -524, %sw.bb51.i.cleanup_crit_edge ], [ -524, %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge ], [ -524, %if.else14.cleanup_crit_edge ], [ -524, %sw.bb36.i.cleanup_crit_edge ], [ -22, %sw.bb30.i.cleanup_crit_edge ], [ -524, %sw.bb21.i.cleanup_crit_edge ], [ -22, %sw.bb15.i.cleanup_crit_edge ], [ -22, %sw.bb9.i.cleanup_crit_edge ], [ -22, %sw.bb3.i.cleanup_crit_edge ], [ -22, %sw.bb.i52.cleanup_crit_edge ], [ -524, %if.then12.cleanup_crit_edge ], [ -22, %sw.bb6.i.cleanup_crit_edge ], [ -22, %sw.bb1.i.cleanup_crit_edge ], [ -524, %if.then6.cleanup_crit_edge ], [ -22, %sw.bb20.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %if.end.2.i38.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_pconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %i.07.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %pin)
  %cmp1.i = icmp eq i32 %1, %pin
  br i1 %cmp1.i, label %lpc18xx_get_pin_caps.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 182
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lpc18xx_get_pin_caps.exit:                        ; preds = %for.body.i
  %drv_data.i = getelementptr [182 x %struct.pinctrl_pin_desc], ptr @lpc18xx_pins, i32 0, i32 %i.07.i, i32 2
  %2 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data.i, align 4
  %base = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !920
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !930
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp120.not = icmp eq i32 %num_configs, 0
  br i1 %cmp120.not, label %lpc18xx_get_pin_caps.exit.do.body_crit_edge, label %for.body.lr.ph

lpc18xx_get_pin_caps.exit.do.body_crit_edge:      ; preds = %lpc18xx_get_pin_caps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.lr.ph:                                   ; preds = %lpc18xx_get_pin_caps.exit
  %type = getelementptr inbounds %struct.lpc18xx_pin_caps, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 606, i32 %pin)
  %cmp.i = icmp eq i32 %pin, 606
  %..i = select i1 %cmp.i, i32 0, i32 8
  %shl45.i = shl nuw nsw i32 128, %..i
  %neg41.i = xor i32 %shl45.i, -1
  %shl30.i = shl nuw nsw i32 1, %..i
  %neg31.i = xor i32 %shl30.i, -1
  %shl14.i = shl nuw nsw i32 4, %..i
  %neg15.i = xor i32 %shl14.i, -1
  %shl4.i = shl nuw nsw i32 8, %..i
  %neg.i = xor i32 %shl4.i, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0122 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %reg.0121 = phi i32 [ %9, %for.body.lr.ph ], [ %reg.4.ph, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0122
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %11, 8
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.272)
  switch i8 %13, label %if.else17 [
    i8 3, label %if.then9
    i8 4, label %if.then15
  ]

if.then9:                                         ; preds = %for.body
  %trunc103 = trunc i32 %11 to i8
  %15 = zext i8 %trunc103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.273)
  switch i8 %trunc103, label %do.end.i [
    i8 12, label %sw.bb.i
    i8 24, label %sw.bb6.i
    i8 13, label %sw.bb18.i
    i8 14, label %sw.bb36.i
  ]

sw.bb.i:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool.not.i = icmp ult i32 %11, 256
  br i1 %tobool.not.i, label %if.else2.i, label %if.then1.i

if.then1.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i = or i32 %reg.0121, %shl4.i
  br label %for.inc

if.else2.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %and.i53 = and i32 %reg.0121, %neg.i
  br label %for.inc

sw.bb6.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool7.not.i = icmp ult i32 %11, 256
  br i1 %tobool7.not.i, label %if.else12.i, label %if.then8.i

if.then8.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %or11.i = or i32 %reg.0121, %shl14.i
  br label %for.inc

if.else12.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i32 %reg.0121, %neg15.i
  br label %for.inc

sw.bb18.i:                                        ; preds = %if.then9
  %16 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %shr.i, label %sw.bb18.i.cleanup_crit_edge [
    i32 3, label %if.then21.i
    i32 50, label %if.then28.i
  ]

sw.bb18.i.cleanup_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  %or24.i = or i32 %reg.0121, %shl30.i
  br label %for.inc

if.then28.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  %and32.i = and i32 %reg.0121, %neg31.i
  br label %for.inc

sw.bb36.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool37.not.i = icmp ult i32 %11, 256
  br i1 %tobool37.not.i, label %if.else43.i, label %if.then38.i

if.then38.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #11
  %and42.i = and i32 %reg.0121, %neg41.i
  br label %for.inc

if.else43.i:                                      ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #11
  %or46.i = or i32 %reg.0121, %shl45.i
  br label %for.inc

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.250) #12
  br label %cleanup

if.then15:                                        ; preds = %for.body
  %trunc = trunc i32 %11 to i8
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.275)
  switch i8 %trunc, label %do.end.i61 [
    i8 15, label %sw.bb.i56
    i8 1, label %sw.bb1.i
    i8 3, label %sw.bb3.i
  ]

sw.bb.i56:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool.not.i55 = icmp ult i32 %11, 256
  br i1 %tobool.not.i55, label %if.else.i, label %if.then.i58

if.then.i58:                                      ; preds = %sw.bb.i56
  call void @__sanitizer_cov_trace_pc() #11
  %and.i57 = and i32 %reg.0121, -17
  br label %for.inc

if.else.i:                                        ; preds = %sw.bb.i56
  call void @__sanitizer_cov_trace_pc() #11
  %or.i59 = or i32 %reg.0121, 16
  br label %for.inc

sw.bb1.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i = and i32 %reg.0121, -5
  br label %for.inc

sw.bb3.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %or4.i = or i32 %reg.0121, 4
  br label %for.inc

do.end.i61:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i60 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %20 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.250) #12
  br label %cleanup

if.else17:                                        ; preds = %for.body
  %trunc104 = trunc i32 %11 to i8
  %22 = zext i8 %trunc104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.276)
  switch i8 %trunc104, label %do.end51.i [
    i8 1, label %sw.bb.i65
    i8 5, label %sw.bb1.i67
    i8 3, label %sw.bb3.i69
    i8 12, label %sw.bb5.i
    i8 24, label %sw.bb8.i
    i8 14, label %sw.bb19.i
    i8 9, label %sw.bb26.i
    i8 -128, label %sw.bb48.i
  ]

sw.bb.i65:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %and.i63 = and i32 %reg.0121, -25
  %or.i64 = or i32 %and.i63, 16
  br label %for.inc

sw.bb1.i67:                                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %and2.i66 = and i32 %reg.0121, -17
  br label %for.inc

sw.bb3.i69:                                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %or4.i68 = or i32 %reg.0121, 8
  br label %for.inc

sw.bb5.i:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool.not.i70 = icmp ult i32 %11, 256
  br i1 %tobool.not.i70, label %if.else.i72, label %if.then.i71

if.then.i71:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  %or6.i = or i32 %reg.0121, 64
  br label %for.inc

if.else.i72:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #11
  %and7.i = and i32 %reg.0121, -65
  br label %for.inc

sw.bb8.i:                                         ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp.i73 = icmp eq i8 %13, 1
  br i1 %cmp.i73, label %do.end.i75, label %if.end11.i

do.end.i75:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i74 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %23 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i74, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.253) #12
  br label %cleanup

if.end11.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %cmp12.i = icmp ult i32 %11, 256
  br i1 %cmp12.i, label %if.then14.i, label %if.else16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i = and i32 %reg.0121, -33
  br label %for.inc

if.else16.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %or17.i = or i32 %reg.0121, 32
  br label %for.inc

sw.bb19.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %11)
  %tobool20.not.i = icmp ult i32 %11, 256
  br i1 %tobool20.not.i, label %if.else23.i, label %if.then21.i76

if.then21.i76:                                    ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %and22.i = and i32 %reg.0121, -129
  br label %for.inc

if.else23.i:                                      ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  %or24.i77 = or i32 %reg.0121, 128
  br label %for.inc

sw.bb26.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp29.not.i = icmp eq i8 %13, 1
  br i1 %cmp29.not.i, label %if.end35.i, label %do.end33.i

do.end33.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev34.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %25 = ptrtoint ptr %dev34.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev34.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.256) #12
  br label %cleanup

if.end35.i:                                       ; preds = %sw.bb26.i
  %and36.i = and i32 %reg.0121, -769
  %27 = add nsw i32 %shr.i, -4
  %28 = tail call i32 @llvm.fshl.i32(i32 %27, i32 %27, i32 31) #9
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %28, label %do.end45.i [
    i32 8, label %sw.bb37.i
    i32 5, label %if.end35.i.sw.bb38.i_crit_edge
    i32 2, label %if.end35.i.sw.bb40.i_crit_edge
    i32 0, label %if.end35.i.sw.bb42.i_crit_edge
  ]

if.end35.i.sw.bb42.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb42.i

if.end35.i.sw.bb40.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb40.i

if.end35.i.sw.bb38.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb38.i

sw.bb37.i:                                        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = add nsw i32 %shr.i, -5
  br label %sw.bb38.i

sw.bb38.i:                                        ; preds = %sw.bb37.i, %if.end35.i.sw.bb38.i_crit_edge
  %param_val.addr.0.i = phi i32 [ %shr.i, %if.end35.i.sw.bb38.i_crit_edge ], [ %sub.i, %sw.bb37.i ]
  %sub39.i = add nsw i32 %param_val.addr.0.i, -5
  br label %sw.bb40.i

sw.bb40.i:                                        ; preds = %sw.bb38.i, %if.end35.i.sw.bb40.i_crit_edge
  %param_val.addr.1.i = phi i32 [ %shr.i, %if.end35.i.sw.bb40.i_crit_edge ], [ %sub39.i, %sw.bb38.i ]
  %sub41.i = add nsw i32 %param_val.addr.1.i, -3
  br label %sw.bb42.i

sw.bb42.i:                                        ; preds = %sw.bb40.i, %if.end35.i.sw.bb42.i_crit_edge
  %param_val.addr.2.i = phi i32 [ %shr.i, %if.end35.i.sw.bb42.i_crit_edge ], [ %sub41.i, %sw.bb40.i ]
  %sub43.i = shl i32 %param_val.addr.2.i, 8
  %shl.i = add i32 %sub43.i, -1024
  %or47.i = or i32 %shl.i, %and36.i
  br label %for.inc

do.end45.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev46.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %30 = ptrtoint ptr %dev46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev46.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.259, i32 noundef %shr.i) #12
  br label %cleanup

sw.bb48.i:                                        ; preds = %if.else17
  %call.i.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %11)
  %cmp.i.i = icmp ugt i32 %11, 2047
  br i1 %cmp.i.i, label %sw.bb48.i.cleanup_crit_edge, label %if.end.i.i

sw.bb48.i.cleanup_crit_edge:                      ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.bb48.i
  %call.i.i.i = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %lpc18xx_pin_to_gpio.exit.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lpc18xx_pin_to_gpio.exit.i.i:                     ; preds = %if.end.i.i
  %pin_base.i.i.i = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %pin_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pin_base.i.i.i, align 4
  %sub.i.i.i = sub i32 %pin, %33
  %base.i.i.i = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call.i.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %base.i.i.i, align 4
  %add.i.i.i = add i32 %sub.i.i.i, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %cmp2.i.i = icmp slt i32 %add.i.i.i, 0
  br i1 %cmp2.i.i, label %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge, label %if.end4.i.i

lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge:   ; preds = %lpc18xx_pin_to_gpio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i.i:                                      ; preds = %lpc18xx_pin_to_gpio.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %36 = add nuw nsw i32 %shr.i, 3584
  %add.i.i = and i32 %36, 33554428
  %base.i.i = getelementptr inbounds %struct.lpc18xx_scu_data, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %add.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !920
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !931
  %rem.i.i = shl nuw nsw i32 %shr.i, 3
  %mul8.i.i = and i32 %rem.i.i, 24
  %shl.i.i = shl nuw i32 255, %mul8.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %40, %neg.i.i
  %shl11.i.i = shl i32 %add.i.i.i, %mul8.i.i
  %or.i.i = or i32 %and.i.i, %shl11.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !932
  tail call void @arm_heavy_mb() #9
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  %42 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %43, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %41) #9, !srcloc !919
  br label %for.inc

do.end51.i:                                       ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  %dev52.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %44 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev52.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.250) #12
  br label %cleanup

for.inc:                                          ; preds = %if.end4.i.i, %sw.bb42.i, %if.else23.i, %if.then21.i76, %if.else16.i, %if.then14.i, %if.else.i72, %if.then.i71, %sw.bb3.i69, %sw.bb1.i67, %sw.bb.i65, %sw.bb3.i, %sw.bb1.i, %if.else.i, %if.then.i58, %if.else43.i, %if.then38.i, %if.then28.i, %if.then21.i, %if.else12.i, %if.then8.i, %if.else2.i, %if.then1.i
  %reg.4.ph = phi i32 [ %or.i64, %sw.bb.i65 ], [ %and2.i66, %sw.bb1.i67 ], [ %or4.i68, %sw.bb3.i69 ], [ %or6.i, %if.then.i71 ], [ %and7.i, %if.else.i72 ], [ %or17.i, %if.else16.i ], [ %and15.i, %if.then14.i ], [ %and22.i, %if.then21.i76 ], [ %or24.i77, %if.else23.i ], [ %or47.i, %sw.bb42.i ], [ %reg.0121, %if.end4.i.i ], [ %and.i57, %if.then.i58 ], [ %or.i59, %if.else.i ], [ %and2.i, %sw.bb1.i ], [ %or4.i, %sw.bb3.i ], [ %or.i, %if.then1.i ], [ %and.i53, %if.else2.i ], [ %or11.i, %if.then8.i ], [ %and16.i, %if.else12.i ], [ %or24.i, %if.then21.i ], [ %and32.i, %if.then28.i ], [ %and42.i, %if.then38.i ], [ %or46.i, %if.else43.i ]
  %inc = add nuw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %lpc18xx_get_pin_caps.exit.do.body_crit_edge
  %reg.0.lcssa = phi i32 [ %9, %lpc18xx_get_pin_caps.exit.do.body_crit_edge ], [ %reg.4.ph, %for.inc.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !933
  tail call void @arm_heavy_mb() #9
  %46 = tail call i32 @llvm.bswap.i32(i32 %reg.0.lcssa)
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %3, align 4
  %add.ptr26 = getelementptr i8, ptr %48, i32 %50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %46) #9, !srcloc !919
  br label %cleanup

cleanup:                                          ; preds = %do.body, %do.end51.i, %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %sw.bb48.i.cleanup_crit_edge, %do.end45.i, %do.end33.i, %do.end.i75, %do.end.i61, %do.end.i, %sw.bb18.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -524, %do.end.i ], [ -524, %do.end.i61 ], [ -524, %do.end51.i ], [ -524, %do.end33.i ], [ -524, %do.end45.i ], [ -524, %do.end.i75 ], [ -524, %if.end.i.i.cleanup_crit_edge ], [ -524, %lpc18xx_pin_to_gpio.exit.i.i.cleanup_crit_edge ], [ -22, %sw.bb48.i.cleanup_crit_edge ], [ -524, %sw.bb18.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 456)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 456)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !869, !870, !871, !873, !875, !876, !877, !878, !880, !881, !882, !884, !885, !886, !887, !889, !890, !891, !893, !894, !895, !897, !898, !900, !902, !904, !906}
!llvm.module.flags = !{!908, !909, !910, !911, !912, !913, !914, !915}
!llvm.ident = !{!916}

!0 = !{ptr @__initcall__kmod_pinctrl_lpc18xx__210_1380_lpc18xx_scu_driver_init6, !1, !"__initcall__kmod_pinctrl_lpc18xx__210_1380_lpc18xx_scu_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1380, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1375, i32 12}
!4 = !{ptr @lpc18xx_scu_driver, !5, !"lpc18xx_scu_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1372, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1339, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lpc18xx_scu_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @lpc18xx_scu_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1345, i32 3}
!16 = !{ptr @lpc18xx_scu_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @lpc18xx_scu_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1351, i32 3}
!20 = !{ptr @lpc18xx_scu_probe._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @lpc18xx_scu_probe._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1359, i32 3}
!24 = !{ptr @lpc18xx_scu_probe._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @lpc18xx_scu_probe._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 448, i32 2}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 449, i32 2}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 450, i32 2}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 451, i32 2}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 452, i32 2}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 453, i32 2}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 454, i32 2}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 455, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 456, i32 2}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 457, i32 2}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 458, i32 2}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 459, i32 2}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 460, i32 2}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 461, i32 2}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 462, i32 2}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 463, i32 2}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 464, i32 2}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 465, i32 2}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 466, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 467, i32 2}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 468, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 469, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 470, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 471, i32 2}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 472, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 473, i32 2}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 474, i32 2}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 475, i32 2}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 476, i32 2}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 477, i32 2}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 478, i32 2}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 479, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 480, i32 2}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 481, i32 2}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 482, i32 2}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 483, i32 2}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 484, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 485, i32 2}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 486, i32 2}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 487, i32 2}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 488, i32 2}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 489, i32 2}
!110 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 490, i32 2}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 491, i32 2}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 492, i32 2}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 493, i32 2}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 494, i32 2}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 495, i32 2}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 496, i32 2}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 497, i32 2}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 498, i32 2}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 499, i32 2}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 500, i32 2}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 501, i32 2}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 502, i32 2}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 503, i32 2}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 504, i32 2}
!140 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 505, i32 2}
!142 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 506, i32 2}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 507, i32 2}
!146 = !{ptr @.str.75, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 508, i32 2}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 509, i32 2}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 510, i32 2}
!152 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 511, i32 2}
!154 = !{ptr @.str.79, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 512, i32 2}
!156 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 513, i32 2}
!158 = !{ptr @.str.81, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 514, i32 2}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 515, i32 2}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 516, i32 2}
!164 = !{ptr @.str.84, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 517, i32 2}
!166 = !{ptr @.str.85, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 518, i32 2}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 519, i32 2}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 520, i32 2}
!172 = !{ptr @.str.88, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 521, i32 2}
!174 = !{ptr @.str.89, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 522, i32 2}
!176 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 523, i32 2}
!178 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 524, i32 2}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 525, i32 2}
!182 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 526, i32 2}
!184 = !{ptr @.str.94, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 527, i32 2}
!186 = !{ptr @.str.95, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 528, i32 2}
!188 = !{ptr @.str.96, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 529, i32 2}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 530, i32 2}
!192 = !{ptr @.str.98, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 531, i32 2}
!194 = !{ptr @.str.99, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 532, i32 2}
!196 = !{ptr @.str.100, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 533, i32 2}
!198 = !{ptr @.str.101, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 534, i32 2}
!200 = !{ptr @.str.102, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 535, i32 2}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 536, i32 2}
!204 = !{ptr @.str.104, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 537, i32 2}
!206 = !{ptr @.str.105, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 538, i32 2}
!208 = !{ptr @.str.106, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 539, i32 2}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 540, i32 2}
!212 = !{ptr @.str.108, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 541, i32 2}
!214 = !{ptr @.str.109, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 542, i32 2}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 543, i32 2}
!218 = !{ptr @.str.111, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 544, i32 2}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 545, i32 2}
!222 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 546, i32 2}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 547, i32 2}
!226 = !{ptr @.str.115, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 548, i32 2}
!228 = !{ptr @.str.116, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 549, i32 2}
!230 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 550, i32 2}
!232 = !{ptr @.str.118, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 551, i32 2}
!234 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 552, i32 2}
!236 = !{ptr @.str.120, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 553, i32 2}
!238 = !{ptr @.str.121, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 554, i32 2}
!240 = !{ptr @.str.122, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 555, i32 2}
!242 = !{ptr @.str.123, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 556, i32 2}
!244 = !{ptr @.str.124, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 557, i32 2}
!246 = !{ptr @.str.125, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 558, i32 2}
!248 = !{ptr @.str.126, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 559, i32 2}
!250 = !{ptr @.str.127, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 560, i32 2}
!252 = !{ptr @.str.128, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 561, i32 2}
!254 = !{ptr @.str.129, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 562, i32 2}
!256 = !{ptr @.str.130, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 563, i32 2}
!258 = !{ptr @.str.131, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 564, i32 2}
!260 = !{ptr @.str.132, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 565, i32 2}
!262 = !{ptr @.str.133, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 566, i32 2}
!264 = !{ptr @.str.134, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 567, i32 2}
!266 = !{ptr @.str.135, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 568, i32 2}
!268 = !{ptr @.str.136, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 569, i32 2}
!270 = !{ptr @.str.137, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 570, i32 2}
!272 = !{ptr @.str.138, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 571, i32 2}
!274 = !{ptr @.str.139, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 572, i32 2}
!276 = !{ptr @.str.140, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 573, i32 2}
!278 = !{ptr @.str.141, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 574, i32 2}
!280 = !{ptr @.str.142, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 575, i32 2}
!282 = !{ptr @.str.143, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 576, i32 2}
!284 = !{ptr @.str.144, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 577, i32 2}
!286 = !{ptr @.str.145, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 578, i32 2}
!288 = !{ptr @.str.146, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 579, i32 2}
!290 = !{ptr @.str.147, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 580, i32 2}
!292 = !{ptr @.str.148, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 581, i32 2}
!294 = !{ptr @.str.149, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 582, i32 2}
!296 = !{ptr @.str.150, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 583, i32 2}
!298 = !{ptr @.str.151, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 584, i32 2}
!300 = !{ptr @.str.152, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 585, i32 2}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 586, i32 2}
!304 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 587, i32 2}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 588, i32 2}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 589, i32 2}
!310 = !{ptr @.str.157, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 590, i32 2}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 591, i32 2}
!314 = !{ptr @.str.159, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 592, i32 2}
!316 = !{ptr @.str.160, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 593, i32 2}
!318 = !{ptr @.str.161, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 594, i32 2}
!320 = !{ptr @.str.162, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 595, i32 2}
!322 = !{ptr @.str.163, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 596, i32 2}
!324 = !{ptr @.str.164, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 597, i32 2}
!326 = !{ptr @.str.165, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 598, i32 2}
!328 = !{ptr @.str.166, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 599, i32 2}
!330 = !{ptr @.str.167, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 600, i32 2}
!332 = !{ptr @.str.168, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 601, i32 2}
!334 = !{ptr @.str.169, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 602, i32 2}
!336 = !{ptr @.str.170, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 603, i32 2}
!338 = !{ptr @.str.171, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 604, i32 2}
!340 = !{ptr @.str.172, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 605, i32 2}
!342 = !{ptr @.str.173, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 606, i32 2}
!344 = !{ptr @.str.174, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 607, i32 2}
!346 = !{ptr @.str.175, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 608, i32 2}
!348 = !{ptr @.str.176, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 609, i32 2}
!350 = !{ptr @.str.177, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 610, i32 2}
!352 = !{ptr @.str.178, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 611, i32 2}
!354 = !{ptr @.str.179, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 612, i32 2}
!356 = !{ptr @.str.180, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 613, i32 2}
!358 = !{ptr @.str.181, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 614, i32 2}
!360 = !{ptr @.str.182, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 615, i32 2}
!362 = !{ptr @.str.183, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 616, i32 2}
!364 = !{ptr @.str.184, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 617, i32 2}
!366 = !{ptr @.str.185, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 618, i32 2}
!368 = !{ptr @.str.186, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 619, i32 2}
!370 = !{ptr @.str.187, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 620, i32 2}
!372 = !{ptr @.str.188, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 621, i32 2}
!374 = !{ptr @.str.189, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 623, i32 2}
!376 = !{ptr @.str.190, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 624, i32 2}
!378 = !{ptr @.str.191, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 625, i32 2}
!380 = !{ptr @.str.192, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 626, i32 2}
!382 = !{ptr @.str.193, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 627, i32 2}
!384 = !{ptr @.str.194, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 628, i32 2}
!386 = !{ptr @.str.195, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 629, i32 2}
!388 = !{ptr @.str.196, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 630, i32 2}
!390 = !{ptr @lpc18xx_pins, !391, !"lpc18xx_pins", i1 false, i1 false}
!391 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 447, i32 38}
!392 = !{ptr @lpc18xx_pin_p0_0, !393, !"lpc18xx_pin_p0_0", i1 false, i1 false}
!393 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 238, i32 1}
!394 = !{ptr @lpc18xx_pin_p0_1, !395, !"lpc18xx_pin_p0_1", i1 false, i1 false}
!395 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 239, i32 1}
!396 = !{ptr @lpc18xx_pin_p1_0, !397, !"lpc18xx_pin_p1_0", i1 false, i1 false}
!397 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 240, i32 1}
!398 = !{ptr @lpc18xx_pin_p1_1, !399, !"lpc18xx_pin_p1_1", i1 false, i1 false}
!399 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 241, i32 1}
!400 = !{ptr @lpc18xx_pin_p1_2, !401, !"lpc18xx_pin_p1_2", i1 false, i1 false}
!401 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 242, i32 1}
!402 = !{ptr @lpc18xx_pin_p1_3, !403, !"lpc18xx_pin_p1_3", i1 false, i1 false}
!403 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 243, i32 1}
!404 = !{ptr @lpc18xx_pin_p1_4, !405, !"lpc18xx_pin_p1_4", i1 false, i1 false}
!405 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 244, i32 1}
!406 = !{ptr @lpc18xx_pin_p1_5, !407, !"lpc18xx_pin_p1_5", i1 false, i1 false}
!407 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 245, i32 1}
!408 = !{ptr @lpc18xx_pin_p1_6, !409, !"lpc18xx_pin_p1_6", i1 false, i1 false}
!409 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 246, i32 1}
!410 = !{ptr @lpc18xx_pin_p1_7, !411, !"lpc18xx_pin_p1_7", i1 false, i1 false}
!411 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 247, i32 1}
!412 = !{ptr @lpc18xx_pin_p1_8, !413, !"lpc18xx_pin_p1_8", i1 false, i1 false}
!413 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 248, i32 1}
!414 = !{ptr @lpc18xx_pin_p1_9, !415, !"lpc18xx_pin_p1_9", i1 false, i1 false}
!415 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 249, i32 1}
!416 = !{ptr @lpc18xx_pin_p1_10, !417, !"lpc18xx_pin_p1_10", i1 false, i1 false}
!417 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 250, i32 1}
!418 = !{ptr @lpc18xx_pin_p1_11, !419, !"lpc18xx_pin_p1_11", i1 false, i1 false}
!419 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 251, i32 1}
!420 = !{ptr @lpc18xx_pin_p1_12, !421, !"lpc18xx_pin_p1_12", i1 false, i1 false}
!421 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 252, i32 1}
!422 = !{ptr @lpc18xx_pin_p1_13, !423, !"lpc18xx_pin_p1_13", i1 false, i1 false}
!423 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 253, i32 1}
!424 = !{ptr @lpc18xx_pin_p1_14, !425, !"lpc18xx_pin_p1_14", i1 false, i1 false}
!425 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 254, i32 1}
!426 = !{ptr @lpc18xx_pin_p1_15, !427, !"lpc18xx_pin_p1_15", i1 false, i1 false}
!427 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 255, i32 1}
!428 = !{ptr @lpc18xx_pin_p1_16, !429, !"lpc18xx_pin_p1_16", i1 false, i1 false}
!429 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 256, i32 1}
!430 = !{ptr @lpc18xx_pin_p1_17, !431, !"lpc18xx_pin_p1_17", i1 false, i1 false}
!431 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 257, i32 1}
!432 = !{ptr @lpc18xx_pin_p1_18, !433, !"lpc18xx_pin_p1_18", i1 false, i1 false}
!433 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 258, i32 1}
!434 = !{ptr @lpc18xx_pin_p1_19, !435, !"lpc18xx_pin_p1_19", i1 false, i1 false}
!435 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 259, i32 1}
!436 = !{ptr @lpc18xx_pin_p1_20, !437, !"lpc18xx_pin_p1_20", i1 false, i1 false}
!437 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 260, i32 1}
!438 = !{ptr @lpc18xx_pin_p2_0, !439, !"lpc18xx_pin_p2_0", i1 false, i1 false}
!439 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 261, i32 1}
!440 = !{ptr @lpc18xx_pin_p2_1, !441, !"lpc18xx_pin_p2_1", i1 false, i1 false}
!441 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 262, i32 1}
!442 = !{ptr @lpc18xx_pin_p2_2, !443, !"lpc18xx_pin_p2_2", i1 false, i1 false}
!443 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 263, i32 1}
!444 = !{ptr @lpc18xx_pin_p2_3, !445, !"lpc18xx_pin_p2_3", i1 false, i1 false}
!445 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 264, i32 1}
!446 = !{ptr @lpc18xx_pin_p2_4, !447, !"lpc18xx_pin_p2_4", i1 false, i1 false}
!447 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 265, i32 1}
!448 = !{ptr @lpc18xx_pin_p2_5, !449, !"lpc18xx_pin_p2_5", i1 false, i1 false}
!449 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 266, i32 1}
!450 = !{ptr @lpc18xx_pin_p2_6, !451, !"lpc18xx_pin_p2_6", i1 false, i1 false}
!451 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 267, i32 1}
!452 = !{ptr @lpc18xx_pin_p2_7, !453, !"lpc18xx_pin_p2_7", i1 false, i1 false}
!453 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 268, i32 1}
!454 = !{ptr @lpc18xx_pin_p2_8, !455, !"lpc18xx_pin_p2_8", i1 false, i1 false}
!455 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 269, i32 1}
!456 = !{ptr @lpc18xx_pin_p2_9, !457, !"lpc18xx_pin_p2_9", i1 false, i1 false}
!457 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 270, i32 1}
!458 = !{ptr @lpc18xx_pin_p2_10, !459, !"lpc18xx_pin_p2_10", i1 false, i1 false}
!459 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 271, i32 1}
!460 = !{ptr @lpc18xx_pin_p2_11, !461, !"lpc18xx_pin_p2_11", i1 false, i1 false}
!461 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 272, i32 1}
!462 = !{ptr @lpc18xx_pin_p2_12, !463, !"lpc18xx_pin_p2_12", i1 false, i1 false}
!463 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 273, i32 1}
!464 = !{ptr @lpc18xx_pin_p2_13, !465, !"lpc18xx_pin_p2_13", i1 false, i1 false}
!465 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 274, i32 1}
!466 = !{ptr @lpc18xx_pin_p3_0, !467, !"lpc18xx_pin_p3_0", i1 false, i1 false}
!467 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 275, i32 1}
!468 = !{ptr @lpc18xx_pin_p3_1, !469, !"lpc18xx_pin_p3_1", i1 false, i1 false}
!469 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 276, i32 1}
!470 = !{ptr @lpc18xx_pin_p3_2, !471, !"lpc18xx_pin_p3_2", i1 false, i1 false}
!471 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 277, i32 1}
!472 = !{ptr @lpc18xx_pin_p3_3, !473, !"lpc18xx_pin_p3_3", i1 false, i1 false}
!473 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 278, i32 1}
!474 = !{ptr @lpc18xx_pin_p3_4, !475, !"lpc18xx_pin_p3_4", i1 false, i1 false}
!475 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 279, i32 1}
!476 = !{ptr @lpc18xx_pin_p3_5, !477, !"lpc18xx_pin_p3_5", i1 false, i1 false}
!477 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 280, i32 1}
!478 = !{ptr @lpc18xx_pin_p3_6, !479, !"lpc18xx_pin_p3_6", i1 false, i1 false}
!479 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 281, i32 1}
!480 = !{ptr @lpc18xx_pin_p3_7, !481, !"lpc18xx_pin_p3_7", i1 false, i1 false}
!481 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 282, i32 1}
!482 = !{ptr @lpc18xx_pin_p3_8, !483, !"lpc18xx_pin_p3_8", i1 false, i1 false}
!483 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 283, i32 1}
!484 = !{ptr @lpc18xx_pin_p4_0, !485, !"lpc18xx_pin_p4_0", i1 false, i1 false}
!485 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 284, i32 1}
!486 = !{ptr @lpc18xx_pin_p4_1, !487, !"lpc18xx_pin_p4_1", i1 false, i1 false}
!487 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 285, i32 1}
!488 = !{ptr @lpc18xx_pin_p4_2, !489, !"lpc18xx_pin_p4_2", i1 false, i1 false}
!489 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 286, i32 1}
!490 = !{ptr @lpc18xx_pin_p4_3, !491, !"lpc18xx_pin_p4_3", i1 false, i1 false}
!491 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 287, i32 1}
!492 = !{ptr @lpc18xx_pin_p4_4, !493, !"lpc18xx_pin_p4_4", i1 false, i1 false}
!493 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 288, i32 1}
!494 = !{ptr @lpc18xx_pin_p4_5, !495, !"lpc18xx_pin_p4_5", i1 false, i1 false}
!495 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 289, i32 1}
!496 = !{ptr @lpc18xx_pin_p4_6, !497, !"lpc18xx_pin_p4_6", i1 false, i1 false}
!497 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 290, i32 1}
!498 = !{ptr @lpc18xx_pin_p4_7, !499, !"lpc18xx_pin_p4_7", i1 false, i1 false}
!499 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 291, i32 1}
!500 = !{ptr @lpc18xx_pin_p4_8, !501, !"lpc18xx_pin_p4_8", i1 false, i1 false}
!501 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 292, i32 1}
!502 = !{ptr @lpc18xx_pin_p4_9, !503, !"lpc18xx_pin_p4_9", i1 false, i1 false}
!503 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 293, i32 1}
!504 = !{ptr @lpc18xx_pin_p4_10, !505, !"lpc18xx_pin_p4_10", i1 false, i1 false}
!505 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 294, i32 1}
!506 = !{ptr @lpc18xx_pin_p5_0, !507, !"lpc18xx_pin_p5_0", i1 false, i1 false}
!507 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 295, i32 1}
!508 = !{ptr @lpc18xx_pin_p5_1, !509, !"lpc18xx_pin_p5_1", i1 false, i1 false}
!509 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 296, i32 1}
!510 = !{ptr @lpc18xx_pin_p5_2, !511, !"lpc18xx_pin_p5_2", i1 false, i1 false}
!511 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 297, i32 1}
!512 = !{ptr @lpc18xx_pin_p5_3, !513, !"lpc18xx_pin_p5_3", i1 false, i1 false}
!513 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 298, i32 1}
!514 = !{ptr @lpc18xx_pin_p5_4, !515, !"lpc18xx_pin_p5_4", i1 false, i1 false}
!515 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 299, i32 1}
!516 = !{ptr @lpc18xx_pin_p5_5, !517, !"lpc18xx_pin_p5_5", i1 false, i1 false}
!517 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 300, i32 1}
!518 = !{ptr @lpc18xx_pin_p5_6, !519, !"lpc18xx_pin_p5_6", i1 false, i1 false}
!519 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 301, i32 1}
!520 = !{ptr @lpc18xx_pin_p5_7, !521, !"lpc18xx_pin_p5_7", i1 false, i1 false}
!521 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 302, i32 1}
!522 = !{ptr @lpc18xx_pin_p6_0, !523, !"lpc18xx_pin_p6_0", i1 false, i1 false}
!523 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 303, i32 1}
!524 = !{ptr @lpc18xx_pin_p6_1, !525, !"lpc18xx_pin_p6_1", i1 false, i1 false}
!525 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 304, i32 1}
!526 = !{ptr @lpc18xx_pin_p6_2, !527, !"lpc18xx_pin_p6_2", i1 false, i1 false}
!527 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 305, i32 1}
!528 = !{ptr @lpc18xx_pin_p6_3, !529, !"lpc18xx_pin_p6_3", i1 false, i1 false}
!529 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 306, i32 1}
!530 = !{ptr @lpc18xx_pin_p6_4, !531, !"lpc18xx_pin_p6_4", i1 false, i1 false}
!531 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 307, i32 1}
!532 = !{ptr @lpc18xx_pin_p6_5, !533, !"lpc18xx_pin_p6_5", i1 false, i1 false}
!533 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 308, i32 1}
!534 = !{ptr @lpc18xx_pin_p6_6, !535, !"lpc18xx_pin_p6_6", i1 false, i1 false}
!535 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 309, i32 1}
!536 = !{ptr @lpc18xx_pin_p6_7, !537, !"lpc18xx_pin_p6_7", i1 false, i1 false}
!537 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 310, i32 1}
!538 = !{ptr @lpc18xx_pin_p6_8, !539, !"lpc18xx_pin_p6_8", i1 false, i1 false}
!539 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 311, i32 1}
!540 = !{ptr @lpc18xx_pin_p6_9, !541, !"lpc18xx_pin_p6_9", i1 false, i1 false}
!541 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 312, i32 1}
!542 = !{ptr @lpc18xx_pin_p6_10, !543, !"lpc18xx_pin_p6_10", i1 false, i1 false}
!543 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 313, i32 1}
!544 = !{ptr @lpc18xx_pin_p6_11, !545, !"lpc18xx_pin_p6_11", i1 false, i1 false}
!545 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 314, i32 1}
!546 = !{ptr @lpc18xx_pin_p6_12, !547, !"lpc18xx_pin_p6_12", i1 false, i1 false}
!547 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 315, i32 1}
!548 = !{ptr @lpc18xx_pin_p7_0, !549, !"lpc18xx_pin_p7_0", i1 false, i1 false}
!549 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 316, i32 1}
!550 = !{ptr @lpc18xx_pin_p7_1, !551, !"lpc18xx_pin_p7_1", i1 false, i1 false}
!551 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 317, i32 1}
!552 = !{ptr @lpc18xx_pin_p7_2, !553, !"lpc18xx_pin_p7_2", i1 false, i1 false}
!553 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 318, i32 1}
!554 = !{ptr @lpc18xx_pin_p7_3, !555, !"lpc18xx_pin_p7_3", i1 false, i1 false}
!555 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 319, i32 1}
!556 = !{ptr @lpc18xx_pin_p7_4, !557, !"lpc18xx_pin_p7_4", i1 false, i1 false}
!557 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 320, i32 1}
!558 = !{ptr @lpc18xx_pin_p7_5, !559, !"lpc18xx_pin_p7_5", i1 false, i1 false}
!559 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 321, i32 1}
!560 = !{ptr @lpc18xx_pin_p7_6, !561, !"lpc18xx_pin_p7_6", i1 false, i1 false}
!561 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 322, i32 1}
!562 = !{ptr @lpc18xx_pin_p7_7, !563, !"lpc18xx_pin_p7_7", i1 false, i1 false}
!563 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 323, i32 1}
!564 = !{ptr @lpc18xx_pin_p8_0, !565, !"lpc18xx_pin_p8_0", i1 false, i1 false}
!565 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 324, i32 1}
!566 = !{ptr @lpc18xx_pin_p8_1, !567, !"lpc18xx_pin_p8_1", i1 false, i1 false}
!567 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 325, i32 1}
!568 = !{ptr @lpc18xx_pin_p8_2, !569, !"lpc18xx_pin_p8_2", i1 false, i1 false}
!569 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 326, i32 1}
!570 = !{ptr @lpc18xx_pin_p8_3, !571, !"lpc18xx_pin_p8_3", i1 false, i1 false}
!571 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 327, i32 1}
!572 = !{ptr @lpc18xx_pin_p8_4, !573, !"lpc18xx_pin_p8_4", i1 false, i1 false}
!573 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 328, i32 1}
!574 = !{ptr @lpc18xx_pin_p8_5, !575, !"lpc18xx_pin_p8_5", i1 false, i1 false}
!575 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 329, i32 1}
!576 = !{ptr @lpc18xx_pin_p8_6, !577, !"lpc18xx_pin_p8_6", i1 false, i1 false}
!577 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 330, i32 1}
!578 = !{ptr @lpc18xx_pin_p8_7, !579, !"lpc18xx_pin_p8_7", i1 false, i1 false}
!579 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 331, i32 1}
!580 = !{ptr @lpc18xx_pin_p8_8, !581, !"lpc18xx_pin_p8_8", i1 false, i1 false}
!581 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 332, i32 1}
!582 = !{ptr @lpc18xx_pin_p9_0, !583, !"lpc18xx_pin_p9_0", i1 false, i1 false}
!583 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 333, i32 1}
!584 = !{ptr @lpc18xx_pin_p9_1, !585, !"lpc18xx_pin_p9_1", i1 false, i1 false}
!585 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 334, i32 1}
!586 = !{ptr @lpc18xx_pin_p9_2, !587, !"lpc18xx_pin_p9_2", i1 false, i1 false}
!587 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 335, i32 1}
!588 = !{ptr @lpc18xx_pin_p9_3, !589, !"lpc18xx_pin_p9_3", i1 false, i1 false}
!589 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 336, i32 1}
!590 = !{ptr @lpc18xx_pin_p9_4, !591, !"lpc18xx_pin_p9_4", i1 false, i1 false}
!591 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 337, i32 1}
!592 = !{ptr @lpc18xx_pin_p9_5, !593, !"lpc18xx_pin_p9_5", i1 false, i1 false}
!593 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 338, i32 1}
!594 = !{ptr @lpc18xx_pin_p9_6, !595, !"lpc18xx_pin_p9_6", i1 false, i1 false}
!595 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 339, i32 1}
!596 = !{ptr @lpc18xx_pin_pa_0, !597, !"lpc18xx_pin_pa_0", i1 false, i1 false}
!597 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 340, i32 1}
!598 = !{ptr @lpc18xx_pin_pa_1, !599, !"lpc18xx_pin_pa_1", i1 false, i1 false}
!599 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 341, i32 1}
!600 = !{ptr @lpc18xx_pin_pa_2, !601, !"lpc18xx_pin_pa_2", i1 false, i1 false}
!601 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 342, i32 1}
!602 = !{ptr @lpc18xx_pin_pa_3, !603, !"lpc18xx_pin_pa_3", i1 false, i1 false}
!603 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 343, i32 1}
!604 = !{ptr @lpc18xx_pin_pa_4, !605, !"lpc18xx_pin_pa_4", i1 false, i1 false}
!605 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 344, i32 1}
!606 = !{ptr @lpc18xx_pin_pb_0, !607, !"lpc18xx_pin_pb_0", i1 false, i1 false}
!607 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 345, i32 1}
!608 = !{ptr @lpc18xx_pin_pb_1, !609, !"lpc18xx_pin_pb_1", i1 false, i1 false}
!609 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 346, i32 1}
!610 = !{ptr @lpc18xx_pin_pb_2, !611, !"lpc18xx_pin_pb_2", i1 false, i1 false}
!611 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 347, i32 1}
!612 = !{ptr @lpc18xx_pin_pb_3, !613, !"lpc18xx_pin_pb_3", i1 false, i1 false}
!613 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 348, i32 1}
!614 = !{ptr @lpc18xx_pin_pb_4, !615, !"lpc18xx_pin_pb_4", i1 false, i1 false}
!615 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 349, i32 1}
!616 = !{ptr @lpc18xx_pin_pb_5, !617, !"lpc18xx_pin_pb_5", i1 false, i1 false}
!617 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 350, i32 1}
!618 = !{ptr @lpc18xx_pin_pb_6, !619, !"lpc18xx_pin_pb_6", i1 false, i1 false}
!619 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 351, i32 1}
!620 = !{ptr @lpc18xx_pin_pc_0, !621, !"lpc18xx_pin_pc_0", i1 false, i1 false}
!621 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 352, i32 1}
!622 = !{ptr @lpc18xx_pin_pc_1, !623, !"lpc18xx_pin_pc_1", i1 false, i1 false}
!623 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 353, i32 1}
!624 = !{ptr @lpc18xx_pin_pc_2, !625, !"lpc18xx_pin_pc_2", i1 false, i1 false}
!625 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 354, i32 1}
!626 = !{ptr @lpc18xx_pin_pc_3, !627, !"lpc18xx_pin_pc_3", i1 false, i1 false}
!627 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 355, i32 1}
!628 = !{ptr @lpc18xx_pin_pc_4, !629, !"lpc18xx_pin_pc_4", i1 false, i1 false}
!629 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 356, i32 1}
!630 = !{ptr @lpc18xx_pin_pc_5, !631, !"lpc18xx_pin_pc_5", i1 false, i1 false}
!631 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 357, i32 1}
!632 = !{ptr @lpc18xx_pin_pc_6, !633, !"lpc18xx_pin_pc_6", i1 false, i1 false}
!633 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 358, i32 1}
!634 = !{ptr @lpc18xx_pin_pc_7, !635, !"lpc18xx_pin_pc_7", i1 false, i1 false}
!635 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 359, i32 1}
!636 = !{ptr @lpc18xx_pin_pc_8, !637, !"lpc18xx_pin_pc_8", i1 false, i1 false}
!637 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 360, i32 1}
!638 = !{ptr @lpc18xx_pin_pc_9, !639, !"lpc18xx_pin_pc_9", i1 false, i1 false}
!639 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 361, i32 1}
!640 = !{ptr @lpc18xx_pin_pc_10, !641, !"lpc18xx_pin_pc_10", i1 false, i1 false}
!641 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 362, i32 1}
!642 = !{ptr @lpc18xx_pin_pc_11, !643, !"lpc18xx_pin_pc_11", i1 false, i1 false}
!643 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 363, i32 1}
!644 = !{ptr @lpc18xx_pin_pc_12, !645, !"lpc18xx_pin_pc_12", i1 false, i1 false}
!645 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 364, i32 1}
!646 = !{ptr @lpc18xx_pin_pc_13, !647, !"lpc18xx_pin_pc_13", i1 false, i1 false}
!647 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 365, i32 1}
!648 = !{ptr @lpc18xx_pin_pc_14, !649, !"lpc18xx_pin_pc_14", i1 false, i1 false}
!649 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 366, i32 1}
!650 = !{ptr @lpc18xx_pin_pd_0, !651, !"lpc18xx_pin_pd_0", i1 false, i1 false}
!651 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 367, i32 1}
!652 = !{ptr @lpc18xx_pin_pd_1, !653, !"lpc18xx_pin_pd_1", i1 false, i1 false}
!653 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 368, i32 1}
!654 = !{ptr @lpc18xx_pin_pd_2, !655, !"lpc18xx_pin_pd_2", i1 false, i1 false}
!655 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 369, i32 1}
!656 = !{ptr @lpc18xx_pin_pd_3, !657, !"lpc18xx_pin_pd_3", i1 false, i1 false}
!657 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 370, i32 1}
!658 = !{ptr @lpc18xx_pin_pd_4, !659, !"lpc18xx_pin_pd_4", i1 false, i1 false}
!659 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 371, i32 1}
!660 = !{ptr @lpc18xx_pin_pd_5, !661, !"lpc18xx_pin_pd_5", i1 false, i1 false}
!661 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 372, i32 1}
!662 = !{ptr @lpc18xx_pin_pd_6, !663, !"lpc18xx_pin_pd_6", i1 false, i1 false}
!663 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 373, i32 1}
!664 = !{ptr @lpc18xx_pin_pd_7, !665, !"lpc18xx_pin_pd_7", i1 false, i1 false}
!665 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 374, i32 1}
!666 = !{ptr @lpc18xx_pin_pd_8, !667, !"lpc18xx_pin_pd_8", i1 false, i1 false}
!667 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 375, i32 1}
!668 = !{ptr @lpc18xx_pin_pd_9, !669, !"lpc18xx_pin_pd_9", i1 false, i1 false}
!669 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 376, i32 1}
!670 = !{ptr @lpc18xx_pin_pd_10, !671, !"lpc18xx_pin_pd_10", i1 false, i1 false}
!671 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 377, i32 1}
!672 = !{ptr @lpc18xx_pin_pd_11, !673, !"lpc18xx_pin_pd_11", i1 false, i1 false}
!673 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 378, i32 1}
!674 = !{ptr @lpc18xx_pin_pd_12, !675, !"lpc18xx_pin_pd_12", i1 false, i1 false}
!675 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 379, i32 1}
!676 = !{ptr @lpc18xx_pin_pd_13, !677, !"lpc18xx_pin_pd_13", i1 false, i1 false}
!677 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 380, i32 1}
!678 = !{ptr @lpc18xx_pin_pd_14, !679, !"lpc18xx_pin_pd_14", i1 false, i1 false}
!679 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 381, i32 1}
!680 = !{ptr @lpc18xx_pin_pd_15, !681, !"lpc18xx_pin_pd_15", i1 false, i1 false}
!681 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 382, i32 1}
!682 = !{ptr @lpc18xx_pin_pd_16, !683, !"lpc18xx_pin_pd_16", i1 false, i1 false}
!683 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 383, i32 1}
!684 = !{ptr @lpc18xx_pin_pe_0, !685, !"lpc18xx_pin_pe_0", i1 false, i1 false}
!685 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 384, i32 1}
!686 = !{ptr @lpc18xx_pin_pe_1, !687, !"lpc18xx_pin_pe_1", i1 false, i1 false}
!687 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 385, i32 1}
!688 = !{ptr @lpc18xx_pin_pe_2, !689, !"lpc18xx_pin_pe_2", i1 false, i1 false}
!689 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 386, i32 1}
!690 = !{ptr @lpc18xx_pin_pe_3, !691, !"lpc18xx_pin_pe_3", i1 false, i1 false}
!691 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 387, i32 1}
!692 = !{ptr @lpc18xx_pin_pe_4, !693, !"lpc18xx_pin_pe_4", i1 false, i1 false}
!693 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 388, i32 1}
!694 = !{ptr @lpc18xx_pin_pe_5, !695, !"lpc18xx_pin_pe_5", i1 false, i1 false}
!695 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 389, i32 1}
!696 = !{ptr @lpc18xx_pin_pe_6, !697, !"lpc18xx_pin_pe_6", i1 false, i1 false}
!697 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 390, i32 1}
!698 = !{ptr @lpc18xx_pin_pe_7, !699, !"lpc18xx_pin_pe_7", i1 false, i1 false}
!699 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 391, i32 1}
!700 = !{ptr @lpc18xx_pin_pe_8, !701, !"lpc18xx_pin_pe_8", i1 false, i1 false}
!701 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 392, i32 1}
!702 = !{ptr @lpc18xx_pin_pe_9, !703, !"lpc18xx_pin_pe_9", i1 false, i1 false}
!703 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 393, i32 1}
!704 = !{ptr @lpc18xx_pin_pe_10, !705, !"lpc18xx_pin_pe_10", i1 false, i1 false}
!705 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 394, i32 1}
!706 = !{ptr @lpc18xx_pin_pe_11, !707, !"lpc18xx_pin_pe_11", i1 false, i1 false}
!707 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 395, i32 1}
!708 = !{ptr @lpc18xx_pin_pe_12, !709, !"lpc18xx_pin_pe_12", i1 false, i1 false}
!709 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 396, i32 1}
!710 = !{ptr @lpc18xx_pin_pe_13, !711, !"lpc18xx_pin_pe_13", i1 false, i1 false}
!711 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 397, i32 1}
!712 = !{ptr @lpc18xx_pin_pe_14, !713, !"lpc18xx_pin_pe_14", i1 false, i1 false}
!713 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 398, i32 1}
!714 = !{ptr @lpc18xx_pin_pe_15, !715, !"lpc18xx_pin_pe_15", i1 false, i1 false}
!715 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 399, i32 1}
!716 = !{ptr @lpc18xx_pin_pf_0, !717, !"lpc18xx_pin_pf_0", i1 false, i1 false}
!717 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 400, i32 1}
!718 = !{ptr @lpc18xx_pin_pf_1, !719, !"lpc18xx_pin_pf_1", i1 false, i1 false}
!719 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 401, i32 1}
!720 = !{ptr @lpc18xx_pin_pf_2, !721, !"lpc18xx_pin_pf_2", i1 false, i1 false}
!721 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 402, i32 1}
!722 = !{ptr @lpc18xx_pin_pf_3, !723, !"lpc18xx_pin_pf_3", i1 false, i1 false}
!723 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 403, i32 1}
!724 = !{ptr @lpc18xx_pin_pf_4, !725, !"lpc18xx_pin_pf_4", i1 false, i1 false}
!725 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 404, i32 1}
!726 = !{ptr @lpc18xx_pin_pf_5, !727, !"lpc18xx_pin_pf_5", i1 false, i1 false}
!727 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 405, i32 1}
!728 = !{ptr @lpc18xx_pin_pf_6, !729, !"lpc18xx_pin_pf_6", i1 false, i1 false}
!729 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 406, i32 1}
!730 = !{ptr @lpc18xx_pin_pf_7, !731, !"lpc18xx_pin_pf_7", i1 false, i1 false}
!731 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 407, i32 1}
!732 = !{ptr @lpc18xx_pin_pf_8, !733, !"lpc18xx_pin_pf_8", i1 false, i1 false}
!733 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 408, i32 1}
!734 = !{ptr @lpc18xx_pin_pf_9, !735, !"lpc18xx_pin_pf_9", i1 false, i1 false}
!735 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 409, i32 1}
!736 = !{ptr @lpc18xx_pin_pf_10, !737, !"lpc18xx_pin_pf_10", i1 false, i1 false}
!737 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 410, i32 1}
!738 = !{ptr @lpc18xx_pin_pf_11, !739, !"lpc18xx_pin_pf_11", i1 false, i1 false}
!739 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 411, i32 1}
!740 = !{ptr @lpc18xx_pin_clk0, !741, !"lpc18xx_pin_clk0", i1 false, i1 false}
!741 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 414, i32 1}
!742 = !{ptr @lpc18xx_pin_clk1, !743, !"lpc18xx_pin_clk1", i1 false, i1 false}
!743 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 415, i32 1}
!744 = !{ptr @lpc18xx_pin_clk2, !745, !"lpc18xx_pin_clk2", i1 false, i1 false}
!745 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 416, i32 1}
!746 = !{ptr @lpc18xx_pin_clk3, !747, !"lpc18xx_pin_clk3", i1 false, i1 false}
!747 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 417, i32 1}
!748 = !{ptr @lpc18xx_pin_usb1_dm, !749, !"lpc18xx_pin_usb1_dm", i1 false, i1 false}
!749 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 418, i32 1}
!750 = !{ptr @lpc18xx_pin_usb1_dp, !751, !"lpc18xx_pin_usb1_dp", i1 false, i1 false}
!751 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 419, i32 1}
!752 = !{ptr @lpc18xx_pin_i2c0_scl, !753, !"lpc18xx_pin_i2c0_scl", i1 false, i1 false}
!753 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 420, i32 1}
!754 = !{ptr @lpc18xx_pin_i2c0_sda, !755, !"lpc18xx_pin_i2c0_sda", i1 false, i1 false}
!755 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 421, i32 1}
!756 = !{ptr @.str.197, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1259, i32 10}
!758 = !{ptr @lpc18xx_scu_desc, !759, !"lpc18xx_scu_desc", i1 false, i1 false}
!759 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1258, i32 28}
!760 = !{ptr @lpc18xx_pctl_ops, !761, !"lpc18xx_pctl_ops", i1 false, i1 false}
!761 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1250, i32 33}
!762 = !{ptr @lpc18xx_pmx_ops, !763, !"lpc18xx_pmx_ops", i1 false, i1 false}
!763 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1221, i32 32}
!764 = !{ptr @.str.198, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 129, i32 14}
!766 = !{ptr @.str.199, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 130, i32 16}
!768 = !{ptr @.str.200, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 131, i32 20}
!770 = !{ptr @.str.201, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 132, i32 17}
!772 = !{ptr @.str.202, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 133, i32 17}
!774 = !{ptr @.str.203, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 134, i32 20}
!776 = !{ptr @.str.204, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 135, i32 18}
!778 = !{ptr @.str.205, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 136, i32 19}
!780 = !{ptr @.str.206, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 137, i32 17}
!782 = !{ptr @.str.207, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 138, i32 18}
!784 = !{ptr @.str.208, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 139, i32 16}
!786 = !{ptr @.str.209, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 140, i32 16}
!788 = !{ptr @.str.210, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 141, i32 20}
!790 = !{ptr @.str.211, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 142, i32 17}
!792 = !{ptr @.str.212, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 143, i32 21}
!794 = !{ptr @.str.213, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 144, i32 17}
!796 = !{ptr @.str.214, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 145, i32 17}
!798 = !{ptr @.str.215, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 146, i32 17}
!800 = !{ptr @.str.216, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 147, i32 24}
!802 = !{ptr @.str.217, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 148, i32 23}
!804 = !{ptr @.str.218, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 149, i32 23}
!806 = !{ptr @.str.219, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 150, i32 22}
!808 = !{ptr @.str.220, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 151, i32 24}
!810 = !{ptr @.str.221, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 152, i32 23}
!812 = !{ptr @.str.222, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 153, i32 23}
!814 = !{ptr @.str.223, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 154, i32 22}
!816 = !{ptr @.str.224, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 155, i32 17}
!818 = !{ptr @.str.225, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 156, i32 16}
!820 = !{ptr @.str.226, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 157, i32 20}
!822 = !{ptr @.str.227, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 158, i32 18}
!824 = !{ptr @.str.228, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 159, i32 16}
!826 = !{ptr @.str.229, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 160, i32 16}
!828 = !{ptr @.str.230, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 161, i32 18}
!830 = !{ptr @.str.231, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 162, i32 18}
!832 = !{ptr @.str.232, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 163, i32 16}
!834 = !{ptr @.str.233, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 164, i32 18}
!836 = !{ptr @.str.234, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 165, i32 17}
!838 = !{ptr @.str.235, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 166, i32 21}
!840 = !{ptr @.str.236, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 167, i32 17}
!842 = !{ptr @.str.237, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 168, i32 19}
!844 = !{ptr @.str.238, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 169, i32 19}
!846 = !{ptr @.str.239, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 170, i32 19}
!848 = !{ptr @.str.240, !849, !"<string literal>", i1 false, i1 false}
!849 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 171, i32 19}
!850 = !{ptr @.str.241, !851, !"<string literal>", i1 false, i1 false}
!851 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 172, i32 18}
!852 = !{ptr @.str.242, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 173, i32 18}
!854 = !{ptr @.str.243, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 174, i32 18}
!856 = !{ptr @.str.244, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 175, i32 18}
!858 = !{ptr @.str.245, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 176, i32 18}
!860 = !{ptr @.str.246, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 177, i32 17}
!862 = !{ptr @.str.247, !863, !"<string literal>", i1 false, i1 false}
!863 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 178, i32 17}
!864 = !{ptr @lpc18xx_function_names, !865, !"lpc18xx_function_names", i1 false, i1 false}
!865 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 128, i32 26}
!866 = !{ptr @.str.248, !867, !"<string literal>", i1 false, i1 false}
!867 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1216, i32 2}
!868 = !{ptr @.str.249, !867, !"<string literal>", i1 false, i1 false}
!869 = !{ptr @lpc18xx_pmx_set._entry, !867, !"_entry", i1 false, i1 false}
!870 = !{ptr @lpc18xx_pmx_set._entry_ptr, !867, !"_entry_ptr", i1 false, i1 false}
!871 = !{ptr @lpc18xx_pconf_ops, !872, !"lpc18xx_pconf_ops", i1 false, i1 false}
!872 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1122, i32 33}
!873 = !{ptr @.str.250, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 974, i32 3}
!875 = !{ptr @.str.251, !874, !"<string literal>", i1 false, i1 false}
!876 = !{ptr @lpc18xx_pconf_set_i2c0._entry, !874, !"_entry", i1 false, i1 false}
!877 = !{ptr @lpc18xx_pconf_set_i2c0._entry_ptr, !874, !"_entry_ptr", i1 false, i1 false}
!878 = !{ptr @.str.252, !879, !"<string literal>", i1 false, i1 false}
!879 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 923, i32 3}
!880 = !{ptr @lpc18xx_pconf_set_usb1._entry, !879, !"_entry", i1 false, i1 false}
!881 = !{ptr @lpc18xx_pconf_set_usb1._entry_ptr, !879, !"_entry_ptr", i1 false, i1 false}
!882 = !{ptr @.str.253, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1034, i32 4}
!884 = !{ptr @.str.254, !883, !"<string literal>", i1 false, i1 false}
!885 = !{ptr @lpc18xx_pconf_set_pin._entry, !883, !"_entry", i1 false, i1 false}
!886 = !{ptr @lpc18xx_pconf_set_pin._entry_ptr, !883, !"_entry_ptr", i1 false, i1 false}
!887 = !{ptr @.str.256, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1053, i32 4}
!889 = !{ptr @lpc18xx_pconf_set_pin._entry.255, !888, !"_entry", i1 false, i1 false}
!890 = !{ptr @lpc18xx_pconf_set_pin._entry_ptr.257, !888, !"_entry_ptr", i1 false, i1 false}
!891 = !{ptr @.str.259, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1068, i32 4}
!893 = !{ptr @lpc18xx_pconf_set_pin._entry.258, !892, !"_entry", i1 false, i1 false}
!894 = !{ptr @lpc18xx_pconf_set_pin._entry_ptr.260, !892, !"_entry_ptr", i1 false, i1 false}
!895 = !{ptr @lpc18xx_pconf_set_pin._entry.261, !896, !"_entry", i1 false, i1 false}
!896 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1078, i32 3}
!897 = !{ptr @lpc18xx_pconf_set_pin._entry_ptr.262, !896, !"_entry_ptr", i1 false, i1 false}
!898 = !{ptr @.str.263, !899, !"<string literal>", i1 false, i1 false}
!899 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 637, i32 3}
!900 = !{ptr @lpc18xx_params, !901, !"lpc18xx_params", i1 false, i1 false}
!901 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 636, i32 44}
!902 = !{ptr @.str.264, !903, !"<string literal>", i1 false, i1 false}
!903 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 642, i32 2}
!904 = !{ptr @lpc18xx_conf_items, !905, !"lpc18xx_conf_items", i1 false, i1 false}
!905 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 641, i32 37}
!906 = !{ptr @lpc18xx_scu_match, !907, !"lpc18xx_scu_match", i1 false, i1 false}
!907 = !{!"../drivers/pinctrl/pinctrl-lpc18xx.c", i32 1367, i32 34}
!908 = !{i32 1, !"wchar_size", i32 2}
!909 = !{i32 1, !"min_enum_size", i32 4}
!910 = !{i32 8, !"branch-target-enforcement", i32 0}
!911 = !{i32 8, !"sign-return-address", i32 0}
!912 = !{i32 8, !"sign-return-address-all", i32 0}
!913 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!914 = !{i32 7, !"uwtable", i32 1}
!915 = !{i32 7, !"frame-pointer", i32 2}
!916 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!917 = !{!"branch_weights", i32 1, i32 2000}
!918 = !{i64 2153541073}
!919 = !{i64 2070073}
!920 = !{i64 2070491}
!921 = !{i64 2153541788}
!922 = !{i64 2153542008}
!923 = !{i64 2153542492}
!924 = !{i64 2153543168}
!925 = !{i64 2153543470}
!926 = !{i64 2153544159}
!927 = !{i64 2153544390}
!928 = !{i64 2153522131}
!929 = !{i64 2153520439}
!930 = !{i64 2153539880}
!931 = !{i64 2153526864}
!932 = !{i64 2153527231}
!933 = !{i64 2153540104}
